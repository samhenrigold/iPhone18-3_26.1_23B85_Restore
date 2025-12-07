unint64_t sub_1BFA59DF8()
{
  result = qword_1EBDFBC28;
  if (!qword_1EBDFBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBC30, &qword_1BFAB40E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC28);
  }

  return result;
}

void sub_1BFA59E84(uint64_t a1)
{
  sub_1BFAAE3F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SiriSuggestions.SuggestionPresentation(319);
    if (v2 <= 0x3F)
    {
      sub_1BFAAEEF8();
      if (v3 <= 0x3F)
      {
        sub_1BFA16528();
        if (v4 <= 0x3F)
        {
          sub_1BFA5A010(319);
          if (v5 <= 0x3F)
          {
            sub_1BFAAF1E8();
            if (v6 <= 0x3F)
            {
              sub_1BFA5A074(319, qword_1EDCC8568, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
              if (v7 <= 0x3F)
              {
                sub_1BFAAF318();
                if (v8 <= 0x3F)
                {
                  sub_1BFA5A074(319, &qword_1EDCC84F0, MEMORY[0x1E69DAA28]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BFAAEB28();
                    if (v10 <= 0x3F)
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
    }
  }
}

void sub_1BFA5A010(uint64_t a1)
{
  if (!qword_1EDCC8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBBB8, &qword_1BFAB3CD8);
    v1 = sub_1BFAAFBA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC8500);
    }
  }
}

void sub_1BFA5A074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BFAAFBA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BFA5A0F0(uint64_t a1)
{
  result = sub_1BFAAF2E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BFA5A18C(uint64_t a1)
{
  sub_1BFA5A254(319, &qword_1EDCC84E8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1BFAAF218();
    if (v2 <= 0x3F)
    {
      sub_1BFA5A254(319, &qword_1EDCC8B68, &type metadata for PolicyResult);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BFA5A254(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BFAAFBA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BFA5A2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA5A2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s4TierOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8RankInfoV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s22SuggestionPresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s22SuggestionPresentationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s25SuggestionChannelAndScoreV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s10SuggestionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10SuggestionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFA5A8A8()
{
  result = qword_1EBDFBC38;
  if (!qword_1EBDFBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC38);
  }

  return result;
}

unint64_t sub_1BFA5A900()
{
  result = qword_1EBDFBC40;
  if (!qword_1EBDFBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC40);
  }

  return result;
}

unint64_t sub_1BFA5A958()
{
  result = qword_1EBDFBC48;
  if (!qword_1EBDFBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC48);
  }

  return result;
}

unint64_t sub_1BFA5A9B0()
{
  result = qword_1EBDFBC50[0];
  if (!qword_1EBDFBC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDFBC50);
  }

  return result;
}

unint64_t sub_1BFA5AA08()
{
  result = qword_1EDCC74D0;
  if (!qword_1EDCC74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74D0);
  }

  return result;
}

unint64_t sub_1BFA5AA60()
{
  result = qword_1EDCC74D8;
  if (!qword_1EDCC74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74D8);
  }

  return result;
}

unint64_t sub_1BFA5AAB8()
{
  result = qword_1EDCC74F0;
  if (!qword_1EDCC74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74F0);
  }

  return result;
}

unint64_t sub_1BFA5AB10()
{
  result = qword_1EDCC74F8;
  if (!qword_1EDCC74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74F8);
  }

  return result;
}

unint64_t sub_1BFA5AB68()
{
  result = qword_1EDCC7068;
  if (!qword_1EDCC7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7068);
  }

  return result;
}

unint64_t sub_1BFA5ABC0()
{
  result = qword_1EDCC7070;
  if (!qword_1EDCC7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7070);
  }

  return result;
}

unint64_t sub_1BFA5AC18()
{
  result = qword_1EDCC7508;
  if (!qword_1EDCC7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7508);
  }

  return result;
}

unint64_t sub_1BFA5AC70()
{
  result = qword_1EDCC7510;
  if (!qword_1EDCC7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7510);
  }

  return result;
}

unint64_t sub_1BFA5ACC4()
{
  result = qword_1EDCC74E8;
  if (!qword_1EDCC74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return sub_1BFAAFEB8();
}

uint64_t OUTLINED_FUNCTION_45_1()
{
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1)
{

  return sub_1BFAAEE18();
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAFE08();
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_1BFAAEE28();
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BFAAFF08();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1BFAAFE08();
}

uint64_t *OUTLINED_FUNCTION_77_1(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 32);
  *(v1 - 104) = v2;
  *(v1 - 96) = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 - 128));
}

uint64_t BaseSink.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BaseSink.__allocating_init()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 80);

  return BaseSink.__allocating_init(callback:)(&unk_1BFAB4698, v1);
}

uint64_t BaseSink.init(callback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BFA5B118()
{
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA5B1B0;

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1BFA5B1B0()
{
  OUTLINED_FUNCTION_40();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BaseSink.dispatch(event:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA5B2C0, 0, 0);
}

uint64_t sub_1BFA5B2C0()
{
  OUTLINED_FUNCTION_40();
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BFA5B3B0;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1BFA5B3B0()
{
  OUTLINED_FUNCTION_40();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BaseSink.__deallocating_deinit()
{
  BaseSink.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BFA5B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  v11 = *(a6 + 16);
  v18 = *a6;
  v19 = v11;
  v20 = *(a6 + 24);
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v12 = sub_1BFAAE758();
  }

  else
  {
    v12 = 0;
  }

  if (sub_1BFAAE778())
  {
    v13 = sub_1BFAAE768();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BFA794C4(v12, v13);

  v15 = v21;
  result = sub_1BFA5B6A8(a1, a2, a3, a4, a5 & 1, &v18, v14 & 1);
  if (v15)
  {
    return v17;
  }

  return result;
}

void *sub_1BFA5B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v8 = a7;
  v9 = a5;
  v13 = *(a6 + 16);
  v27 = *a6;
  v28 = v13;
  v29 = *(a6 + 24);
  sub_1BFA5B93C(&v27, a7, &v30);
  v15 = v30;
  v14 = v31;
  if ((sub_1BFA5BFD8(v9, v31 != 0) & 1) == 0)
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v16 = sub_1BFAAF688();
    __swift_project_value_buffer(v16, qword_1EDCC7478);
    v17 = sub_1BFAAF668();
    v18 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_9();
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Requirements are not satisfied for returning a SiriHint view. Returning nil SiriHint Ace view";
    goto LABEL_9;
  }

  if ((v8 & 1) == 0)
  {
    *&v27 = v15;
    *(&v27 + 1) = v14;
    v21 = v32;
    v22 = sub_1BFA5C480(a1, a2, a3, a4, &v27);
    if (v21)
    {

      return v7;
    }

    v7 = v22;
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  if ((sub_1BFAAF048() & 1) == 0)
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v23 = sub_1BFAAF688();
    __swift_project_value_buffer(v23, qword_1EDCC7478);
    v17 = sub_1BFAAF668();
    v18 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_9();
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Environment indicates SiriHint VOX should be presented, but VOX hints is not enabled. Returning nil ACE view";
LABEL_9:
    _os_log_impl(&dword_1BF9F6000, v17, v18, v20, v19, 2u);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
LABEL_10:

    return 0;
  }

  v7 = sub_1BFA5C340();
LABEL_18:
  v24 = v7;
  if (v14)
  {
  }

  return v7;
}

void sub_1BFA5B93C(__int128 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BFAAE7F8();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  v23 = *(a1 + 16);
  v72 = *a1;
  v73 = v23;
  v74 = *(a1 + 24);
  if ((sub_1BFA79C98(&v72) & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v43 = sub_1BFAAF688();
    v44 = __swift_project_value_buffer(v43, qword_1EDCC7478);
    v45 = sub_1BFAAF668();
    v46 = sub_1BFAAFB78();
    if (!OUTLINED_FUNCTION_43_0(v46))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_2_9();
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "CrossDomainHint not applicable for current Siri execution context. Returning nil ACE view";
    goto LABEL_15;
  }

  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v49 = sub_1BFAAF688();
    v44 = __swift_project_value_buffer(v49, qword_1EDCC7478);
    v45 = sub_1BFAAF668();
    v50 = sub_1BFAAFB78();
    if (!OUTLINED_FUNCTION_43_0(v50))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_2_9();
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "InputOrigin unavailable. Returning nil crossDomainHintType";
LABEL_15:
    _os_log_impl(&dword_1BF9F6000, v45, v44, v48, v47, 2u);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
LABEL_16:

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v68 = a2;
  v71 = a3;
  sub_1BFAAE758();

  sub_1BFAAF4D8();

  (*(v10 + 32))(v22, v20, v8);
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v24 = sub_1BFAAF688();
  v25 = __swift_project_value_buffer(v24, qword_1EDCC7478);
  v26 = *(v10 + 16);
  v70 = v22;
  v26(v17, v22, v8);
  swift_retain_n();
  v69 = v25;
  v27 = v10;
  v28 = sub_1BFAAF668();
  v29 = sub_1BFAAFB78();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v8;
    v32 = v27;
    v67 = v27;
    v33 = v30;
    v66 = swift_slowAlloc();
    *&v72 = v66;
    *v33 = 136315650;
    v34 = sub_1BFAAE7E8();
    v36 = v35;
    v37 = v32;
    v8 = v31;
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_5_5();
    v38(v39);
    v40 = sub_1BF9F88A8(v34, v36, &v72);

    *(v33 + 4) = v40;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v68 & 1;
    *(v33 + 18) = 1024;
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    LOBYTE(v40) = sub_1BFAAF048();

    *(v33 + 20) = v40 & 1;

    _os_log_impl(&dword_1BF9F6000, v28, v29, "Getting crossDomainHint.\nInput origin: %s\nShould present dialog: %{BOOL}d\nVOX hints enabled: %{BOOL}d", v33, 0x18u);
    __swift_destroy_boxed_opaque_existential_2Tm(v66);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();

    v41 = v38;
    v42 = v71;
    v27 = v67;
  }

  else
  {

    v41 = *(v27 + 8);
    v51 = OUTLINED_FUNCTION_5_5();
    v41(v51);
    v42 = v71;
  }

  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v52 = sub_1BFAAF088();
  v53 = v70;
  if ((v52 & 1) == 0)
  {
    v55 = sub_1BFAAF668();
    v59 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v59))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      v62 = "crossDomainHint feature flag not enabled. Returning nil crossDomainHintType";
LABEL_30:
      OUTLINED_FUNCTION_8_5(&dword_1BF9F6000, v60, v61, v62);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

LABEL_31:

    v64 = OUTLINED_FUNCTION_5_5();
    v41(v64);
    *v42 = 0;
    v42[1] = 0;
    return;
  }

  swift_getObjectType();
  if ((sub_1BFAAF0B8() & 1) == 0)
  {
    v55 = sub_1BFAAF668();
    v63 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v63))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      v62 = "UserDefaults 'announcementsEnabled' is set to false. Returning nil crossDomainHint";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  (*(v27 + 104))(v14, *MEMORY[0x1E69D34E8], v8);
  v54 = sub_1BFA53CE8(v53, v14);
  (v41)(v14, v8);
  if (v54 & 1) == 0 || (v68 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]), (sub_1BF9F8E78(0x6B6361426F67, 0xE600000000000000)))
  {
    v55 = sub_1BFAAF668();
    v56 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v56))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_5(&dword_1BF9F6000, v57, v58, "No crossDomainHint applicable");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    goto LABEL_31;
  }

  sub_1BF9F94C4((v4 + 18), &v72);
  sub_1BFA7D65C(&v72, v42);
  v65 = OUTLINED_FUNCTION_5_5();
  v41(v65);
}

uint64_t sub_1BFA5BFD8(char a1, char a2)
{
  if (a2)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB68();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "Crossdomain hint applicable. Should return SiriHint AceView", v6, 2u);
      MEMORY[0x1BFB618C0](v6, -1, -1);
    }

    return 1;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v9 = sub_1BFAAF688();
    __swift_project_value_buffer(v9, qword_1EDCC7478);
    v10 = sub_1BFAAF668();
    v11 = sub_1BFAAFB68();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Excluding hints snippet rendering as there is no claim present on this request";
    goto LABEL_20;
  }

  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v14 = sub_1BFAAF688();
    __swift_project_value_buffer(v14, qword_1EDCC7478);
    v10 = sub_1BFAAF668();
    v11 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No currentDevice set on the currentTask, so not able to check continuers feature flag. Disabling continuers";
LABEL_20:
    _os_log_impl(&dword_1BF9F6000, v10, v11, v13, v12, 2u);
    MEMORY[0x1BFB618C0](v12, -1, -1);
LABEL_21:

    return 0;
  }

  sub_1BFAAE768();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));

  v8 = sub_1BFAAF058();

  if (v8)
  {

    return 1;
  }

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v15 = sub_1BFAAF688();
  __swift_project_value_buffer(v15, qword_1EDCC7478);
  v16 = sub_1BFAAF668();
  v17 = sub_1BFAAFB78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BF9F6000, v16, v17, "Continuers feature flag not enabled. Returning nil ACE view", v18, 2u);
    MEMORY[0x1BFB618C0](v18, -1, -1);
  }

  return 0;
}

id sub_1BFA5C340()
{
  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC7478);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "Returning empty SAAceView with Hint UI Item Type, no snippet data", v3, 2u);
    MEMORY[0x1BFB618C0](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
  v5 = sub_1BFAAF868();
  sub_1BFA53268(v5, v6, v4);
  sub_1BFA5CDA0();
  v7 = sub_1BFAAFB98();
  [v4 setListenAfterSpeaking_];

  return v4;
}

id sub_1BFA5C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v50 = a2;
  v6 = v5;
  v52 = a4;
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v48 = sub_1BFAAE3F8();
  v55 = *(v48 - 8);
  v14 = *(v55 + 64);
  v15 = MEMORY[0x1EEE9AC00](v48);
  v16 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - v17;
  v18 = a5[1];
  v51 = *a5;
  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v19 = sub_1BFAAF688();
  __swift_project_value_buffer(v19, qword_1EDCC7478);
  v20 = sub_1BFAAF668();
  v21 = sub_1BFAAFB78();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v14;
    v23 = v18;
    v24 = v16;
    v25 = v13;
    v26 = a3;
    v27 = v6;
    v28 = v22;
    *v22 = 0;
    _os_log_impl(&dword_1BF9F6000, v20, v21, "Returning RF 2.0 output for SiriHints", v22, 2u);
    v29 = v28;
    v6 = v27;
    a3 = v26;
    v13 = v25;
    v16 = v24;
    v18 = v23;
    MEMORY[0x1BFB618C0](v29, -1, -1);
  }

  v30 = v6[7];
  v54[0] = a3;
  v54[1] = v52;
  v54[2] = v30;
  v54[3] = v51;
  v54[4] = v18;
  sub_1BFA5CDE4(v54);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
    swift_bridgeObjectRetain_n();

    sub_1BFA450DC(0x6B6361426F67, 0xE600000000000000);
    sub_1BFAAE388();
    v31 = v48;
    if (__swift_getEnumTagSinglePayload(v13, 1, v48) == 1)
    {

      sub_1BFA5CDF4(v13);
    }

    else
    {
      v44 = v6;
      v32 = v55;
      v45 = *(v55 + 32);
      v33 = v46;
      v45(v46, v13, v31);
      v34 = sub_1BFAAFA98();
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v34);
      (*(v32 + 16))(v16, v33, v31);
      v35 = (*(v32 + 80) + 56) & ~*(v32 + 80);
      v36 = swift_allocObject();
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      v37 = v51;
      *(v36 + 4) = v44;
      *(v36 + 5) = v37;
      *(v36 + 6) = v18;
      v45(&v36[v35], v16, v31);

      sub_1BFA0C8A4();

      (*(v55 + 8))(v46, v31);
    }
  }

  else
  {

    v31 = v48;
  }

  memcpy(v53, v54, sizeof(v53));
  sub_1BFAAE3E8();
  v38 = sub_1BFAAE398();
  v40 = v39;
  (*(v55 + 8))(v16, v31);
  v41 = sub_1BFA7CD74(v49, v50, v38, v40);

  return v41;
}

uint64_t sub_1BFA5C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v8 = sub_1BFAAE3F8();
  v7[4] = v8;
  v7[5] = *(v8 - 8);
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5CA00, 0, 0);
}

uint64_t sub_1BFA5CA00(uint64_t a1)
{
  v2 = v1[2];
  sub_1BFAAE3E8();
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_1BFA5CB48;
  v6 = v1[6];

  return v8(v6, 0x6B6361426F67, 0xE600000000000000, v3, v4);
}

uint64_t sub_1BFA5CB48()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA5CC38, 0, 0);
}

uint64_t sub_1BFA5CC38()
{
  v1 = v0[2];
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
  v8 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA2B2D0;
  v5 = v0[6];
  v6 = v0[3];

  return v8(v6, v5, v2, v3);
}

void *sub_1BFA5CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  result = sub_1BFA5B580(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

unint64_t sub_1BFA5CDA0()
{
  result = qword_1EBDFBB98;
  if (!qword_1EBDFBB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDFBB98);
  }

  return result;
}

uint64_t sub_1BFA5CDF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA5CE5C(uint64_t a1)
{
  v4 = *(sub_1BFAAE3F8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BFA2B6C0;

  return sub_1BFA5C940(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t ContinuationsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v0 + 112) = sub_1BFAAF7D8();
  return v0;
}

uint64_t ContinuationsManager.init()()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v0 + 112) = sub_1BFAAF7D8();
  return v0;
}

uint64_t sub_1BFA5D030(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDCC8BC0 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v4 = sub_1BFAAF688();
  __swift_project_value_buffer(v4, qword_1EDCC8B70);

  v5 = sub_1BFAAF668();
  v6 = sub_1BFAAFB68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*(v2 + 112) + 16);

    _os_log_impl(&dword_1BF9F6000, v5, v6, "[warning] Force resuming %ld pending requests to Suggestions service.", v7, 0xCu);
    MEMORY[0x1BFB618C0](v7, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v8 = *(v2 + 112);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_13:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v8 + 56) + ((v14 << 10) | (16 * v15)));
      v18[0] = a1;

      v16(v18);

      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE0, &unk_1BFAB4778);
  sub_1BFAAF7E8();
  return swift_endAccess();
}

uint64_t sub_1BFA5D280(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BFA01764(a1, a2);
  v6 = v5;
  if (v5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB888, &unk_1BFAB1940);
    sub_1BFAAFCD8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
    sub_1BFAAFCF8();
    *(v2 + 112) = v8;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return v6 & 1;
}

void ContinuationsManager.ManagedContinuation.resume(returning:)()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OUTLINED_FUNCTION_36_7();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v7);
  v8 = OUTLINED_FUNCTION_18_7();
  v9(v8);
  v10 = OUTLINED_FUNCTION_17_4();
  v11(v10);
  OUTLINED_FUNCTION_11_8();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = *(v2 + 24);
  v13 = OUTLINED_FUNCTION_32_4(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_30_4();
  v16(v15);
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA5D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = *(a6 - 8);
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5D63C, 0, 0);
}

uint64_t sub_1BFA5D63C()
{
  OUTLINED_FUNCTION_40();
  v1 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, v0[4], v0[5], v0[6]);
  OUTLINED_FUNCTION_6_9(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5D6AC, v2, 0);
}

uint64_t sub_1BFA5D6AC()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 96) = sub_1BFA5D280(*(v0 + 80), *(v0 + 88)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA5D714()
{
  if (*(v0 + 96) == 1)
  {
    v1 = OUTLINED_FUNCTION_12_9();
    v2(v1);
    OUTLINED_FUNCTION_14_4();
    sub_1BFAAFA78();
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v3();
}

void ContinuationsManager.ManagedContinuation.resume(throwing:)()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OUTLINED_FUNCTION_36_7();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v7);
  v8 = OUTLINED_FUNCTION_18_7();
  v9(v8);
  v10 = OUTLINED_FUNCTION_17_4();
  v11(v10);
  OUTLINED_FUNCTION_11_8();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = *(v2 + 16);
  v12[5] = v3;
  v12[6] = *(v2 + 32);
  v13 = OUTLINED_FUNCTION_32_4(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_30_4();
  v16(v15);
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA5D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = *(a7 - 8);
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5DA50, 0, 0);
}

uint64_t sub_1BFA5DA50()
{
  OUTLINED_FUNCTION_40();
  v1 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, v0[4], v0[5], v0[6]);
  OUTLINED_FUNCTION_6_9(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5DAC0, v2, 0);
}

uint64_t sub_1BFA5DAC0()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 96) = sub_1BFA5D280(*(v0 + 80), *(v0 + 88)) & 1;
  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA5DB28()
{
  if (*(v0 + 96) == 1)
  {
    v1 = OUTLINED_FUNCTION_12_9();
    v2(v1);
    OUTLINED_FUNCTION_14_4();
    sub_1BFAAFA78();
    sub_1BFAAFA58();
  }

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA5DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v16 = sub_1BFAAFA78();
  (*(*(v16 - 8) + 32))(a5, a1, v16);
  result = type metadata accessor for ContinuationsManager.ManagedContinuation(0, a6, a7, a8);
  *(a5 + *(result + 44)) = a2;
  v18 = (a5 + *(result + 48));
  *v18 = a3;
  v18[1] = a4;
  return result;
}

uint64_t sub_1BFA5DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5DCAC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 72) = v4;
  *v4 = v5;
  v4[1] = sub_1BFA5DDA8;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0xD00000000000002FLL, 0x80000001BFAB95B0, sub_1BFA5F46C, v2, v6);
}

uint64_t sub_1BFA5DDA8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA5DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BFAAFA78();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a6);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v8 + 80) + v20 + 8) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a6;
  (*(v11 + 32))(&v23[v19], v14, v27);
  *&v23[v20] = v30;
  (*(v8 + 32))(&v23[v21], v28, a6);
  v24 = &v23[v22];
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA5E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v18;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(v18 - 8);
  v8[8] = v9;
  v8[9] = *(v9 + 64);
  v8[10] = swift_task_alloc();
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];
  v12 = sub_1BFAAFA78();
  v8[11] = v12;
  v13 = *(v12 - 8);
  v8[12] = v13;
  v8[13] = *(v13 + 64);
  v8[14] = swift_task_alloc();
  v14 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, v18, v10, v11);
  v8[15] = v14;
  v8[16] = *(v14 - 8);
  v8[17] = swift_task_alloc();
  v15 = sub_1BFAAE3F8();
  v8[18] = v15;
  v8[19] = *(v15 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5E398, 0, 0);
}

uint64_t sub_1BFA5E398(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[17];
  v5 = v1[14];
  v6 = v1[12];
  v7 = v1[11];
  v26 = v1[10];
  v8 = v1[8];
  v27 = v1[13];
  v23 = v1[18];
  v24 = v1[7];
  v9 = v1[3];
  v25 = v1[4];
  v10 = v1[2];
  sub_1BFAAE3E8();
  v11 = sub_1BFAAE398();
  v21 = v12;
  v22 = v11;
  (*(v3 + 8))(v2, v23);
  v13 = *(v6 + 16);
  v13(v5, v10, v7);
  sub_1BFA5DBCC(v5, v9, v22, v21, v4, v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  OUTLINED_FUNCTION_33_3();
  v1[21] = v14;
  v1[22] = *(v15 + 8);
  v16 = v7;
  v13(v5, v10, v7);
  (*(v8 + 16))(v26, v25, v24);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = (v27 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v1[23] = v19;
  *(v19 + 16) = v24;
  (*(v6 + 32))(v19 + v17, v5, v16);
  (*(v8 + 32))(v19 + v18, v26, v24);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5E5A8, v9, 0);
}

uint64_t sub_1BFA5E5A8()
{
  OUTLINED_FUNCTION_40();
  sub_1BFA0143C(v0[21], v0[22], sub_1BFA5FBEC, v0[23]);

  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA5E62C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  (*(v0 + 40))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA5E6F0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4);
  sub_1BFAAFA78();
  return sub_1BFAAFA68();
}

uint64_t sub_1BFA5E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5E7EC()
{
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v3;
  *v3 = v4;
  v3[1] = sub_1BFA5E8D4;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1BFA5E8D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA5E9FC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_85();

    return v6();
  }
}

uint64_t sub_1BFA5E9FC()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA5EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v8 = sub_1BFAAFA78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a5;
  (*(v9 + 32))(&v19[v17], v12, v8);
  *&v19[v18] = a2;
  v20 = &v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v21 = v24;
  *v20 = v23;
  v20[1] = v21;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA5EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v8[7] = v10;
  v11 = MEMORY[0x1E69E7288];
  v12 = sub_1BFAAFA78();
  v8[8] = v12;
  v13 = *(v12 - 8);
  v8[9] = v13;
  v8[10] = *(v13 + 64);
  v8[11] = swift_task_alloc();
  v14 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, a8, v10, v11);
  v8[12] = v14;
  v8[13] = *(v14 - 8);
  v8[14] = swift_task_alloc();
  v15 = sub_1BFAAE3F8();
  v8[15] = v15;
  v8[16] = *(v15 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5EE48, 0, 0);
}

uint64_t sub_1BFA5EE48(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[14];
  v5 = v1[11];
  v6 = v1[9];
  v7 = v1[8];
  v21 = v1[7];
  v19 = v1[15];
  v20 = v1[6];
  v9 = v1[2];
  v8 = v1[3];
  sub_1BFAAE3E8();
  v10 = sub_1BFAAE398();
  v18 = v11;
  (*(v3 + 8))(v2, v19);
  v12 = *(v6 + 16);
  v12(v5, v9, v7);
  sub_1BFA5DBCC(v5, v8, v10, v18, v4, v20, v21, MEMORY[0x1E69E7288]);
  OUTLINED_FUNCTION_33_3();
  v1[18] = v13;
  v1[19] = *(v14 + 8);
  v12(v5, v9, v7);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v1[20] = v16;
  *(v16 + 16) = v20;
  (*(v6 + 32))(v16 + v15, v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5EFE4, v8, 0);
}

uint64_t sub_1BFA5EFE4()
{
  OUTLINED_FUNCTION_40();
  sub_1BFA0143C(v0[18], v0[19], sub_1BFA5F9AC, v0[20]);

  v1 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BFA5F068()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v0 + 32))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA5F118(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFA78();
  return sub_1BFAAFA58();
}

uint64_t ContinuationsManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContinuationsManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BFA5F224()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v2 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, v0[4], v0[5], v0[6]);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_31_3();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_5_6(v3);
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5D580(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA5F348()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v2 = type metadata accessor for ContinuationsManager.ManagedContinuation(0, v0[4], v0[5], v0[6]);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_31_3();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_5_6(v3);
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5D994(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t dispatch thunk of ContinuationsManager.withManagedContinuation<A>(defaultResult:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = (*(*v5 + 152) + **(*v5 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v6 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_1BF9FDF08;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ContinuationsManager.withManagedThrowingContinuation<A>(request:)()
{
  v5 = (*(*v0 + 160) + **(*v0 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_14_4();

  return v5();
}

uint64_t sub_1BFA5F78C(uint64_t a1)
{
  result = sub_1BFAAFA78();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ContinuationsManager();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BFA5F868()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_10_7();
  v1 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5EC78(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA5F9AC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFA78();

  return sub_1BFA5F118(a1);
}

uint64_t sub_1BFA5FA50()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_10_7();
  v1 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5E180(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA5FBEC(uint64_t a1)
{
  v2 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v2);

  return sub_1BFA5E6F0(a1);
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t result)
{
  v2[9] = *(v1 + *(result + 44));
  v3 = (v1 + *(result + 48));
  v2[10] = *v3;
  v2[11] = v3[1];
  return result;
}

void OUTLINED_FUNCTION_21_5()
{

  sub_1BFA0C8A4();
}

_BYTE *storeEnumTagSinglePayload for SalientEntityExtractors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BFA5FE7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB1F20;
  a1(0);
  swift_allocObject();
  *(inited + 32) = a2();
  sub_1BFAAF6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
  sub_1BFAAE808();
  v11 = type metadata accessor for UsoSalientEntityExtractor(0);
  swift_allocObject();
  result = sub_1BFA60810(inited, v9);
  if (result)
  {
    v13 = &off_1F3F0A010;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = result;
  a4[3] = v11;
  a4[4] = v13;
  return result;
}

uint64_t sub_1BFA5FFE4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_1BFAAF688();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BFAAEFB8();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BFAAF738();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BFA48E98())
  {
    sub_1BFAAF6B8();
    sub_1BFAAF708();
    (*(v8 + 8))(v10, v7);
    sub_1BFA494C8();
    v24[3] = sub_1BFAAF308();
    v11 = MEMORY[0x1E69D3288];
    v24[4] = sub_1BFA60F8C(&qword_1EBDFBB50, MEMORY[0x1E69D3288], MEMORY[0x1E69D3298]);
    v24[5] = sub_1BFA60F8C(&qword_1EBDFBB58, v11, MEMORY[0x1E69D3290]);
    __swift_allocate_boxed_opaque_existential_1Tm(v24);
    sub_1BFAAF2F8();
    (*(v4 + 104))(v6, *MEMORY[0x1E69D3100], v21);
    sub_1BFAAF6A8();
    v12 = v23;
    sub_1BFAAED98();
    v13 = 0;
  }

  else
  {
    v14 = v23;
    sub_1BFAAF228();
    v15 = sub_1BFAAF668();
    v16 = sub_1BFAAFB78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BF9F6000, v15, v16, "Candidate from RR is not visible so is not an open app candidate", v17, 2u);
      MEMORY[0x1BFB618C0](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v22);
    v13 = 1;
    v12 = v14;
  }

  v18 = sub_1BFAAEDA8();
  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v18);
}

uint64_t sub_1BFA60378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_1BFAAEFB8();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BFAAF688();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BFAAF738();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_1BFAAEC18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_1BFAAF6B8();
  sub_1BFA8F5FC(v13);
  (*(v8 + 8))(v10, v7);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v18 = v35;
    sub_1BFA60F24(v13);
    sub_1BFAAF228();
    v19 = sub_1BFAAF668();
    v20 = sub_1BFAAFB78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "no home entity for active home extractor could be computed from the RR candidate", v21, 2u);
      MEMORY[0x1BFB618C0](v21, -1, -1);
    }

    (*(v29 + 8))(v6, v30);
    v22 = 1;
    v23 = v18;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v36[3] = v14;
    v24 = MEMORY[0x1E69D2ED8];
    v36[4] = sub_1BFA60F8C(&qword_1EBDFBCF8, MEMORY[0x1E69D2ED8], MEMORY[0x1E69D2EE8]);
    v36[5] = sub_1BFA60F8C(&qword_1EBDFBD00, v24, MEMORY[0x1E69D2EE0]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v36);
    (*(v15 + 16))(boxed_opaque_existential_1Tm, v17, v14);
    (*(v31 + 104))(v32, *MEMORY[0x1E69D30F0], v33);
    sub_1BFAAF6A8();
    v23 = v35;
    sub_1BFAAED98();
    (*(v15 + 8))(v17, v14);
    v22 = 0;
  }

  v26 = sub_1BFAAEDA8();
  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v26);
}

uint64_t sub_1BFA60810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1BFA77108();
  v7 = result;
  v8 = 0;
  while (v7 != v8)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB60E90](v8, a1);
      v9 = result;
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v11 = sub_1BFA60A48(v9);

    ++v8;
    if (v11)
    {
      MEMORY[0x1BFB60C00](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BFAAFA08();
      }

      result = sub_1BFAAFA38();
      v5 = v16;
      v8 = v10;
    }
  }

  *(v3 + 16) = v5;
  if (sub_1BFA77108())
  {
    v12 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
    OUTLINED_FUNCTION_0();
    (*(v13 + 32))(v3 + v12, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
    OUTLINED_FUNCTION_0();
    (*(v14 + 8))(a2);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1BFA60A48(uint64_t a1)
{
  v2 = sub_1BFAAF688();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1BFB5F7E0](a1))
  {
    sub_1BFAAF6E8();
    swift_allocObject();
    return sub_1BFAAF6D8();
  }

  else
  {
    sub_1BFAAF228();
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB88();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Unable to create USO entity for querying SRR", v9, 2u);
      MEMORY[0x1BFB618C0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

char *sub_1BFA60BC4(void *a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = v3[2];
  result = sub_1BFA77108();
  v7 = result;
  v8 = 0;
  v11 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
  while (1)
  {
    if (v7 == v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB60E90](v8, v5);
      v9 = result;
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v10 = sub_1BFA88244(a1, v9, v3 + v11, v4, &off_1F3F0A010);

    if (v2 || *(v10 + 2))
    {
      return v10;
    }

    ++v8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1BFA60D14()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UsoSalientEntityExtractor(uint64_t a1)
{
  result = qword_1EDCC67D0;
  if (!qword_1EDCC67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BFA60E10(uint64_t a1)
{
  sub_1BFA60EB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BFA60EB0(uint64_t a1)
{
  if (!qword_1EDCC6F78)
  {
    sub_1BFAAF6C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
    v1 = sub_1BFAAE828();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC6F78);
    }
  }
}

uint64_t sub_1BFA60F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA60F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA61024@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_54();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_1BFA610CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6 = v5;
  if (v4)
  {
    sub_1BFA75648(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

SiriSuggestionsAPI::TypingSessionEndReason_optional __swiftcall TypingSessionEndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TypingSessionEndReason.rawValue.getter()
{
  result = 0x7373696D736964;
  switch(*v0)
  {
    case 1:
      result = 0x6974736567677573;
      break;
    case 2:
      result = 0x6F4D686374697773;
      break;
    case 3:
      result = 0x74696D627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA6129C@<X0>(uint64_t *a1@<X8>)
{
  result = TypingSessionEndReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1BFA612C4()
{
  *&xmmword_1EBDFBD08 = MEMORY[0x1E69E7CC0];
  *(&xmmword_1EBDFBD08 + 1) = nullsub_1;
  *&xmmword_1EBDFBD18 = 0;
  *(&xmmword_1EBDFBD18 + 1) = nullsub_1;
  qword_1EBDFBD28 = 0;
}

uint64_t sub_1BFA61304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v25 - v1;
  v2 = sub_1BFAAE3F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AssistantEngineSuggestions(0);
  __swift_allocate_value_buffer(v15, qword_1EDCC6B10);
  v26 = __swift_project_value_buffer(v15, qword_1EDCC6B10);
  v16 = sub_1BFAAF288();
  v32[3] = sub_1BFAAECE8();
  v32[4] = sub_1BF9FD8E4(&qword_1EDCC74A8, MEMORY[0x1E69D2F48]);
  v32[0] = v16;
  sub_1BFAAE3E8();
  sub_1BF9F93E8(v32, v31);
  v17 = *(v3 + 16);
  v17(v9, v11, v2);
  sub_1BF9F93E8(v31, v30);
  v27 = v6;
  v17(v6, v9, v2);
  v18 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v18);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v29);
  v19 = *(v3 + 8);
  v19(v11, v2);
  __swift_destroy_boxed_opaque_existential_2Tm(v32);
  v19(v9, v2);
  __swift_destroy_boxed_opaque_existential_2Tm(v31);
  *v14 = v29;
  sub_1BF9FA474(v30, (v14 + 8));
  (*(v3 + 32))(&v14[v12[6]], v27, v2);
  *&v14[v12[7]] = 0xBFF0000000000000;
  sub_1BFA17BBC(v28, &v14[v12[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  v20 = v26;
  result = sub_1BFA75428(v14, v26);
  v22 = (v20 + v15[5]);
  *v22 = nullsub_1;
  v22[1] = 0;
  v23 = (v20 + v15[6]);
  *v23 = nullsub_1;
  v23[1] = 0;
  v24 = (v20 + v15[7]);
  *v24 = nullsub_1;
  v24[1] = 0;
  return result;
}

uint64_t SiriSuggestionsFacade.__allocating_init()()
{
  static SiriSuggestionsFacade.getDefaultAPIClientProvider()(v7);
  sub_1BFAAF0E8();
  v0 = sub_1BFAAF0D8();
  return OUTLINED_FUNCTION_169(v0, MEMORY[0x1E69D3170], v2, v3, v4, v5, v6);
}

uint64_t static SiriSuggestionsFacade.getDefaultAPIClientProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v3 = OUTLINED_FUNCTION_60_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  if (static SiriSuggestions.Constants.isSiriRuntimeEnabled()())
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v6 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v6, qword_1EDCC77C8);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB78();
    v9 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_2_9();
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Detected SiriRuntime. Using runtime provider for facade", v11, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    sub_1BFAAEFD8();
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_86_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = type metadata accessor for SiriRuntimeSuggestionsAPIClientProvider(0);
    v17 = swift_allocObject();
    result = sub_1BFA17BBC(v5, v17 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, &qword_1EBDFB640, &qword_1BFAB11D0);
    v19 = &protocol witness table for SiriRuntimeSuggestionsAPIClientProvider;
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v20 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v20, qword_1EDCC77C8);
    v21 = sub_1BFAAF668();
    v22 = sub_1BFAAFB78();
    v23 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_2_9();
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BF9F6000, v21, v22, "Using SiriSuggestionsXPCOnlyAPIClientProvider", v25, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v16 = type metadata accessor for SiriSuggestionsXPCOnlyAPIClientProvider();
    result = swift_allocObject();
    v17 = result;
    v19 = &off_1F3F0B578;
  }

  a1[3] = v16;
  a1[4] = v19;
  *a1 = v17;
  return result;
}

uint64_t SiriSuggestionsFacade.__allocating_init(flagProvider:)(void *a1)
{
  static SiriSuggestionsFacade.getDefaultAPIClientProvider()(v5);
  sub_1BF9F93E8(a1, v4);
  v2 = SiriSuggestionsFacade.__allocating_init(clientProvider:flagProvider:)(v5, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v2;
}

uint64_t SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)()
{
  OUTLINED_FUNCTION_80();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_1BFA61AE8;
  OUTLINED_FUNCTION_12_3();

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA61AE8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA61BE0()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = v2;
    v4 = OUTLINED_FUNCTION_148();
    sub_1BFA75028(v4, v5, v1);
    if (v2)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_163();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }
  }

  OUTLINED_FUNCTION_24_0();

  return v6();
}

uint64_t SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v16;
  *(v9 + 160) = v8;
  *(v9 + 136) = v15;
  *(v9 + 120) = v14;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  v10 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA61CCC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 168) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA61D9C;

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)();
}

uint64_t sub_1BFA61D9C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_219();

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_1BFA61F1C()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA61F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v14;
  *(v8 + 408) = v15;
  *(v8 + 384) = v13;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 344) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = type metadata accessor for SiriSuggestions.SuggestionList(0);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v9 = sub_1BFAAE3F8();
  *(v8 + 456) = v9;
  *(v8 + 464) = *(v9 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  v10 = sub_1BFAAF648();
  *(v8 + 520) = v10;
  *(v8 + 528) = *(v10 - 8);
  *(v8 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA62174, 0, 0);
}

uint64_t sub_1BFA62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v17 = *(v14 + 344);
  v18 = sub_1BFAAF258();
  sub_1BFAAF238();

  v19 = sub_1BFAAF258();
  sub_1BFAAF268();

  sub_1BFA17B2C(v17, v14 + 184, &qword_1EBDFB558, &qword_1BFAB0980);
  if (*(v14 + 208))
  {
    v20 = *(v14 + 352);
    sub_1BF9FA474((v14 + 184), v14 + 144);
    if (v20)
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v21 = *(v14 + 512);
      v23 = *(v14 + 456);
      v22 = *(v14 + 464);
      v24 = *(v14 + 360);
      v25 = sub_1BFAAF688();
      v26 = __swift_project_value_buffer(v25, qword_1EDCC77C8);
      (*(v22 + 16))(v21, v24, v23);
      v27 = sub_1BFAAF668();
      v28 = sub_1BFAAFB68();
      if (OUTLINED_FUNCTION_136_0(v28))
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_81_1();
        *v26 = 136315138;
        OUTLINED_FUNCTION_4_9();
        sub_1BF9FD8E4(v29, v30);
        sub_1BFAAFEE8();
        OUTLINED_FUNCTION_206();
        v31 = OUTLINED_FUNCTION_213();
        v33 = v32(v31);
        v37 = OUTLINED_FUNCTION_157(v33, v34, v35, v36);

        *(v26 + 4) = v37;
        OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v38, v39, "Submitting required intent properties for requestId: %s");
        OUTLINED_FUNCTION_179();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v42 = OUTLINED_FUNCTION_213();
        v43(v42);
      }

      __swift_project_boxed_opaque_existential_1((*(v14 + 368) + 16), *(*(v14 + 368) + 40));
      sub_1BFAAE398();
      OUTLINED_FUNCTION_221();
      *(v14 + 544) = v44;
      v45 = swift_task_alloc();
      *(v14 + 552) = v45;
      *v45 = v14;
      v45[1] = sub_1BFA628D8;
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61();

      return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:owner:intentProps:verb:)();
    }

    __swift_destroy_boxed_opaque_existential_2Tm((v14 + 144));
  }

  else
  {
    sub_1BF9FDD5C(v14 + 184, &qword_1EBDFB558, &qword_1BFAB0980);
  }

  v40 = *(v14 + 392);
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_113_0(v40);
    if (v17)
    {
      *(v14 + 576) = 0;
      *(v14 + 568) = v17;
      OUTLINED_FUNCTION_52_4(v41, 0);
      OUTLINED_FUNCTION_63_3();
      v50 = sub_1BFAAE398();
      OUTLINED_FUNCTION_168(v50, v51);
      v52 = swift_task_alloc();
      *(v14 + 592) = v52;
      *v52 = v14;
      OUTLINED_FUNCTION_19_4(v52);
      OUTLINED_FUNCTION_61();

      return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
    }

    OUTLINED_FUNCTION_176();
    while (v49 != v48)
    {
      OUTLINED_FUNCTION_203();
    }
  }

  OUTLINED_FUNCTION_16_1((*(v14 + 368) + 104));
  OUTLINED_FUNCTION_46();
  if (sub_1BFAAF078())
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v54 = OUTLINED_FUNCTION_155();
    __swift_project_value_buffer(v54, qword_1EDCC77C8);
    v55 = OUTLINED_FUNCTION_34_5();
    v56(v55);
    v57 = sub_1BFAAF668();
    v58 = sub_1BFAAFB68();
    v59 = OUTLINED_FUNCTION_82_1(v58);
    v60 = *(v14 + 504);
    if (v59)
    {
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_32();
      *v15 = 136315138;
      OUTLINED_FUNCTION_4_9();
      v63 = sub_1BF9FD8E4(v61, v62);
      OUTLINED_FUNCTION_186(v63);
      OUTLINED_FUNCTION_69_0();
      v64 = OUTLINED_FUNCTION_51_2();
      v16(v64);
      v65 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v65, v66, v67);
      OUTLINED_FUNCTION_131_0();

      *(v15 + 4) = v60;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(a11);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v95 = OUTLINED_FUNCTION_51_2();
      v16(v95);
    }

    *(v14 + 624) = v16;
    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 632) = v96;
    OUTLINED_FUNCTION_15_0();
    v121 = v97 + *v97;
    v98 = swift_task_alloc();
    *(v14 + 640) = v98;
    *v98 = v14;
    OUTLINED_FUNCTION_20_6(v98);
    OUTLINED_FUNCTION_61();

    return v103(v99, v100, v101, v102, v103, v104, v105, v106, a9, v121, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v73 = OUTLINED_FUNCTION_154();
    v74 = __swift_project_value_buffer(v73, qword_1EDCC77C8);
    *(v14 + 664) = v74;
    v75 = v16 + 16;
    v76 = OUTLINED_FUNCTION_45_2();
    v77(v76);
    v78 = sub_1BFAAF668();
    v79 = sub_1BFAAFB68();
    v80 = OUTLINED_FUNCTION_82_1(v79);
    v81 = *(v14 + 472);
    if (v80)
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_202();
      *v74 = 136315138;
      OUTLINED_FUNCTION_4_9();
      v84 = sub_1BF9FD8E4(v82, v83);
      OUTLINED_FUNCTION_186(v84);
      OUTLINED_FUNCTION_69_0();
      v85 = OUTLINED_FUNCTION_40_0();
      v86(v85);
      v87 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v87, v88, v89);
      OUTLINED_FUNCTION_131_0();

      *(v74 + 4) = v81;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v107 = OUTLINED_FUNCTION_40_0();
      v108(v107);
    }

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 672) = v109;
    OUTLINED_FUNCTION_28_4(*(*(v75 + 3) + 16));
    v122 = v110 + *v110;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v14 + 680) = v111;
    *v111 = v112;
    OUTLINED_FUNCTION_18_8(v111);
    OUTLINED_FUNCTION_61();

    return v118(v113, v114, v115, v116, v117, v118, v119, v120, a9, v122, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA628D8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v0;

  OUTLINED_FUNCTION_219();

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA629F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_2Tm(v15 + 18);
  v18 = v15[49];
  if (!v18)
  {
LABEL_10:
    OUTLINED_FUNCTION_16_1((v15[46] + 104));
    OUTLINED_FUNCTION_46();
    if (sub_1BFAAF078())
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v27 = OUTLINED_FUNCTION_155();
      __swift_project_value_buffer(v27, qword_1EDCC77C8);
      v28 = OUTLINED_FUNCTION_34_5();
      v29(v28);
      v30 = sub_1BFAAF668();
      v31 = sub_1BFAAFB68();
      v32 = OUTLINED_FUNCTION_82_1(v31);
      v33 = v15[63];
      if (v32)
      {
        OUTLINED_FUNCTION_51_0();
        a11 = OUTLINED_FUNCTION_32();
        *v16 = 136315138;
        OUTLINED_FUNCTION_4_9();
        v36 = sub_1BF9FD8E4(v34, v35);
        OUTLINED_FUNCTION_186(v36);
        OUTLINED_FUNCTION_69_0();
        v37 = OUTLINED_FUNCTION_51_2();
        v17(v37);
        v38 = OUTLINED_FUNCTION_34_2();
        sub_1BF9F88A8(v38, v39, v40);
        OUTLINED_FUNCTION_131_0();

        *(v16 + 4) = v33;
        OUTLINED_FUNCTION_27_6();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(a11);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v68 = OUTLINED_FUNCTION_51_2();
        v17(v68);
      }

      v15[78] = v17;
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_165();
      v15[79] = v69;
      OUTLINED_FUNCTION_15_0();
      v94 = v70 + *v70;
      v71 = swift_task_alloc();
      v15[80] = v71;
      *v71 = v15;
      OUTLINED_FUNCTION_20_6(v71);
      OUTLINED_FUNCTION_61();

      return v76(v72, v73, v74, v75, v76, v77, v78, v79, a9, v94, a11, a12, a13, a14);
    }

    else
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v46 = OUTLINED_FUNCTION_154();
      v47 = __swift_project_value_buffer(v46, qword_1EDCC77C8);
      v15[83] = v47;
      v48 = v17 + 16;
      v49 = OUTLINED_FUNCTION_45_2();
      v50(v49);
      v51 = sub_1BFAAF668();
      v52 = sub_1BFAAFB68();
      v53 = OUTLINED_FUNCTION_82_1(v52);
      v54 = v15[59];
      if (v53)
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_202();
        *v47 = 136315138;
        OUTLINED_FUNCTION_4_9();
        v57 = sub_1BF9FD8E4(v55, v56);
        OUTLINED_FUNCTION_186(v57);
        OUTLINED_FUNCTION_69_0();
        v58 = OUTLINED_FUNCTION_40_0();
        v59(v58);
        v60 = OUTLINED_FUNCTION_34_2();
        sub_1BF9F88A8(v60, v61, v62);
        OUTLINED_FUNCTION_131_0();

        *(v47 + 4) = v54;
        OUTLINED_FUNCTION_27_6();
        _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v80 = OUTLINED_FUNCTION_40_0();
        v81(v80);
      }

      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_165();
      v15[84] = v82;
      OUTLINED_FUNCTION_28_4(*(*(v48 + 3) + 16));
      v95 = v83 + *v83;
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v15[85] = v84;
      *v84 = v85;
      OUTLINED_FUNCTION_18_8(v84);
      OUTLINED_FUNCTION_61();

      return v91(v86, v87, v88, v89, v90, v91, v92, v93, a9, v95, a11, a12, a13, a14);
    }
  }

  v19 = OUTLINED_FUNCTION_113_0(v18);
  if (!v14)
  {
    OUTLINED_FUNCTION_176();
    while (v21 != v20)
    {
      OUTLINED_FUNCTION_203();
    }

    goto LABEL_10;
  }

  v15[72] = 0;
  v15[71] = v14;
  OUTLINED_FUNCTION_52_4(v19, 0);
  OUTLINED_FUNCTION_63_3();
  v22 = sub_1BFAAE398();
  OUTLINED_FUNCTION_168(v22, v23);
  v24 = swift_task_alloc();
  v15[74] = v24;
  *v24 = v15;
  OUTLINED_FUNCTION_19_4(v24);
  OUTLINED_FUNCTION_61();

  return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFA62EB8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 600) = v0;

  OUTLINED_FUNCTION_219();

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA62FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  sub_1BF9FDD5C(v14 + 80, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v17 = *(v14 + 576);
  v18 = (*(v14 + 568) - 1) & *(v14 + 568);
  if (v18)
  {
    v19 = *(v14 + 392);
LABEL_7:
    *(v14 + 576) = v17;
    *(v14 + 568) = v18;
    OUTLINED_FUNCTION_52_4(v19, v17);
    OUTLINED_FUNCTION_63_3();
    v21 = sub_1BFAAE398();
    OUTLINED_FUNCTION_168(v21, v22);
    v23 = swift_task_alloc();
    *(v14 + 592) = v23;
    *v23 = v14;
    OUTLINED_FUNCTION_19_4(v23);
    OUTLINED_FUNCTION_61();

    return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v19 = *(v14 + 392);
      if (v20 >= (((1 << *(v14 + 696)) + 63) >> 6))
      {
        break;
      }

      v18 = *(v19 + 8 * v20 + 64);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_16_1((*(v14 + 368) + 104));
    OUTLINED_FUNCTION_46();
    if (sub_1BFAAF078())
    {
      if (qword_1EDCC77C0 == -1)
      {
LABEL_12:
        v26 = OUTLINED_FUNCTION_155();
        __swift_project_value_buffer(v26, qword_1EDCC77C8);
        v27 = OUTLINED_FUNCTION_34_5();
        v28(v27);
        v29 = sub_1BFAAF668();
        v30 = sub_1BFAAFB68();
        v31 = OUTLINED_FUNCTION_82_1(v30);
        v32 = *(v14 + 504);
        if (v31)
        {
          OUTLINED_FUNCTION_51_0();
          a11 = OUTLINED_FUNCTION_32();
          *v15 = 136315138;
          OUTLINED_FUNCTION_4_9();
          v35 = sub_1BF9FD8E4(v33, v34);
          OUTLINED_FUNCTION_186(v35);
          OUTLINED_FUNCTION_69_0();
          v36 = OUTLINED_FUNCTION_51_2();
          v16(v36);
          v37 = OUTLINED_FUNCTION_34_2();
          sub_1BF9F88A8(v37, v38, v39);
          OUTLINED_FUNCTION_131_0();

          *(v15 + 4) = v32;
          OUTLINED_FUNCTION_27_6();
          _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_2Tm(a11);
          OUTLINED_FUNCTION_1_2();
          MEMORY[0x1BFB618C0]();
          OUTLINED_FUNCTION_1_2();
          MEMORY[0x1BFB618C0]();
        }

        else
        {

          v67 = OUTLINED_FUNCTION_51_2();
          v16(v67);
        }

        *(v14 + 624) = v16;
        OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_165();
        *(v14 + 632) = v68;
        OUTLINED_FUNCTION_15_0();
        v93 = v69 + *v69;
        v70 = swift_task_alloc();
        *(v14 + 640) = v70;
        *v70 = v14;
        OUTLINED_FUNCTION_20_6(v70);
        OUTLINED_FUNCTION_61();

        return v75(v71, v72, v73, v74, v75, v76, v77, v78, a9, v93, a11, a12, a13, a14);
      }

LABEL_27:
      OUTLINED_FUNCTION_0_3();
      swift_once();
      goto LABEL_12;
    }

    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v45 = OUTLINED_FUNCTION_154();
    v46 = __swift_project_value_buffer(v45, qword_1EDCC77C8);
    *(v14 + 664) = v46;
    v47 = v16 + 16;
    v48 = OUTLINED_FUNCTION_45_2();
    v49(v48);
    v50 = sub_1BFAAF668();
    v51 = sub_1BFAAFB68();
    v52 = OUTLINED_FUNCTION_82_1(v51);
    v53 = *(v14 + 472);
    if (v52)
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_202();
      *v46 = 136315138;
      OUTLINED_FUNCTION_4_9();
      v56 = sub_1BF9FD8E4(v54, v55);
      OUTLINED_FUNCTION_186(v56);
      OUTLINED_FUNCTION_69_0();
      v57 = OUTLINED_FUNCTION_40_0();
      v58(v57);
      v59 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v59, v60, v61);
      OUTLINED_FUNCTION_131_0();

      *(v46 + 4) = v53;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v79 = OUTLINED_FUNCTION_40_0();
      v80(v79);
    }

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 672) = v81;
    OUTLINED_FUNCTION_28_4(*(*(v47 + 3) + 16));
    v94 = v82 + *v82;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v14 + 680) = v83;
    *v83 = v84;
    OUTLINED_FUNCTION_18_8(v83);
    OUTLINED_FUNCTION_61();

    return v90(v85, v86, v87, v88, v89, v90, v91, v92, a9, v94, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA634D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 648) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA635D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_80();
  a22 = v24;
  v59 = *(v24 + 648);
  v27 = *(v24 + 608);
  v29 = *(v24 + 488);
  v28 = *(v24 + 496);
  v30 = *(v24 + 480);
  v31 = *(v24 + 456);
  v32 = sub_1BFAAF288();
  *(v24 + 248) = sub_1BFAAECE8();
  OUTLINED_FUNCTION_25_5();
  v35 = sub_1BF9FD8E4(v33, v34);
  *(v24 + 224) = v32;
  *(v24 + 256) = v35;
  sub_1BFAAE3E8();
  sub_1BF9F93E8(v24 + 224, v24 + 264);
  v27(v29, v28, v31);
  sub_1BF9F93E8(v24 + 264, v24 + 304);
  v27(v30, v29, v31);
  sub_1BFAAED08();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  a12 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&a12);
  if (v59)
  {

    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v42 = *(v24 + 624);
    v43 = *(v24 + 456);
    v44 = *(v24 + 464);
    v45 = *(v24 + 448);
    v46 = *(v24 + 424);
    v58 = *(v24 + 480);
    v60 = *(v24 + 416);
    v47 = *(v24 + 400);
    (v42)(*(v24 + 496), v43);
    __swift_destroy_boxed_opaque_existential_2Tm((v24 + 224));
    v48 = OUTLINED_FUNCTION_164();
    v42(v48);
    __swift_destroy_boxed_opaque_existential_2Tm((v24 + 264));
    *v45 = a12;
    sub_1BF9FA474((v24 + 304), (v45 + 8));
    (*(v44 + 32))(&v45[v46[6]], v58, v43);
    *&v45[v46[7]] = 0xBFF0000000000000;
    sub_1BFA17BBC(v60, &v45[v46[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
    v61 = v47 + *v47;
    v49 = swift_task_alloc();
    *(v24 + 656) = v49;
    *v49 = v24;
    v49[1] = sub_1BFA6387C;
    OUTLINED_FUNCTION_53(*(v24 + 448));
    OUTLINED_FUNCTION_12_3();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v58, v61, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1BFA6387C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA63980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v18 = OUTLINED_FUNCTION_103_0(v16, v17);
  OUTLINED_FUNCTION_190(v18, "SiriSuggestionsFacadeSiriHints");

  v19 = OUTLINED_FUNCTION_146();
  v20(v19);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA63A5C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA63B5C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v1, v2);
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_82_1(v4))
  {
    v5 = OUTLINED_FUNCTION_51_0();
    *v5 = 134217984;
    v6 = *(SiriSuggestions.SuggestionList.suggestions.getter() + 16);

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    *(v5 + 4) = v6;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
    sub_1BFA755F8();
  }

  v12 = swift_task_alloc();
  *(v0 + 688) = v12;
  *v12 = v0;
  v12[1] = sub_1BFA63CF4;
  OUTLINED_FUNCTION_53(*(v0 + 440));
  OUTLINED_FUNCTION_112();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BFA63CF4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA63DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_1_7();
  v16 = sub_1BFA755F8();
  v18 = OUTLINED_FUNCTION_103_0(v16, v17);
  OUTLINED_FUNCTION_190(v18, "SiriSuggestionsFacadeSiriHints");

  v19 = OUTLINED_FUNCTION_146();
  v20(v19);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA63EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v19 = __swift_destroy_boxed_opaque_existential_2Tm((v18 + 144));
  v21 = OUTLINED_FUNCTION_32_5(v19, v20);
  OUTLINED_FUNCTION_118_0(v21, "SiriSuggestionsFacadeSiriHints");

  v22 = OUTLINED_FUNCTION_71();
  v23(v22);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA63FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();

  v19 = sub_1BF9FDD5C(v18 + 80, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v21 = OUTLINED_FUNCTION_32_5(v19, v20);
  OUTLINED_FUNCTION_118_0(v21, "SiriSuggestionsFacadeSiriHints");

  v22 = OUTLINED_FUNCTION_71();
  v23(v22);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA640B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();

  v20 = OUTLINED_FUNCTION_32_5(v18, v19);
  OUTLINED_FUNCTION_118_0(v20, "SiriSuggestionsFacadeSiriHints");

  v21 = OUTLINED_FUNCTION_71();
  v22(v21);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t SiriSuggestionsFacade.flushLocalStoreProperties(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA641B4()
{
  OUTLINED_FUNCTION_72();
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v3 = *(v1 + 24);
  v4 = sub_1BFAAF688();
  __swift_project_value_buffer(v4, qword_1EDCC77C8);
  OUTLINED_FUNCTION_125_0();

  v5 = sub_1BFAAF668();
  sub_1BFAAFB68();
  OUTLINED_FUNCTION_53_0();
  if (os_log_type_enabled(v5, v0))
  {
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_81_1();
    *v2 = 136315138;
    v6 = OUTLINED_FUNCTION_148();
    *(v2 + 4) = sub_1BF9F88A8(v6, v7, v8);
    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v9, v10, v11, v12, v2, 0xCu);
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  OUTLINED_FUNCTION_16_5(*(v1 + 32));
  OUTLINED_FUNCTION_39(*(v3 + 16));
  OUTLINED_FUNCTION_30();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_156(v13);
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_22_4(v14);

  return v17(v16);
}

uint64_t SiriSuggestionsFacade.flush(for:)()
{
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  v3 = OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsFacade.flushLocalStoreProperties(for:)(v3, v4);
}

uint64_t SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:dialogPhase:)@<X0>(uint64_t *x8_0@<X8>)
{

  SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:executionContextData:)(x8_0);
}

void SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:executionContextData:)(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v6 = sub_1BFAAF688();
  __swift_project_value_buffer(v6, qword_1EDCC77C8);
  v7 = sub_1BFAAF668();
  sub_1BFAAFB68();
  v8 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_2_9();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_180(v10);
    OUTLINED_FUNCTION_212();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    v3 = v2;
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  __swift_project_boxed_opaque_existential_1((v4 + 144), *(v4 + 168));
  OUTLINED_FUNCTION_111_0();
  v20 = sub_1BFA2BDBC(v16, v17, v18, v19);
  if (!v3)
  {
    v22 = v20;
    v23 = v21;
    if (v21)
    {
      if (v20)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v22;
        }
      }

      else
      {
        v24 = 0;
      }

      *a1 = v24;
      a1[1] = v22;
      a1[2] = v23;
    }

    else
    {
      v26 = sub_1BFAAF668();
      sub_1BFAAFB78();
      v27 = OUTLINED_FUNCTION_72_2();
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_2_9();
        v29 = swift_slowAlloc();
        OUTLINED_FUNCTION_180(v29);
        OUTLINED_FUNCTION_212();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        v35 = OUTLINED_FUNCTION_67();
        sub_1BF9FFC50(v35, v36, 0);
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }
  }
}

uint64_t sub_1BFA6470C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 16));
  OUTLINED_FUNCTION_39(*(v0 + 16));
  OUTLINED_FUNCTION_30();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_45(v3);
  v4 = OUTLINED_FUNCTION_46();

  return v6(v4);
}

uint64_t SiriSuggestionsFacade.doInApp(for:with:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1BFAAE3F8();
  v1[11] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[12] = v6;
  v1[13] = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_100();
  v8 = sub_1BFAAED58();
  v1[15] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[16] = v9;
  v1[17] = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_109();
  v1[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB90, &qword_1BFAB3AB0);
  v1[20] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_100();
  v13 = sub_1BFAAF648();
  v1[23] = v13;
  OUTLINED_FUNCTION_15(v13);
  v1[24] = v14;
  v1[25] = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAEF58();
  v1[26] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[27] = v16;
  v1[28] = OUTLINED_FUNCTION_100();
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA64A14()
{
  OUTLINED_FUNCTION_16_1((v0[10] + 104));
  OUTLINED_FUNCTION_46();
  if (sub_1BFAAF038())
  {
    goto LABEL_5;
  }

  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3(&qword_1EDCC74B0);
  }

  __swift_project_value_buffer(v0[26], qword_1EDCC74B8);
  OUTLINED_FUNCTION_163();
  v1 = sub_1BFAAEF48();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  if (v1)
  {
LABEL_5:
    v43 = v0[25];
    v44 = v0[24];
    v4 = v0[22];
    v45 = v0[23];
    v5 = v0[21];
    v35 = v0[20];
    v48 = v0[19];
    v42 = v0[18];
    v50 = v0[17];
    v38 = v0[16];
    v46 = v0[15];
    v47 = v0[14];
    v39 = v0[12];
    v40 = v0[13];
    v6 = v0[10];
    v49 = v0[11];
    v8 = v0[8];
    v7 = v0[9];
    v37 = v0[7];
    v9 = sub_1BFAAF258();
    sub_1BFAAF238();

    v10 = sub_1BFAAF258();
    sub_1BFAAF268();

    v11 = *(*(*(v6 + 56) + 56) + 16);
    v0[5] = type metadata accessor for DispatchSELFLogger();
    v0[6] = &protocol witness table for DispatchSELFLogger;
    v0[2] = v11;
    v12 = swift_task_alloc();
    v34 = v8;
    v12[2] = v8;
    v12[3] = v6;
    v12[4] = v0 + 2;
    v12[5] = v7;
    type metadata accessor for SiriSuggestions.SuggestionList(0);
    (*(v5 + 104))(v4, *MEMORY[0x1E69E8790], v35);

    OUTLINED_FUNCTION_41_0();
    sub_1BFAAFB38();

    v36 = *(v38 + 16);
    v36(v48, v8, v46);
    (*(v39 + 16))(v47, v7, v49);
    v13 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v14 = (v50 + *(v39 + 80) + v13) & ~*(v39 + 80);
    v15 = (v40 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v41 = *(v38 + 32);
    (v41)(v16 + v13, v48, v46);
    (*(v39 + 32))(v16 + v14, v47, v49);
    *(v16 + v15) = v6;
    v36(v42, v34, v46);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    OUTLINED_FUNCTION_147();
    v41();
    v18 = type metadata accessor for InAppSuggestions(0);
    v19 = (v37 + *(v18 + 20));
    *v19 = sub_1BFA75220;
    v19[1] = v16;
    v20 = (v37 + *(v18 + 24));
    *v20 = &unk_1BFAB49B0;
    v20[1] = v17;
    swift_retain_n();
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
    v21 = sub_1BFAAF258();
    sub_1BFAAF248();

    (*(v44 + 8))(v43, v45);
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v22 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v22, qword_1EDCC8B70);
    v23 = sub_1BFAAF668();
    sub_1BFAAFB68();
    v24 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_2_9();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v26);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v27, v28, "[warning] In-App suggestions NOT enabled. Set 'inAppSuggestions' feature flag.");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    if (qword_1EBDFB4F8 != -1)
    {
      swift_once();
    }

    v29 = v0[7];
    v30 = type metadata accessor for InAppSuggestions(0);
    __swift_project_value_buffer(v30, qword_1EBDFBD30);
    OUTLINED_FUNCTION_26_4();
    sub_1BFA75648(v31, v29);
  }

  OUTLINED_FUNCTION_85();

  return v32();
}

uint64_t sub_1BFA64F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v37 = a3;
  v32 = a2;
  v33 = a1;
  v39 = sub_1BFAAE3F8();
  v5 = *(v39 - 8);
  v36 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v29 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v30 = &v27 - v10;
  v12 = sub_1BFAAED58();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v31 = &v27 - v17;
  v19 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v13 + 16))(v15, v32, v12);
  (*(v8 + 16))(v11, v33, v7);
  sub_1BF9F93E8(v34, v40);
  (*(v5 + 16))(v38, v35, v39);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 8) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v5 + 80) + v23 + 40) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v13 + 32))(v25 + v20, v15, v28);
  *(v25 + v21) = v37;
  (*(v8 + 32))(v25 + v22, v30, v29);
  sub_1BF9FA474(v40, v25 + v23);
  (*(v5 + 32))(v25 + v24, v38, v39);

  sub_1BFA0B100();
}

uint64_t sub_1BFA652FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v8[9] = swift_task_alloc();
  v8[10] = type metadata accessor for PresentationContext(0);
  v8[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA8, &unk_1BFAB5030);
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD90, &qword_1BFAB4FF0);
  v8[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD98, &qword_1BFAB4FF8);
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = sub_1BFAAEF58();
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  v12 = sub_1BFAAEEA8();
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  v8[29] = v13;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();
  v14 = sub_1BFAAED58();
  v8[32] = v14;
  v8[33] = *(v14 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6569C, 0, 0);
}

uint64_t sub_1BFA6569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v15 = v14[4];
  v16 = sub_1BFAAF688();
  v14[35] = v16;
  v17 = __swift_project_value_buffer(v16, qword_1EDCC8B70);
  v14[36] = v17;
  v18 = OUTLINED_FUNCTION_45_2();
  v19(v18);
  v20 = sub_1BFAAF668();
  v21 = sub_1BFAAFB78();
  v22 = OUTLINED_FUNCTION_82_1(v21);
  v23 = v14[34];
  if (v22)
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_202();
    *v17 = 136315138;
    v24 = sub_1BF9FD8E4(&qword_1EDCC7030, MEMORY[0x1E69D2F60]);
    OUTLINED_FUNCTION_186(v24);
    OUTLINED_FUNCTION_69_0();
    v25 = OUTLINED_FUNCTION_40_0();
    v26(v25);
    v27 = OUTLINED_FUNCTION_34_2();
    sub_1BF9F88A8(v27, v28, v29);
    OUTLINED_FUNCTION_131_0();

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_40_0();
    v36(v35);
  }

  OUTLINED_FUNCTION_16_5(v14[5]);
  v37 = OUTLINED_FUNCTION_39(*(v15 + 24));
  OUTLINED_FUNCTION_28_4(v37);
  v50 = v38 + *v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v14[37] = v39;
  *v39 = v40;
  v39[1] = sub_1BFA658E8;
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_61();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_1BFA658E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA659CC()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0[27] + 104);
  v1(v0[28], *MEMORY[0x1E69D2FC8], v0[26]);
  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3(&qword_1EDCC74B0);
  }

  __swift_project_value_buffer(v0[23], qword_1EDCC74B8);
  OUTLINED_FUNCTION_163();
  v2 = sub_1BFAAEF48();
  v3 = OUTLINED_FUNCTION_93();
  v4(v3);
  if (v2)
  {
    v5 = sub_1BFAAF668();
    v6 = sub_1BFAAFB68();
    if (OUTLINED_FUNCTION_189(v6))
    {
      OUTLINED_FUNCTION_2_9();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_180(v7);
      OUTLINED_FUNCTION_153(&dword_1BF9F6000, v8, v9, "Detected a siriUI app request. Assuming this is actually a assistantTurn invocation");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v10 = v0[28];
    v11 = v0[26];

    v12 = OUTLINED_FUNCTION_93();
    v13(v12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9D8, &qword_1BFAB2658) + 48);
    v15 = *MEMORY[0x1E69D3148];
    sub_1BFAAF008();
    OUTLINED_FUNCTION_14();
    (*(v16 + 104))(v10, v15);
    v17 = *MEMORY[0x1E69D3118];
    sub_1BFAAEFD8();
    OUTLINED_FUNCTION_14();
    (*(v18 + 104))(v10, v17);
    v19 = *MEMORY[0x1E69D3140];
    sub_1BFAAEFF8();
    OUTLINED_FUNCTION_14();
    (*(v20 + 104))(v10 + v14, v19);
    v1(v10, *MEMORY[0x1E69D2FB0], v11);
  }

  sub_1BFAAFAF8();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[38] = v21;
  *v21 = v22;
  v23 = OUTLINED_FUNCTION_67_3(v21);

  return MEMORY[0x1EEE6DB90](v23);
}

uint64_t sub_1BFA65C38()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA65D34()
{
  v1 = v0;
  v2 = v0[19];
  v3 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v3, v4, v5);
  if (v6)
  {
    v8 = v0[30];
    v7 = v0[31];
    v9 = v0[28];
    v49 = v0[29];
    v11 = v0[26];
    v10 = v0[27];
    (*(v0[21] + 8))(v0[22], v0[20]);
    v0[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    sub_1BFAAFAD8();
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v7, v49);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[17];
    v15 = v1[18];
    v16 = v1[14];
    OUTLINED_FUNCTION_10_8();
    sub_1BFA75428(v2, v15);
    OUTLINED_FUNCTION_6_10();
    sub_1BFA75648(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    sub_1BFAAFAC8();
    v17 = OUTLINED_FUNCTION_67();
    v18(v17);
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v19 = v1[18];
    v20 = v1[16];
    __swift_project_value_buffer(v1[35], qword_1EDCC77C8);
    OUTLINED_FUNCTION_6_10();
    sub_1BFA75648(v19, v20);
    v21 = sub_1BFAAF668();
    v22 = sub_1BFAAFB68();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      *v16 = 136315138;
      sub_1BFAAE3F8();
      OUTLINED_FUNCTION_4_9();
      sub_1BF9FD8E4(v23, v24);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_1_7();
      sub_1BFA755F8();
      v25 = OUTLINED_FUNCTION_213();
      v28 = sub_1BF9F88A8(v25, v26, v27);

      *(v16 + 4) = v28;
      _os_log_impl(&dword_1BF9F6000, v21, v22, "Dispatching generation event: %s", v16, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      OUTLINED_FUNCTION_1_7();
      sub_1BFA755F8();
    }

    v29 = v1[27];
    v30 = v1[28];
    v31 = v1[26];
    v33 = v1[10];
    v32 = v1[11];
    v34 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1[7], *(v1[7] + 24));
    (*(v29 + 16))(&v32[v33[5]], v30, v31);
    v35 = sub_1BFAAE3F8();
    OUTLINED_FUNCTION_0();
    v36 = OUTLINED_FUNCTION_71();
    v37(v36);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
    v41 = v33[6];
    OUTLINED_FUNCTION_86_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v35);
    *v32 = 0;
    sub_1BFA77044(v34, &v32[v41]);
    v45 = &v32[v33[7]];
    *v45 = 0;
    v45[1] = 0;
    v32[v33[8]] = 0;
    OUTLINED_FUNCTION_44();
    v50 = (v46 + *v46);
    v47 = swift_task_alloc();
    v1[39] = v47;
    *v47 = v1;
    v47[1] = sub_1BFA66258;
    v48 = OUTLINED_FUNCTION_53(v1[18]);

    return v50(v48);
  }
}

uint64_t sub_1BFA66258()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v0;

  OUTLINED_FUNCTION_219();
  sub_1BFA755F8();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA66384()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 304) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_67_3(v1);

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1BFA66400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  (*(v14[21] + 8))(v14[22], v14[20]);
  v15 = OUTLINED_FUNCTION_120_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_93();
  v18(v17);
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA66508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v14 = OUTLINED_FUNCTION_146();
  v15(v14);
  v16 = OUTLINED_FUNCTION_120_0();
  v17(v16);
  v18 = OUTLINED_FUNCTION_93();
  v19(v18);
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA66620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v87 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v71 - v9;
  v10 = sub_1BFAAE3F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v71 - v15;
  v83 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v71 - v17;
  v19 = sub_1BFAAED58();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v81 = v21;
  v82 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v24 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v78 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v79 = v26;
  v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - v27;
  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v29 = sub_1BFAAF688();
  __swift_project_value_buffer(v29, qword_1EDCC77C8);
  v84 = a1;
  sub_1BFA75648(a1, v28);
  v30 = *(v91 + 16);
  v85 = a3;
  v76 = v30;
  v77 = v91 + 16;
  v30(v23, a3, v92);
  v31 = *(v11 + 16);
  v31(v18, v87, v10);
  v87 = a2;
  v75 = v31;
  v31(v88, a2, v10);
  v32 = sub_1BFAAF668();
  v33 = sub_1BFAAFB68();
  v34 = os_log_type_enabled(v32, v33);
  v74 = v11;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = v11;
    v72 = v33;
    v37 = v35;
    v73 = swift_slowAlloc();
    v93[0] = v73;
    *v37 = 136315906;
    v38 = &v28[*(v24 + 20)];
    v71 = v32;
    v39 = *v38;
    v40 = v38[1];

    sub_1BFA755F8();
    v41 = sub_1BF9F88A8(v39, v40, v93);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_1BF9FD8E4(&qword_1EDCC7030, MEMORY[0x1E69D2F60]);
    v42 = v92;
    v43 = sub_1BFAAFEE8();
    v45 = v44;
    (*(v91 + 8))(v23, v42);
    v46 = sub_1BF9F88A8(v43, v45, v93);

    *(v37 + 14) = v46;
    *(v37 + 22) = 2080;
    sub_1BF9FD8E4(&qword_1EDCC7430, MEMORY[0x1E69695A8]);
    v47 = sub_1BFAAFEE8();
    v49 = v48;
    v50 = *(v36 + 8);
    v50(v18, v10);
    v51 = sub_1BF9F88A8(v47, v49, v93);
    v52 = v10;

    *(v37 + 24) = v51;
    *(v37 + 32) = 2080;
    v53 = v88;
    v54 = sub_1BFAAFEE8();
    v56 = v55;
    v50(v53, v52);
    v57 = sub_1BF9F88A8(v54, v56, v93);

    *(v37 + 34) = v57;
    v58 = v71;
    _os_log_impl(&dword_1BF9F6000, v71, v72, "Got displayed callback for suggestion: %s in app %s with requestId - %s and generationId - %s", v37, 0x2Au);
    v59 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFB618C0](v59, -1, -1);
    MEMORY[0x1BFB618C0](v37, -1, -1);

    v60 = v91;
  }

  else
  {

    v61 = *(v11 + 8);
    v61(v88, v10);
    v61(v18, v10);
    v60 = v91;
    v42 = v92;
    (*(v91 + 8))(v23, v92);
    sub_1BFA755F8();
    v52 = v10;
  }

  v62 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v62);
  v63 = v80;
  sub_1BFA75648(v84, v80);
  v64 = v82;
  v76(v82, v85, v42);
  v75(v89, v87, v52);
  v65 = (*(v78 + 80) + 40) & ~*(v78 + 80);
  v66 = (v79 + *(v60 + 80) + v65) & ~*(v60 + 80);
  v67 = v74;
  v68 = (v81 + *(v74 + 80) + v66) & ~*(v74 + 80);
  v69 = swift_allocObject();
  *(v69 + 2) = 0;
  *(v69 + 3) = 0;
  *(v69 + 4) = v86;
  sub_1BFA75428(v63, &v69[v65]);
  (*(v60 + 32))(&v69[v66], v64, v92);
  (*(v67 + 32))(&v69[v68], v89, v52);

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA66E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1BFAAEEF8();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA66EF0, 0, 0);
}

uint64_t sub_1BFA66EF0()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB970, &unk_1BFAB5010);
  v3 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_124_0();
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_3_8();
  sub_1BFA75648(v2, v5 + v1);
  OUTLINED_FUNCTION_120_0();
  sub_1BFA67348(v6, v7);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1BFA6703C;
  OUTLINED_FUNCTION_138();

  return InAppSuggestionsDispatcherFactory.logShownSuggestions(for:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFA6703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_8();
  *v16 = v15;
  *(v13 + 96) = v10;

  v17 = OUTLINED_FUNCTION_146();
  v18(v17);

  if (v10)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_138();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_1BFA671D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v22 = v18[12];
  v23 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v23, qword_1EDCC77C8);
  v24 = v22;
  v25 = sub_1BFAAF668();
  sub_1BFAAFB88();

  v26 = OUTLINED_FUNCTION_194();
  v27 = v18[12];
  if (v26)
  {
    OUTLINED_FUNCTION_51_0();
    a9 = OUTLINED_FUNCTION_32();
    *v19 = 136315138;
    v18[2] = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v29 = sub_1BFAAF8B8();
    v31 = sub_1BF9F88A8(v29, v30, &a9);

    *(v19 + 4) = v31;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1BFA67348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BFAAEF58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EDCC74B8);
  v8 = sub_1BFAAEF48();
  (*(v5 + 8))(v7, v4);
  if (v8 & 1) != 0 && (v9 = *(type metadata accessor for SiriSuggestions.Suggestion(0) + 28), (sub_1BFAAEED8()))
  {
    v10 = sub_1BFAAEEF8();
    return (*(*(v10 - 8) + 16))(a2, a1 + v9, v10);
  }

  else
  {
    sub_1BFAAED28();
    v12 = *MEMORY[0x1E69D3078];
    v13 = sub_1BFAAEEF8();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }
}

uint64_t sub_1BFA67528(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1BFAAEF58();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA675E8, 0, 0);
}

uint64_t sub_1BFA675E8()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  sub_1BFAAED28();
  v4 = *(*(v3 + 24) + 8);
  OUTLINED_FUNCTION_30();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA67728;
  v7 = OUTLINED_FUNCTION_53(v0[6]);

  return v9(v7, v2, v4);
}

uint64_t sub_1BFA67728()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_93();
  v4(v3);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[18] = v0;
  v1[17] = v2;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_60_0(v6);
  v1[19] = OUTLINED_FUNCTION_100();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD50, &qword_1BFAB49C8);
  OUTLINED_FUNCTION_60_0(v7);
  v1[20] = OUTLINED_FUNCTION_100();
  v8 = type metadata accessor for InAppSuggestion(0);
  v1[21] = v8;
  OUTLINED_FUNCTION_60_0(v8);
  v1[22] = OUTLINED_FUNCTION_100();
  v9 = sub_1BFAAEF58();
  v1[23] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_100();
  v11 = sub_1BFAAED58();
  v1[26] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_100();
  v13 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BFA679E0()
{
  OUTLINED_FUNCTION_58();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3(&qword_1EDCC74B0);
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = __swift_project_value_buffer(v3, qword_1EDCC74B8);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD58, &unk_1BFAB49D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB08E0;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 72) = sub_1BFAAE3F8();
  v6 = MEMORY[0x1E69695A8];
  *(inited + 80) = sub_1BF9FD8E4(&qword_1EDCC84D8, MEMORY[0x1E69695A8]);
  *(inited + 88) = sub_1BF9FD8E4(&qword_1EDCC7438, v6);
  __swift_allocate_boxed_opaque_existential_1Tm_0((inited + 48));
  OUTLINED_FUNCTION_54();
  (*(v7 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAED18();
  v8 = sub_1BFAAEEF8();
  OUTLINED_FUNCTION_0();
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[29] = v14;
  *v14 = v15;
  v14[1] = sub_1BFA67C68;

  return SiriSuggestionsFacade.getTopInAppSuggestion(inAppDetails:timeoutSeconds:requestUUID:expectedDeliveryVehicle:)();
}

uint64_t sub_1BFA67C68()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  sub_1BF9FDD5C(v2, &qword_1EBDFBD48, &qword_1BFAB49C0);
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA67D78()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = v0[20];
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_24_2(v1);
  if (v2)
  {
    sub_1BF9FDD5C(v0[20], &qword_1EBDFBD50, &qword_1BFAB49C8);
    v9 = type metadata accessor for PreGeneratedSiriHint(0);
    v10 = 1;
  }

  else
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[14];
    sub_1BFA75428(v0[20], v3);
    OUTLINED_FUNCTION_8_6();
    v6 = OUTLINED_FUNCTION_93();
    sub_1BFA75428(v6, v7);
    v8 = *(v4 + 20);
    v9 = type metadata accessor for PreGeneratedSiriHint(0);
    v10 = 0;
    *(v5 + *(v9 + 20)) = *(v3 + v8);
  }

  __swift_storeEnumTagSinglePayload(v0[14], v10, 1, v9);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_112();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t SiriSuggestionsFacade.getTopInAppSuggestion(inAppDetails:timeoutSeconds:requestUUID:expectedDeliveryVehicle:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1BFAAE3F8();
  v1[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[9] = v8;
  v1[10] = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v1[13] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[14] = v11;
  v1[15] = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_109();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = sub_1BFAAED58();
  v1[19] = v13;
  OUTLINED_FUNCTION_15(v13);
  v1[20] = v14;
  v1[21] = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_100();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v16);
  v1[23] = v17;
  v1[24] = *(v18 + 64);
  v1[25] = OUTLINED_FUNCTION_100();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
  v1[26] = v19;
  OUTLINED_FUNCTION_60_0(v19);
  v1[27] = OUTLINED_FUNCTION_100();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v20);
  v1[28] = OUTLINED_FUNCTION_109();
  v1[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD68, &qword_1BFAB49F8);
  OUTLINED_FUNCTION_60_0(v21);
  v1[30] = OUTLINED_FUNCTION_109();
  v1[31] = swift_task_alloc();
  v22 = type metadata accessor for InAppSuggestions(0);
  v1[32] = v22;
  OUTLINED_FUNCTION_15(v22);
  v1[33] = v23;
  v1[34] = *(v24 + 64);
  v1[35] = OUTLINED_FUNCTION_109();
  v1[36] = swift_task_alloc();
  v25 = sub_1BFAAEF58();
  v1[37] = v25;
  OUTLINED_FUNCTION_15(v25);
  v1[38] = v26;
  v1[39] = OUTLINED_FUNCTION_100();
  v27 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1BFA681E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  sub_1BFAAED28();
  v19 = sub_1BFAAEF28();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_120_0();
  v23(v22);
  if (v19 == 0xD000000000000015 && 0x80000001BFAB96D0 == v21)
  {
  }

  else
  {
    OUTLINED_FUNCTION_96();
    v25 = sub_1BFAAFF08();

    if ((v25 & 1) == 0)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v18[40] = v26;
      *v26 = v27;
      v26[1] = sub_1BFA68484;
      OUTLINED_FUNCTION_47_0();

      return SiriSuggestionsFacade.doInApp(for:with:)();
    }
  }

  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v30 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v30, qword_1EDCC8B70);
  v31 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v32 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_2_9();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_29(v34);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v35, v36, "Returning nil suggestion for Clock.app tip due to SwiftUI regression");
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  type metadata accessor for InAppSuggestion(0);
  v49 = v18[22];
  v50 = v18[18];
  v51 = v18[17];
  v52 = v18[16];
  v53 = v18[12];
  v54 = v18[11];
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v49, v50, v51, v52, v53, v54, a16, a17, a18);
}

uint64_t sub_1BFA68484()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA68568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v19 = *(v18 + 200);
  v53 = *(v18 + 280);
  v54 = *(v18 + 192);
  v51 = *(v18 + 264);
  v52 = *(v18 + 184);
  v50 = *(v18 + 176);
  v20 = *(v18 + 160);
  v55 = *(v18 + 272);
  v56 = *(v18 + 168);
  v21 = *(v18 + 152);
  v22 = *(v18 + 64);
  v23 = *(v18 + 48);
  v24 = *(v18 + 24);
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
  OUTLINED_FUNCTION_26_4();
  v32 = OUTLINED_FUNCTION_178();
  sub_1BFA75648(v32, v33);
  sub_1BFA17B2C(v23, v19, &qword_1EBDFBD48, &qword_1BFAB49C0);
  (*(v20 + 16))(v50, v24, v21);
  v34 = *(v51 + 80);
  *(v18 + 360) = v34;
  v35 = (((v34 + 16) & ~v34) + v55 + *(v52 + 80)) & ~*(v52 + 80);
  v36 = (v54 + *(v20 + 80) + v35) & ~*(v20 + 80);
  v37 = swift_allocObject();
  *(v18 + 328) = v37;
  OUTLINED_FUNCTION_91_1();
  sub_1BFA75428(v53, v38);
  sub_1BFA17BBC(v19, v37 + v35, &qword_1EBDFBD48, &qword_1BFAB49C0);
  (*(v20 + 32))(v37 + v36, v50, v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v18 + 336) = v39;
  *v39 = v40;
  v39[1] = sub_1BFA6876C;
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x1EEE40F70](v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, v55, v56, a16, a17, a18);
}

uint64_t sub_1BFA6876C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA6886C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  OUTLINED_FUNCTION_111_0();
  sub_1BF9FDD5C(v5, v6, v7);
  sub_1BF9FDD5C(v1, &qword_1EBDFBD68, &qword_1BFAB49F8);
  v8 = *(v4 + 48);
  v9 = OUTLINED_FUNCTION_119_0();
  sub_1BFA17BBC(v9, v10, &qword_1EBDFBD68, &qword_1BFAB49F8);
  sub_1BFA17BBC(v3 + v8, v2, &qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_53_4();
  v14 = v11;
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_88_1(v12);

  return v14();
}

uint64_t sub_1BFA68990()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA68A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v36;
  a34 = v37;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v38 = *(v34 + 240);
  v39 = *(v34 + 104);
  sub_1BFA17B2C(*(v34 + 248), v38, &qword_1EBDFBD68, &qword_1BFAB49F8);
  OUTLINED_FUNCTION_9_2(v38, 1, v39);
  if (v55)
  {
    sub_1BF9FDD5C(*(v34 + 232), &qword_1EBDFB570, &qword_1BFAB1F50);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v40, v41, v42);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_111_0();
LABEL_7:
    sub_1BF9FDD5C(v43, v44, v45);
    v60 = type metadata accessor for InAppSuggestion(0);
    v61 = 1;
    goto LABEL_14;
  }

  v46 = *(v34 + 64);
  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v47, v48);
  v49 = OUTLINED_FUNCTION_93();
  sub_1BFA17B2C(v49, v50, v51, v52);
  v53 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v53, v54, v46);
  if (v55)
  {
    v56 = *(v34 + 248);
    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v57, v58, v59);
    sub_1BF9FDD5C(v56, &qword_1EBDFBD68, &qword_1BFAB49F8);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_110_0();
    goto LABEL_7;
  }

  v109 = (*(v34 + 72) + 32);
  v107 = *v109;
  (*v109)(*(v34 + 96), *(v34 + 224), *(v34 + 64));
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v62 = sub_1BFAAF688();
  __swift_project_value_buffer(v62, qword_1EDCC8B70);
  OUTLINED_FUNCTION_3_8();
  v63 = OUTLINED_FUNCTION_93();
  sub_1BFA75648(v63, v64);
  v65 = sub_1BFAAF668();
  v66 = sub_1BFAAFB78();
  v67 = OUTLINED_FUNCTION_136_0(v66);
  v68 = *(v34 + 248);
  v69 = *(v34 + 232);
  v70 = *(v34 + 136);
  if (v67)
  {
    v71 = *(v34 + 104);
    OUTLINED_FUNCTION_51_0();
    v72 = OUTLINED_FUNCTION_81_1();
    a23 = v72;
    *v35 = 136315138;
    v73 = v70 + *(v71 + 24);
    v74 = *(v73 + 16);
    v75 = *(v73 + 24);

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    sub_1BF9F88A8(v74, v75, &a23);
    OUTLINED_FUNCTION_234();
    *(v35 + 4) = v70;
    OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v76, v77, "[getTopInAppSuggestion] returning top suggestion with content: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v72);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
  }

  sub_1BF9FDD5C(v69, &qword_1EBDFB570, &qword_1BFAB1F50);
  sub_1BF9FDD5C(v68, &qword_1EBDFBD68, &qword_1BFAB49F8);
  v79 = *(v34 + 280);
  v78 = *(v34 + 288);
  v80 = *(v34 + 144);
  v81 = *(v34 + 128);
  v101 = *(v34 + 120);
  a12 = *(v34 + 112);
  a13 = v81;
  v82 = *(v34 + 88);
  a10 = *(v34 + 96);
  a11 = *(v34 + 72);
  v83 = *(v34 + 64);
  a14 = v83;
  a15 = v82;
  v104 = *(v34 + 16);
  v84 = ((*(v34 + 360) + 16) & ~*(v34 + 360)) + *(v34 + 272);
  OUTLINED_FUNCTION_3_8();
  sub_1BFA75648(v80, v85);
  OUTLINED_FUNCTION_26_4();
  sub_1BFA75648(v78, v79);
  sub_1BFA75428(v80, v81);
  v107(v82, a10, v83);
  v86 = (v84 + *(a12 + 80)) & ~*(a12 + 80);
  v87 = (v101 + *(a11 + 80) + v86) & ~*(a11 + 80);
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_91_1();
  sub_1BFA75428(v79, v89);
  sub_1BFA75428(a13, v88 + v86);
  v107(v88 + v87, a15, v83);
  v60 = type metadata accessor for InAppSuggestion(0);
  v90 = (v104 + *(v60 + 20));
  *v90 = sub_1BFA7569C;
  v90[1] = v88;
  sub_1BFA755F8();
  v61 = 0;
LABEL_14:
  v100 = *(v34 + 200);
  v102 = *(v34 + 176);
  v103 = *(v34 + 144);
  v105 = *(v34 + 136);
  v106 = *(v34 + 128);
  v108 = *(v34 + 96);
  v110 = *(v34 + 88);
  __swift_storeEnumTagSinglePayload(*(v34 + 16), v61, 1, v60);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_172();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, v100, v102, v103, v105, v106, v108, v110, a23, a24, a25, a26);
}

uint64_t sub_1BFA68F90()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();

  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = *(v0 + 344);
  v2 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v2, qword_1EDCC8B70);
  v3 = v1;
  v4 = sub_1BFAAF668();
  sub_1BFAAFB78();

  v5 = OUTLINED_FUNCTION_194();
  v6 = *(v0 + 344);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_51_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1BF9FDD5C(v8, &qword_1EBDFBA28, &qword_1BFAB28C0);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_4();
  v16 = swift_task_alloc();
  *(v0 + 352) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_88_1(v16);
  OUTLINED_FUNCTION_112();

  return v17(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BFA6913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  v4[7] = swift_task_alloc();
  v5 = sub_1BFAAEEF8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD68, &qword_1BFAB49F8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for SiriSuggestions.Suggestion(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = sub_1BFAAE3F8();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD90, &qword_1BFAB4FF0);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD98, &qword_1BFAB4FF8);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA693E4, 0, 0);
}

uint64_t sub_1BFA693E4()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  sub_1BFAAFAF8();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 200) = v1;
  *v1 = v2;
  v1[1] = sub_1BFA694A4;
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1BFA694A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA695A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_24_2(v32[21]);
  if (v45)
  {
    v33 = v32[13];
    (*(v32[23] + 8))(v32[24], v32[22]);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_86_2();
    v37 = v33;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v58 = 1;
    goto LABEL_14;
  }

  v39 = v32[12];
  v38 = v32[13];
  OUTLINED_FUNCTION_10_8();
  v40 = OUTLINED_FUNCTION_46();
  sub_1BFA75428(v40, v41);
  v42 = OUTLINED_FUNCTION_211();
  v43(v42);
  v44 = SiriSuggestions.SuggestionList.suggestions.getter();
  sub_1BFA610CC(v44, v39);

  OUTLINED_FUNCTION_9_2(v39, 1, v38);
  if (v45)
  {
    sub_1BF9FDD5C(v32[12], &qword_1EBDFBD68, &qword_1BFAB49F8);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v46 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v46, qword_1EDCC8B70);
    v47 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v48 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_2_9();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v50);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v51, v52, "Returned suggestions list is empty");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v134 = v32[13];
    v53 = v32[3];

    v54 = OUTLINED_FUNCTION_146();
    v55(v54);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v56 = OUTLINED_FUNCTION_46();
    v57(v56);
    a20 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8) + 48);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v68, v69);
  v70 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v70, v71, v72, v73);
  v74 = OUTLINED_FUNCTION_83_2();
  v75 = v32[11];
  v76 = v32[8];
  v77 = v32[9];
  v78 = v32[7];
  if (v74 == 1)
  {
    sub_1BFAAED28();
    (*(v77 + 104))(v75, *MEMORY[0x1E69D3078], v76);
    OUTLINED_FUNCTION_9_2(v78, 1, v76);
    if (!v45)
    {
      sub_1BF9FDD5C(v32[7], &qword_1EBDFBD48, &qword_1BFAB49C0);
    }
  }

  else
  {
    v80 = OUTLINED_FUNCTION_148();
    v81(v80);
  }

  if ((sub_1BFA53D30(v32[15] + *(v32[13] + 28), v32[11], v79) & 1) == 0)
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v95 = sub_1BFAAF688();
    __swift_project_value_buffer(v95, qword_1EDCC8B70);
    OUTLINED_FUNCTION_3_8();
    v96 = OUTLINED_FUNCTION_93();
    sub_1BFA75648(v96, v97);
    v98 = OUTLINED_FUNCTION_148();
    v99(v98);
    v100 = sub_1BFAAF668();
    v101 = sub_1BFAAFB88();
    v102 = OUTLINED_FUNCTION_72_2();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v32[23];
    v136 = v32[22];
    a20 = v32[24];
    v106 = v32[17];
    a17 = v32[18];
    a18 = v32[20];
    a15 = v32[15];
    a16 = v32[16];
    a14 = v32[11];
    v107 = v32[8];
    v108 = v32[9];
    if (v104)
    {
      HIDWORD(a11) = v101;
      v109 = OUTLINED_FUNCTION_185();
      a12 = OUTLINED_FUNCTION_193();
      a21 = a12;
      *v109 = 136315394;
      log = v100;
      sub_1BF9FD8E4(&qword_1EBDFBA38, MEMORY[0x1E69D3090]);
      OUTLINED_FUNCTION_220();
      sub_1BFAAFEE8();
      a13 = v105;
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      v110 = OUTLINED_FUNCTION_41_0();
      v113 = sub_1BF9F88A8(v110, v111, v112);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2080;
      OUTLINED_FUNCTION_220();
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_221();
      v114 = *(v108 + 8);
      v115 = OUTLINED_FUNCTION_158();
      v114(v115);
      v116 = OUTLINED_FUNCTION_41_0();
      v119 = sub_1BF9F88A8(v116, v117, v118);

      *(v109 + 14) = v119;
      _os_log_impl(&dword_1BF9F6000, log, BYTE4(a11), "Top suggestion's delivery vehicle is: %s and did not match expected deliveryVehicle: %s", v109, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();

      (v114)(a14, v107);
    }

    else
    {

      v132 = *(v108 + 8);
      v133 = OUTLINED_FUNCTION_158();
      v132(v133);
      sub_1BFA755F8();
      (v132)(a14, v107);
    }

    sub_1BFA755F8();
    (*(v106 + 8))(a17, a16);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    (*(v105 + 8))(a20, v136);
    v33 = v32[13];
    goto LABEL_4;
  }

  if (sub_1BFAAFAA8())
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v82 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v82, qword_1EDCC8B70);
    v83 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v84 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v84, v85))
    {
      OUTLINED_FUNCTION_2_9();
      v86 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v86);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v87, v88, "Fetch inAppSuggestion task is canceled");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v89 = v32[23];
    a17 = v32[20];
    a18 = v32[22];
    v90 = v32[17];
    a16 = v32[18];
    v91 = v32[16];
    v134 = v32[13];
    a20 = v32[24];
    v92 = v32[11];
    v93 = v32[8];
    v94 = v32[9];

    (*(v94 + 8))(v92, v93);
    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    (*(v90 + 8))(a16, v91);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    (*(v89 + 8))(a20, a18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
    OUTLINED_FUNCTION_199();
LABEL_12:
    OUTLINED_FUNCTION_86_2();
    v37 = v134;
    goto LABEL_13;
  }

  v120 = v32[23];
  v121 = v32[24];
  v122 = v32[22];
  v123 = v32[17];
  v137 = v32[18];
  v125 = v32[15];
  v124 = v32[16];
  v126 = v32[13];
  v127 = v32[3];
  (*(v32[9] + 8))(v32[11], v32[8]);
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  (*(v120 + 8))(v121, v122);
  v128 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8) + 48);
  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v125, v127);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v126);
  a20 = v128;
  (*(v123 + 32))(v128, v137, v124);
  v58 = 0;
LABEL_14:
  v135 = v32[7];
  __swift_storeEnumTagSinglePayload(a20, v58, 1, v32[16]);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_170();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, v135, a20, a21, a22, a23, a24);
}

uint64_t sub_1BFA69E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v25 = v14[7];
  (*(v14[23] + 8))(v14[24], v14[22]);
  v24 = v14[2];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24, v25, a12, a13, a14);
}

uint64_t SiriSuggestionsFacade.getAssistantSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v1[10] = v7;
  OUTLINED_FUNCTION_60_0(v7);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v1[13] = v8;
  OUTLINED_FUNCTION_60_0(v8);
  v1[14] = OUTLINED_FUNCTION_109();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = sub_1BFAAEFD8();
  v1[22] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_109();
  v1[25] = swift_task_alloc();
  v11 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v1[26] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[27] = v12;
  v1[28] = *(v13 + 64);
  v1[29] = OUTLINED_FUNCTION_109();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA6A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  a31 = v33;
  a32 = v34;
  a30 = v32;
  v36 = v32[21];
  v35 = v32[22];
  v32[36] = OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_siriRequestState;
  sub_1BFAAEA98();
  OUTLINED_FUNCTION_9_2(v36, 1, v35);
  if (v37)
  {
    sub_1BF9FDD5C(v32[21], &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v38 = v32[25];
    v39 = v32[22];
    v40 = v32[23];
    v41 = v32[21];
    v42 = v32[5];
    v43 = *(v40 + 32);
    v32[37] = v43;
    v32[38] = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v43(v38, v41, v39);
    __swift_project_boxed_opaque_existential_1((v42 + 104), *(v42 + 128));
    OUTLINED_FUNCTION_163();
    v44 = sub_1BFAAF068();
    if (v44)
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v45 = sub_1BFAAF688();
      v32[39] = v45;
      OUTLINED_FUNCTION_126_0(v45, qword_1EDCC77C8);
      v46 = sub_1BFAAF668();
      sub_1BFAAFB68();
      v47 = OUTLINED_FUNCTION_72_2();
      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_2_9();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_29(v49);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v50, v51, "Fetching AssistantSuggestions");
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      v52 = v32[5];

      v53 = *(v52 + 48);
      OUTLINED_FUNCTION_16_1((v52 + 16));
      v101 = OUTLINED_FUNCTION_144(*(v53 + 24)) + 8;
      OUTLINED_FUNCTION_44();
      v103 = v54 + *v54;
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v32[40] = v55;
      *v55 = v56;
      v55[1] = sub_1BFA6A6C8;
      OUTLINED_FUNCTION_216();
      OUTLINED_FUNCTION_170();

      return v62(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v101, v103, a21, a22, a23, a24);
    }

    (*(v32[23] + 8))(v32[25], v32[22]);
  }

  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v66 = v32[5];
  v67 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v67, qword_1EDCC77C8);

  v68 = sub_1BFAAF668();
  v69 = sub_1BFAAFB68();

  if (os_log_type_enabled(v68, v69))
  {
    OUTLINED_FUNCTION_51_0();
    a21 = OUTLINED_FUNCTION_32();
    *v66 = 136315138;
    sub_1BFAAEAC8();
    sub_1BF9FD8E4(qword_1EDCC6628, MEMORY[0x1E69D2D60]);
    v70 = sub_1BFAAFEE8();
    v72 = sub_1BF9F88A8(v70, v71, &a21);

    *(v66 + 4) = v72;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  if (qword_1EDCC6B08 != -1)
  {
    swift_once();
  }

  v78 = v32[2];
  v79 = type metadata accessor for AssistantEngineSuggestions(0);
  v80 = __swift_project_value_buffer(v79, qword_1EDCC6B10);
  sub_1BFA75648(v80, v78);
  OUTLINED_FUNCTION_149();
  v92 = v81;
  v93 = v82;
  v94 = v83;
  v95 = v32[17];
  v96 = v32[16];
  v97 = v32[15];
  v98 = v32[14];
  v99 = v32[12];
  v100 = v32[11];
  v102 = v32[9];
  v104 = v32[8];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_170();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, v92, v93, v94, v95, v96, v97, v98, v99, v100, v102, v104, a21, a22, a23, a24);
}

uint64_t sub_1BFA6A6C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA6A7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v37 = *(v34 + 272);
  v38 = *(v34 + 216);
  v39 = *(v34 + 224);
  v194 = *(v34 + 160);
  v197 = *(v34 + 152);
  v200 = *(v34 + 176);
  v192 = *(v34 + 96);
  v203 = *(v34 + 80);
  v205 = *(v34 + 184);
  v41 = *(v34 + 32);
  v40 = *(v34 + 40);
  v187 = *(v34 + 280);
  v190 = *(v34 + 24);
  sub_1BFA75648(v187, v37);
  v42 = *(v38 + 80);
  v43 = (v42 + 24) & ~v42;
  v181 = v43 + v39;
  v44 = (v43 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  sub_1BFA75428(v37, v45 + v43);
  v185 = v45;
  v46 = (v45 + v44);
  *v46 = v190;
  v46[1] = v41;
  sub_1BFA75648(v187, v37);
  v182 = v42;
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  v183 = v43;
  sub_1BFA75428(v37, v47 + v43);
  v188 = v47;
  v48 = (v47 + v44);
  *v48 = v190;
  v48[1] = v41;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1BFAAEA98();
  v49 = *MEMORY[0x1E69D3148];
  sub_1BFAAF008();
  OUTLINED_FUNCTION_14();
  (*(v50 + 104))(v197, v49);
  v51 = *(v205 + 104);
  v51(v197, *MEMORY[0x1E69D3118], v200);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v200);
  v55 = *(v203 + 48);
  sub_1BFA17B2C(v194, v192, &qword_1EBDFB640, &qword_1BFAB11D0);
  sub_1BFA17B2C(v197, v192 + v55, &qword_1EBDFB640, &qword_1BFAB11D0);
  if (__swift_getEnumTagSinglePayload(v192, 1, v200) == 1)
  {
    sub_1BF9FDD5C(*(v34 + 152), &qword_1EBDFB640, &qword_1BFAB11D0);
    v56 = OUTLINED_FUNCTION_46();
    sub_1BF9FDD5C(v56, v57, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_24_2(v192 + v55);
    if (!v58)
    {
      goto LABEL_8;
    }

    v59 = *(v34 + 184);
    sub_1BF9FDD5C(*(v34 + 96), &qword_1EBDFB640, &qword_1BFAB11D0);
    v60 = *(v59 + 8);
LABEL_22:
    v118 = *(v34 + 272);
    v117 = *(v34 + 280);
    v119 = *(v34 + 264);
    v120 = *(v34 + 40);
    (v60)(*(v34 + 200), *(v34 + 176));
    OUTLINED_FUNCTION_6_10();
    v121 = OUTLINED_FUNCTION_46();
    sub_1BFA75648(v121, v122);
    v107 = swift_allocObject();
    *(v107 + 16) = v120;
    sub_1BFA75428(v118, v107 + v183);
    sub_1BFA75428(v117, v119);

    v108 = sub_1BFA759E0;
    goto LABEL_23;
  }

  sub_1BFA17B2C(*(v34 + 96), *(v34 + 144), &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_24_2(v192 + v55);
  if (!v58)
  {
    v109 = *(v34 + 184);
    v198 = *(v34 + 160);
    v201 = *(v34 + 96);
    (*(v34 + 296))(*(v34 + 192), v192 + v55, *(v34 + 176));
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v110, v111);
    OUTLINED_FUNCTION_60_1();
    v112 = sub_1BFAAF848();
    v60 = *(v109 + 8);
    v113 = OUTLINED_FUNCTION_96();
    v60(v113);
    v114 = OUTLINED_FUNCTION_158();
    sub_1BF9FDD5C(v114, v115, &qword_1BFAB11D0);
    sub_1BF9FDD5C(v198, &qword_1EBDFB640, &qword_1BFAB11D0);
    v116 = OUTLINED_FUNCTION_119_0();
    v60(v116);
    sub_1BF9FDD5C(v201, &qword_1EBDFB640, &qword_1BFAB11D0);
    if ((v112 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_110_0();
  sub_1BF9FDD5C(v61, v62, v63);
  OUTLINED_FUNCTION_110_0();
  sub_1BF9FDD5C(v64, v65, v66);
  v67 = OUTLINED_FUNCTION_119_0();
  v68(v67);
LABEL_8:
  sub_1BF9FDD5C(*(v34 + 96), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_9:
  v69 = *(v34 + 176);
  v71 = *(v34 + 128);
  v70 = *(v34 + 136);
  v72 = *(v34 + 88);
  sub_1BFAAEA98();
  v51(v71, *MEMORY[0x1E69D3108], v69);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);
  v76 = *(v203 + 48);
  sub_1BFA17B2C(v70, v72, &qword_1EBDFB640, &qword_1BFAB11D0);
  sub_1BFA17B2C(v71, v72 + v76, &qword_1EBDFB640, &qword_1BFAB11D0);
  if (OUTLINED_FUNCTION_137() == 1)
  {
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v77, v78, v79);
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v80, v81, v82);
    OUTLINED_FUNCTION_24_2(v72 + v76);
    if (!v58)
    {
      goto LABEL_16;
    }

    sub_1BF9FDD5C(*(v34 + 88), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    sub_1BFA17B2C(*(v34 + 88), *(v34 + 120), &qword_1EBDFB640, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_24_2(v72 + v76);
    if (v58)
    {
      OUTLINED_FUNCTION_110_0();
      sub_1BF9FDD5C(v83, v84, v85);
      OUTLINED_FUNCTION_110_0();
      sub_1BF9FDD5C(v86, v87, v88);
      v89 = OUTLINED_FUNCTION_119_0();
      v90(v89);
LABEL_16:
      sub_1BF9FDD5C(*(v34 + 88), &qword_1EBDFBD78, &unk_1BFAB4A28);
      goto LABEL_17;
    }

    v142 = *(v34 + 184);
    v143 = *(v34 + 176);
    v144 = *(v34 + 120);
    v207 = *(v34 + 88);
    (*(v34 + 296))(*(v34 + 192), v72 + v76, v143);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v145, v146);
    v147 = sub_1BFAAF848();
    v148 = *(v142 + 8);
    v149 = OUTLINED_FUNCTION_96();
    v148(v149);
    v150 = OUTLINED_FUNCTION_158();
    sub_1BF9FDD5C(v150, v151, &qword_1BFAB11D0);
    v152 = OUTLINED_FUNCTION_178();
    sub_1BF9FDD5C(v152, v153, &qword_1BFAB11D0);
    (v148)(v144, v143);
    sub_1BF9FDD5C(v207, &qword_1EBDFB640, &qword_1BFAB11D0);
    if ((v147 & 1) == 0)
    {
LABEL_17:
      if (qword_1EDCC8BC0 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_18;
    }
  }

  v154 = *(v34 + 280);
  v155 = *(v34 + 72);
  v208 = *(v34 + 48);
  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v154, v156);
  v157 = 0;
  v158 = *v154;
  v159 = *(*v154 + 16);
  v160 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v159 == v157)
    {
      a22 = v160;

      sub_1BFA2E554(&a22);
      v173 = *(v34 + 256);
      v174 = *(v34 + 264);
      v175 = *(v34 + 248);
      v176 = *(v34 + 208);

      v177 = OUTLINED_FUNCTION_34_2();
      v178(v177);
      sub_1BFA755F8();
      *v175 = a22;
      sub_1BF9F93E8(v173 + 8, (v175 + 8));
      v179 = v176[6];
      sub_1BFAAE3F8();
      OUTLINED_FUNCTION_14();
      (*(v180 + 16))(&v175[v179], v173 + v179);
      *&v175[v176[7]] = *(v173 + v176[7]);
      sub_1BFA17B2C(v173 + v176[8], &v175[v176[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
      OUTLINED_FUNCTION_96();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_10_8();
      sub_1BFA75428(v175, v174);
      v107 = 0;
      v108 = nullsub_1;
      goto LABEL_23;
    }

    if (v157 >= *(v158 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_3_8();
    sub_1BFA75648(v161, v162);
    v163 = *(v155 + 16 + *(v208 + 44));
    if (v163 == 1 || v163 == 2)
    {
      v164 = sub_1BFAAFF08();

      if (v164)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      ++v157;
    }

    else
    {

LABEL_35:
      OUTLINED_FUNCTION_8_6();
      sub_1BFA75428(v165, v166);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a22 = v160;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BFA2DC10(0, *(v160 + 16) + 1, 1);
        v160 = a22;
      }

      v169 = *(v160 + 16);
      v168 = *(v160 + 24);
      if (v169 >= v168 >> 1)
      {
        v172 = OUTLINED_FUNCTION_114_0(v168);
        sub_1BFA2DC10(v172, v169 + 1, 1);
        v160 = a22;
      }

      ++v157;
      *(v160 + 16) = v169 + 1;
      OUTLINED_FUNCTION_8_6();
      sub_1BFA75428(v170, v171);
    }
  }

  __break(1u);
LABEL_42:
  OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
LABEL_18:
  OUTLINED_FUNCTION_126_0(*(v34 + 312), qword_1EDCC8B70);

  v91 = sub_1BFAAF668();
  v92 = sub_1BFAAFB88();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = OUTLINED_FUNCTION_51_0();
    v94 = swift_slowAlloc();
    a22 = v94;
    *v93 = 136315138;
    sub_1BFAAEA98();
    OUTLINED_FUNCTION_71();
    v95 = sub_1BFAAF8B8();
    v97 = sub_1BF9F88A8(v95, v96, &a22);

    *(v93 + 4) = v97;
    _os_log_impl(&dword_1BF9F6000, v91, v92, "Unsupported assistantTurnState: %s, return empty suggestion list", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v94);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v98, v99);
  a22 = MEMORY[0x1E69E7CC0];
  sub_1BFA2E554(&a22);
  v100 = *(v34 + 232);
  v101 = *(v34 + 240);
  v102 = *(v34 + 208);
  (*(*(v34 + 184) + 8))(*(v34 + 200), *(v34 + 176));
  sub_1BFA755F8();
  *v100 = a22;
  sub_1BF9F93E8(v101 + 8, (v100 + 8));
  v103 = v102[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  (*(v104 + 16))(&v100[v103], v101 + v103);
  *&v100[v102[7]] = *(v101 + v102[7]);
  sub_1BFA17B2C(v101 + v102[8], &v100[v102[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  sub_1BFA755F8();
  OUTLINED_FUNCTION_10_8();
  v105 = OUTLINED_FUNCTION_96();
  sub_1BFA75428(v105, v106);
  v107 = 0;
  v108 = nullsub_1;
LABEL_23:
  v123 = v108;
  v124 = *(v34 + 16);
  OUTLINED_FUNCTION_10_8();
  sub_1BFA75428(v125, v124);
  v126 = type metadata accessor for AssistantEngineSuggestions(0);
  v127 = (v124 + v126[5]);
  *v127 = sub_1BFA757D0;
  v127[1] = v185;
  v128 = (v124 + v126[6]);
  *v128 = sub_1BFA75964;
  v128[1] = v188;
  v129 = (v124 + v126[7]);
  *v129 = v123;
  v129[1] = v107;
  OUTLINED_FUNCTION_149();
  v184 = v130;
  v186 = v131;
  v189 = v132;
  v191 = *(v34 + 136);
  v193 = *(v34 + 128);
  v195 = *(v34 + 120);
  v196 = *(v34 + 112);
  v199 = *(v34 + 96);
  v202 = *(v34 + 88);
  v204 = *(v34 + 72);
  v206 = *(v34 + 64);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_172();

  return v134(v133, v134, v135, v136, v137, v138, v139, v140, v181, v182, v184, v186, v189, v191, v193, v195, v196, v199, v202, v204, v206, a22, a23, a24, a25, a26);
}

uint64_t sub_1BFA6B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_1BFA75648(a3, v13);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  sub_1BFA75428(v13, v20 + v18);
  *(v20 + v19) = a1;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a4;
  v21[1] = a5;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA6B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  v8[18] = swift_task_alloc();
  v9 = sub_1BFAAF138();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = sub_1BFAAEFD8();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v8[33] = swift_task_alloc();
  v12 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8[34] = v12;
  v8[35] = *(v12 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v8[39] = swift_task_alloc();
  v13 = sub_1BFAAEEF8();
  v8[40] = v13;
  v8[41] = *(v13 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v14 = sub_1BFAAE3F8();
  v8[44] = v14;
  v8[45] = *(v14 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6BAE0, 0, 0);
}

uint64_t sub_1BFA6BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = *(v16 + 384);
  v19 = *(v16 + 352);
  v18 = *(v16 + 360);
  v20 = *(v16 + 304);
  v22 = *(v16 + 104);
  v21 = *(v16 + 112);
  sub_1BF9F93E8(*(v16 + 96) + 64, v16 + 16);
  v23 = *(v16 + 48);
  v24 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v25 = *(v20 + 24);
  *(v16 + 520) = v25;
  v26 = *(v18 + 16);
  *(v16 + 392) = v26;
  *(v16 + 400) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v17, v22 + v25, v19);
  v27 = *(v21 + 16);
  *(v16 + 408) = v27;
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    a9 = v24;
    a10 = v23;
    v29 = *(v16 + 112);
    OUTLINED_FUNCTION_187();
    v28 = a13;
    OUTLINED_FUNCTION_112_0();
    v31 = v29 + v30;
    do
    {
      v32 = *(v16 + 296);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v31, v32);
      sub_1BFAAF1D8();
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_196();
      if (v34)
      {
        v36 = OUTLINED_FUNCTION_114_0(v33);
        sub_1BFA2DC58(v36, v32, 1);
        v28 = a13;
      }

      OUTLINED_FUNCTION_175();
    }

    while (!v35);
  }

  *(v16 + 416) = v28;
  v37 = *(v16 + 344);
  v38 = *(v16 + 328);
  *(v16 + 528) = 0;
  *(v16 + 524) = *MEMORY[0x1E69D3050];
  v39 = *(v38 + 104);
  *(v16 + 424) = v39;
  *(v16 + 432) = (v38 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v39(v37);
  OUTLINED_FUNCTION_44();
  v52 = v40 + *v40;
  v41 = swift_task_alloc();
  *(v16 + 440) = v41;
  *v41 = v16;
  v41[1] = sub_1BFA6BD34;
  OUTLINED_FUNCTION_53(*(v16 + 384));
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_12_3();

  return v48(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v23 + 96, v52, a13, a14, a15, a16);
}

uint64_t sub_1BFA6BD34()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *(v4 + 328);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  v2[56] = *(v6 + 8);
  v2[57] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_146();
  v10(v9);
  v2[58] = *(v5 + 8);
  v2[59] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = OUTLINED_FUNCTION_60_1();
  v12(v11);
  v13 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BFA6BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  __swift_destroy_boxed_opaque_existential_2Tm((v16 + 16));
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v17 = sub_1BFAAF688();
  v18 = __swift_project_value_buffer(v17, qword_1EDCC8B70);
  *(v16 + 480) = v18;
  OUTLINED_FUNCTION_6_10();
  v19 = OUTLINED_FUNCTION_119_0();
  sub_1BFA75648(v19, v20);

  v21 = sub_1BFAAF668();
  v22 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_82_1(v22))
  {
    v23 = *(v16 + 408);
    OUTLINED_FUNCTION_185();
    a13 = OUTLINED_FUNCTION_32();
    *v18 = 134218242;
    *(v18 + 4) = v23;

    *(v18 + 12) = 2080;
    OUTLINED_FUNCTION_4_9();
    sub_1BF9FD8E4(v24, v25);
    sub_1BFAAFEE8();
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v26 = OUTLINED_FUNCTION_213();
    v29 = sub_1BF9F88A8(v26, v27, v28);

    *(v18 + 14) = v29;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
  }

  v35 = *(v16 + 424);
  v36 = *(v16 + 524);
  v53 = *(v16 + 520);
  v37 = *(v16 + 336);
  v38 = *(v16 + 320);
  v39 = *(v16 + 96);
  v40 = v39[6];
  __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
  v35(v37, v36, v38);
  OUTLINED_FUNCTION_39(*(v40 + 16));
  OUTLINED_FUNCTION_30();
  v52 = v41 + *v41;
  v42 = swift_task_alloc();
  *(v16 + 488) = v42;
  *v42 = v16;
  v42[1] = sub_1BFA6C1C4;
  OUTLINED_FUNCTION_53(*(v16 + 112));
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_12_3();

  return v48(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v52, v53, a13, a14, a15, a16);
}

uint64_t sub_1BFA6C1C4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 496) = v0;

  v9 = OUTLINED_FUNCTION_46();
  v5(v9);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA6C31C()
{
  v2 = *(v0 + 264);
  sub_1BFAAE388();
  OUTLINED_FUNCTION_24_2(v2);
  if (v22)
  {
    sub_1BF9FDD5C(*(v0 + 264), &qword_1EBDFB570, &qword_1BFAB1F50);

    v3 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_53_0();
    if (os_log_type_enabled(v3, v2))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_81_1();
      *v1 = 136315138;
      v4 = OUTLINED_FUNCTION_148();
      *(v1 + 4) = sub_1BF9F88A8(v4, v5, v6);
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v7, v8, v9, v10, v1, 0xCu);
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    goto LABEL_15;
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 200);
  v109 = *(*(v0 + 360) + 32);
  v109(*(v0 + 376), *(v0 + 264), *(v0 + 352));
  sub_1BFAAEA98();
  v13 = OUTLINED_FUNCTION_211();
  v14(v13);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
  v18 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v18, v19, &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_227();
  v20 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v20, v21, v12);
  if (v22)
  {
    v23 = *(v0 + 200);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v24, v25, v26);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_9_2(v30, v31, v23);
    if (!v22)
    {
      goto LABEL_13;
    }

    sub_1BF9FDD5C(*(v0 + 232), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v32 = *(v0 + 200);
    sub_1BFA17B2C(*(v0 + 232), *(v0 + 240), &qword_1EBDFB640, &qword_1BFAB11D0);
    v33 = OUTLINED_FUNCTION_198();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v32);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v36, v37, v38);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_119_0();
      v43(v42);
LABEL_13:
      sub_1BF9FDD5C(*(v0 + 232), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_14:
      (*(v0 + 464))(*(v0 + 376), *(v0 + 352));
LABEL_15:
      OUTLINED_FUNCTION_44_3();

      OUTLINED_FUNCTION_85();

      return v44();
    }

    v46 = OUTLINED_FUNCTION_174();
    v47(v46);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v48, v49);
    OUTLINED_FUNCTION_181();
    sub_1BFAAF848();
    v50 = OUTLINED_FUNCTION_217();
    v12(v50);
    v51 = OUTLINED_FUNCTION_71();
    sub_1BF9FDD5C(v51, v52, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_119_0();
    v12(v56);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v57, v58, v59);
    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v60 = *(v0 + 408);
  sub_1BF9F93E8(*(v0 + 96) + 64, v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  *(v0 + 529) = 0;
  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v119 = *(v0 + 272);
    v121 = MEMORY[0x1E69E7CC0];
    v108 = *(v0 + 192);
    v62 = *(v0 + 176);
    v63 = *(v0 + 160);
    sub_1BFA2DCD0(0, *(v0 + 408), 0);
    v64 = 0;
    v61 = v121;
    OUTLINED_FUNCTION_112_0();
    v110 = (v63 + 32);
    v106 = (v63 + 104);
    v107 = *MEMORY[0x1E69CE2B8];
    do
    {
      v65 = *(v0 + 288);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v66, v65);
      v67 = v65 + *(v119 + 24);
      v68 = *(v67 + 24);
      v115 = *(v67 + 16);
      type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
      v116 = v68;

      sub_1BFAAF1F8();
      v69 = OUTLINED_FUNCTION_137();
      v70 = *(v0 + 144);
      v117 = v64;
      v118 = v61;
      if (v69 == 1)
      {
        OUTLINED_FUNCTION_224();
        *v71 = v72;
        OUTLINED_FUNCTION_223();
        *(v73 + 8) = v74;
        (*v106)();
        OUTLINED_FUNCTION_24_2(v70);
        if (!v22)
        {
          sub_1BF9FDD5C(*(v0 + 144), &qword_1EBDFB6D8, &qword_1BFAB1450);
        }
      }

      else
      {
        (*v110)(*(v0 + 168), v70, *(v0 + 152));
      }

      (*(v0 + 392))(*(v0 + 368), *(v0 + 288), *(v0 + 352));
      sub_1BFAAF188();
      sub_1BFAAECC8();
      if (OUTLINED_FUNCTION_137() == 1)
      {
        sub_1BF9FDD5C(*(v0 + 136), &qword_1EBDFB6D0, &qword_1BFAB1440);
        v113 = 0;
        v114 = 0;
      }

      else
      {
        v75 = sub_1BFAAECA8();
        v113 = v76;
        v114 = v75;
        OUTLINED_FUNCTION_54();
        v77 = OUTLINED_FUNCTION_93();
        v78(v77);
      }

      v79 = *(v0 + 368);
      v112 = *(v0 + 352);
      v80 = *(v0 + 288);
      v81 = *(v0 + 192);
      v82 = *(v0 + 168);
      v83 = *(v0 + 152);
      v111 = sub_1BFAAF1D8();
      v85 = v84;
      v86 = v62[10];
      sub_1BFAAF398();
      OUTLINED_FUNCTION_14();
      (*(v87 + 104))(&v81[v86], v107);
      sub_1BFAAF758();
      OUTLINED_FUNCTION_86_2();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
      v92 = *(v119 + 64);
      v93 = v62[13];
      sub_1BFAAEB28();
      OUTLINED_FUNCTION_14();
      (*(v94 + 16))(&v81[v93], v80 + v92);
      *v81 = v115;
      v108[1] = v116;
      v108[2] = v115;
      v108[3] = v116;
      (*v110)(&v81[v62[6]], v82, v83);
      v109(&v81[v62[7]], v79, v112);
      v95 = &v81[v62[8]];
      *v95 = v114;
      v95[1] = v113;
      v96 = &v81[v62[9]];
      *v96 = v111;
      v96[1] = v85;
      v97 = &v81[v62[12]];
      *v97 = 0;
      *(v97 + 1) = 0;

      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      v61 = v118;
      v99 = *(v118 + 16);
      v98 = *(v118 + 24);
      if (v99 >= v98 >> 1)
      {
        v103 = OUTLINED_FUNCTION_114_0(v98);
        sub_1BFA2DCD0(v103, v99 + 1, 1);
        v61 = v118;
      }

      v100 = *(v0 + 408);
      v64 = v117 + 1;
      *(v61 + 16) = v99 + 1;
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_89_2();
      sub_1BFA75428(v101, v102);
    }

    while (v117 + 1 != v100);
  }

  *(v0 + 504) = v61;
  OUTLINED_FUNCTION_44();
  v120 = (v104 + *v104);
  v105 = swift_task_alloc();
  *(v0 + 512) = v105;
  *v105 = v0;
  v105[1] = sub_1BFA6CC78;
  OUTLINED_FUNCTION_53(*(v0 + 376));
  OUTLINED_FUNCTION_209();

  return v120();
}

uint64_t sub_1BFA6CC78()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA6CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  (*(v20 + 464))(*(v20 + 376), *(v20 + 352));
  __swift_destroy_boxed_opaque_existential_2Tm((v20 + 56));
  v21 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_135_0(v21);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_90();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BFA6CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  v21 = *(v20 + 496);
  v22 = sub_1BFAAF668();
  sub_1BFAAFB88();

  v23 = OUTLINED_FUNCTION_194();
  v24 = *(v20 + 496);
  if (v23)
  {
    v25 = OUTLINED_FUNCTION_51_0();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v24;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_1BF9FDD5C(v26, &qword_1EBDFBA28, &qword_1BFAB28C0);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  v34 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_135_0(v34);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_90();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BFA6D034@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440);
  v4 = OUTLINED_FUNCTION_60_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - v5;
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v61 = v8;
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v60 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  v12 = OUTLINED_FUNCTION_60_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = sub_1BFAAF138();
  OUTLINED_FUNCTION_2_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = (v20 - v19);
  v22 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v23 = *(v22 + 24);
  v63 = v1;
  v24 = v1 + v23;
  v25 = *(v24 + 24);
  v59 = *(v24 + 16);
  type metadata accessor for SiriSuggestions.SuggestionPresentation(0);

  sub_1BFAAF1F8();
  OUTLINED_FUNCTION_9_2(v14, 1, v15);
  if (v26)
  {
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_223();
    *v21 = v27;
    v21[1] = v28;
    (*(v17 + 104))(v21, *MEMORY[0x1E69D31A0], v15);
    OUTLINED_FUNCTION_9_2(v14, 1, v15);
    if (!v26)
    {
      sub_1BF9FDD5C(v14, &qword_1EBDFB6D8, &qword_1BFAB1450);
    }
  }

  else
  {
    (*(v17 + 32))(v21, v14, v15);
  }

  (*(v61 + 16))(v60, v63, v62);
  sub_1BFAAF188();
  v29 = sub_1BFAAECC8();
  OUTLINED_FUNCTION_9_2(v6, 1, v29);
  if (v26)
  {
    sub_1BF9FDD5C(v6, &qword_1EBDFB6D0, &qword_1BFAB1440);
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v30 = sub_1BFAAECA8();
    v57 = v31;
    v58 = v30;
    OUTLINED_FUNCTION_54();
    (*(v32 + 8))(v6, v29);
  }

  v33 = v63;
  v34 = sub_1BFAAF1D8();
  v55 = v35;
  v56 = v34;
  v36 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v37 = v36[10];
  v38 = *MEMORY[0x1E69CE2B8];
  sub_1BFAAF398();
  OUTLINED_FUNCTION_14();
  (*(v39 + 104))(&a1[v37], v38);
  sub_1BFAAF758();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = *(v22 + 64);
  v45 = v36[13];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_14();
  (*(v46 + 16))(&a1[v45], v33 + v44);
  v47 = v59;
  *a1 = v59;
  *(a1 + 1) = v25;
  *(a1 + 2) = v47;
  *(a1 + 3) = v25;
  (*(v17 + 32))(&a1[v36[6]], v21, v15);
  (*(v61 + 32))(&a1[v36[7]], v60, v62);
  v48 = &a1[v36[8]];
  v49 = v57;
  *v48 = v58;
  *(v48 + 1) = v49;
  v50 = &a1[v36[9]];
  v51 = v55;
  *v50 = v56;
  *(v50 + 1) = v51;
  v52 = &a1[v36[12]];
  *v52 = 0;
  *(v52 + 1) = 0;
}

uint64_t sub_1BFA6D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  sub_1BFA75648(a3, v14);
  sub_1BFA75648(a1, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = (v13 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  sub_1BFA75428(v14, v21 + v19);
  sub_1BFA75428(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = (v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v26;
  *v22 = v25;
  v22[1] = v23;

  sub_1BFA0B100();
}

uint64_t sub_1BFA6D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8[8] = swift_task_alloc();
  v9 = sub_1BFAAEFD8();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD78, &unk_1BFAB4A28);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v8[17] = swift_task_alloc();
  v10 = sub_1BFAAE3F8();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = sub_1BFAAEEF8();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6D9A4, 0, 0);
}

uint64_t sub_1BFA6D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v18 = *(v16 + 176);
  v17 = *(v16 + 184);
  v19 = *(v16 + 168);
  v20 = *(v16 + 56);
  v39 = *(v16 + 24);
  v38 = OUTLINED_FUNCTION_229();
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
  v21 = swift_allocObject();
  *(v16 + 192) = v21;
  *(v21 + 16) = xmmword_1BFAB08E0;
  *(v16 + 240) = *(v20 + 48);
  v22 = sub_1BFAAF1D8();
  *(v16 + 244) = 1;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  (*(v18 + 104))(v17, *MEMORY[0x1E69D3050], v19);
  OUTLINED_FUNCTION_30();
  v37 = v24 + *v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v16 + 200) = v25;
  *v25 = v26;
  v25[1] = sub_1BFA6DB5C;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_12_3();

  return v33(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_1BFA6DB5C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA6DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v16 = *(v14 + 136);
  sub_1BFAAE388();
  OUTLINED_FUNCTION_24_2(v16);
  if (v40)
  {
    sub_1BF9FDD5C(*(v14 + 136), &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v17 = sub_1BFAAF688();
    __swift_project_value_buffer(v17, qword_1EDCC8B70);
    OUTLINED_FUNCTION_125_0();

    v18 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_53_0();
    if (os_log_type_enabled(v18, v16))
    {
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_81_1();
      *v15 = 136315138;
      v19 = OUTLINED_FUNCTION_148();
      *(v15 + 4) = sub_1BF9F88A8(v19, v20, v21);
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v22, v23, v24, v25, v15, 0xCu);
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

LABEL_30:
    OUTLINED_FUNCTION_69_2();

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_61();

    return v117(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14);
  }

  v26 = *(v14 + 104);
  v27 = *(v14 + 72);
  v28 = *(v14 + 80);
  (*(*(v14 + 152) + 32))(*(v14 + 160), *(v14 + 136), *(v14 + 144));
  sub_1BFAAEA98();
  v29 = (v28 + 104);
  v30 = OUTLINED_FUNCTION_211();
  v31(v30);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v27);
  v35 = &qword_1BFAB11D0;
  v36 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v36, v37, &qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_227();
  v38 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v38, v39, v27);
  if (v40)
  {
    v41 = *(v14 + 72);
    v27 = &qword_1BFAB11D0;
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v42, v43, v44);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v45, v46, v47);
    v48 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_9_2(v48, v49, v41);
    if (!v40)
    {
      goto LABEL_15;
    }

    sub_1BF9FDD5C(*(v14 + 104), &qword_1EBDFB640, &qword_1BFAB11D0);
  }

  else
  {
    v50 = *(v14 + 72);
    sub_1BFA17B2C(*(v14 + 104), *(v14 + 112), &qword_1EBDFB640, &qword_1BFAB11D0);
    v51 = OUTLINED_FUNCTION_198();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, v52, v50);
    v35 = *(v14 + 120);
    v41 = *(v14 + 112);
    if (EnumTagSinglePayload == 1)
    {
      v26 = &qword_1EBDFB640;
      v27 = &qword_1BFAB11D0;
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v54, v55, v56);
      OUTLINED_FUNCTION_145();
      sub_1BF9FDD5C(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_119_0();
      v61(v60);
LABEL_15:
      sub_1BF9FDD5C(*(v14 + 104), &qword_1EBDFBD78, &unk_1BFAB4A28);
LABEL_16:
      if (OUTLINED_FUNCTION_104_0())
      {
        OUTLINED_FUNCTION_16_5(*(v14 + 16));
        v62 = OUTLINED_FUNCTION_144(*(v41 + 16));
        OUTLINED_FUNCTION_28_4(v62);
        v124 = v63 + *v63;
        swift_task_alloc();
        OUTLINED_FUNCTION_33();
        *(v14 + 224) = v64;
        *v64 = v65;
        OUTLINED_FUNCTION_68_4(v64);
        OUTLINED_FUNCTION_61();

        return v70(v66, v67, v68, v69, v70, v71, v72, v73, a9, v124, a11, a12, a13, a14);
      }

      if (qword_1EDCC8BC0 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
      }

      v75 = OUTLINED_FUNCTION_191();
      v76 = __swift_project_value_buffer(v75, qword_1EDCC8B70);
      OUTLINED_FUNCTION_3_8();
      v77 = OUTLINED_FUNCTION_96();
      sub_1BFA75648(v77, v78);
      v79 = v76;
      v80 = sub_1BFAAF668();
      v81 = sub_1BFAAFB68();
      OUTLINED_FUNCTION_136_0(v81);
      OUTLINED_FUNCTION_166();
      if (v82)
      {
        OUTLINED_FUNCTION_51_0();
        a10 = v27;
        a11 = OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_115_0(4.8149e-34);
        OUTLINED_FUNCTION_2_10();
        v83 = sub_1BFA755F8();
        OUTLINED_FUNCTION_157(v83, v84, v85, v86);
        OUTLINED_FUNCTION_234();
        *(v27 + 4) = v35;
        OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v87, v88, "Suggestion: %s tapped");
        __swift_destroy_boxed_opaque_existential_2Tm(a11);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        OUTLINED_FUNCTION_2_10();
        sub_1BFA755F8();
      }

      (*(v79 + 8))(v27, v26);
      goto LABEL_30;
    }

    a10 = *(v14 + 104);
    v89 = OUTLINED_FUNCTION_174();
    v90(v89);
    OUTLINED_FUNCTION_15_4();
    sub_1BF9FD8E4(v91, v92);
    OUTLINED_FUNCTION_181();
    sub_1BFAAF848();
    v93 = OUTLINED_FUNCTION_217();
    (v27)(v93);
    v29 = &qword_1EBDFB640;
    v94 = OUTLINED_FUNCTION_71();
    sub_1BF9FDD5C(v94, v95, &qword_1BFAB11D0);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v96, v97, v98);
    v99 = OUTLINED_FUNCTION_119_0();
    (v27)(v99);
    OUTLINED_FUNCTION_147();
    sub_1BF9FDD5C(v100, v101, v102);
    if ((v26 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_229();
  *(v14 + 245) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB960, &qword_1BFAB4FB0);
  v103 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_15(v103);
  OUTLINED_FUNCTION_124_0();
  v104 = swift_allocObject();
  *(v14 + 208) = v104;
  *(v104 + 16) = xmmword_1BFAB08E0;
  sub_1BFA6D034(v29 + v104);
  OUTLINED_FUNCTION_15_0();
  v125 = v105 + *v105;
  v106 = swift_task_alloc();
  *(v14 + 216) = v106;
  *v106 = v14;
  v106[1] = sub_1BFA6E3E0;
  OUTLINED_FUNCTION_53(*(v14 + 160));
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_61();

  return v113(v107, v108, v109, v110, v111, v112, v113, v114, a9, v125, a11, a12, a13, a14);
}

uint64_t sub_1BFA6E3E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA6E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (OUTLINED_FUNCTION_104_0())
  {
    OUTLINED_FUNCTION_16_5(*(v16 + 16));
    v19 = OUTLINED_FUNCTION_144(*(v15 + 16));
    OUTLINED_FUNCTION_28_4(v19);
    v54 = v20 + *v20;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v16 + 224) = v21;
    *v21 = v22;
    OUTLINED_FUNCTION_68_4(v21);
    OUTLINED_FUNCTION_61();

    return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, v54, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v32 = OUTLINED_FUNCTION_191();
    v33 = __swift_project_value_buffer(v32, qword_1EDCC8B70);
    OUTLINED_FUNCTION_3_8();
    v34 = OUTLINED_FUNCTION_96();
    sub_1BFA75648(v34, v35);
    v36 = v33;
    v37 = sub_1BFAAF668();
    v38 = sub_1BFAAFB68();
    OUTLINED_FUNCTION_136_0(v38);
    OUTLINED_FUNCTION_166();
    if (v39)
    {
      OUTLINED_FUNCTION_51_0();
      a10 = v17;
      a11 = OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_115_0(4.8149e-34);
      OUTLINED_FUNCTION_2_10();
      v40 = sub_1BFA755F8();
      OUTLINED_FUNCTION_157(v40, v41, v42, v43);
      OUTLINED_FUNCTION_234();
      *(v17 + 4) = v18;
      OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v44, v45, "Suggestion: %s tapped");
      __swift_destroy_boxed_opaque_existential_2Tm(a11);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
    }

    (*(v36 + 8))(v17, v14);
    OUTLINED_FUNCTION_69_2();

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_61();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA6E74C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA6E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v17 = OUTLINED_FUNCTION_191();
  v18 = __swift_project_value_buffer(v17, qword_1EDCC8B70);
  OUTLINED_FUNCTION_3_8();
  v19 = OUTLINED_FUNCTION_96();
  sub_1BFA75648(v19, v20);
  v21 = v18;
  v22 = sub_1BFAAF668();
  v23 = sub_1BFAAFB68();
  OUTLINED_FUNCTION_136_0(v23);
  OUTLINED_FUNCTION_166();
  if (v24)
  {
    OUTLINED_FUNCTION_51_0();
    a10 = v15;
    a11 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_115_0(4.8149e-34);
    OUTLINED_FUNCTION_2_10();
    v25 = sub_1BFA755F8();
    OUTLINED_FUNCTION_157(v25, v26, v27, v28);
    OUTLINED_FUNCTION_234();
    *(v15 + 4) = v16;
    OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v29, v30, "Suggestion: %s tapped");
    __swift_destroy_boxed_opaque_existential_2Tm(a11);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
  }

  (*(v21 + 8))(v15, v14);
  OUTLINED_FUNCTION_69_2();

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA6E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  (*(v12[19] + 8))(v12[20], v12[18]);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1BFA6EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1BFA75648(a3, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  sub_1BFA75428(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA6EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_1BFAAEEF8();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_1BFAAE3F8();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6EE08, 0, 0);
}

uint64_t sub_1BFA6EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = *(v16 + 136);
  v18 = *(v16 + 144);
  v19 = *(v16 + 128);
  v21 = *(v16 + 64);
  v20 = *(v16 + 72);
  sub_1BF9F93E8(*(v16 + 56) + 64, v16 + 16);
  v22 = *(v16 + 48);
  v23 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v24 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(v17 + 16))(v18, v21 + *(v24 + 24), v19);
  v25 = *(v20 + 16);
  *(v16 + 152) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    a9 = v23;
    a10 = v22;
    v27 = *(v16 + 72);
    OUTLINED_FUNCTION_187();
    v26 = a13;
    OUTLINED_FUNCTION_112_0();
    v29 = v27 + v28;
    do
    {
      v30 = *(v16 + 96);
      OUTLINED_FUNCTION_3_8();
      sub_1BFA75648(v29, v30);
      sub_1BFAAF1D8();
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      OUTLINED_FUNCTION_196();
      if (v32)
      {
        v34 = OUTLINED_FUNCTION_114_0(v31);
        sub_1BFA2DC58(v34, v30, 1);
        v26 = a13;
      }

      OUTLINED_FUNCTION_175();
    }

    while (!v33);
  }

  *(v16 + 160) = v26;
  *(v16 + 176) = 2;
  (*(*(v16 + 112) + 104))(*(v16 + 120), *MEMORY[0x1E69D3050], *(v16 + 104));
  OUTLINED_FUNCTION_44();
  v47 = v35 + *v35;
  v36 = swift_task_alloc();
  *(v16 + 168) = v36;
  *v36 = v16;
  v36[1] = sub_1BFA6F048;
  OUTLINED_FUNCTION_53(*(v16 + 144));
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_12_3();

  return v43(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v22 + 96, v47, a13, a14, a15, a16);
}

uint64_t sub_1BFA6F048()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_67();
  v4(v3);
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA6F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  __swift_destroy_boxed_opaque_existential_2Tm(v18 + 2);
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v21 = v18[9];
  v22 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v22, qword_1EDCC8B70);

  v23 = sub_1BFAAF668();
  v24 = sub_1BFAAFB68();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v18[19];
    OUTLINED_FUNCTION_51_0();
    v26 = OUTLINED_FUNCTION_32();
    v27 = v26;
    a14 = v26;
    *v21 = 136315138;
    v28 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      a9 = v26;
      a10 = v21;
      HIDWORD(a11) = v24;
      a12 = v23;
      v29 = v18[11];
      a13 = v18[10];
      v30 = v18[9];
      v59 = MEMORY[0x1E69E7CC0];
      sub_1BFA2DC58(0, v18[19], 0);
      v31 = 0;
      v28 = v59;
      OUTLINED_FUNCTION_112_0();
      v33 = v30 + v32;
      v34 = *(v29 + 72);
      do
      {
        v35 = v18[12];
        OUTLINED_FUNCTION_3_8();
        sub_1BFA75648(v33, v35);
        sub_1BFAAF1D8();
        OUTLINED_FUNCTION_206();
        OUTLINED_FUNCTION_2_10();
        sub_1BFA755F8();
        a15 = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          v40 = OUTLINED_FUNCTION_114_0(v36);
          sub_1BFA2DC58(v40, v37 + 1, 1);
        }

        v38 = v18[19];
        ++v31;
        *(v28 + 16) = v37 + 1;
        v39 = v28 + 16 * v37;
        *(v39 + 32) = v19;
        *(v39 + 40) = v20;
        v33 += v34;
      }

      while (v31 != v38);
      v23 = a12;
      v27 = a9;
      v21 = a10;
    }

    MEMORY[0x1BFB60C30](v28, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_221();

    v41 = OUTLINED_FUNCTION_41_0();
    v44 = sub_1BF9F88A8(v41, v42, v43);

    *(v21 + 4) = v44;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v27);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t SiriSuggestionsFacade.typingSessionEnded(reason:requestId:)()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  v5 = sub_1BFAAF688();
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_15(v5);
  *(v0 + 40) = v6;
  *(v0 + 48) = OUTLINED_FUNCTION_100();
  *(v0 + 56) = *v2;
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA6F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  sub_1BFAAF4B8();

  v23 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_208();

  if (OUTLINED_FUNCTION_194())
  {
    v24 = *(v20 + 56);
    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    v27 = OUTLINED_FUNCTION_185();
    a9 = OUTLINED_FUNCTION_193();
    *v27 = 136315394;
    *(v27 + 4) = sub_1BF9F88A8(v26, v25, &a9);
    *(v27 + 12) = 2080;
    v28 = 0xE700000000000000;
    v29 = 0x7373696D736964;
    switch(v24)
    {
      case 1:
        v28 = 0xED00007061546E6FLL;
        v29 = 0x6974736567677573;
        break;
      case 2:
        v28 = 0xEA00000000006564;
        v29 = 0x6F4D686374697773;
        break;
      case 3:
        v28 = 0xE600000000000000;
        v29 = 0x74696D627573;
        break;
      default:
        break;
    }

    v32 = sub_1BF9F88A8(v29, v28, &a9);

    *(v27 + 14) = v32;
    OUTLINED_FUNCTION_212();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();

    v38 = OUTLINED_FUNCTION_146();
    v39(v38);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_46();
    v31(v30);
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestions(query:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v10 + 16) = v23;
  *v23 = v24;
  v23[1] = sub_1BF9FDE28;

  return SiriSuggestionsFacade.getAutoCompleteSuggestions(query:typingSessionId:deviceLocked:)(v20, v18, v16, v14, v12, 0, v21, v22, a9, a10);
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestions(query:typingSessionId:deviceLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  *(v10 + 16) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v10 + 24) = v12;
  *v12 = v13;
  v12[1] = sub_1BFA6F89C;
  OUTLINED_FUNCTION_138();

  return SiriSuggestionsFacade.getAutoCompleteSuggestionsOrError(query:typingSessionId:deviceLocked:)();
}

uint64_t sub_1BFA6F89C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA6F9B0()
{
  OUTLINED_FUNCTION_58();
  if (qword_1EBDFB4F0 != -1)
  {
    OUTLINED_FUNCTION_109_0(&qword_1EBDFB4F0);
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = qword_1EBDFBD28;
  v7 = xmmword_1EBDFBD08;

  v6 = xmmword_1EBDFBD18;

  *v2 = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t SiriSuggestionsFacade.getAutoCompleteSuggestionsOrError(query:typingSessionId:deviceLocked:)()
{
  OUTLINED_FUNCTION_40();
  *(v1 + 384) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  v8 = sub_1BFAAF458();
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_15(v8);
  *(v1 + 88) = v9;
  *(v1 + 96) = OUTLINED_FUNCTION_100();
  v10 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  *(v1 + 104) = v10;
  OUTLINED_FUNCTION_15(v10);
  *(v1 + 112) = v11;
  *(v1 + 120) = OUTLINED_FUNCTION_109();
  *(v1 + 128) = swift_task_alloc();
  v12 = sub_1BFAAF498();
  *(v1 + 136) = v12;
  OUTLINED_FUNCTION_15(v12);
  *(v1 + 144) = v13;
  *(v1 + 152) = OUTLINED_FUNCTION_109();
  *(v1 + 160) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v14);
  *(v1 + 168) = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAE3F8();
  *(v1 + 176) = v15;
  OUTLINED_FUNCTION_15(v15);
  *(v1 + 184) = v16;
  *(v1 + 192) = *(v17 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_109();
  *(v1 + 208) = swift_task_alloc();
  v18 = sub_1BFAAE208();
  *(v1 + 216) = v18;
  OUTLINED_FUNCTION_15(v18);
  *(v1 + 224) = v19;
  *(v1 + 232) = OUTLINED_FUNCTION_100();
  v20 = sub_1BFAAE378();
  *(v1 + 240) = v20;
  OUTLINED_FUNCTION_15(v20);
  *(v1 + 248) = v21;
  *(v1 + 256) = OUTLINED_FUNCTION_100();
  v22 = sub_1BFAAF648();
  *(v1 + 264) = v22;
  OUTLINED_FUNCTION_15(v22);
  *(v1 + 272) = v23;
  *(v1 + 280) = OUTLINED_FUNCTION_100();
  v24 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1BFA6FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_61_0();
  a22 = v24;
  a23 = v25;
  OUTLINED_FUNCTION_80();
  a21 = v23;
  v26 = *(v23 + 248);
  v27 = sub_1BFAAF258();
  sub_1BFAAF238();

  sub_1BFAAF388();
  v28 = sub_1BFAAF258();
  OUTLINED_FUNCTION_111_0();
  sub_1BFAAF268();

  sub_1BFAAE368();
  sub_1BFAAE358();
  *(v23 + 288) = v29;
  *(v23 + 296) = *(v26 + 8);
  *(v23 + 304) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30 = OUTLINED_FUNCTION_46();
  v31(v30);
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v32 = *(v23 + 48);
  v33 = sub_1BFAAF688();
  *(v23 + 312) = v33;
  __swift_project_value_buffer(v33, qword_1EDCC8B70);

  v34 = sub_1BFAAF668();
  sub_1BFAAFB78();

  if (OUTLINED_FUNCTION_194())
  {
    v35 = *(v23 + 56);
    v32 = *(v23 + 64);
    v37 = *(v23 + 40);
    v36 = *(v23 + 48);
    v38 = OUTLINED_FUNCTION_185();
    a12 = OUTLINED_FUNCTION_193();
    *v38 = 136315394;
    *(v38 + 4) = sub_1BF9F88A8(v37, v36, &a12);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_1BF9F88A8(v35, v32, &a12);
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  if (*(v23 + 384) == 1)
  {
    v44 = sub_1BFAAF668();
    v45 = sub_1BFAAFB78();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = 1;
      _os_log_impl(&dword_1BF9F6000, v44, v45, "Not returning any suggestions as Device is locked: %{BOOL}d", v46, 8u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v47 = *(v23 + 32);

    *v47 = MEMORY[0x1E69E7CC0];
    v47[1] = nullsub_1;
    v47[2] = 0;
    v47[3] = nullsub_1;
    v47[4] = 0;
LABEL_20:
    sub_1BFAAF388();
    v63 = sub_1BFAAF258();
    v64 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_228(v64, v65);

    v66 = OUTLINED_FUNCTION_96_0();
    v67(v66);

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_12_3();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15);
  }

  v48 = *(v23 + 48);
  *(v23 + 16) = *(v23 + 40);
  *(v23 + 24) = v48;
  sub_1BFAAE1F8();
  sub_1BF9F86D0();
  sub_1BFAAFBB8();
  OUTLINED_FUNCTION_221();
  v49 = OUTLINED_FUNCTION_120_0();
  v50(v49);

  v51 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v51 = (v23 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    v54 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v55 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_2_9();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v57);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v58, v59, "Not returning any suggestions as query is empty");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    if (qword_1EBDFB4F0 != -1)
    {
      OUTLINED_FUNCTION_109_0(&qword_1EBDFB4F0);
    }

    v60 = *(v23 + 32);
    v61 = qword_1EBDFBD28;
    v62 = xmmword_1EBDFBD18;
    a11 = xmmword_1EBDFBD18;
    *v60 = xmmword_1EBDFBD08;
    *(v60 + 16) = v62;
    *(v60 + 32) = v61;

    goto LABEL_20;
  }

  sub_1BFAAE388();
  if (OUTLINED_FUNCTION_83_2() == 1)
  {
    v52 = *(v23 + 168);
    sub_1BFAAE3E8();
    OUTLINED_FUNCTION_24_2(v52);
    if (!v53)
    {
      sub_1BF9FDD5C(*(v23 + 168), &qword_1EBDFB570, &qword_1BFAB1F50);
    }
  }

  else
  {
    (*(*(v23 + 184) + 32))(*(v23 + 208), *(v23 + 168), *(v23 + 176));
  }

  v77 = *(v23 + 200);
  v78 = *(v23 + 184);
  v96 = *(v23 + 192);
  *&a11 = *(v23 + 208);
  v79 = *(v23 + 176);
  v80 = *(v23 + 72);
  v81 = *(v78 + 16);
  v81(v77);
  v82 = (*(v78 + 80) + 24) & ~*(v78 + 80);
  v83 = swift_allocObject();
  *(v23 + 320) = v83;
  *(v83 + 16) = v80;
  v84 = *(v78 + 32);
  v84(v83 + v82, v77, v79);
  (v81)(v77, a11, v79);
  v85 = swift_allocObject();
  *(v23 + 328) = v85;
  *(v85 + 16) = v80;
  v84(v85 + v82, v77, v79);
  __swift_project_boxed_opaque_existential_1((v80 + 184), *(v80 + 208));
  swift_retain_n();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v23 + 336) = v86;
  *v86 = v87;
  v86[1] = sub_1BFA703A0;
  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x1EEE38560](v88, v89, v90, v91, v92, v93, v94, v95, a9, v96, a11, *(&a11 + 1), a12, a13, a14, a15);
}

uint64_t sub_1BFA703A0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA70498()
{
  OUTLINED_FUNCTION_177();
  v75 = v0;
  v64 = sub_1BFAAF488();
  result = sub_1BFA751D0(v64);
  v63 = v0;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = *(v0 + 104);
    v61 = *(v0 + 128);
    v4 = MEMORY[0x1E69E7CC0];
    v62 = result;
    do
    {
      v71 = v4;
      if ((v64 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB60E90](v2, v64);
      }

      else
      {
      }

      v5 = *(v0 + 128);
      v70 = *(v0 + 120);
      v6 = sub_1BFAAF408();
      v67 = v7;
      v68 = v6;
      v8 = sub_1BFAAF3A8();
      v65 = v9;
      v66 = v8;
      sub_1BFAAF438();
      sub_1BFAAF3D8();
      v10 = sub_1BFAAF428();
      v12 = v11;
      v13 = sub_1BFAAF3F8();
      v15 = v14;
      sub_1BFAAF418();
      sub_1BFAAF3C8();
      v16 = sub_1BFAAF3E8();
      v18 = v17;
      sub_1BFAAF3B8();
      *v5 = v68;
      v61[1] = v67;
      v61[2] = v66;
      v61[3] = v65;
      v19 = (v5 + v3[8]);
      *v19 = v10;
      v19[1] = v12;
      v20 = (v5 + v3[9]);
      *v20 = v13;
      v20[1] = v15;
      v21 = (v5 + v3[12]);
      *v21 = v16;
      v21[1] = v18;
      OUTLINED_FUNCTION_94_0();
      sub_1BFA75648(v5, v70);
      v4 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F798(0, *(v71 + 16) + 1, 1, v71);
        v4 = v26;
      }

      v23 = *(v4 + 16);
      v22 = *(v4 + 24);
      v0 = v63;
      if (v23 >= v22 >> 1)
      {
        v27 = OUTLINED_FUNCTION_114_0(v22);
        sub_1BFA1F798(v27, v23 + 1, 1, v4);
        v4 = v28;
      }

      ++v2;
      v24 = *(v63 + 120);

      sub_1BFA755F8();
      *(v4 + 16) = v23 + 1;
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_89_2();
      sub_1BFA75428(v24, v25);
    }

    while (v62 != v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 352) = v4;
  v29 = *(v0 + 296);
  v30 = *(v0 + 288);
  v31 = *(v0 + 256);
  v32 = *(v0 + 240);

  sub_1BFAAE368();
  sub_1BFAAE358();
  v34 = v33;
  v29(v31, v32);
  if (qword_1EBDFB518 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  __swift_project_value_buffer(*(v0 + 312), qword_1EBDFC288);
  (*(v38 + 16))(v36, v35, v37);

  v39 = sub_1BFAAF668();
  v40 = sub_1BFAAFB78();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 144);
  if (v41)
  {
    v44 = *(v0 + 88);
    v43 = *(v0 + 96);
    v69 = *(v0 + 80);
    v72 = v40;
    v45 = *(v0 + 48);
    v46 = v4;
    v47 = *(v63 + 40);
    v48 = swift_slowAlloc();
    v74 = OUTLINED_FUNCTION_193();
    *v48 = 136315906;
    *(v48 + 4) = sub_1BF9F88A8(v47, v45, &v74);
    *(v48 + 12) = 2048;
    *(v48 + 14) = *(v46 + 16);
    *(v48 + 22) = 2080;
    sub_1BFAAF478();
    v49 = sub_1BFAAF448();
    v51 = v50;
    (*(v44 + 8))(v43, v69);
    v54 = *(v42 + 8);
    v52 = v42 + 8;
    v53 = v54;
    v55 = OUTLINED_FUNCTION_34_2();
    v54(v55);
    v56 = sub_1BF9F88A8(v49, v51, &v74);
    v0 = v63;

    *(v48 + 24) = v56;
    *(v48 + 32) = 2048;
    *(v48 + 34) = v34 - v30;

    _os_log_impl(&dword_1BF9F6000, v39, v72, "%s,%ld,%s,%f", v48, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    v57 = *(v42 + 8);
    v52 = v42 + 8;
    v53 = v57;
    v58 = OUTLINED_FUNCTION_34_2();
    v57(v58);
  }

  *(v0 + 360) = v52;
  *(v0 + 368) = v53;
  OUTLINED_FUNCTION_16_1((*(v0 + 72) + 64));
  OUTLINED_FUNCTION_44();
  v73 = (v59 + *v59);
  v60 = swift_task_alloc();
  *(v0 + 376) = v60;
  *v60 = v0;
  v60[1] = sub_1BFA70A4C;
  OUTLINED_FUNCTION_53(*(v0 + 208));
  OUTLINED_FUNCTION_209();

  return v73();
}

uint64_t sub_1BFA70A4C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA70B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 352);
  v17 = *(v14 + 320);
  v16 = *(v14 + 328);
  v18 = *(v14 + 32);
  (*(v14 + 368))(*(v14 + 160), *(v14 + 136));
  v19 = OUTLINED_FUNCTION_46();
  v20(v19);
  *v18 = v15;
  v18[1] = sub_1BFA75A2C;
  v18[2] = v17;
  v18[3] = sub_1BFA75B44;
  v18[4] = v16;
  sub_1BFAAF388();
  v21 = sub_1BFAAF258();
  v22 = OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_228(v22, v23);

  v24 = OUTLINED_FUNCTION_96_0();
  v25(v24);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA70C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  v21 = v20[26];
  v36 = v20[29];
  v37 = v20[25];
  v22 = v20[22];
  v23 = v20[23];
  v38 = v20[21];
  v39 = v20[20];
  v40 = v20[19];
  v41 = v20[16];
  v42 = v20[15];
  v43 = v20[12];

  (*(v23 + 8))(v21, v22);
  sub_1BFAAF388();
  v24 = sub_1BFAAF258();
  OUTLINED_FUNCTION_46();
  sub_1BFAAF248();

  v25 = OUTLINED_FUNCTION_164();
  v26(v25);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_90();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, v42, v43, a18, a19, a20);
}

uint64_t sub_1BFA70DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_1BFA75648(a1, v11);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v21;
  sub_1BFA75428(v11, &v18[v16]);
  (*(v6 + 32))(&v18[v17], &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA71070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *(type metadata accessor for SiriAutoCompleteSuggestion(0) - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7113C, 0, 0);
}

uint64_t sub_1BFA7113C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_1((*(v0 + 16) + 184));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_45(v1);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE38568](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BFA711EC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA712D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = *(v9 + 24);
  __swift_project_boxed_opaque_existential_1((*(v9 + 16) + 64), *(*(v9 + 16) + 88));
  *(v9 + 88) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB960, &qword_1BFAB4FB0);
  OUTLINED_FUNCTION_124_0();
  v12 = swift_allocObject();
  *(v9 + 72) = v12;
  *(v12 + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_94_0();
  sub_1BFA75648(v11, v13 + v10);
  v14 = swift_task_alloc();
  *(v9 + 80) = v14;
  *v14 = v9;
  v14[1] = sub_1BFA713E8;
  OUTLINED_FUNCTION_53(*(v9 + 32));
  OUTLINED_FUNCTION_138();

  return sub_1BFA2FFF0(v15, v16, v17, v18, v19, v20, v21, v22, a9);
}

uint64_t sub_1BFA713E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA714E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v13 = *(v12 + 56);
  v14 = *(v12 + 24);
  v15 = sub_1BFAAF688();
  __swift_project_value_buffer(v15, qword_1EDCC8B70);
  sub_1BFA75648(v14, v13);
  v16 = OUTLINED_FUNCTION_60_1();
  sub_1BFA75648(v16, v17);
  v18 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v19 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_185();
    a9 = OUTLINED_FUNCTION_193();
    *v21 = 136315394;

    sub_1BFA755F8();
    v22 = OUTLINED_FUNCTION_34_2();
    v25 = sub_1BF9F88A8(v22, v23, v24);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;

    sub_1BFA755F8();
    v26 = OUTLINED_FUNCTION_71();
    v29 = sub_1BF9F88A8(v26, v27, v28);

    *(v21 + 14) = v29;
    OUTLINED_FUNCTION_212();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    sub_1BFA755F8();
    sub_1BFA755F8();
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1BFA71710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BFAAE3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v14[(v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA718F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BFA71914, 0, 0);
}

uint64_t sub_1BFA71914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_43();
  v10 = *(v9 + 16);
  v12 = v10[11];
  v11 = v10[12];
  __swift_project_boxed_opaque_existential_1(v10 + 8, v12);
  *(v9 + 48) = 0;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_156(v13);
  *v14 = v15;
  v14[1] = sub_1BFA719D4;
  v16 = OUTLINED_FUNCTION_53(*(v9 + 24));

  return sub_1BFA2FFF0(v16, v9 + 48, v17, v12, v11, v18, v19, v20, a9);
}

uint64_t sub_1BFA719D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA71AB8()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);

  v2 = sub_1BFAAF668();
  sub_1BFAAFB68();
  v3 = OUTLINED_FUNCTION_72_2();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_51_0();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v8, v9, v10, v11, v7, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_85();

  return v12();
}

uint64_t SiriAutoCompleteSuggestion.init(displayText:invocationText:iconInfo:uuidIdentifier:appBundleId:loggingIdentifier:source:toolInvocation:zkwGenerationId:suggestionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v21 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  v22 = v21[6];
  sub_1BFAAF138();
  OUTLINED_FUNCTION_14();
  (*(v23 + 32))(&a9[v22], a5);
  v24 = v21[7];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  (*(v25 + 32))(&a9[v24], a6);
  v26 = &a9[v21[8]];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = &a9[v21[9]];
  *v27 = a10;
  *(v27 + 1) = a11;
  v28 = v21[10];
  sub_1BFAAF398();
  OUTLINED_FUNCTION_14();
  (*(v29 + 32))(&a9[v28], a12);
  sub_1BFA17BBC(a13, &a9[v21[11]], &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v30 = &a9[v21[12]];
  *v30 = a14;
  *(v30 + 1) = a15;
  v31 = v21[13];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_14();
  v33 = *(v32 + 32);

  return v33(&a9[v31], a16);
}

uint64_t SiriSuggestionsFacade.emitRequestLink(turnId:generationId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA71DA8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_1((*(v0 + 32) + 64));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_156(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22_4(v2);

  return v5(v4);
}

uint64_t SiriSuggestionsFacade.emitRequestLink(turnId:typingSessionId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA71EC0()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_1((*(v0 + 32) + 64));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_156(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22_4(v2);

  return v5(v4);
}

uint64_t SiriSuggestionsFacade.getSuggestionsForIntent(intentToSuggest:entities:expectedDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1BFAAEB18();
  OUTLINED_FUNCTION_60_0(v6);
  v1[7] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAEB68();
  v1[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA72090()
{
  OUTLINED_FUNCTION_51();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1BFAAEB78();

  OUTLINED_FUNCTION_67();
  sub_1BFAAEB38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = xmmword_1BFAB08E0;
  (*(v2 + 16))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA721C0;

  return SiriSuggestionsFacade.getSuggestionsForIntents(intentQueries:expectedDeliveryVehicle:timeoutSeconds:)();
}

uint64_t sub_1BFA721C0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA722C0()
{
  OUTLINED_FUNCTION_40();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_24_0();
  v2 = v0[13];

  return v1(v2);
}

uint64_t SiriSuggestionsFacade.getSuggestionsForIntents(intentQueries:expectedDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_100();
  v8 = sub_1BFAAEAE8();
  v1[10] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_100();
  v10 = sub_1BFAAEB18();
  v1[13] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_100();
  v12 = sub_1BFAAEB68();
  v1[16] = v12;
  OUTLINED_FUNCTION_15(v12);
  v1[17] = v13;
  v1[18] = OUTLINED_FUNCTION_100();
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA724E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, uint64_t (**a14)(uint64_t *, uint64_t), uint64_t (**a15)(uint64_t, uint64_t), uint64_t a16, uint64_t (*a17)(void, uint64_t, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  a31 = v35;
  a32 = v36;
  a30 = v33;
  v37 = v33;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v38 = v33[3];
  v39 = sub_1BFAAF688();
  v33[19] = OUTLINED_FUNCTION_126_0(v39, qword_1EDCC8B70);

  v40 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_53_0();
  if (os_log_type_enabled(v40, v32))
  {
    v41 = v37[3];
    OUTLINED_FUNCTION_51_0();
    v42 = OUTLINED_FUNCTION_32();
    a20 = v42;
    *v34 = 136315138;
    v43 = v41[2];
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      a9 = v42;
      a10 = v34;
      HIDWORD(a11) = v32;
      a12 = v40;
      v45 = v37[17];
      v46 = v37[14];
      v47 = v37[11];
      v81 = v37;
      v48 = v37[3];
      a21 = MEMORY[0x1E69E7CC0];
      sub_1BFA2DC58(0, v43, 0);
      v44 = a21;
      v45 += 16;
      OUTLINED_FUNCTION_12_1();
      v50 = v48 + v49;
      a16 = *(v45 + 56);
      a17 = v51;
      a14 = (v47 + 8);
      a15 = (v46 + 8);
      a18 = v45;
      a13 = v45 - 8;
      do
      {
        v52 = v81[15];
        v53 = v81[12];
        v54 = v81[13];
        v55 = v81[10];
        a17(v81[18], v50, v81[16]);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (*a15)(v52, v54);
        v41 = v53;
        v56 = sub_1BFAAEAD8();
        v58 = v57;
        (*a14)(v53, v55);
        v59 = OUTLINED_FUNCTION_120_0();
        v60(v59);
        a21 = v44;
        v62 = *(v44 + 16);
        v61 = *(v44 + 24);
        v38 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v64 = OUTLINED_FUNCTION_114_0(v61);
          v41 = &a21;
          sub_1BFA2DC58(v64, v62 + 1, 1);
          v44 = a21;
        }

        *(v44 + 16) = v38;
        v63 = v44 + 16 * v62;
        *(v63 + 32) = v56;
        *(v63 + 40) = v58;
        v50 += a16;
        --v43;
      }

      while (v43);
      v37 = v81;
      v40 = a12;
      LOBYTE(v32) = BYTE4(a11);
      v34 = a10;
    }

    MEMORY[0x1BFB60C30](v44, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v41, v38, &a20);
    OUTLINED_FUNCTION_125_0();

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BF9F6000, v40, v32, "[getSuggestionsForIntents] Fetching suggestions for: %s", v34, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v65 = v37[9];
  v66 = v37[6];
  v67 = v37[7];
  v68 = v37[3];
  sub_1BFA17B2C(v37[4], v65, &qword_1EBDFBD48, &qword_1BFAB49C0);
  v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v70 = swift_allocObject();
  v37[20] = v70;
  *(v70 + 16) = v66;
  *(v70 + 24) = v68;
  sub_1BFA17BBC(v65, v70 + v69, &qword_1EBDFBD48, &qword_1BFAB49C0);

  v71 = swift_task_alloc();
  v37[21] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  *v71 = v37;
  v71[1] = sub_1BFA728A4;
  OUTLINED_FUNCTION_170();

  return MEMORY[0x1EEE40F70](v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA728A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA729A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, NSObject *a13, uint64_t a14, uint64_t a15, void (**a16)(uint64_t *, uint64_t), NSObject *a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, uint64_t), uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v38 = v34[2];
  v37 = v34[3];

  v39 = sub_1BFAAF668();
  v40 = sub_1BFAAFB78();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v34[3];
    v42 = OUTLINED_FUNCTION_185();
    v43 = swift_slowAlloc();
    a22 = v43;
    *v42 = 134218242;
    *(v42 + 4) = *(v38 + 16);

    *(v42 + 12) = 2080;
    v44 = v41[2];
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      a10 = v43;
      a11 = v42;
      HIDWORD(a12) = v40;
      a13 = v39;
      a14 = v38;
      OUTLINED_FUNCTION_205();
      a23 = v46;
      sub_1BFA2DC58(0, v44, 0);
      v47 = v40 + 16;
      OUTLINED_FUNCTION_12_1();
      v49 = v38 + v48;
      a18 = *(v47 + 56);
      a19 = v50;
      a16 = (v37 + 8);
      a17 = v39 + 1;
      a20 = v47;
      a21 = v34;
      a15 = v47 - 8;
      do
      {
        v51 = v34[18];
        v53 = v34[15];
        v52 = v34[16];
        v54 = v34[12];
        v55 = v34[13];
        v56 = v34[10];
        v57 = v45;
        a19(v51, v49, v52);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (a17->isa)(v53, v55);
        v41 = v54;
        v58 = sub_1BFAAEAD8();
        v60 = v59;
        (*a16)(v54, v56);
        v61 = OUTLINED_FUNCTION_60_1();
        v62(v61);
        v45 = v57;
        a23 = v57;
        v64 = *(v57 + 16);
        v63 = *(v57 + 24);
        v37 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v66 = OUTLINED_FUNCTION_114_0(v63);
          v41 = &a23;
          sub_1BFA2DC58(v66, v64 + 1, 1);
          v45 = a23;
        }

        *(v45 + 16) = v37;
        v65 = v45 + 16 * v64;
        *(v65 + 32) = v58;
        *(v65 + 40) = v60;
        v49 += a18;
        --v44;
        v34 = a21;
      }

      while (v44);
      v39 = a13;
      LOBYTE(v40) = BYTE4(a12);
      v43 = a10;
      v42 = a11;
    }

    MEMORY[0x1BFB60C30](v45, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v41, v37, &a22);
    OUTLINED_FUNCTION_125_0();

    *(v42 + 14) = v41;
    _os_log_impl(&dword_1BF9F6000, v39, v40, "[getSuggestionsForIntent] Returning %ld suggestions for %s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_2Tm(v43);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_231();

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_172();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1BFA72CA0()
{
  OUTLINED_FUNCTION_177();
  v53 = v0;

  v2 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v3 = OUTLINED_FUNCTION_72_2();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = v0[5];
    v8 = OUTLINED_FUNCTION_51_0();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v14 = v0[3];

  v15 = MEMORY[0x1E69E7CC0];

  v16 = sub_1BFAAF668();
  v17 = sub_1BFAAFB78();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[3];
    OUTLINED_FUNCTION_185();
    v51 = OUTLINED_FUNCTION_81_1();
    *v1 = 134218242;
    *(v1 + 4) = *(v15 + 16);

    *(v1 + 12) = 2080;
    v19 = v18[2];
    if (v19)
    {
      v43 = v1;
      v44 = v17;
      v45 = v16;
      OUTLINED_FUNCTION_205();
      v52 = v15;
      sub_1BFA2DC58(0, v19, 0);
      v20 = v15;
      OUTLINED_FUNCTION_12_1();
      v22 = v17 + v21;
      v48 = *(v1 + 72);
      v49 = v23;
      v46 = (v14 + 8);
      v47 = v16 + 1;
      v50 = v0;
      do
      {
        v24 = v0[18];
        v26 = v0[15];
        v25 = v0[16];
        v27 = v0[12];
        v28 = v0[13];
        v29 = v0[10];
        v49(v24, v22, v25);
        sub_1BFAAEB48();
        sub_1BFAAEAF8();
        (v47->isa)(v26, v28);
        v18 = v27;
        v30 = sub_1BFAAEAD8();
        v32 = v31;
        (*v46)(v27, v29);
        v33 = OUTLINED_FUNCTION_60_1();
        v34(v33);
        v52 = v20;
        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v14 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_114_0(v35);
          v18 = &v52;
          sub_1BFA2DC58(v38, v36 + 1, 1);
          v20 = v52;
        }

        *(v20 + 16) = v14;
        v37 = v20 + 16 * v36;
        *(v37 + 32) = v30;
        *(v37 + 40) = v32;
        v22 += v48;
        --v19;
        v0 = v50;
      }

      while (v19);
      v39 = v20;
      v16 = v45;
      LOBYTE(v17) = v44;
      v1 = v43;
    }

    else
    {
      v39 = v15;
    }

    MEMORY[0x1BFB60C30](v39, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_192();
    sub_1BF9F88A8(v18, v14, &v51);
    OUTLINED_FUNCTION_125_0();

    *(v1 + 14) = v18;
    _os_log_impl(&dword_1BF9F6000, v16, v17, "[getSuggestionsForIntent] Returning %ld suggestions for %s", v1, 0x16u);
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_231();

  OUTLINED_FUNCTION_24_0();
  v41 = MEMORY[0x1E69E7CC0];

  return v40(v41);
}