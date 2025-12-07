_BYTE *sub_18F2D4A94(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D4B60(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F2D4BE8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentMediaSearch.MediaSearchNLGParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F2D4D3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F2D4E08(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F2D4ED4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_16_31(-1);
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
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_16_31(v8);
}

_BYTE *sub_18F2D4F58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_15_31(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_13_31(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_14_33(result, v6);
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
          result = OUTLINED_FUNCTION_2(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D5014(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F2D509C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D52C8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2D532C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t static _SynthesizedCopyIntent.parameterSummary.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _SynthesizedCopyIntent(0, a1, a2, a4);
  OUTLINED_FUNCTION_0_73();
  swift_getWitnessTable();

  return IntentParameterSummary.init()(a3);
}

uint64_t sub_18F2D546C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  (*(v9 + 16))(v13 - v7);
  v13[1] = *a2;
  v11 = type metadata accessor for _SynthesizedCopyIntent(0, v5, v6, v10);

  _SynthesizedCopyIntent.entity.setter(v8, v11);
}

uint64_t _SynthesizedCopyIntent.entity.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  IntentParameter.wrappedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

void sub_18F2D5720(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  if (a2)
  {
    v5 = *v2;
    v6 = v2[1];
    (*(v6 + 16))(*(*a1 + 16), v3, *v2);
    IntentParameter.wrappedValue.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    IntentParameter.wrappedValue.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

void _SynthesizedCopyIntent.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = *(a2 + 8);
  v13 = *(*(v12 + 8) + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v22 - v16;
  v18 = sub_18F520B3C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  type metadata accessor for IntentParameter(0, a1, v13, v19);
  sub_18F520ACC();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, AssociatedTypeWitness);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_18F120FCC(a1, a1, a1, v12, v13);
  v20 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_18F116B3C();
  *a3 = v21;
}

uint64_t sub_18F2D5A5C()
{
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED7077A8);
  v2 = sub_18F52163C();
  v3 = sub_18F52221C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "To enable CopyableEntity support please import AppIntents with UIKit or SwiftUI", v4, 2u);
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  sub_18F133EDC();
  swift_allocError();
  *v5 = 3;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 7;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18F2D5BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return _SynthesizedCopyIntent.perform()();
}

uint64_t sub_18F2D5C60(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2D5C9C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2D5CD8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2D5D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t IntentPrediction.init<>(displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_18F2D5E88;
  a3[1] = result;
  return result;
}

uint64_t sub_18F2D5E34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = type metadata accessor for DisplayRepresentation(0);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18F2D5E90()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_18F2D5EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

AppIntents::NegativeAppShortcutPhrase::StringInterpolation __swiftcall NegativeAppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  if (interpolationCount + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = __OFADD__(literalCapacity, 2 * interpolationCount);
  literalCapacity += 2 * interpolationCount;
  if (v3)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  literalCapacity = MEMORY[0x193ADAF90](literalCapacity);
LABEL_6:
  result.formatString._object = interpolationCount;
  result.formatString._countAndFlagsBits = literalCapacity;
  return result;
}

unint64_t sub_18F2D5FA8()
{
  result = qword_1EACD57C0;
  if (!qword_1EACD57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD57C0);
  }

  return result;
}

unint64_t sub_18F2D6000()
{
  result = qword_1EACD57C8;
  if (!qword_1EACD57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD57C8);
  }

  return result;
}

unint64_t sub_18F2D605C()
{
  result = qword_1EACD57D0;
  if (!qword_1EACD57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD57D0);
  }

  return result;
}

unint64_t sub_18F2D60C0()
{
  result = qword_1EACD57D8;
  if (!qword_1EACD57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD57D8);
  }

  return result;
}

void sub_18F2D6838()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2D697C()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2D6A24()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2D6C64()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2D6E58()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2D6F64()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2D72E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2D7364(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_18F520F1C();
  OUTLINED_FUNCTION_0();
  v134 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_14(v10 - v9);
  v130 = sub_18F520ADC();
  OUTLINED_FUNCTION_0();
  v128 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_14(v14 - v13);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = OUTLINED_FUNCTION_8_14(v18 - v17);
  v20 = type metadata accessor for AppIntentError(v19);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v127[0] = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v131 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v142 = v127 - v29;
  v30 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v143 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16C8, &qword_18F545200);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v127 - v42);
  __swift_storeEnumTagSinglePayload(v127 - v42, 1, 1, v20);
  v139 = a1;
  v138 = v3;
  v137 = a2;
  v136 = v35;
  v135 = v6;
  switch((a2 >> 60) & 3 | (4 * v3))
  {
    case 1uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE640 != -1)
      {
        OUTLINED_FUNCTION_21_25(&qword_1EACCE640);
      }

      goto LABEL_61;
    case 2uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE678 != -1)
      {
        OUTLINED_FUNCTION_26_28(&qword_1EACCE678);
      }

      goto LABEL_61;
    case 3uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF4F8 != -1)
      {
        OUTLINED_FUNCTION_24_30(&qword_1EACCF4F8);
      }

      v48 = qword_1EACD49C8;
      goto LABEL_72;
    case 4uLL:
      v49 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v49, v50);
      if (qword_1EACCF500 != -1)
      {
        OUTLINED_FUNCTION_30_23(&qword_1EACCF500);
      }

      v51 = qword_1EACD49E0;
      goto LABEL_42;
    case 5uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF508 != -1)
      {
        OUTLINED_FUNCTION_18_32(&qword_1EACCF508);
      }

      v48 = qword_1EACD49F8;
      goto LABEL_72;
    case 6uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF510 != -1)
      {
        OUTLINED_FUNCTION_41_14(&qword_1EACCF510);
      }

      v48 = qword_1EACD4A10;
      goto LABEL_72;
    case 7uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE220 != -1)
      {
        OUTLINED_FUNCTION_23_25(&qword_1EACCE220);
      }

      goto LABEL_61;
    case 8uLL:
      sub_18F0EF1A8(v43, &qword_1EACD16C8, &qword_18F545200);
      OUTLINED_FUNCTION_29_27();
      *v43 = v70 + 8;
      v43[1] = v71;
      OUTLINED_FUNCTION_56_7(47);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v20);
      v75 = OUTLINED_FUNCTION_35_16();
      sub_18F2DA954(v75, v76, v3);
      goto LABEL_43;
    case 9uLL:
      v140 = a2 & 0xCFFFFFFFFFFFFFFFLL;
      sub_18F0EF1A8(v43, &qword_1EACD16C8, &qword_18F545200);
      OUTLINED_FUNCTION_29_27();
      *v43 = v55;
      v43[1] = v54;
      OUTLINED_FUNCTION_56_7(39);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v20);
      v59 = OUTLINED_FUNCTION_35_16();
      sub_18F2DA954(v59, v60, v3);
      goto LABEL_73;
    case 10uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE338 != -1)
      {
        OUTLINED_FUNCTION_39_15(&qword_1EACCE338);
      }

      goto LABEL_61;
    case 11uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF520 != -1)
      {
        OUTLINED_FUNCTION_31_29(&qword_1EACCF520);
      }

      v48 = qword_1EACD4A40;
      goto LABEL_72;
    case 12uLL:
      v52 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v52, v53);
      if (qword_1EACCF518 != -1)
      {
        OUTLINED_FUNCTION_28_36(&qword_1EACCF518);
      }

      v51 = qword_1EACD4A28;
      goto LABEL_42;
    case 13uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF528 != -1)
      {
        OUTLINED_FUNCTION_17_34(&qword_1EACCF528);
      }

      v48 = qword_1EACD4A58;
      goto LABEL_72;
    case 14uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF530 != -1)
      {
        OUTLINED_FUNCTION_32_26(&qword_1EACCF530);
      }

      v48 = qword_1EACD4A70;
      goto LABEL_72;
    case 15uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE028 != -1)
      {
        OUTLINED_FUNCTION_25_24(&qword_1EACCE028);
      }

      goto LABEL_61;
    case 16uLL:
      v46 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v46, v47);
      if (qword_1EACCDFC0 != -1)
      {
        OUTLINED_FUNCTION_33_20(&qword_1EACCDFC0);
      }

      goto LABEL_6;
    case 17uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCDFF8 != -1)
      {
        OUTLINED_FUNCTION_20_25(&qword_1EACCDFF8);
      }

      goto LABEL_61;
    case 18uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCDF88 != -1)
      {
        OUTLINED_FUNCTION_40_16(&qword_1EACCDF88);
      }

LABEL_61:
      OUTLINED_FUNCTION_53_7();
      goto LABEL_74;
    case 19uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF538 != -1)
      {
        OUTLINED_FUNCTION_37_18(&qword_1EACCF538);
      }

      v48 = qword_1EACD4A88;
      goto LABEL_72;
    case 20uLL:
      v63 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v63, v64);
      if (qword_1EACCF540 != -1)
      {
        OUTLINED_FUNCTION_19_30(&qword_1EACCF540);
      }

      v51 = qword_1EACD4AA0;
      goto LABEL_42;
    case 21uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF548 != -1)
      {
        OUTLINED_FUNCTION_2_7(&qword_1EACCF548);
      }

      v48 = qword_1EACD4AB8;
      goto LABEL_72;
    case 22uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF558 != -1)
      {
        OUTLINED_FUNCTION_38_15(&qword_1EACCF558);
      }

      v48 = qword_1EACD4AE8;
      goto LABEL_72;
    case 23uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCE8F0 != -1)
      {
        OUTLINED_FUNCTION_36_19(&qword_1EACCE8F0);
      }

      v48 = qword_1EACCE700;
      goto LABEL_72;
    case 24uLL:
      v61 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v61, v62);
      if (qword_1EACCF568 != -1)
      {
        OUTLINED_FUNCTION_27_30(&qword_1EACCF568);
      }

      v51 = qword_1EACD4B00;
LABEL_42:
      __swift_project_value_buffer(v20, v51);
      OUTLINED_FUNCTION_3_47();
      sub_18F2DA740(v65, v40, v66);
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v20);
      sub_18F2DA8E4(v40, v43);
LABEL_43:
      OUTLINED_FUNCTION_46_14();
      goto LABEL_44;
    case 25uLL:
      OUTLINED_FUNCTION_7_37();
      if (qword_1EACCF550 != -1)
      {
        OUTLINED_FUNCTION_10_35(&qword_1EACCF550);
      }

      v48 = qword_1EACD4AD0;
LABEL_72:
      __swift_project_value_buffer(v20, v48);
      OUTLINED_FUNCTION_3_47();
      sub_18F2DA740(v77, v40, v78);
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v20);
      sub_18F2DA8E4(v40, v43);
LABEL_73:
      OUTLINED_FUNCTION_46_14();
      goto LABEL_74;
    default:
      v44 = OUTLINED_FUNCTION_35_16();
      sub_18F16AAE0(v44, v45);
      if (qword_1EACCE608 != -1)
      {
        OUTLINED_FUNCTION_22_26(&qword_1EACCE608);
      }

LABEL_6:
      OUTLINED_FUNCTION_53_7();
LABEL_44:
      v140 = a2;
LABEL_74:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v20);
      v133 = v43;
      v132 = a1;
      if (EnumTagSinglePayload)
      {
        __swift_storeEnumTagSinglePayload(v142, 1, 1, v30);
        if (a1)
        {
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F52181C();
          v83 = type metadata accessor for _PrebuiltAppIntentError.__();
          v84 = v129;
          *v129 = v83;
          (*(v128 + 104))(v84, *MEMORY[0x1E6968E00], v130);
          sub_18F520EDC();
          v85 = v131;
          sub_18F520B4C();
          OUTLINED_FUNCTION_58_0();
          __swift_storeEnumTagSinglePayload(v86, v87, v88, v30);
          v89 = OUTLINED_FUNCTION_50_7();
          v90(v89, v85, v30);
          v91 = v135;
          v92 = v142;
        }

        else
        {
          v104 = v131;
          __swift_storeEnumTagSinglePayload(v131, 1, 1, v30);
          if (qword_1EACCF550 != -1)
          {
            OUTLINED_FUNCTION_10_35(&qword_1EACCF550);
          }

          __swift_project_value_buffer(v20, qword_1EACD4AD0);
          v35 = v136;
          AppIntentError.localizedStringResource.getter();
          v105 = __swift_getEnumTagSinglePayload(v104, 1, v30);
          v91 = v135;
          v92 = v142;
          if (v105 != 1)
          {
            sub_18F0EF1A8(v104, &qword_1EACCF7A8, &qword_18F540440);
          }
        }

        v102 = __swift_getEnumTagSinglePayload(v92, 1, v30);
        v103 = v30;
        if (v102 != 1)
        {
          v102 = sub_18F0EF1A8(v92, &qword_1EACCF7A8, &qword_18F540440);
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_47();
        v93 = v127[0];
        sub_18F2DA740(v43, v127[0], v94);
        v95 = v142;
        AppIntentError.localizedStringResource.getter();
        OUTLINED_FUNCTION_1_25();
        sub_18F1D5680(v93, v96);
        OUTLINED_FUNCTION_58_0();
        __swift_storeEnumTagSinglePayload(v97, v98, v99, v30);
        v100 = OUTLINED_FUNCTION_50_7();
        v102 = v101(v100, v95, v30);
        v91 = v135;
        v103 = v30;
      }

      v106 = sub_18F117248(v102);
      v107 = v141;
      sub_18F520ECC();
      sub_18F520E8C();
      (*(v134 + 8))(v107, v91);
      v108 = sub_18F5218AC();

      v109 = [v106 localizedStringForLocaleIdentifier_];

      v110 = sub_18F5218DC();
      v112 = v111;

      v113 = v139;
      sub_18F2D7348(v139, v137, v138);
      v114 = LNPerformActionPrebuiltErrorCodeAsString();
      v115 = sub_18F5218DC();
      v117 = v116;

      v144 = v115;
      v145 = v117;
      MEMORY[0x193ADB000](8250, 0xE200000000000000);
      MEMORY[0x193ADB000](v110, v112);

      v118 = v35;
      v119 = v144;
      v120 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350, &unk_18F5407B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F541F50;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v122;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v119;
      *(inited + 56) = v120;
      *(inited + 80) = sub_18F5218DC();
      *(inited + 88) = v123;
      *(inited + 120) = MEMORY[0x1E6969080];
      v124 = v140;
      *(inited + 96) = v113;
      *(inited + 104) = v124;
      v125 = sub_18F5216CC();

      (*(v143 + 8))(v118, v103);
      sub_18F0EF1A8(v133, &qword_1EACD16C8, &qword_18F545200);
      return v125;
  }
}

uint64_t sub_18F2D80F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for AppIntentError(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for AppIntentError.Context(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_16_32();
  sub_18F2DA740(a1, v21, v22);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    OUTLINED_FUNCTION_3_18();
    sub_18F1D5680(v21, v30);
    v29 = a3;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_3_18();
  sub_18F1D5680(v21, v23);
  if (qword_1EACCF4F8 != -1)
  {
    OUTLINED_FUNCTION_24_30(&qword_1EACCF4F8);
  }

  __swift_project_value_buffer(v5, qword_1EACD49C8);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v25 = v24;
  v26 = *(v12 + 8);
  v26(v16, v10);
  v27 = OUTLINED_FUNCTION_14_34();
  v28 = (v26)(v27);
  if (v25)
  {
    goto LABEL_5;
  }

  if (qword_1EACCF500 != -1)
  {
    v28 = OUTLINED_FUNCTION_30_23(&qword_1EACCF500);
  }

  OUTLINED_FUNCTION_0_74(v28, qword_1EACD49E0);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v31 = OUTLINED_FUNCTION_1_63();
  (v26)(v31);
  v32 = OUTLINED_FUNCTION_14_34();
  v33 = (v26)(v32);
  if (v25)
  {
LABEL_10:
    v29 = a3;
    goto LABEL_19;
  }

  if (qword_1EACCF508 != -1)
  {
    v33 = OUTLINED_FUNCTION_18_32(&qword_1EACCF508);
  }

  OUTLINED_FUNCTION_0_74(v33, qword_1EACD49F8);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v34 = OUTLINED_FUNCTION_1_63();
  (v26)(v34);
  v35 = OUTLINED_FUNCTION_14_34();
  v36 = (v26)(v35);
  if (v25)
  {
    goto LABEL_14;
  }

  if (qword_1EACCF510 != -1)
  {
    v36 = OUTLINED_FUNCTION_41_14(&qword_1EACCF510);
  }

  OUTLINED_FUNCTION_0_74(v36, qword_1EACD4A10);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v37 = OUTLINED_FUNCTION_1_63();
  (v26)(v37);
  v38 = OUTLINED_FUNCTION_14_34();
  v39 = (v26)(v38);
  if (v25)
  {
    v29 = a3;
    goto LABEL_19;
  }

  if (qword_1EACCF518 != -1)
  {
    v39 = OUTLINED_FUNCTION_28_36(&qword_1EACCF518);
  }

  OUTLINED_FUNCTION_0_74(v39, qword_1EACD4A28);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v41 = OUTLINED_FUNCTION_1_63();
  (v26)(v41);
  v42 = OUTLINED_FUNCTION_14_34();
  v43 = (v26)(v42);
  if (v25)
  {
    goto LABEL_10;
  }

  if (qword_1EACCF520 != -1)
  {
    v43 = OUTLINED_FUNCTION_31_29(&qword_1EACCF520);
  }

  OUTLINED_FUNCTION_0_74(v43, qword_1EACD4A40);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v44 = OUTLINED_FUNCTION_1_63();
  (v26)(v44);
  v45 = OUTLINED_FUNCTION_14_34();
  v46 = (v26)(v45);
  if (v25)
  {
LABEL_5:
    OUTLINED_FUNCTION_54_11();
    goto LABEL_19;
  }

  if (qword_1EACCF528 != -1)
  {
    v46 = OUTLINED_FUNCTION_17_34(&qword_1EACCF528);
  }

  OUTLINED_FUNCTION_0_74(v46, qword_1EACD4A58);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v47 = OUTLINED_FUNCTION_1_63();
  (v26)(v47);
  v48 = OUTLINED_FUNCTION_14_34();
  v49 = (v26)(v48);
  if (v25)
  {
LABEL_14:
    OUTLINED_FUNCTION_48_12();
    goto LABEL_19;
  }

  if (qword_1EACCF530 != -1)
  {
    v49 = OUTLINED_FUNCTION_32_26(&qword_1EACCF530);
  }

  OUTLINED_FUNCTION_0_74(v49, qword_1EACD4A70);
  AppIntentError.localizedStringResource.getter();
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_42_11();
  v50 = OUTLINED_FUNCTION_1_63();
  (v26)(v50);
  v51 = OUTLINED_FUNCTION_14_34();
  (v26)(v51);
  if (v25)
  {
    v29 = a3;
  }

  else
  {
    *v9 = 0xD000000000000021;
    *(v9 + 8) = 0x800000018F528DF0;
    *(v9 + 16) = "User needs to grant precise location permission";
    *(v9 + 24) = 47;
    OUTLINED_FUNCTION_55_10();
    AppIntentError.localizedStringResource.getter();
    AppIntentError.localizedStringResource.getter();
    OUTLINED_FUNCTION_42_11();
    v81 = v52;
    v26(v16, v10);
    v53 = OUTLINED_FUNCTION_14_34();
    (v26)(v53);
    OUTLINED_FUNCTION_1_25();
    sub_18F1D5680(v9, v54);
    v29 = a3;
    if ((v81 & 1) == 0)
    {
      OUTLINED_FUNCTION_29_27();
      *v9 = v56;
      *(v9 + 8) = v55;
      *(v9 + 16) = "User needs to grant location permission";
      *(v9 + 24) = 39;
      OUTLINED_FUNCTION_55_10();
      AppIntentError.localizedStringResource.getter();
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_42_11();
      v57 = OUTLINED_FUNCTION_1_63();
      (v9)(v57);
      v58 = OUTLINED_FUNCTION_14_34();
      (v9)(v58);
      OUTLINED_FUNCTION_1_25();
      v60 = sub_18F1D5680(v9, v59);
      if (qword_1EACCF538 != -1)
      {
        v60 = OUTLINED_FUNCTION_37_18(&qword_1EACCF538);
      }

      OUTLINED_FUNCTION_0_74(v60, qword_1EACD4A88);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v61 = OUTLINED_FUNCTION_1_63();
      (v9)(v61);
      v62 = OUTLINED_FUNCTION_14_34();
      v63 = (v9)(v62);
      if (qword_1EACCF540 != -1)
      {
        v63 = OUTLINED_FUNCTION_19_30(&qword_1EACCF540);
      }

      OUTLINED_FUNCTION_0_74(v63, qword_1EACD4AA0);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v64 = OUTLINED_FUNCTION_1_63();
      (v9)(v64);
      v65 = OUTLINED_FUNCTION_14_34();
      v66 = (v9)(v65);
      if (qword_1EACCF548 != -1)
      {
        v66 = OUTLINED_FUNCTION_2_7(&qword_1EACCF548);
      }

      OUTLINED_FUNCTION_0_74(v66, qword_1EACD4AB8);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v67 = OUTLINED_FUNCTION_1_63();
      (v9)(v67);
      v68 = OUTLINED_FUNCTION_14_34();
      v69 = (v9)(v68);
      if (qword_1EACCF550 != -1)
      {
        v69 = OUTLINED_FUNCTION_10_35(&qword_1EACCF550);
      }

      OUTLINED_FUNCTION_0_74(v69, qword_1EACD4AD0);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v70 = OUTLINED_FUNCTION_1_63();
      (v9)(v70);
      v71 = OUTLINED_FUNCTION_14_34();
      v72 = (v9)(v71);
      if (qword_1EACCF558 != -1)
      {
        v72 = OUTLINED_FUNCTION_38_15(&qword_1EACCF558);
      }

      OUTLINED_FUNCTION_0_74(v72, qword_1EACD4AE8);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v73 = OUTLINED_FUNCTION_1_63();
      (v9)(v73);
      v74 = OUTLINED_FUNCTION_14_34();
      v75 = (v9)(v74);
      if (qword_1EACCE8F0 != -1)
      {
        v75 = OUTLINED_FUNCTION_36_19(&qword_1EACCE8F0);
      }

      OUTLINED_FUNCTION_0_74(v75, qword_1EACCE700);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v76 = OUTLINED_FUNCTION_1_63();
      (v9)(v76);
      v77 = OUTLINED_FUNCTION_14_34();
      v78 = (v9)(v77);
      if (qword_1EACCF568 != -1)
      {
        v78 = OUTLINED_FUNCTION_27_30(&qword_1EACCF568);
      }

      OUTLINED_FUNCTION_0_74(v78, qword_1EACD4B00);
      AppIntentError.localizedStringResource.getter();
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_42_11();
      v79 = OUTLINED_FUNCTION_1_63();
      (v9)(v79);
      v80 = OUTLINED_FUNCTION_14_34();
      (v9)(v80);
      v29 = a3;
    }
  }

LABEL_19:
  sub_18F16AAE0(a2, v29);
  return a2;
}

uint64_t sub_18F2D89F0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  switch((a2 >> 60) & 3 | (4 * a3))
  {
    case 1uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 1)
      {
        return 0;
      }

      goto LABEL_54;
    case 2uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 2)
      {
        return 0;
      }

      goto LABEL_54;
    case 3uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 3)
      {
        return 0;
      }

      goto LABEL_54;
    case 4uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 4)
      {
        return 0;
      }

      goto LABEL_54;
    case 5uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 5)
      {
        return 0;
      }

      goto LABEL_54;
    case 6uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 6)
      {
        return 0;
      }

      goto LABEL_54;
    case 7uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 7)
      {
        return 0;
      }

      goto LABEL_54;
    case 8uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) == 8)
      {
        goto LABEL_54;
      }

      return 0;
    case 9uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 9)
      {
        return 0;
      }

      goto LABEL_54;
    case 10uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xA)
      {
        return 0;
      }

      goto LABEL_54;
    case 11uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xB)
      {
        return 0;
      }

      goto LABEL_54;
    case 12uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xC)
      {
        return 0;
      }

      goto LABEL_54;
    case 13uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xD)
      {
        return 0;
      }

      goto LABEL_54;
    case 14uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xE)
      {
        return 0;
      }

      goto LABEL_54;
    case 15uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0xF)
      {
        return 0;
      }

      goto LABEL_54;
    case 16uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x10)
      {
        return 0;
      }

      goto LABEL_54;
    case 17uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x11)
      {
        return 0;
      }

      goto LABEL_54;
    case 18uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x12)
      {
        return 0;
      }

      goto LABEL_54;
    case 19uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x13)
      {
        return 0;
      }

      goto LABEL_54;
    case 20uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x14)
      {
        return 0;
      }

      goto LABEL_54;
    case 21uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x15)
      {
        return 0;
      }

      goto LABEL_54;
    case 22uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) == 0x16)
      {
        goto LABEL_54;
      }

      return 0;
    case 23uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x17)
      {
        return 0;
      }

      goto LABEL_54;
    case 24uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x18)
      {
        return 0;
      }

      goto LABEL_54;
    case 25uLL:
      if (((a5 >> 60) & 3 | (4 * a6)) != 0x19)
      {
        return 0;
      }

      goto LABEL_54;
    default:
      if (!((a5 >> 60) & 3 | (4 * a6)))
      {
LABEL_54:
        JUMPOUT(0x193ADA320);
      }

      return 0;
  }
}

uint64_t sub_18F2D8BDC(uint64_t a1)
{
  v2 = sub_18F2DA890();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F2D8C18(uint64_t a1)
{
  v2 = sub_18F2DA890();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18F2D8C8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 8);
  if (qword_1EACCE608 != -1)
  {
    OUTLINED_FUNCTION_22_26(&qword_1EACCE608);
  }

  v6 = OUTLINED_FUNCTION_13_32(&qword_1EACCE610);
  v8 = v8 && v7 == v5;
  if (!v8 && (OUTLINED_FUNCTION_12_6(v6, v7) & 1) == 0)
  {
    if (qword_1EACCE640 != -1)
    {
      OUTLINED_FUNCTION_21_25(&qword_1EACCE640);
    }

    v10 = OUTLINED_FUNCTION_13_32(qword_1EACCE648);
    v12 = v8 && v11 == v5;
    if (!v12 && (OUTLINED_FUNCTION_12_6(v10, v11) & 1) == 0)
    {
      if (qword_1EACCE678 != -1)
      {
        OUTLINED_FUNCTION_26_28(&qword_1EACCE678);
      }

      v13 = OUTLINED_FUNCTION_13_32(&qword_1EACCE680);
      v15 = v8 && v14 == v5;
      if (!v15 && (OUTLINED_FUNCTION_12_6(v13, v14) & 1) == 0)
      {
        if (qword_1EACCDEE0 != -1)
        {
          swift_once();
        }

        v16 = OUTLINED_FUNCTION_13_32(qword_1EACCDEE8);
        v18 = v8 && v17 == v5;
        if (!v18 && (OUTLINED_FUNCTION_12_6(v16, v17) & 1) == 0)
        {
          if (qword_1EACCDF48 != -1)
          {
            swift_once();
          }

          v19 = OUTLINED_FUNCTION_13_32(&qword_1EACCDF50);
          v21 = v8 && v20 == v5;
          if (!v21 && (OUTLINED_FUNCTION_12_6(v19, v20) & 1) == 0)
          {
            if (qword_1EACCDF10 != -1)
            {
              swift_once();
            }

            v22 = OUTLINED_FUNCTION_13_32(&qword_1EACCDF18);
            v24 = v8 && v23 == v5;
            if (!v24 && (OUTLINED_FUNCTION_12_6(v22, v23) & 1) == 0)
            {
              if (qword_1EACCE368 != -1)
              {
                swift_once();
              }

              v25 = OUTLINED_FUNCTION_13_32(&qword_1EACCE370);
              v27 = v8 && v26 == v5;
              if (!v27 && (OUTLINED_FUNCTION_12_6(v25, v26) & 1) == 0)
              {
                if (qword_1EACCE220 != -1)
                {
                  OUTLINED_FUNCTION_23_25(&qword_1EACCE220);
                }

                v28 = OUTLINED_FUNCTION_13_32(&qword_1EACCE228);
                v30 = v8 && v29 == v5;
                if (!v30 && (OUTLINED_FUNCTION_12_6(v28, v29) & 1) == 0)
                {
                  if (qword_1EACCE398 != -1)
                  {
                    swift_once();
                  }

                  v31 = OUTLINED_FUNCTION_13_32(&qword_1EACCE3A0);
                  v33 = v8 && v32 == v5;
                  if (!v33 && (OUTLINED_FUNCTION_12_6(v31, v32) & 1) == 0)
                  {
                    if (qword_1EACCE290 != -1)
                    {
                      swift_once();
                    }

                    v34 = OUTLINED_FUNCTION_13_32(&qword_1EACCE298);
                    v36 = v8 && v35 == v5;
                    if (!v36 && (OUTLINED_FUNCTION_12_6(v34, v35) & 1) == 0)
                    {
                      if (qword_1EACCE338 != -1)
                      {
                        OUTLINED_FUNCTION_39_15(&qword_1EACCE338);
                      }

                      v37 = OUTLINED_FUNCTION_13_32(&qword_1EACCE340);
                      v39 = v8 && v38 == v5;
                      if (!v39 && (OUTLINED_FUNCTION_12_6(v37, v38) & 1) == 0)
                      {
                        if (qword_1EACCE258 != -1)
                        {
                          swift_once();
                        }

                        v40 = OUTLINED_FUNCTION_13_32(&qword_1EACCE260);
                        v42 = v8 && v41 == v5;
                        if (!v42 && (OUTLINED_FUNCTION_12_6(v40, v41) & 1) == 0)
                        {
                          if (qword_1EACCE300 != -1)
                          {
                            swift_once();
                          }

                          v43 = OUTLINED_FUNCTION_13_32(&qword_1EACCE308);
                          v45 = v8 && v44 == v5;
                          if (!v45 && (OUTLINED_FUNCTION_12_6(v43, v44) & 1) == 0)
                          {
                            if (qword_1EACCE2C8 != -1)
                            {
                              swift_once();
                            }

                            v46 = OUTLINED_FUNCTION_13_32(&qword_1EACCE2D0);
                            v48 = v8 && v47 == v5;
                            if (!v48 && (OUTLINED_FUNCTION_12_6(v46, v47) & 1) == 0)
                            {
                              if (qword_1EACCE3D0 != -1)
                              {
                                swift_once();
                              }

                              v49 = OUTLINED_FUNCTION_13_32(&qword_1EACCE3D8);
                              v51 = v8 && v50 == v5;
                              if (!v51 && (OUTLINED_FUNCTION_12_6(v49, v50) & 1) == 0)
                              {
                                if (qword_1EACCE028 != -1)
                                {
                                  OUTLINED_FUNCTION_25_24(&qword_1EACCE028);
                                }

                                v52 = OUTLINED_FUNCTION_13_32(&qword_1EACCE030);
                                v54 = v8 && v53 == v5;
                                if (!v54 && (OUTLINED_FUNCTION_12_6(v52, v53) & 1) == 0)
                                {
                                  if (qword_1EACCDFC0 != -1)
                                  {
                                    OUTLINED_FUNCTION_33_20(&qword_1EACCDFC0);
                                  }

                                  v55 = OUTLINED_FUNCTION_13_32(&qword_1EACCDFC8);
                                  v57 = v8 && v56 == v5;
                                  if (!v57 && (OUTLINED_FUNCTION_12_6(v55, v56) & 1) == 0)
                                  {
                                    if (qword_1EACCDFF8 != -1)
                                    {
                                      OUTLINED_FUNCTION_20_25(&qword_1EACCDFF8);
                                    }

                                    v58 = OUTLINED_FUNCTION_13_32(&qword_1EACCE000);
                                    v60 = v8 && v59 == v5;
                                    if (!v60 && (OUTLINED_FUNCTION_12_6(v58, v59) & 1) == 0)
                                    {
                                      if (qword_1EACCDF88 != -1)
                                      {
                                        OUTLINED_FUNCTION_40_16(&qword_1EACCDF88);
                                      }

                                      v61 = OUTLINED_FUNCTION_13_32(&qword_1EACCDF90);
                                      v63 = v8 && v62 == v5;
                                      if (!v63 && (OUTLINED_FUNCTION_12_6(v61, v62) & 1) == 0)
                                      {
                                        if (qword_1EACCE1A0 != -1)
                                        {
                                          swift_once();
                                        }

                                        v64 = OUTLINED_FUNCTION_13_32(&qword_1EACCE1A8);
                                        v66 = v8 && v65 == v5;
                                        if (!v66 && (OUTLINED_FUNCTION_12_6(v64, v65) & 1) == 0)
                                        {
                                          if (qword_1EACCE168 != -1)
                                          {
                                            swift_once();
                                          }

                                          v67 = OUTLINED_FUNCTION_13_32(&qword_1EACCE170);
                                          v69 = v8 && v68 == v5;
                                          if (!v69 && (OUTLINED_FUNCTION_12_6(v67, v68) & 1) == 0)
                                          {
                                            if (qword_1EACCE130 != -1)
                                            {
                                              swift_once();
                                            }

                                            v70 = OUTLINED_FUNCTION_13_32(&qword_1EACCE138);
                                            v72 = v8 && v71 == v5;
                                            if (!v72 && (OUTLINED_FUNCTION_12_6(v70, v71) & 1) == 0)
                                            {
                                              if (qword_1EACCE100 != -1)
                                              {
                                                swift_once();
                                              }

                                              v73 = OUTLINED_FUNCTION_13_32(&qword_1EACCE108);
                                              v75 = v8 && v74 == v5;
                                              if (!v75 && (OUTLINED_FUNCTION_12_6(v73, v74) & 1) == 0)
                                              {
                                                if (qword_1EACCE7F8 != -1)
                                                {
                                                  swift_once();
                                                }

                                                v76 = OUTLINED_FUNCTION_13_32(&qword_1EACCE800);
                                                v78 = v8 && v77 == v5;
                                                if (!v78 && (OUTLINED_FUNCTION_12_6(v76, v77) & 1) == 0)
                                                {
                                                  if (qword_1EACCF610 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  v79 = OUTLINED_FUNCTION_13_32(&qword_1EACD9730);
                                                  if (!v8 || v80 != v5)
                                                  {
                                                    OUTLINED_FUNCTION_12_6(v79, v80);
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

  sub_18F16AAE0(a2, a3);
  return a2;
}

id sub_18F2D94A8(id a1)
{
  v194 = *MEMORY[0x1E69E9840];
  v176 = sub_18F521E5C();
  OUTLINED_FUNCTION_0();
  v174 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_8_14(v5 - v4);
  v178 = type metadata accessor for AppIntentError.Context(v6);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_8_14(v9 - v8);
  v180 = type metadata accessor for AppIntentError(v10);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v179 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v173 - v15;
  v17 = sub_18F520F1C();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  v19 = sub_18F520ADC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v25 = (v24 - v23);
  v26 = sub_18F52189C();
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4();
  *&v182 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  *&v181 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  v32 = v31 - v30;
  v186[0] = a1;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950, &qword_18F540020);
  if (swift_dynamicCast())
  {
    v34 = v192;
    v35 = v193;
    v36 = sub_18F133EDC();
    v182 = v190;
    v181 = v191;
    a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v36);
    v37 = v181;
    *v38 = v182;
    *(v38 + 16) = v37;
    *(v38 + 32) = v34;
    *(v38 + 40) = v35;
    v39 = v186[0];
LABEL_45:

    return a1;
  }

  v185[0] = a1;
  v40 = a1;
  if (swift_dynamicCast())
  {
    v41 = v190;
    v178 = *(&v191 + 1);
    v179 = v191;
    v42 = v192;
    v43 = BYTE1(v192);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v180 = *(&v41 + 1);
    v177 = v41;
    sub_18F52181C();
    *v25 = type metadata accessor for _PrebuiltAppIntentError.__();
    (*(v21 + 104))(v25, *MEMORY[0x1E6968E00], v19);
    sub_18F520EDC();
    LODWORD(v176) = v43;
    v44 = v178;
    v45 = v179;
    v46 = sub_18F520B4C();
    v47 = sub_18F117248(v46);
    v48 = OUTLINED_FUNCTION_45_11();
    v49(v48);
    v50 = objc_opt_self();
    v186[0] = 0;
    v51 = [v50 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:v186];
    v52 = v186[0];
    if (v51)
    {
      v53 = sub_18F520D4C();
      v55 = v54;

      v186[0] = v177;
      v186[1] = v180;
      v186[2] = v45;
      v187 = v44;
      v188 = v42;
      v189 = v176;
      v56 = sub_18F2D8C8C(v186, v53, v55);
      v58 = v57;
      v60 = v59;

      v61 = sub_18F2DA6EC();
      a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentPrebuiltError, v61);
      *v62 = v56;
      *(v62 + 8) = v58;
      *(v62 + 16) = v60;
      sub_18F123A1C(v53, v55);
    }

    else
    {
      v104 = v52;

      a1 = sub_18F520A8C();

      swift_willThrow();
    }

    v39 = v185[0];
    goto LABEL_45;
  }

  v186[0] = a1;
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57E0, &qword_18F552E48);
  if (swift_dynamicCast())
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
    }

    v64 = sub_18F52165C();
    __swift_project_value_buffer(v64, qword_1ED7077A8);
    v65 = OUTLINED_FUNCTION_46();
    v66 = sub_18F52163C();
    v67 = sub_18F52222C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v185[0] = v69;
      *v68 = 136315138;
      swift_getErrorValue();
      v70 = v183[0];
      v71 = sub_18F522E8C();
      sub_18F11897C(v71, v72, v185);
      OUTLINED_FUNCTION_46();

      *(v68 + 4) = v70;
      OUTLINED_FUNCTION_57_10(&dword_18F0E9000, v73, v74, "PROGRAMMING ERROR: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x193ADD350](v69, -1, -1);
      OUTLINED_FUNCTION_24_3();
    }

    if (qword_1EACCF548 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_1EACCF548);
    }

    v75 = v180;
    v76 = __swift_project_value_buffer(v180, qword_1EACD4AB8);
    v77 = sub_18F2199DC();
    v78 = OUTLINED_FUNCTION_28(v75, v77);
    OUTLINED_FUNCTION_3_47();
    sub_18F2DA740(v76, v79, v80);
    a1 = sub_18F2D94A8(v78);

    __swift_destroy_boxed_opaque_existential_1Tm(&v190);
    v39 = v186[0];
    goto LABEL_45;
  }

  *&v190 = a1;
  v81 = a1;
  if (swift_dynamicCast())
  {
    v82 = v179;
    sub_18F1F8EE4(v16, v179);
    v83 = AppIntentError.localizedStringResource.getter();
    v84 = sub_18F117248(v83);
    v85 = OUTLINED_FUNCTION_45_11();
    v86(v85);
    v87 = objc_opt_self();
    v186[0] = 0;
    v88 = [v87 archivedDataWithRootObject:v84 requiringSecureCoding:1 error:v186];
    v89 = v186[0];
    if (v88)
    {
      v90 = sub_18F520D4C();
      v92 = v91;

      OUTLINED_FUNCTION_16_32();
      v93 = v177;
      sub_18F2DA740(v82, v177, v94);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_3_18();
      sub_18F1D5680(v93, v96);
      if (EnumCaseMultiPayload == 4)
      {
        v97 = sub_18F2D80F4(v82, v90, v92);
        v99 = v98;
        v101 = v100;
        v102 = sub_18F2DA6EC();
        a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentPrebuiltError, v102);
        *v103 = v97;
        *(v103 + 8) = v99;
        *(v103 + 16) = v101;
      }

      else
      {
        sub_18F16AAE0(v90, v92);
        AppIntentError.localizedStringResource.getter();
        v130 = sub_18F52193C();
        v132 = v131;
        v133 = sub_18F133EDC();
        a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v133);
        *v134 = v90;
        *(v134 + 8) = v92;
        *(v134 + 16) = v130;
        *(v134 + 24) = v132;
        *(v134 + 32) = 0;
        *(v134 + 40) = 1;
      }

      sub_18F123A1C(v90, v92);
    }

    else
    {
      v129 = v89;
      a1 = sub_18F520A8C();

      swift_willThrow();
    }

    OUTLINED_FUNCTION_1_25();
    sub_18F1D5680(v82, v135);
    goto LABEL_30;
  }

  v184 = a1;
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57E8, &qword_18F552E50);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v190, v186);
    __swift_project_boxed_opaque_existential_1Tm(v186, v187);
    OUTLINED_FUNCTION_46();
    v106 = sub_18F520C9C();
    v107 = sub_18F117248(v106);
    v108 = *(v181 + 8);
    v109 = v182;
    v108(v32, v182);
    v110 = objc_opt_self();
    v185[0] = 0;
    v111 = [v110 archivedDataWithRootObject:v107 requiringSecureCoding:1 error:v185];
    v112 = v185[0];
    if (v111)
    {
      v113 = sub_18F520D4C();
      *&v181 = v114;

      __swift_project_boxed_opaque_existential_1Tm(v186, v187);
      OUTLINED_FUNCTION_35_16();
      v115 = sub_18F520C9C();
      v116 = sub_18F117248(v115);
      v108(v32, v109);
      v117 = sub_18F5218AC();
      v118 = [v116 localizedStringForLocaleIdentifier_];

      v119 = sub_18F5218DC();
      v121 = v120;

      sub_18F0FD724(v186, v185);
      sub_18F2DA400();
      if (swift_dynamicCast())
      {
        v122 = v183[4];
        v123 = sub_18F2DA444();
      }

      else
      {
        v123 = 0;
      }

      v157 = sub_18F133EDC();
      a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v157);
      v158 = v181;
      *v159 = v113;
      *(v159 + 8) = v158;
      *(v159 + 16) = v119;
      *(v159 + 24) = v121;
      *(v159 + 32) = v123;
      *(v159 + 40) = 1;
    }

    else
    {
      v156 = v112;
      a1 = sub_18F520A8C();

      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    v39 = v184;
    goto LABEL_45;
  }

  *&v190 = a1;
  v124 = a1;
  v125 = v175;
  v126 = v176;
  if (swift_dynamicCast())
  {
    v127 = sub_18F133EDC();
    a1 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v127);
    *v128 = 1;
    *(v128 + 8) = 0u;
    *(v128 + 24) = 0u;
    *(v128 + 40) = 7;
    (*(v174 + 8))(v125, v126);
LABEL_30:
    v39 = v190;
    goto LABEL_45;
  }

  *&v190 = a1;
  v136 = a1;
  sub_18F2DA400();
  if (swift_dynamicCast())
  {
    v137 = v186[0];
    v138 = sub_18F2DA444();

    a1 = v138;
    v139 = [a1 domain];

    v140 = sub_18F5218DC();
    v142 = v141;

    if (v140 == sub_18F5218DC() && v142 == v143)
    {
    }

    else
    {
      v145 = sub_18F522D5C();

      if ((v145 & 1) == 0)
      {
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v146 = sub_18F52165C();
        __swift_project_value_buffer(v146, qword_1ED7077A8);
        v147 = sub_18F52163C();
        v148 = sub_18F52221C();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v185[0] = v150;
          *v149 = 136446210;
          v151 = [a1 localizedDescription];
          v152 = sub_18F5218DC();
          v154 = v153;

          v155 = sub_18F11897C(v152, v154, v185);

          *(v149 + 4) = v155;
          _os_log_impl(&dword_18F0E9000, v147, v148, "Unknown NSError %{public}s", v149, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v150);
          OUTLINED_FUNCTION_24_3();
          MEMORY[0x193ADD350](v149, -1, -1);

          v39 = v190;
          goto LABEL_45;
        }
      }
    }

    goto LABEL_30;
  }

  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v161 = sub_18F52165C();
  __swift_project_value_buffer(v161, qword_1ED7077A8);
  v162 = OUTLINED_FUNCTION_46();
  v163 = sub_18F52163C();
  v164 = sub_18F52221C();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *&v190 = v166;
    *v165 = 136446210;
    swift_getErrorValue();
    v167 = sub_18F522E8C();
    v169 = sub_18F11897C(v167, v168, &v190);

    *(v165 + 4) = v169;
    OUTLINED_FUNCTION_57_10(&dword_18F0E9000, v170, v171, "Unknown error %{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v166);
    MEMORY[0x193ADD350](v166, -1, -1);
    OUTLINED_FUNCTION_24_3();
  }

  v172 = a1;
  return a1;
}

unint64_t sub_18F2DA400()
{
  result = qword_1ED6FBF40;
  if (!qword_1ED6FBF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FBF40);
  }

  return result;
}

id sub_18F2DA444()
{
  v1 = [v0 domain];
  v2 = sub_18F5218DC();
  v4 = v3;

  v6 = v2 == sub_18F5218DC() && v4 == v5;
  if (v6)
  {
  }

  else
  {
    v7 = sub_18F522D5C();

    v8 = v20;
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = [v20 code] == 3072;
  v8 = v20;
  if (v6)
  {
    v9 = [v20 localizedDescription];
    v10 = sub_18F5218DC();
    v12 = v11;

    sub_18F133EDC();
    v14 = swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
    v15 = 6;
LABEL_18:
    *(v13 + 40) = v15;
    v19 = sub_18F520A7C();

    return v19;
  }

LABEL_11:
  v16 = [v8 domain];
  sub_18F5218DC();

  LOBYTE(v16) = sub_18F521A9C();

  if (v16)
  {
    type metadata accessor for AppManager();
    sub_18F3E6F18(v21);
    v25 = v21[0];
    v24 = v21[1];
    sub_18F0EF1A8(&v24, &qword_1EACD4470, &unk_18F53FB60);
    v23 = v22;
    sub_18F0EF1A8(&v23, &unk_1EACCFDB0, &qword_18F543AE0);
    if (!*(&v25 + 1) || (v17 = sub_18F521A9C(), sub_18F0EF1A8(&v25, &qword_1EACD4470, &unk_18F53FB60), (v17 & 1) == 0))
    {
      sub_18F133EDC();
      v14 = swift_allocError();
      *v13 = 12;
      *(v13 + 8) = 0u;
      *(v13 + 24) = 0u;
      v15 = 7;
      goto LABEL_18;
    }
  }

  return v20;
}

unint64_t sub_18F2DA6EC()
{
  result = qword_1EACCE7C8;
  if (!qword_1EACCE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE7C8);
  }

  return result;
}

uint64_t sub_18F2DA740(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18F2DA7B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E7 && *(a1 + 17))
    {
      v2 = *a1 + 998;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3E6)
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

uint64_t sub_18F2DA800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E6)
  {
    *(result + 16) = 0;
    *result = a2 - 999;
    *(result + 8) = 0;
    if (a3 >= 0x3E7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E7)
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

uint64_t sub_18F2DA860(uint64_t result, unsigned int a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = a2 >> 2;
  return result;
}

unint64_t sub_18F2DA890()
{
  result = qword_1EACCDE78;
  if (!qword_1EACCDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDE78);
  }

  return result;
}

uint64_t sub_18F2DA8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16C8, &qword_18F545200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2DA954(uint64_t result, unint64_t a2, char a3)
{
  switch((a2 >> 60) & 3 | (4 * a3))
  {
    case 0uLL:
    case 4uLL:
    case 8uLL:
    case 12uLL:
    case 16uLL:
    case 20uLL:
    case 24uLL:
      goto LABEL_3;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 9uLL:
    case 10uLL:
    case 11uLL:
    case 13uLL:
    case 14uLL:
    case 15uLL:
    case 17uLL:
    case 18uLL:
    case 19uLL:
    case 21uLL:
    case 22uLL:
    case 23uLL:
    case 25uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
LABEL_3:
      result = sub_18F16AAE0(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

void sub_18F2DD060()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2DD1A4()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2DD24C()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2DD48C()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2DD680()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2DD78C()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2DDB48()
{
  OUTLINED_FUNCTION_69();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2DDBF8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28, &qword_18F55E020);
  if (swift_dynamicCast())
  {
    sub_18F0FF968((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_18F2DDDA8;

    return sub_18F35EB98();
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_18F2DE854(v0 + 56);
    v5(v10, v8, v9);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v9);

    OUTLINED_FUNCTION_71();

    return v11();
  }
}

uint64_t sub_18F2DDDA8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2DDEA8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  (*(v0 + 136))(v2, *(v0 + 104), v1);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2DDF38()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2DDFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F2DDB48();
}

uint64_t sub_18F2DE050(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2DE0A8()
{
  OUTLINED_FUNCTION_69();
  v0[14] = v1;
  v0[15] = v2;
  v3 = *(v2 - 8);
  v0[16] = v3;
  v0[17] = *(v3 + 64);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2DE164()
{
  v2 = sub_18F521CBC();
  v0[12] = v2;
  if (v2 != sub_18F521D7C())
  {
    v3 = sub_18F521D4C();
    OUTLINED_FUNCTION_7_38(v3);
    if (v1)
    {
      v4 = OUTLINED_FUNCTION_1_64();
      v5(v4);
    }

    else
    {
      v13 = v0[17];
      result = sub_18F52281C();
      if (v13 != 8)
      {
        __break(1u);
        return result;
      }

      v14 = OUTLINED_FUNCTION_4_48(result);
      v15(v14);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_5_43();
    v6 = OUTLINED_FUNCTION_9_37();
    v7(v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28, &qword_18F55E020);
    if (OUTLINED_FUNCTION_8_35(v8))
    {
      sub_18F0FF968(v2, (v0 + 2));
      __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
      v9 = swift_task_alloc();
      v0[20] = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_0_75(v9);

      return sub_18F35EB98();
    }

    OUTLINED_FUNCTION_13_33();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v11 = OUTLINED_FUNCTION_14_1();

  return v12(v11);
}

uint64_t sub_18F2DE31C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 168) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2DE41C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[12];
  if (v2 != sub_18F521D7C())
  {
    v3 = sub_18F521D4C();
    OUTLINED_FUNCTION_7_38(v3);
    if (v1)
    {
      v4 = OUTLINED_FUNCTION_1_64();
      v5(v4);
    }

    else
    {
      v13 = v0[17];
      result = sub_18F52281C();
      if (v13 != 8)
      {
        __break(1u);
        return result;
      }

      v14 = OUTLINED_FUNCTION_4_48(result);
      v15(v14);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_5_43();
    v6 = OUTLINED_FUNCTION_9_37();
    v7(v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28, &qword_18F55E020);
    if (OUTLINED_FUNCTION_8_35(v8))
    {
      sub_18F0FF968(v2, (v0 + 2));
      __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
      v9 = swift_task_alloc();
      v0[20] = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_0_75(v9);

      return sub_18F35EB98();
    }

    OUTLINED_FUNCTION_13_33();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v11 = OUTLINED_FUNCTION_14_1();

  return v12(v11);
}

uint64_t sub_18F2DE5D0()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2DE640(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F2DE6E0;

  return sub_18F2DE0A8();
}

uint64_t sub_18F2DE6E0(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_18F2DE7E4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2DE854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1E40, &qword_18F553F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TurnContext.identifier.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8[-v1];
  v3 = type metadata accessor for IntentContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IntentContext.current.getter(v2);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  sub_18F2DEA04(v2, v5);
  v6 = sub_18F2196A0();
  sub_18F178EA4(v5);
  return v6;
}

uint64_t sub_18F2DEA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for TurnContext(_BYTE *result, int a2, int a3)
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

uint64_t IntentDonationManager.donate<A>(intent:)()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v0[4] = v1;
  v0[5] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v6 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_51(v6);
  v0[6] = v7;
  v0[7] = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_34_0();
  v9 = *(v2 - 8);
  v0[9] = v9;
  v0[10] = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_34_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_10(v10);
  v0[12] = OUTLINED_FUNCTION_34_0();
  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F2DEC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v7 = *(v4 + 72);
  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  v10 = *(v4 + 48);
  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v25 = *(v4 + 32);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  sub_18F521ECC();
  sub_18F521EFC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  (*(v7 + 16))(v5, v11, v25);
  sub_18F2C16C8(v12, v9);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = (v8 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v25;
  (*(v7 + 32))(v19 + v17, v5, v25);
  sub_18F11FABC(v9, v19 + v18);
  v20 = OUTLINED_FUNCTION_15_32();
  sub_18F17BA00(v20, v21, v6, v22, v19);

  sub_18F0EF1A8(v6, &qword_1EACD0418, &qword_18F54AFB0);

  OUTLINED_FUNCTION_71();

  return v23();
}

void IntentDonationManager.donate<A>(intent:)()
{
  OUTLINED_FUNCTION_18();
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IntentDonationIdentifier(0);
  v9 = OUTLINED_FUNCTION_51(v8);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_30();
  OUTLINED_FUNCTION_11_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  sub_18F521ECC();
  sub_18F521EFC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v13 + 16))(v17, v5, v3);
  sub_18F2C16C8(v7, v0);
  v26 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v27 = (v15 + *(v11 + 80) + v26) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v34;
  *(v28 + 4) = v3;
  *(v28 + 5) = v29;
  (*(v13 + 32))(&v28[v26], v17, v3);
  sub_18F11FABC(v0, &v28[v27]);
  v30 = OUTLINED_FUNCTION_15_32();
  sub_18F17BA00(v30, v31, v21, v32, v28);

  sub_18F0EF1A8(v21, &qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_16();
}

uint64_t IntentDonationManager.donate<A, B>(intent:result:)()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v4 = v3;
  v0[12] = v5;
  v0[13] = v6;
  v0[10] = v3;
  v0[11] = v1;
  v0[8] = v7;
  v0[9] = v8;
  v0[7] = v9;
  v10 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_51(v10);
  v0[14] = v11;
  v0[15] = *(v12 + 64);
  v0[16] = OUTLINED_FUNCTION_34_0();
  v13 = *(v4 - 8);
  v0[17] = v13;
  v0[18] = *(v13 + 64);
  v0[19] = OUTLINED_FUNCTION_34_0();
  v14 = *(v2 - 8);
  v0[20] = v14;
  v0[21] = *(v14 + 64);
  v0[22] = OUTLINED_FUNCTION_34_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_10(v15);
  v0[23] = OUTLINED_FUNCTION_34_0();
  v16 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_18F2DF1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 176);
  v6 = *(v4 + 184);
  v7 = *(v4 + 160);
  v31 = *(v4 + 168);
  v29 = *(v4 + 152);
  v33 = *(v4 + 144);
  v8 = *(v4 + 136);
  v35 = *(v4 + 128);
  v30 = *(v4 + 112);
  v9 = *(v4 + 104);
  v32 = v9;
  v11 = *(v4 + 72);
  v10 = *(v4 + 80);
  v27 = *(v4 + 64);
  v28 = *(v4 + 56);
  v34 = *(v4 + 88);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  *(v4 + 40) = v34;
  *(v4 + 48) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 16));
  v13 = *(v7 + 16);
  v13(boxed_opaque_existential_1, v11, v34);
  sub_18F2E05A0(v4 + 16, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
  sub_18F521EFC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v13(v5, v11, v34);
  (*(v8 + 16))(v29, v27, v10);
  sub_18F2C16C8(v28, v35);
  v18 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v19 = (v31 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = (v33 + *(v30 + 80) + v19) & ~*(v30 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v10;
  *(v21 + 40) = v34;
  *(v21 + 56) = v32;
  (*(v7 + 32))(v21 + v18, v5, v34);
  (*(v8 + 32))(v21 + v19, v29, v10);
  sub_18F11FABC(v35, v21 + v20);
  v22 = OUTLINED_FUNCTION_15_32();
  sub_18F17BA00(v22, v23, v6, v24, v21);

  sub_18F0EF1A8(v6, &qword_1EACD0418, &qword_18F54AFB0);

  OUTLINED_FUNCTION_71();

  return v25();
}

void IntentDonationManager.donate<A, B>(intent:result:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v47 = v1;
  v48 = v3;
  v54 = v4;
  v6 = v5;
  v8 = v7;
  v49 = v7;
  v51 = v9;
  v46 = v10;
  v11 = type metadata accessor for IntentDonationIdentifier(0);
  v12 = OUTLINED_FUNCTION_51(v11);
  v52 = v13;
  v53 = *(v14 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v8 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31_30();
  v45 = v0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v56[3] = v6;
  v56[4] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  v29 = *(v20 + 16);
  v30 = v48;
  v29(boxed_opaque_existential_1, v48, v6);
  sub_18F2E05A0(v56, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  sub_18F521EFC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v29(v0, v30, v6);
  v35 = v49;
  (*(v17 + 16))(v55, v51, v49);
  v36 = v50;
  sub_18F2C16C8(v46, v50);
  v37 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v38 = (v22 + *(v17 + 80) + v37) & ~*(v17 + 80);
  v39 = (v18 + *(v52 + 80) + v38) & ~*(v52 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v35;
  *(v40 + 5) = v6;
  v41 = v47;
  *(v40 + 6) = v54;
  *(v40 + 7) = v41;
  (*(v20 + 32))(&v40[v37], v45, v6);
  (*(v17 + 32))(&v40[v38], v55, v35);
  sub_18F11FABC(v36, &v40[v39]);
  v42 = OUTLINED_FUNCTION_15_32();
  sub_18F17BA00(v42, v43, v27, v44, v40);

  sub_18F0EF1A8(v27, &qword_1EACD0418, &qword_18F54AFB0);
  OUTLINED_FUNCTION_16();
}

void static IntentDonationMatchingPredicate.donationIdentifier(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IntentDonationMatchingPredicate(0);
  sub_18F2C16C8(a1, a2 + v4[5]);
  type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *a2 = 0;
  v9 = (a2 + v4[6]);
  *v9 = 0u;
  v9[1] = 0u;
  OUTLINED_FUNCTION_13_30(v4[7]);
  OUTLINED_FUNCTION_13_30(v4[8]);
}

uint64_t static IntentDonationMatchingPredicate.entityIdentifier(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = type metadata accessor for IntentDonationMatchingPredicate(0);
  type metadata accessor for IntentDonationIdentifier(0);
  v13 = *a1;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *a2 = 1;
  v11 = a2 + v6[6];
  *v11 = v13;
  *(v11 + 2) = v5;
  *(v11 + 3) = v4;
  OUTLINED_FUNCTION_13_30(v6[7]);
  OUTLINED_FUNCTION_13_30(v6[8]);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

double static IntentDonationMatchingPredicate.entityType(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for IntentDonationMatchingPredicate(0);
  type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *a3 = 3;
  v11 = (a3 + v6[6]);
  result = 0.0;
  *v11 = 0u;
  v11[1] = 0u;
  v13 = (a3 + v6[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a3 + v6[8]);
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t sub_18F2DF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_18F2DF9B4, 0, 0);
}

uint64_t sub_18F2DF9B4()
{
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 88) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_28(v2);

  return sub_18F2DFCA4(v4, v5, v6);
}

uint64_t sub_18F2DFA70()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F2DFB90()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_36();
  v0 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_36_20();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_18_33(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_17_35(v2);

  return sub_18F2DF990(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F2DFCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  sub_18F520DEC();
  v3[31] = swift_task_alloc();
  v4 = sub_18F520E6C();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2DFDC0, 0, 0);
}

uint64_t sub_18F2DFDC0()
{
  if ([objc_opt_self() isActionTranscriptEnabled] && (type metadata accessor for AppManager(), sub_18F3E6F18(v0 + 144), v1 = *(v0 + 144), v2 = *(v0 + 152), *(v0 + 192) = *(v0 + 160), sub_18F0EF1A8(v0 + 192, &qword_1EACD4470, &unk_18F53FB60), *(v0 + 208) = *(v0 + 176), sub_18F0EF1A8(v0 + 208, &unk_1EACCFDB0, &qword_18F543AE0), v2))
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v33 = *(v0 + 272);
    v34 = *(v0 + 256);
    v32 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = v1;
    v5 = *(v0 + 224);
    v7 = v5[3];
    v6 = v5[4];
    v8 = __swift_project_boxed_opaque_existential_1Tm(v5, v7);
    type metadata accessor for PreparedIntent(0);
    OUTLINED_FUNCTION_11_0();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_34_0();
    (*(v10 + 16))(v11, v8, v7);
    v12 = sub_18F10E0AC();
    *(v0 + 280) = sub_18F1194F4(v11, v12, v7, v6);

    sub_18F0F21A8(0, &qword_1ED6FD860, 0x1E69AC640);

    v14 = sub_18F33AE40(v13);
    *(v0 + 288) = v14;
    v15 = sub_18F22B4E0();
    v36 = [objc_allocWithZone(MEMORY[0x1E69AD070]) init];
    *(v0 + 296) = v36;
    (*(v3 + 16))(v33, v32, v34);
    sub_18F520DDC();
    v16 = objc_allocWithZone(MEMORY[0x1E69AD050]);
    v35 = v37;
    v17 = v14;
    v18 = sub_18F2E1DB4(v38, v2, 1u, 0, 0, v33, v4, v17, v17, v37, v15);
    *(v0 + 304) = v18;
    v19 = objc_opt_self();
    *(v0 + 216) = 0;
    v20 = [v19 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:v0 + 216];
    v21 = *(v0 + 216);
    if (v20)
    {
      v22 = sub_18F520D4C();
      v24 = v23;

      *(v0 + 312) = v22;
      *(v0 + 320) = v24;
      v25 = sub_18F520D2C();
      *(v0 + 328) = v25;
      v26 = [v35 nextAction];
      v27 = v26;
      if (v26)
      {
      }

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_18F2E02A8;
      v28 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0, &qword_18F5540A0);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_18F354F08;
      *(v0 + 104) = &block_descriptor_32;
      *(v0 + 112) = v28;
      [v36 donateActionRecordData:v25 writeImmediately:v27 != 0 reply:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v30 = v21;
    sub_18F520A8C();

    swift_willThrow();

    OUTLINED_FUNCTION_71();
  }

  else
  {

    OUTLINED_FUNCTION_71();
  }

  return v29();
}

uint64_t sub_18F2E02A8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2E03D8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);

  v4 = OUTLINED_FUNCTION_56();
  sub_18F123A1C(v4, v5);

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F2E04B4(uint64_t a1)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 304);
  v4 = *(v1 + 288);
  swift_willThrow();

  v5 = OUTLINED_FUNCTION_56();
  sub_18F123A1C(v5, v6);

  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F2E05A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5 - 8];
  sub_18F0FD724(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0848, &qword_18F542460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5810, &qword_18F5540C0);
  if (swift_dynamicCast())
  {
    v7 = *(&v14 + 1);
    v8 = v15;
    __swift_project_boxed_opaque_existential_1Tm(&v13, *(&v14 + 1));
    (*(v8 + 8))(v7, v8);
    v9 = sub_18F521EFC();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a2, v6, v9);
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_18F0EF1A8(&v13, &qword_1EACD5818, &qword_18F5540C8);
    v9 = sub_18F521EFC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  }

  sub_18F521ECC();
  sub_18F521EFC();
  result = __swift_getEnumTagSinglePayload(v6, 1, v9);
  if (result != 1)
  {
    return sub_18F0EF1A8(v6, &qword_1EACD0418, &qword_18F54AFB0);
  }

  return result;
}

uint64_t sub_18F2E07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[109] = v13;
  v8[108] = v12;
  v8[107] = a8;
  v8[106] = a7;
  v8[105] = a6;
  v8[104] = a5;
  v8[103] = a4;
  v9 = *(a8 - 8);
  v8[110] = v9;
  v8[111] = *(v9 + 64);
  v8[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2E0884, 0, 0);
}

uint64_t sub_18F2E0884()
{
  v0 = OUTLINED_FUNCTION_11_32();
  v1(v0);
  OUTLINED_FUNCTION_39_16();
  v2 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_16_33(v2, v3, v4, v5, v6, v7, v8, v9, v25);
  v11(v10);
  v12 = sub_18F0F21A8(0, &qword_1EACD3340, 0x1E69ACD48);
  v14 = OUTLINED_FUNCTION_33_21(v12, v13, v12);
  OUTLINED_FUNCTION_46_15(v14, v15, v16, v17, v18, v19, v20, v21, v26);
  OUTLINED_FUNCTION_31_0();
  (*(v22 + 16))();
  v23 = OUTLINED_FUNCTION_19_31();

  return MEMORY[0x1EEE6DEB8](v23);
}

uint64_t sub_18F2E0994()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[97];
  v0[114] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[115] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_24(v3);

  return sub_18F2DFCA4(v5, v6, v7);
}

uint64_t sub_18F2E0A28()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 928) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 696));
    v10 = OUTLINED_FUNCTION_40_17();

    return MEMORY[0x1EEE6DEB0](v10);
  }
}

uint64_t sub_18F2E0B68()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
  v1 = OUTLINED_FUNCTION_19_31();

  return MEMORY[0x1EEE6DEB0](v1);
}

uint64_t sub_18F2E0BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F2E0C08, 0, 0);
}

uint64_t sub_18F2E0C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_48();
  sub_18F0F9044(v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_16_0();
  v13 = swift_task_alloc();
  *(v11 + 64) = v13;
  *v13 = v11;
  v14 = OUTLINED_FUNCTION_4_49(v13);

  return sub_18F3079A8(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11);
}

uint64_t sub_18F2E0CC0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2E0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_18F2E0DD8, 0, 0);
}

uint64_t sub_18F2E0DD8()
{
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 88) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_28(v2);

  return sub_18F2DFCA4(v4, v5, v6);
}

uint64_t sub_18F2E0E94()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F2E0FB4()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2E1010()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_36();
  v0 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_36_20();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_18_33(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_17_35(v2);

  return sub_18F2E0DB4(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F2E1124(uint64_t a1)
{
  v24 = *(v1 + 48);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_26_29();
  v2 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_37_19();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18_33(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_36(v4, v6, v7, v8, v9, v10, v11, v12, v23, v24, a1);
  OUTLINED_FUNCTION_20();

  return sub_18F2E07AC(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_18F2E1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[109] = v13;
  v8[108] = v12;
  v8[107] = a8;
  v8[106] = a7;
  v8[105] = a6;
  v8[104] = a5;
  v8[103] = a4;
  v9 = *(a8 - 8);
  v8[110] = v9;
  v8[111] = *(v9 + 64);
  v8[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2E1360, 0, 0);
}

uint64_t sub_18F2E1360()
{
  v0 = OUTLINED_FUNCTION_11_32();
  v1(v0);
  OUTLINED_FUNCTION_39_16();
  v2 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_16_33(v2, v3, v4, v5, v6, v7, v8, v9, v25);
  v11(v10);
  v12 = sub_18F0F21A8(0, &qword_1EACD3340, 0x1E69ACD48);
  v14 = OUTLINED_FUNCTION_33_21(v12, v13, v12);
  OUTLINED_FUNCTION_46_15(v14, v15, v16, v17, v18, v19, v20, v21, v26);
  OUTLINED_FUNCTION_31_0();
  (*(v22 + 16))();
  v23 = OUTLINED_FUNCTION_19_31();

  return MEMORY[0x1EEE6DEB8](v23);
}

uint64_t sub_18F2E1470()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[97];
  v0[114] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[115] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_24(v3);

  return sub_18F2DFCA4(v5, v6, v7);
}

uint64_t sub_18F2E1504()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 928) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 696));
    v10 = OUTLINED_FUNCTION_40_17();

    return MEMORY[0x1EEE6DEB0](v10);
  }
}

uint64_t sub_18F2E1644()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2E16AC()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
  v1 = OUTLINED_FUNCTION_19_31();

  return MEMORY[0x1EEE6DEB0](v1);
}

uint64_t sub_18F2E1728()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_26_29();
  v7 = v6;
  v9 = (v5 + v8 + *(v6 + 80)) & ~*(v6 + 80);
  OUTLINED_FUNCTION_26_29();
  v11 = *(v10 + 64);
  v12 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_51(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v9, v1);
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v15 + 8))(v0 + v14);

  return swift_deallocObject();
}

uint64_t sub_18F2E194C(uint64_t a1)
{
  v24 = *(v1 + 48);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_26_29();
  v2 = type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_37_19();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18_33(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_36(v4, v6, v7, v8, v9, v10, v11, v12, v23, v24, a1);
  OUTLINED_FUNCTION_20();

  return sub_18F2E1288(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_18F2E1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F2E1AD4, 0, 0);
}

uint64_t sub_18F2E1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_48();
  sub_18F0F9044(v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_16_0();
  v13 = swift_task_alloc();
  *(v11 + 64) = v13;
  *v13 = v11;
  v14 = OUTLINED_FUNCTION_4_49(v13);

  return sub_18F3079A8(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11);
}

uint64_t sub_18F2E1B8C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2E1C80()
{
  **(v0 + 32) = *(v0 + 72);
  OUTLINED_FUNCTION_71();
  return v1();
}

uint64_t sub_18F2E1CB0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2E1D30(uint64_t a1)
{
  sub_18F116970(v1 + *(a1 + 100), v4, &qword_1EACD0D70, &qword_18F555640);
  v2 = v5;
  sub_18F0EF1A8(v4, &qword_1EACD0D70, &qword_18F555640);
  if (v2)
  {
    return sub_18F521EDC();
  }

  else
  {
    return sub_18F521ECC();
  }
}

id sub_18F2E1DB4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  v15 = sub_18F5218AC();

  if (a5)
  {
    v16 = sub_18F5218AC();
  }

  else
  {
    v16 = 0;
  }

  v26 = a6;
  v17 = sub_18F520E2C();
  v18 = sub_18F520D7C();
  sub_18F0F21A8(0, &qword_1ED6FC6F0, 0x1E69AC690);
  v19 = sub_18F521C8C();

  v20 = [v25 initWithBundleIdentifier:v15 source:a3 clientLabel:v16 executionUUID:v17 executionDate:v18 action:a8 resolvedAction:a9 actionOutput:a10 predictions:v19];

  v21 = sub_18F520DEC();
  (*(*(v21 - 8) + 8))(a7, v21);
  v22 = sub_18F520E6C();
  (*(*(v22 - 8) + 8))(v26, v22);
  return v20;
}

_BYTE *storeEnumTagSinglePayload for IntentDonationManager(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2E2040()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_39_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_26(v1);

  return sub_18F2E1AB0(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_21Tm()
{
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F2E2180()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_39_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_26(v1);

  return sub_18F2E0BE4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F2E2290()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1EACD5820);
  __swift_project_value_buffer(v0, qword_1EACD5820);
  return sub_18F520ACC();
}

uint64_t static Never.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EACCF570 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EACCF570);
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EACD5820);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Never.title.setter(uint64_t a1)
{
  if (qword_1EACCF570 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EACCF570);
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EACD5820);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Never.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EACCF570 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EACCF570);
  }

  v1 = sub_18F520B3C();
  __swift_project_value_buffer(v1, qword_1EACD5820);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F2E2604()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return Never.perform()();
}

unint64_t sub_18F2E2780()
{
  result = qword_1EACD5848[0];
  if (!qword_1EACD5848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD5848);
  }

  return result;
}

_BYTE *sub_18F2E27D4(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2E2888(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F2E28F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F2E2A34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void IntentParameter<>.init<A>(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v58 = v26;
  v60 = v27;
  v29 = v28;
  v56 = v30;
  v61 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_46_0(v32);
  OUTLINED_FUNCTION_31_31(a22);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  v59 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  v57 = v38;
  v39 = *(v23 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_47_5(v44);
  OUTLINED_FUNCTION_11_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v50 = *v29;
  v51 = *(v29 + 4);
  (*(v46 + 16))(v49 - v48, v33);
  (*(v42 + 16))(v22, v56, v55);
  v64 = v51;
  v63 = v50;
  sub_18F126AC4(&v63);
  OUTLINED_FUNCTION_22_0(&a18);
  v58();
  sub_18F10F340();
  OUTLINED_FUNCTION_24_31(v39, &v62);
  sub_18F116908(v60, v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  v52 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v59, v53, v54, v52);
  sub_18F116B3C();

  sub_18F0EF148(v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v42 + 8))(v56, v55);
  sub_18F0EF148(v61, &qword_1EACCF7A8, &qword_18F540440);
  (*(v46 + 8))();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v38 = v1;
  v39 = v2;
  v40 = v4;
  v41 = v3;
  v37 = v5;
  v7 = v6;
  v9 = v8;
  v36 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_2();
  v35 = v17;
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_50();
  v21 = *v7;
  v22 = *(v7 + 4);
  (*(v19 + 16))(v0, v9);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, AssociatedTypeWitness);
  v44 = v22;
  v43 = v21;
  sub_18F126AC4(&v43);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_24_31(v26, v27);
  sub_18F116908(v37, v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v42[3] = v38;
  v42[4] = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v33 = *(v38 - 8);
  (*(v33 + 16))(boxed_opaque_existential_1, v40, v38);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v33 + 8))(v40, v38);
  sub_18F0EF148(v37, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v41, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(v36, v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v62 = v27;
  v63 = v26;
  v66 = v29;
  v67 = v28;
  v31 = v30;
  v33 = v32;
  v61 = v32;
  v65 = a24;
  v64 = a22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v37);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_6();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_47_5(v41);
  OUTLINED_FUNCTION_11_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  v47 = *v31;
  v48 = *(v31 + 4);
  (*(v43 + 16))(v46 - v45, v33);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v70 = v48;
  v69 = v47;
  sub_18F126AC4(&v69);
  OUTLINED_FUNCTION_22_0(&a14);
  v62();
  sub_18F10F340();
  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_24_31(v52, v53);
  sub_18F116908(v63, v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v68[3] = v64;
  v68[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v59 = *(v64 - 8);
  (*(v59 + 16))(boxed_opaque_existential_1, v66, v64);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v59 + 8))(v66, v64);
  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  (*(v43 + 8))(v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v51 = v25;
  v53 = v27;
  v54 = v26;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v52 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  v50 = v36;
  v37 = *(v24 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v41 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_35_0();
  v44 = OUTLINED_FUNCTION_10(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_50();
  v45 = *v29;
  LOWORD(v29) = *(v29 + 4);
  OUTLINED_FUNCTION_22_27();
  (*(v41 + 16))(v21, v31, v39);
  v57 = v29;
  v56 = v45;
  v46 = sub_18F126AC4(&v56);
  OUTLINED_FUNCTION_46_0(v46);
  OUTLINED_FUNCTION_22_0(&a18);
  v51();
  sub_18F10F340();
  OUTLINED_FUNCTION_24_31(v37, &v55);
  sub_18F116908(v53, v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  v47 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v52, v48, v49, v47);
  sub_18F116B3C();

  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v41 + 8))(v31, v39);
  sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v36 = v6;
  v8 = v7;
  v39 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  v35[1] = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  OUTLINED_FUNCTION_111();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_6();
  v21 = sub_18F520B3C();
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v23 = *v8;
  LOWORD(v8) = *(v8 + 4);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, AssociatedTypeWitness);
  v43 = v8;
  v42 = v23;
  v35[0] = sub_18F126AC4(&v42);
  OUTLINED_FUNCTION_12_39();
  sub_18F126C08(v17, v16, v41);
  v27 = v36;
  sub_18F116908(v36, v15, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v40[3] = v5;
  v40[4] = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v33 = *(v5 - 8);
  v34 = v38;
  (*(v33 + 16))(boxed_opaque_existential_1, v38, v5);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v33 + 8))(v34, v5);
  sub_18F0EF148(v27, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v39, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v26 = v23;
  v63[2] = v27;
  v63[3] = v28;
  v64 = v29;
  v68 = v31;
  v69 = v30;
  v33 = v32;
  v66 = v34;
  v67 = a23;
  v35 = a21;
  v63[1] = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  v65 = v38;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v63 - v40;
  v42 = *(v26 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_6();
  v46 = sub_18F520B3C();
  v47 = OUTLINED_FUNCTION_10(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4_50();
  v48 = *v33;
  LOWORD(v33) = *(v33 + 4);
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v72 = v33;
  v71 = v48;
  v52 = sub_18F126AC4(&v71);
  OUTLINED_FUNCTION_47_5(v52);
  OUTLINED_FUNCTION_22_0(&a16);
  v64();
  sub_18F10F340();
  OUTLINED_FUNCTION_25_25();
  sub_18F126C08(v53, v42, v54);
  v55 = v66;
  sub_18F116908(v66, v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v70[3] = v35;
  v70[4] = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v61 = *(v35 - 8);
  v62 = v68;
  (*(v61 + 16))(boxed_opaque_existential_1, v68, v35);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v61 + 8))(v62, v35);
  sub_18F0EF148(v55, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v69, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:inputOptions:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v38 = v4;
  v39 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v37 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v11);
  v12 = *(v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_46_0(v14);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_0();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_6();
  v22 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_50();

  sub_18F116908(v6, v2, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v2, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_22_27();
    if (__swift_getEnumTagSinglePayload(v2, 1, v22) != 1)
    {
      sub_18F0EF148(v2, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v24 + 32))(v1, v2, v22);
  }

  (*(v16 + 16))(v19, v39);
  v26 = OUTLINED_FUNCTION_32_28();
  sub_18F126AC4(v26);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_24_31(v12, &v40);
  sub_18F116908(v38, v36, &qword_1EACCF7A0, &unk_18F53E6F0);
  v27 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v37, v28, v29, v27);
  sub_18F116B3C();
  sub_18F0EF148(v38, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v16 + 8))(v39);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v30, v31, v32);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v33, v34, v35);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:inputOptions:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v57 = v24;
  v60 = v26;
  v61 = v25;
  v62 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v59 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v34);
  v35 = *(v20 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_46_0(v37);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v50 = v49 - v48;

  sub_18F116908(v29, v21, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_26(v21);
  if (v51)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_26(v21);
    if (!v51)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v46 + 32))(v50, v21, v44);
  }

  (*(v39 + 16))(v56, v61);
  v52 = OUTLINED_FUNCTION_32_28();
  sub_18F126AC4(v52);
  OUTLINED_FUNCTION_22_0(&a14);
  v57();
  sub_18F10F340();
  OUTLINED_FUNCTION_24_31(v35, &v63);
  sub_18F116908(v60, v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  v53 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v59, v54, v55, v53);
  sub_18F116B3C();

  sub_18F0EF148(v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v61);
  sub_18F0EF148(v62, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0EF148(v29, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:capabilities:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v64 = v24;
  v65 = v25;
  v66 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v34);
  v35 = *(v21 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_50();

  v46 = *v28 | (*(v28 + 2) << 32);
  sub_18F116908(v30, v23, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_26(v23);
  if (v47)
  {
    OUTLINED_FUNCTION_22_27();
    OUTLINED_FUNCTION_23_26(v23);
    if (!v47)
    {
      sub_18F0EF148(v23, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v44 + 32))(v22, v23, v42);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, AssociatedTypeWitness);
  v70 = WORD2(v46);
  v69 = v46;
  sub_18F126AC4(&v69);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_24_31(v35, &v68);
  sub_18F116908(v66, v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v67[3] = v65;
  v67[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v56 = *(v65 - 8);
  (*(v56 + 16))(boxed_opaque_existential_1, v64, v65);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v56 + 8))(v64, v65);
  sub_18F0EF148(v66, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v57, v58, v59);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v60, v61, v62);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:capabilities:inputOptions:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v68 = v29;
  v72 = v31;
  v73 = v30;
  v33 = v32;
  v35 = v34;
  v69 = a25;
  v71 = a23;
  OUTLINED_FUNCTION_31_31(a22);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v39);
  v40 = *(v26 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_28_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  v74 = v51 - v50;

  v52 = *v33 | (*(v33 + 2) << 32);
  sub_18F116908(v35, v25, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v25, 1, v46) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v25, 1, v46) != 1)
    {
      sub_18F0EF148(v25, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v48 + 32))(v74, v25, v46);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, AssociatedTypeWitness);
  v78 = WORD2(v52);
  v77 = v52;
  sub_18F126AC4(&v77);
  OUTLINED_FUNCTION_22_0(&a12);
  v68();
  sub_18F10F340();
  OUTLINED_FUNCTION_24_31(v40, &v76);
  sub_18F116908(v73, v70, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v75[3] = v71;
  v75[4] = v69;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  v61 = *(v71 - 8);
  (*(v61 + 16))(boxed_opaque_existential_1, v72, v71);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v61 + 8))(v72, v71);
  sub_18F0EF148(v73, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v62, v63, v64);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v65, v66, v67);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void *sub_18F2E4DD8()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F181A54();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 24 * v2);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_18F2E4E78(void *a1, uint64_t a2, int a3)
{
  v48 = a3;
  v49 = a2;
  v46 = *v3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v40 - v5;
  v6 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v14 = sub_18F52165C();
  __swift_project_value_buffer(v14, qword_1ED7077A8);
  v42 = *(v8 + 16);
  v42(v13, v49, v6);
  v15 = sub_18F52163C();
  v16 = sub_18F52223C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51[0] = v18;
    *v17 = 136446210;
    OUTLINED_FUNCTION_0_77();
    sub_18F2E6758(v19, v20, MEMORY[0x1E69695E0]);
    v21 = sub_18F522C9C();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_5_44();
    v25(v24);
    v26 = sub_18F11897C(v21, v23, v51);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_18F0E9000, v15, v16, "Registering UndoManager with UUID %{public}s in the execution undo manager cache", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_5_44();
    v28(v27);
  }

  v29 = sub_18F521EFC();
  v30 = v45;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v29);
  v31 = v41;
  v42(v41, v49, v6);
  sub_18F521EBC();
  v32 = v44;

  v33 = sub_18F521EAC();
  v34 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  *(v36 + 2) = v33;
  *(v36 + 3) = v37;
  *(v36 + 4) = v32;
  (*(v8 + 32))(&v36[v34], v31, v6);
  *&v36[v35] = v46;
  sub_18F2C309C(0, 0, v30, &unk_18F554270, v36);
  swift_beginAccess();
  v38 = v47;

  swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v32 + 16);
  sub_18F2BFD24();
  *(v32 + 16) = v50;
  swift_endAccess();
}

uint64_t sub_18F2E52AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_18F52293C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_18F521EBC();
  v5[7] = sub_18F521EAC();
  v8 = sub_18F521E1C();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18F2E53A0, v8, v7);
}

uint64_t sub_18F2E53A0()
{
  OUTLINED_FUNCTION_69();
  sub_18F522E5C();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_18F2E5464;
  OUTLINED_FUNCTION_37();

  return sub_18F2E6118(v2, v3, v4, v5, 1);
}

uint64_t sub_18F2E5464()
{
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_165();
    v5(v4);
    v6 = *(v2 + 64);
    v7 = *(v2 + 72);
    v8 = sub_18F2E67A0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_165();
    v10(v9);
    v6 = *(v2 + 64);
    v7 = *(v2 + 72);
    v8 = sub_18F2E55E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_18F2E55E8()
{
  OUTLINED_FUNCTION_69();

  if ((sub_18F521F6C() & 1) == 0)
  {
    sub_18F2E5D88(*(v0 + 24));
  }

  OUTLINED_FUNCTION_71();

  return v1();
}

void sub_18F2E5658(uint64_t a1)
{
  v70 = a1;
  v2 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5950, &qword_18F554258);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - v16;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v67 = v1;
  v18 = *(v1 + 16);
  v19 = *(v18 + 64);
  v72 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v65 = (v20 + 63) >> 6;
  v76 = v4 + 16;
  v74 = v4;
  v79 = (v4 + 8);
  v80 = (v4 + 32);
  v69 = v18;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v23 = 0;
  *&v24 = 136446210;
  v64 = v24;
  v77 = v11;
  v78 = v2;
  v81 = v8;
  v73 = v17;
  while (v22)
  {
    v25 = v23;
LABEL_10:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = v68;
    v28 = v74;
    (*(v74 + 16))(v68, *(v69 + 48) + *(v74 + 72) * (v26 | (v25 << 6)), v2);
    OUTLINED_FUNCTION_8_37();
    v30 = *(v29 + 8);
    v31 = *(v29 + 16);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5958, &qword_18F554260);
    v33 = v2;
    v34 = v71;
    v35 = v71 + *(v32 + 48);
    (*(v28 + 32))(v71, v27, v33);
    *v35 = v8;
    *(v35 + 8) = v30;
    *(v35 + 16) = v31;
    v36 = v34;
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
    v37 = v8;

    v8 = v81;
    v11 = v77;
    v17 = v73;
LABEL_11:
    sub_18F2E65B8(v36, v17);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5958, &qword_18F554260);
    if (__swift_getEnumTagSinglePayload(v17, 1, v38) == 1)
    {

      return;
    }

    v39 = &v17[*(v38 + 48)];
    v40 = *v39;
    v41 = *(v39 + 2);
    v2 = v78;
    (*v80)(v11, v17, v78);
    sub_18F190694();
    v42 = v40;
    LOBYTE(v40) = sub_18F52243C();

    if (v40)
    {
      if (qword_1ED6FEFE8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v43 = sub_18F52165C();
      __swift_project_value_buffer(v43, qword_1ED7077A8);
      v44 = OUTLINED_FUNCTION_165();
      v45(v44);
      v46 = sub_18F52163C();
      v47 = sub_18F52223C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v83[0] = v49;
        *v48 = v64;
        OUTLINED_FUNCTION_0_77();
        sub_18F2E6758(&qword_1EACCED40, v50, MEMORY[0x1E69695E0]);
        v51 = sub_18F522C9C();
        v52 = v41;
        v54 = v53;
        v75 = *v79;
        v75(v81, v78);
        v55 = sub_18F11897C(v51, v54, v83);
        v41 = v52;
        v17 = v73;

        *(v48 + 4) = v55;
        _os_log_impl(&dword_18F0E9000, v46, v47, "Removing UndoManager with UUID %{public}s from the execution undo manager cache", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v2 = v78;
        OUTLINED_FUNCTION_32();
        v8 = v81;
        OUTLINED_FUNCTION_32();
      }

      else
      {

        v75 = *v79;
        v75(v8, v2);
      }

      sub_18F521F5C();
      swift_beginAccess();
      v11 = v77;
      sub_18F181A54();
      if (v57)
      {
        v58 = v56;
        v66 = v41;
        v59 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(v59 + 16);
        *(v59 + 16) = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47E0, &qword_18F5509B8);
        v11 = v77;
        sub_18F5229DC();
        v61 = v82;
        v75((*(v82 + 48) + *(v74 + 72) * v58), v2);
        OUTLINED_FUNCTION_8_37();

        v8 = v81;
        OUTLINED_FUNCTION_0_77();
        sub_18F2E6758(&qword_1ED6FF180, v62, MEMORY[0x1E69695B8]);
        sub_18F5229FC();
        *(v59 + 16) = v61;
      }

      swift_endAccess();

      v75(v11, v2);
    }

    else
    {
      (*v79)(v11, v2);
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v65)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5958, &qword_18F554260);
      v36 = v71;
      __swift_storeEnumTagSinglePayload(v71, 1, 1, v63);
      v22 = 0;
      goto LABEL_11;
    }

    v22 = *(v72 + 8 * v25);
    ++v23;
    if (v22)
    {
      v23 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_18F2E5D88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v10 = sub_18F52165C();
  __swift_project_value_buffer(v10, qword_1ED7077A8);
  (*(v6 + 16))(v9, a1, v4);
  v11 = sub_18F52163C();
  v12 = sub_18F52223C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v14 = 136446210;
    OUTLINED_FUNCTION_0_77();
    sub_18F2E6758(v16, v17, MEMORY[0x1E69695E0]);
    v18 = sub_18F522C9C();
    v20 = v19;
    (*(v6 + 8))(v9, v4);
    v21 = sub_18F11897C(v18, v20, v28);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_18F0E9000, v11, v12, "Removing UndoManager with UUID %{public}s from the execution undo manager cache", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_32();
    a1 = v27;
    OUTLINED_FUNCTION_32();
  }

  else
  {

    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v22 = *(v2 + 16);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v23 = sub_18F19E318(a1, v22);

  if (v23)
  {

    sub_18F2E60D8(v23);
    sub_18F521F5C();
  }

  swift_beginAccess();
  v24 = sub_18F2BF244();
  swift_endAccess();
  return sub_18F2E60D8(v24);
}

uint64_t sub_18F2E6090()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

void *sub_18F2E60D8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18F2E6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18F52292C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18F2E6218, 0, 0);
}

uint64_t sub_18F2E6218()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18F52293C();
  v5 = sub_18F2E6758(&qword_1EACD5960, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_18F522E3C();
  sub_18F2E6758(&qword_1EACD5968, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_18F52294C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_18F2E63A8;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_18F2E63A8()
{
  v2 = *(*v1 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v7;
  *(v7 + 120) = v0;

  v4 = OUTLINED_FUNCTION_165();
  v2(v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F2E6554, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t sub_18F2E6554()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2E65B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5950, &qword_18F554258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2E6628(uint64_t a1)
{
  v4 = *(sub_18F520E6C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18F1EC4D0;

  return sub_18F2E52AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_18F2E6758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18F2E67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_78(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_4_51(v6 + 24, v7);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_2_65();
  sub_18F19ED80();
  OUTLINED_FUNCTION_6_44();
  if (!v5)
  {
    v8 = sub_18F16A9C8();
    v9 = OUTLINED_FUNCTION_28(&type metadata for AppManager.Error, v8);
    OUTLINED_FUNCTION_3_48(xmmword_18F54D580, v9, v10);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return OUTLINED_FUNCTION_1_65();
}

uint64_t sub_18F2E683C(uint64_t a1)
{
  v95 = a1;
  v1 = sub_18F520C8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v86 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v86 - v9;
  v11 = type metadata accessor for AppManager();
  sub_18F3E6F18(v105);
  v90 = sub_18F134080();
  v91 = v12;
  v96 = v5;
  v97 = 0;
  v103 = v10;
  v86[1] = v11;
  v115 = v105[0];
  sub_18F0EF148(&v115, &qword_1EACD4470, &unk_18F53FB60);
  v114 = v105[1];
  sub_18F0EF148(&v114, &qword_1EACD4470, &unk_18F53FB60);
  v113 = v106;
  sub_18F0EF148(&v113, &unk_1EACCFDB0, &qword_18F543AE0);
  _s9TypeCacheCMa();
  swift_allocObject();
  v92 = sub_18F0F47D4();
  v27 = v95;
  v28 = sub_18F111F70(v95);
  v94 = v28;
  if (v28)
  {
    v93 = v27 & 0xC000000000000001;
    v29 = v98;
    swift_beginAccess();
    v30 = 0;
    v88 = v27 + 32;
    v101 = v2 + 16;
    v102 = (v2 + 8);
    *&v31 = 136446210;
    v87 = v31;
    while (1)
    {
      v32 = v93;
      sub_18F1C3ED4();
      v33 = v32 ? MEMORY[0x193ADBE10](v30, v27) : *(v88 + 8 * v30);
      v34 = v33;
      v35 = __OFADD__(v30, 1);
      v36 = v30 + 1;
      if (v35)
      {
        break;
      }

      v100 = v36;
      v37 = *(v29 + 24);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v38 = v103;
      v99 = v34;
      sub_18F5210EC();
      if (*(v37 + 16))
      {
        sub_18F2E7C54(&qword_1EACCED58, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        v39 = sub_18F52177C();
        v40 = ~(-1 << *(v37 + 32));
        while (1)
        {
          v41 = v39 & v40;
          if (((*(v37 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
          {
            break;
          }

          (*(v2 + 16))(v8, *(v37 + 48) + *(v2 + 72) * v41, v1);
          sub_18F2E7C54(&qword_1EACCE7B8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v42 = sub_18F52180C();
          v43 = *(v2 + 8);
          v43(v8, v1);
          v39 = v41 + 1;
          if (v42)
          {

            v43(v103, v1);
            v29 = v98;
            v30 = v100;
            goto LABEL_21;
          }
        }

        v38 = v103;
      }

      v44 = *v102;
      (*v102)(v38, v1);
      v45 = v99;
      sub_18F5210EC();
      swift_beginAccess();
      v46 = v44;
      sub_18F2C9CA8();
      swift_endAccess();
      v44(v8, v1);
      if (qword_1ED6FED58 != -1)
      {
        swift_once();
      }

      v47 = sub_18F52165C();
      __swift_project_value_buffer(v47, qword_1ED707790);
      v48 = v45;
      v49 = sub_18F52163C();
      v50 = sub_18F5221FC();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v107 = v99;
        *v51 = v87;
        v89 = v50;
        sub_18F5210EC();
        sub_18F2E7C54(&qword_1EACCED50, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v52 = sub_18F522C9C();
        v54 = v53;
        v46(v8, v1);
        v55 = sub_18F11897C(v52, v54, &v107);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_18F0E9000, v49, v89, "AppManager: Loading static metadata from framework: %{public}s", v51, 0xCu);
        v56 = v99;
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x193ADD350](v56, -1, -1);
        MEMORY[0x193ADD350](v51, -1, -1);
      }

      v57 = v97;
      v30 = v100;
      v58 = MEMORY[0x193ADC7E0]();
      sub_18F2E7694(v48, v92, v90, v91);
      v97 = v57;
      objc_autoreleasePoolPop(v58);

      v29 = v98;
LABEL_21:
      v27 = v95;
      if (v30 == v94)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    swift_once();
    v13 = sub_18F52165C();
    __swift_project_value_buffer(v13, qword_1ED707790);
    v14 = v90;
    v15 = v91;
    v16 = v103;
    v17 = v34;
    sub_18F2E7B60(v90, v91);
    v18 = sub_18F52163C();
    v19 = sub_18F52221C();
    sub_18F2E7BA8(v14, v15);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v112 = v21;
      *v20 = 136315138;
      *&v107 = v14;
      *(&v107 + 1) = v15;
      *&v108 = v16;
      *(&v108 + 1) = v17;
      sub_18F16A9C8();
      v22 = sub_18F522E8C();
      v23 = v14;
      v25 = v24;
      sub_18F2E7BA8(v23, v15);
      v26 = sub_18F11897C(v22, v25, &v112);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_18F0E9000, v18, v19, "Error loading static metadata: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x193ADD350](v21, -1, -1);
      MEMORY[0x193ADD350](v20, -1, -1);
    }

    else
    {

      sub_18F2E7BA8(v14, v15);
    }

    _s9TypeCacheCMa();
    swift_allocObject();
    return sub_18F0F47D4();
  }

  else
  {
    v29 = v98;
LABEL_26:

    if ((*(v29 + 16) & 1) == 0)
    {
      *(v29 + 16) = 1;
      sub_18F3E6F18(&v107);
      v59 = v97;
      v62 = sub_18F134080();
      v64 = v63;
      if (v59)
      {
        v65 = v60;
        v66 = v61;
        v112 = v107;
        sub_18F0EF148(&v112, &qword_1EACD4470, &unk_18F53FB60);
        v111 = v108;
        sub_18F0EF148(&v111, &qword_1EACD4470, &unk_18F53FB60);
        v110 = v109;
        sub_18F0EF148(&v110, &unk_1EACCFDB0, &qword_18F543AE0);
        sub_18F16A9C8();
        v67 = swift_allocError();
        *v68 = v62;
        v68[1] = v64;
        v68[2] = v65;
        v68[3] = v66;
      }

      else
      {
        v112 = v107;
        sub_18F0EF148(&v112, &qword_1EACD4470, &unk_18F53FB60);
        v111 = v108;
        sub_18F0EF148(&v111, &qword_1EACD4470, &unk_18F53FB60);
        v110 = v109;
        sub_18F0EF148(&v110, &unk_1EACCFDB0, &qword_18F543AE0);
        sub_18F0F21A8(0, &qword_1ED6FE620, 0x1E6963620);
        v69 = sub_18F52227C();
        v80 = v69;
        if (v69)
        {
          sub_18F14678C(v69, v62, v64);

          if (qword_1ED6FED58 != -1)
          {
            swift_once();
          }

          v81 = sub_18F52165C();
          __swift_project_value_buffer(v81, qword_1ED707790);
          v82 = sub_18F52163C();
          v83 = sub_18F52223C();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_18F0E9000, v82, v83, "AppManager: Static metadata extraction complete.", v84, 2u);
            MEMORY[0x193ADD350](v84, -1, -1);
          }

          return v92;
        }

        sub_18F16A9C8();
        v67 = swift_allocError();
        *v85 = xmmword_18F540420;
        *(v85 + 16) = 0;
        *(v85 + 24) = 0;
        swift_willThrow();
      }

      if (qword_1ED6FED58 != -1)
      {
        swift_once();
      }

      v70 = sub_18F52165C();
      __swift_project_value_buffer(v70, qword_1ED707790);
      v71 = v67;
      v72 = sub_18F52163C();
      v73 = sub_18F52221C();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v104[0] = v75;
        *v74 = 136315138;
        swift_getErrorValue();
        v76 = sub_18F522E8C();
        v78 = sub_18F11897C(v76, v77, v104);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_18F0E9000, v72, v73, "Error loading static metadata: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x193ADD350](v75, -1, -1);
        MEMORY[0x193ADD350](v74, -1, -1);
      }

      else
      {
      }
    }
  }

  return v92;
}

uint64_t sub_18F2E7490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_78(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_4_51(v6 + 40, v7);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_2_65();
  sub_18F19ED80();
  OUTLINED_FUNCTION_6_44();
  if (!v5)
  {
    v8 = sub_18F16A9C8();
    v9 = OUTLINED_FUNCTION_28(&type metadata for AppManager.Error, v8);
    OUTLINED_FUNCTION_3_48(xmmword_18F54D590, v9, v10);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return OUTLINED_FUNCTION_1_65();
}

uint64_t sub_18F2E7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_78(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_4_51(v6 + 72, v7);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_2_65();
  sub_18F19ED80();
  OUTLINED_FUNCTION_6_44();
  if (!v5)
  {
    v8 = sub_18F16A9C8();
    v9 = OUTLINED_FUNCTION_28(&type metadata for AppManager.Error, v8);
    OUTLINED_FUNCTION_3_48(xmmword_18F54D5B0, v9, v10);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return OUTLINED_FUNCTION_1_65();
}

uint64_t sub_18F2E75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_78(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_4_51(v6 + 56, v7);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_2_65();
  sub_18F19ED80();
  OUTLINED_FUNCTION_6_44();
  if (!v5)
  {
    v8 = sub_18F16A9C8();
    v9 = OUTLINED_FUNCTION_28(&type metadata for AppManager.Error, v8);
    OUTLINED_FUNCTION_3_48(xmmword_18F54D5A0, v9, v10);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return OUTLINED_FUNCTION_1_65();
}

void sub_18F2E7694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18F520C8C();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0F21A8(0, &qword_1ED6FE650, 0x1E69AC738);
  v11 = a1;
  v12 = sub_18F5222DC();
  if (v4)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v13 = sub_18F52165C();
    __swift_project_value_buffer(v13, qword_1ED707790);
    v14 = v11;
    v15 = v4;
    v16 = sub_18F52163C();
    v17 = sub_18F52223C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446466;
      sub_18F5210EC();
      sub_18F2E7C54(&qword_1EACCED50, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v20 = sub_18F522C9C();
      v22 = v21;
      (*(v29 + 8))(v10, v8);
      v23 = sub_18F11897C(v20, v22, &v30);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_18F522E8C();
      v26 = sub_18F11897C(v24, v25, &v30);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_18F0E9000, v16, v17, "AppManager: Failed to load framework metadata from %{public}s: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v19, -1, -1);
      MEMORY[0x193ADD350](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = v12;
    sub_18F14678C(v12, a3, a4);
  }
}

uint64_t sub_18F2E79C4()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F2E7A8C()
{
  result = sub_18F2E7658();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_18F2E7AC0(uint64_t a1, uint64_t a2)
{
  result = sub_18F2E7C54(&qword_1EACCEC90, a2, type metadata accessor for AppManagerStaticCache, &unk_18F55429C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2E7B60(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F2E7BA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_18F2E7C54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F2E7C9C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return DynamicOptionsProvider.defaultResult()(v3, v4, v5);
}

uint64_t DynamicOptionsProvider.defaultResult()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F13B84C, 0, 0);
}

uint64_t sub_18F2E7D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of DynamicOptionsProvider.results()()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_10_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_6(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DynamicOptionsProvider.defaultResult()()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_10_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_6(v1);

  return v4(v3);
}

uint64_t sub_18F2E7FC8()
{
  v31 = v0;
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_18F52165C();
  __swift_project_value_buffer(v6, qword_1ED7077A8);
  (*(v3 + 16))(v2, v4, v5);
  v7 = v1;
  v8 = sub_18F52163C();
  v9 = sub_18F52221C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[3];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v15 = 138412546;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v28 = v17;
    *(v15 + 12) = 2080;
    swift_getDynamicType();
    v18 = sub_18F52307C();
    v20 = v19;
    (*(v12 + 8))(v13, v14);
    v21 = sub_18F11897C(v18, v20, &v30);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_18F0E9000, v8, v9, "Encountered error %@ while initializing dependencies for %s. Returning nil for defaultResult()", v15, 0x16u);
    sub_18F0EF148(v28, &qword_1EACD0578, &unk_18F541870);
    MEMORY[0x193ADD350](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x193ADD350](v29, -1, -1);
    MEMORY[0x193ADD350](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
  }

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);

  OUTLINED_FUNCTION_71();

  return v26();
}

uint64_t sub_18F2E8290()
{
  OUTLINED_FUNCTION_21();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_11_33(v7);

  return sub_18F139E28();
}

uint64_t sub_18F2E8338()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    v15 = (*(v3[6] + 16) + **(v3[6] + 16));
    v9 = swift_task_alloc();
    v3[9] = v9;
    *v9 = v5;
    v9[1] = sub_18F1C6328;
    v10 = v3[6];
    v11 = v3[4];
    v12 = v3[5];
    v13 = v3[2];
    v14 = v3[3];

    return v15(v13, v14, v11, v12, v10);
  }
}

uint64_t sub_18F2E8504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC870;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t dispatch thunk of SearchableDynamicOptionsProvider.results(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_4();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_9_6(v11);
  *v12 = v13;
  v12[1] = sub_18F0FC870;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_18F2E86FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v8 = *(a1 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = *(v8 + 16);
  v22(v13, v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    v49 = v6;
    v23 = v21;
    v24 = v22;
    v25 = a2;
    v26 = v4;
    v28 = *(&v52 + 1);
    v27 = v53;
    __swift_project_boxed_opaque_existential_1Tm(&v51, *(&v52 + 1));
    v29 = v28;
    v4 = v26;
    a2 = v25;
    v22 = v24;
    v21 = v23;
    v6 = v49;
    (*(*(v27 + 8) + 16))(v29);
    v30 = type metadata accessor for DisplayRepresentation(0);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    if (__swift_getEnumTagSinglePayload(v19, 1, v30) != 1)
    {
      sub_18F143B8C(v19, v23);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v30);
      goto LABEL_10;
    }
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_18F0EF148(&v51, &qword_1EACD30A8, &qword_18F54A5B0);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  v22(v11, v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5970, &qword_18F5543F0);
  if (swift_dynamicCast())
  {
    v35 = *(&v52 + 1);
    v36 = v53;
    __swift_project_boxed_opaque_existential_1Tm(&v51, *(&v52 + 1));
    sub_18F1436A0(v35, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_18F0EF148(&v51, &qword_1EACD5978, &qword_18F5543F8);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }

  v30 = type metadata accessor for DisplayRepresentation(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v30) != 1)
  {
    sub_18F0EF148(v19, &qword_1EACD32D0, &qword_18F540EB0);
  }

LABEL_10:
  a3[3] = v6;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v22(boxed_opaque_existential_1, v4, v6);
  v42 = v50;
  sub_18F16ADE0(v21, v50);
  v43 = type metadata accessor for DynamicOptionsResult.Item(0);
  v44 = *(v43 + 20);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v30);
  result = sub_18F2E8BBC(v42, a3 + v44);
  *(a3 + *(v43 + 24)) = 0;
  return result;
}

uint64_t sub_18F2E8B30()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return DynamicOptionsProvider.defaultResult()(v3, v4, v5);
}

uint64_t sub_18F2E8BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_18F2E91AC()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2E92F4()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2E93A0()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2E95E4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v8 - v7, v0, v3);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v2();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2E97DC()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2E98E8()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2E9C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDialog.Storage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18F2E9CD0()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v107 = v10;
  v108 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v100 - v14;
  v15 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v110 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - v22;
  type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v27 = (v26 - v25);
  sub_18F2EB474(v1, v26 - v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v96 = objc_allocWithZone(MEMORY[0x1E69AC9D8]);
      OUTLINED_FUNCTION_7_39();
      v33 = &selRef_initWithFullSpeakableString_supportingSpeakableString_systemImageName_localeIdentifier_;
      goto LABEL_28;
    case 2u:
      v111 = HIDWORD(v3);
      v109 = HIDWORD(v5);
      v106 = HIDWORD(v7);
      v34 = v27[1];
      v102 = *v27;
      v101 = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F48, &unk_18F54EFA0);
      v36 = *(v35 + 48);
      v37 = *(v27 + *(v35 + 64));
      v103 = v17;
      v104 = v15;
      (*(v17 + 4))(v23, v27 + v36, v15);
      sub_18F0F21A8(0, &qword_1EACD59B8, 0x1E695DFF8);
      v105 = v23;
      v38 = sub_18F520C5C();
      v40 = sub_18F2EB204(v38, v39);
      v113 = v9;
      v114 = v7;
      v115 = v106;
      v116 = v5;
      v117 = v109;
      v118 = __PAIR64__(v111, v3);
      v41 = [v40 ln:&v113 sandboxExtendedURLWithAuditToken:?];

      sub_18F520C3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD59C0, &unk_18F554530);
      v42 = sub_18F522ABC();
      v43 = v42;
      v44 = 0;
      v46 = v37 + 64;
      v45 = *(v37 + 8);
      v111 = v37;
      v47 = 1 << v37[32];
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      i = v48 & v45;
      v50 = (v47 + 63) >> 6;
      v106 = (v42 + 64);
      v109 = v42;
      if ((v48 & v45) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      v52 = v44;
      v53 = v105;
      do
      {
        v44 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (v44 >= v50)
        {

          objc_allocWithZone(MEMORY[0x1E69AC740]);
          v97 = v108;
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F2EB598(v102, v101, v110, v43, v107, v97);
          (*(v103 + 1))(v53, v104);
          goto LABEL_32;
        }

        v54 = *&v46[8 * v44];
        ++v52;
      }

      while (!v54);
      v51 = __clz(__rbit64(v54));
      for (i = (v54 - 1) & v54; ; i &= i - 1)
      {
        v55 = v51 | (v44 << 6);
        v56 = (*(v111 + 6) + 16 * v55);
        v58 = *v56;
        v57 = v56[1];
        sub_18F0FD724(*(v111 + 7) + 40 * v55, &v113);
        v59 = v118;
        __swift_project_boxed_opaque_existential_1Tm(&v113, v118);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v60 = sub_18F142A38(v59);
        __swift_destroy_boxed_opaque_existential_1Tm(&v113);
        *&v106[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
        v43 = v109;
        v61 = (*(v109 + 48) + 16 * v55);
        *v61 = v58;
        v61[1] = v57;
        *(*(v43 + 56) + 8 * v55) = v60;
        v62 = *(v43 + 16);
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          break;
        }

        *(v43 + 16) = v64;
        if (!i)
        {
          goto LABEL_7;
        }

LABEL_6:
        v51 = __clz(__rbit64(i));
      }

      goto LABEL_35;
    case 3u:
      v65 = *v27;
      v66 = *(v27 + 8);
      v67 = v27[2];
      v68 = *(v65 + 16);
      v69 = MEMORY[0x1E69E7CC0];
      if (!v68)
      {
        goto LABEL_25;
      }

      LODWORD(v105) = v66;
      v106 = v67;
      v120 = MEMORY[0x1E69E7CC0];
      sub_18F5228CC();
      v17 = 0;
      v70 = v65 + 32;
      v109 = v68;
      v110 = v65;
      break;
    default:
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = objc_allocWithZone(MEMORY[0x1E69AC8A0]);
      OUTLINED_FUNCTION_7_39();
      v33 = &selRef_initWithFullString_supportingString_systemImageName_localeIdentifier_;
LABEL_28:
      sub_18F2EB4D8(v28, v29, v30, v31, v107, v1, v33);
      goto LABEL_32;
  }

  do
  {
    if (v17 >= *(v65 + 16))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      sub_18F522A3C();
      __break(1u);
      return;
    }

    sub_18F0FD724(v70, &v113);
    v71 = v118;
    v72 = v119;
    __swift_project_boxed_opaque_existential_1Tm(&v113, v118);
    v73 = (*(v72 + 40))(v71, v72);
    v75 = v74;
    v76 = v118;
    v77 = v119;
    __swift_project_boxed_opaque_existential_1Tm(&v113, v118);
    v78 = v111;
    (*(v77 + 48))(v76, v77);
    v79 = sub_18F520B3C();
    OUTLINED_FUNCTION_13_34(v78);
    if (v80)
    {
      sub_18F1121C4(v78);
      v1 = 0;
    }

    else
    {
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0, 0x1E696B100);
      if (!swift_dynamicCast())
      {
        goto LABEL_36;
      }

      v82 = v112;
      v1 = [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      (*(*(v79 - 8) + 8))(v78, v79);
    }

    ++v17;
    v83 = v118;
    v84 = v119;
    __swift_project_boxed_opaque_existential_1Tm(&v113, v118);
    v85 = (*(v84 + 32))(v83, v84);
    v87 = v86;
    v88 = v118;
    v89 = v119;
    __swift_project_boxed_opaque_existential_1Tm(&v113, v118);
    v90 = (*(v89 + 24))(v88, v89);
    v92 = v91;
    v93 = objc_allocWithZone(MEMORY[0x1E69AC8C8]);
    sub_18F2EB6C4(v73, v75, v1, v85, v87, v90, v92);
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
    sub_18F52289C();
    sub_18F5228DC();
    sub_18F5228EC();
    sub_18F5228AC();
    v70 += 40;
    v65 = v110;
  }

  while (v109 != v17);
  v69 = v120;
  v67 = v106;
  LOBYTE(v66) = v105;
LABEL_25:
  if (v66)
  {
    v94 = 0;
    v95 = 0;
  }

  else
  {
    v94 = sub_18F2903C0();
    v95 = v98;
  }

  objc_allocWithZone(MEMORY[0x1E69AC8C0]);
  v99 = v67;
  OUTLINED_FUNCTION_7_39();
  sub_18F2EB7AC(v69, v94, v95, v67, v107, v1);

LABEL_32:
  OUTLINED_FUNCTION_16();
}

uint64_t IntentDialog.init(identifier:templateDirectoryURL:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F48, &unk_18F54EFA0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_18F520C8C();
  OUTLINED_FUNCTION_10_0();
  (*(v13 + 32))(&a5[v11], a3);
  *&a5[v12] = a4;
  type metadata accessor for IntentDialog.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

void IntentDialog.init(full:supporting:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v32 = v5;
  v31 = type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  v22 = *(v20 + 16);
  v30 = v4;
  v22(v0, v4, v18);
  v22(v17, v2, v18);
  v23 = __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v24 = sub_18F117248(v23);
  sub_18F11F0A0(v17, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v18);
  if (EnumTagSinglePayload == 1)
  {
    v26 = *(v20 + 8);
    v26(v2, v18);
    v26(v30, v18);
    sub_18F1121C4(v17);
    v26(v0, v18);
    sub_18F1121C4(v14);
    v27 = 0;
  }

  else
  {
    v27 = sub_18F117248(EnumTagSinglePayload);
    v28 = *(v20 + 8);
    v28(v2, v18);
    v28(v30, v18);
    sub_18F1121C4(v17);
    v28(v0, v18);
    v28(v14, v18);
  }

  *v9 = v24;
  v9[1] = v27;
  v9[2] = 0;
  v9[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v9, v32);
  OUTLINED_FUNCTION_16();
}

void IntentDialog.init(full:systemImageName:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v39 = type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v24 = v6;
  (*(v22 + 16))(v0, v6, v20);
  OUTLINED_FUNCTION_11();
  v28 = __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  v37 = sub_18F117248(v28);
  sub_18F11F0A0(v19, v16);
  v29 = OUTLINED_FUNCTION_13_34(v16);
  if (v30)
  {
    v31 = *(v22 + 8);
    v31(v6, v20);
    sub_18F1121C4(v19);
    v32 = OUTLINED_FUNCTION_31_1();
    (v31)(v32);
    sub_18F1121C4(v16);
    v33 = 0;
  }

  else
  {
    v33 = sub_18F117248(v29);
    v36 = v4;
    v34 = *(v22 + 8);
    v34(v24, v20);
    sub_18F1121C4(v19);
    v35 = OUTLINED_FUNCTION_31_1();
    (v34)(v35);
    v34(v16, v20);
    v4 = v36;
  }

  *v11 = v37;
  v11[1] = v33;
  v11[2] = v4;
  v11[3] = v2;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v11, v38);
  OUTLINED_FUNCTION_16();
}

void IntentDialog.init(full:supporting:systemImageName:)()
{
  OUTLINED_FUNCTION_18();
  v34 = v1;
  v35 = v2;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v36 = type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v24 = *(v22 + 16);
  v33 = v7;
  v24(v0, v7, v20);
  v24(v19, v5, v20);
  v25 = __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v26 = sub_18F117248(v25);
  sub_18F11F0A0(v19, v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v20);
  if (EnumTagSinglePayload == 1)
  {
    v28 = *(v22 + 8);
    v28(v5, v20);
    v28(v33, v20);
    sub_18F1121C4(v19);
    v28(v0, v20);
    sub_18F1121C4(v16);
    v29 = 0;
  }

  else
  {
    v29 = sub_18F117248(EnumTagSinglePayload);
    v30 = *(v22 + 8);
    v30(v5, v20);
    v30(v33, v20);
    sub_18F1121C4(v19);
    v30(v0, v20);
    v30(v16, v20);
  }

  *v11 = v26;
  v11[1] = v29;
  v31 = v34;
  v11[2] = v37;
  v11[3] = v31;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v11, v35);
  OUTLINED_FUNCTION_16();
}

void IntentDialog.init(stringInterpolation:)()
{
  OUTLINED_FUNCTION_18();
  v59 = v2;
  v60 = v1;
  v58 = type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v55 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v57 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v52 - v11;
  v54 = sub_18F520ADC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  v15 = sub_18F520F1C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = sub_18F52187C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v27 = sub_18F52189C();
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;
  v32 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v36 = *(v22 + 16);
  v56 = v20;
  v36(v26, v60, v20);
  v37 = v53;
  sub_18F52188C();
  sub_18F520EDC();
  (*(v13 + 104))(v0, *MEMORY[0x1E6968DF0], v54);
  v38 = v57;
  OUTLINED_FUNCTION_2_4(v31, 0, 0, v19);
  OUTLINED_FUNCTION_11();
  v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v32);
  v43 = sub_18F117248(v42);
  sub_18F11F0A0(v37, v38);
  v44 = OUTLINED_FUNCTION_13_34(v38);
  if (v45)
  {
    (*(v22 + 8))(v60, v56);
    sub_18F1121C4(v37);
    v46 = OUTLINED_FUNCTION_31_1();
    v47(v46);
    sub_18F1121C4(v38);
    v48 = 0;
  }

  else
  {
    v48 = sub_18F117248(v44);
    (*(v22 + 8))(v60, v56);
    sub_18F1121C4(v37);
    v49 = *(v34 + 8);
    v50 = OUTLINED_FUNCTION_31_1();
    v49(v50);
    (v49)(v38, v32);
  }

  v51 = v55;
  *v55 = v43;
  v51[1] = v48;
  v51[2] = 0;
  v51[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v51, v59);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2EB1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_18F2EB204(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F5218AC();

  v4 = [v2 initFileURLWithPath_];

  return v4;
}

void sub_18F2EB30C(uint64_t a1)
{
  if (!qword_1ED6FDED0)
  {
    sub_18F0F21A8(255, &qword_1ED6FEFA8, 0x1E69AC9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD59A0, &qword_18F554518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470, &unk_18F53FB60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FDED0);
    }
  }
}

void sub_18F2EB3C0(uint64_t a1)
{
  if (!qword_1ED6FDED8)
  {
    sub_18F0F21A8(255, &qword_1ED6FDEE0, 0x1E69AC9D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD59A8, &qword_18F554520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470, &unk_18F53FB60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FDED8);
    }
  }
}

uint64_t sub_18F2EB474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDialog.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18F2EB4D8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = v7;
  if (a4)
  {
    v12 = sub_18F5218AC();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_18F5218AC();

  v14 = [v9 *a7];

  return v14;
}

id sub_18F2EB598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = sub_18F5218AC();

  v10 = sub_18F520BEC();
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  v11 = sub_18F5216AC();

  v12 = sub_18F5218AC();

  v13 = [v7 initWithIdentifier:v9 templateDirectoryURL:v10 parameters:v11 localeIdentifier:v12];

  v14 = sub_18F520C8C();
  (*(*(v14 - 8) + 8))(a3, v14);
  return v13;
}

id sub_18F2EB6C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = sub_18F5218AC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = sub_18F5218AC();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = sub_18F5218AC();

LABEL_8:
  v14 = [v7 initWithType:v11 title:a3 value:v12 format:v13];

  return v14;
}

id sub_18F2EB7AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_18F0F21A8(0, &qword_1EACD59C8, 0x1E69AC8C8);
  v9 = sub_18F521C8C();

  if (a3)
  {
    v10 = sub_18F5218AC();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_18F5218AC();

  v12 = [v6 initWithNLGParams:v9 options:v10 fallbackDialog:a4 localeIdentifier:v11];

  return v12;
}

unint64_t sub_18F2EB8A4()
{
  result = qword_1EACCDE80;
  if (!qword_1EACCDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD59D0, &qword_18F554540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDE80);
  }

  return result;
}

uint64_t sub_18F2EB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  sub_18F2C3548(a1, v18 - v9);
  v11 = sub_18F521EFC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_18F0EF148(v10, &qword_1EACD0418, &qword_18F54AFB0);
  }

  else
  {
    sub_18F521EEC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_18F521E1C();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_18F2EBAC8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 comparisons];
    sub_18F0F21A8(0, &unk_1EACD0F70, 0x1E69AC768);
    v3 = sub_18F521CAC();

    return v3;
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18F53F7E0;
    *(v7 + 32) = v6;
    v8 = v0;
    return v7;
  }
}

uint64_t sub_18F2EBBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F2EBBEC()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v0[5] + 8);

  static EntityQuery._identifier.getter(v1, v2);
  sub_18F164FAC();
  v4 = v3;

  v5 = v4;
  v0[6] = v4;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8_38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_18F521DBC();
  v10 = swift_task_alloc();
  v0[7] = v10;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v11;
  *v11 = v12;
  v11[1] = sub_18F2EBF38;
  OUTLINED_FUNCTION_8_38();

  return MEMORY[0x1EEE6DD58](v13, v14, v15, v16, v17, v18, v10, TupleTypeMetadata2);
}

uint64_t sub_18F2EBF38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2EC07C()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F2EC0E0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2EC13C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 160) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v8 = *(v2 + 8);
  *(v0 + 64) = v8;
  *(v0 + 72) = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 80) = AssociatedTypeWitness;
  *(v0 + 88) = *(AssociatedTypeWitness - 8);
  *(v0 + 96) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F2EC224()
{
  OUTLINED_FUNCTION_29();
  v21 = v0;
  v1 = sub_18F2EBAC8();
  v0[13] = v1;
  if (qword_1ED6FE320 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_1ED6FE320);
  }

  v2 = v0[5];
  v3 = sub_18F52165C();
  v0[14] = __swift_project_value_buffer(v3, qword_1ED707748);
  v4 = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F52163C();
  v6 = sub_18F52223C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_18F52307C();
    v10 = sub_18F11897C(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_18F0F21A8(0, &unk_1EACD0F70, 0x1E69AC768);
    v12 = MEMORY[0x193ADB2B0](v1, v11);
    v14 = sub_18F11897C(v12, v13, &v20);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18F0E9000, v5, v6, "Evaluating property query: %s with comparisons: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_18F2EC450;
  v17 = v0[6];
  v18 = v0[7];

  return sub_18F2EBBBC(v15, v1, v16, v17, v18);
}

uint64_t sub_18F2EC450()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F2EC558()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = sub_18F383EC8();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v3;
  *v3 = v4;
  v3[1] = sub_18F2EC640;
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);

  return sub_18F383EF4(v6, v5, v1, v9, v10, v2 & 1, v7, v8);
}

uint64_t sub_18F2EC640()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2EC75C()
{
  OUTLINED_FUNCTION_29();
  v18 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (*(AssociatedConformanceWitness + 40))(v3, AssociatedConformanceWitness);
  (*(v2 + 8))(v1, v3);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F52163C();
  v7 = sub_18F52223C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = MEMORY[0x193ADB2B0](v5, AssociatedTypeWitness);
    v13 = v12;

    v14 = sub_18F11897C(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_18F0E9000, v6, v7, "Property query completed with %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  v15 = v0[1];

  return v15(v5);
}

uint64_t sub_18F2EC948()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2EC9AC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2ECA08()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 88) = v5;
  *(v0 + 16) = v6;
  *(v0 + 56) = *(v1 - 8);
  *(v0 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2ECAC0()
{
  OUTLINED_FUNCTION_69();
  (*(*(*(v0 + 48) + 8) + 40))();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_18F2ECB88;

  return sub_18F2EC13C();
}

uint64_t sub_18F2ECB88(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;
  *(v5 + 80) = v1;

  (*(v4[7] + 8))(v4[8], v4[5]);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = v7[1];

    return v11(a1);
  }
}

uint64_t sub_18F2ECD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2ECDD0, 0, 0);
}

uint64_t sub_18F2ECDD0()
{
  v1 = *(v0 + 72);
  v27 = *(v0 + 80);
  v2 = sub_18F111F70(v1);
  v9 = v2;
  for (i = 0; v9 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x193ADBE10](i, *(v0 + 72));
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v2 = *(v1 + 32 + 8 * i);
    }

    v11 = v2;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return MEMORY[0x1EEE6DB28](v2, v3, v4, v5, v6, v7, WitnessTable);
    }

    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = sub_18F521EFC();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v13;
    v17[6] = v11;
    v17[7] = v15;
    v17[8] = i;
    swift_getAssociatedTypeWitness();
    v18 = v27;
    OUTLINED_FUNCTION_8_38();
    swift_getTupleTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
    v19 = sub_18F521FAC();
    sub_18F2EB908(v12, &unk_18F5545E0, v17, v19);
    v2 = sub_18F0EF148(v12, &qword_1EACD0418, &qword_18F54AFB0);
  }

  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  *(v0 + 24) = **(v0 + 64);
  *(v0 + 112) = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  *(v0 + 32) = sub_18F52168C();
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
  v24 = sub_18F521FAC();
  v25 = sub_18F521DBC();
  *(v0 + 136) = v25;
  WitnessTable = swift_getWitnessTable();
  *v23 = v0;
  v23[1] = sub_18F2ED108;
  v4 = &unk_18F5545F8;
  v2 = (v0 + 16);
  v3 = v0 + 32;
  v5 = v22;
  v6 = v24;
  v7 = v25;

  return MEMORY[0x1EEE6DB28](v2, v3, v4, v5, v6, v7, WitnessTable);
}

uint64_t sub_18F2ED108()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2ED20C()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v15 = v0[7];
  v0[5] = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  OUTLINED_FUNCTION_2_66();
  swift_getWitnessTable();
  v6 = sub_18F521BDC();

  v0[6] = v6;
  v7 = swift_task_alloc();
  *v7 = v4;
  v7[1] = v3;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_18F10C138(sub_18F2EE870, v9, v1, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  *v15 = v12;

  OUTLINED_FUNCTION_71();

  return v13();
}

uint64_t sub_18F2ED3BC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2ED424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a1;
  v8[16] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_18F520B3C();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2ED56C, 0, 0);
}

uint64_t sub_18F2ED56C()
{
  v63 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = [*(v0 + 128) propertyIndex];
  v4 = [v3 integerValue];

  v5 = *(v2 + 24);
  v5(&v61, v1, v2);
  v6 = v62;

  if (v4 >= v6)
  {
    v20 = static EntityQuery._identifier.getter(*(v0 + 152), *(*(v0 + 160) + 8));
    v22 = v21;
    sub_18F2EE894();
    swift_allocError();
    *v23 = v4;
    *(v23 + 8) = v20;
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 136);
    sub_18F520ACC();
    if (v7)
    {
      v8 = *(v0 + 136);
      v9 = [v8 parameters];
      sub_18F0F21A8(0, &qword_1EACD1450, 0x1E69AC990);
      v10 = sub_18F521CAC();

      v11 = sub_18F111F70(v10);

      if (v4 >= v11)
      {
      }

      else
      {
        v12 = [v8 parameters];
        v13 = sub_18F521CAC();

        sub_18F1C3ED4();
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x193ADBE10](v4, v13);
        }

        else
        {
          v14 = *(v13 + 8 * v4 + 32);
        }

        v15 = v14;
        v16 = *(v0 + 208);
        v58 = *(v0 + 216);
        v18 = *(v0 + 192);
        v17 = *(v0 + 200);

        v19 = [v15 localizedTitle];

        sub_18F2EF744();
        (*(v17 + 8))(v58, v18);
        (*(v17 + 32))(v58, v16, v18);
      }
    }

    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    v26 = *(v0 + 152);
    v27 = *(v0 + 128);
    v5(v60, v26, v25);
    v61 = v60[0];
    v62 = v60[1];
    v28 = *(v25 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 224) = AssociatedTypeWitness;
    v59 = v28;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    Properties = type metadata accessor for EntityQueryProperties(0, AssociatedTypeWitness, v24, AssociatedConformanceWitness);
    *(v0 + 232) = EntityQueryProperties.subscript.getter(v4, Properties, v32, v33);

    *(v0 + 104) = sub_18F341344();
    v34 = swift_task_alloc();
    v34[2] = v26;
    v34[3] = v25;
    v34[4] = v27;
    type metadata accessor for AnyPropertyQueryComparator(255, AssociatedTypeWitness, v24, v35);
    sub_18F521DBC();
    OUTLINED_FUNCTION_2_66();
    swift_getWitnessTable();
    sub_18F521BAC();

    v36 = *(v0 + 24);
    *(v0 + 240) = v36;
    if (v36)
    {
      v37 = *(v0 + 128);
      v39 = *(v0 + 32);
      v38 = *(v0 + 40);
      *(v0 + 248) = v38;
      v40 = *(v0 + 16);
      v41 = [v37 value];
      *(v0 + 72) = sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
      *(v0 + 48) = v41;
      v42 = swift_task_alloc();
      *(v0 + 256) = v42;
      *v42 = v0;
      v42[1] = sub_18F2EDB10;
      v43 = *(v0 + 216);

      return sub_18F1F7FB8(v0 + 48, v43, v40, v36, v39, v38);
    }

    v45 = *(v0 + 216);
    v46 = *(v0 + 192);
    v47 = *(v0 + 200);
    v48 = *(v0 + 152);
    v49 = *(v0 + 128);
    v50 = [v49 type];
    v51 = [v49 propertyIndex];
    v52 = [v51 integerValue];

    v53 = static EntityQuery._identifier.getter(v48, v59);
    v55 = v54;
    sub_18F2EE894();
    swift_allocError();
    *v56 = v50;
    *(v56 + 8) = v52;
    *(v56 + 16) = v53;
    *(v56 + 24) = v55;
    *(v56 + 32) = 1;
    swift_willThrow();

    (*(v47 + 8))(v45, v46);
  }

  OUTLINED_FUNCTION_71();

  return v57();
}

uint64_t sub_18F2EDB10()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_85();
  v11 = v10;
  OUTLINED_FUNCTION_1_0();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v14 = v13;
  v11[33] = v0;

  if (!v0)
  {
    v11[34] = v3;
    v11[35] = v5;
    v11[36] = v7;
    v11[37] = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v11 + 6);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_18F2EDC48()
{
  v1 = *(v0 + 240);
  v11 = *(v0 + 216);
  v2 = *(v0 + 200);
  v10 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v12 = *(v0 + 144);
  v6 = *(v0 + 120);
  sub_18F122278(*(v0 + 296));

  (*(v2 + 8))(v11, v10);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  *v6 = v12;
  (*(v3 + 32))(&v6[v7], v4, v5);

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F2EDDA4()
{
  v1 = v0[33];
  v2 = v0[30];
  v11 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  swift_getErrorValue();
  v5 = sub_18F522E8C();
  v7 = v6;
  sub_18F2EE894();
  swift_allocError();
  *v8 = v5;
  *(v8 + 8) = v7;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 2;
  swift_willThrow();

  (*(v4 + 8))(v11, v3);

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F2EDEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4[5] = TupleTypeMetadata2;
  v4[6] = *(TupleTypeMetadata2 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2EDFEC, 0, 0);
}

uint64_t sub_18F2EDFEC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  (*(v0[6] + 16))(v1, v0[3], v3);
  v5 = *(v3 + 48);
  *v2 = *v1;
  (*(*(v4 - 8) + 32))(&v2[v5], &v1[v5], v4);
  sub_18F521DBC();
  sub_18F521D8C();

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F2EE0E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x1E69E77B0];
  v5 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  (*(v6 + 16))(v14 - v10);
  v12 = *(v5 + 48);
  *v9 = *v11;
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(&v9[v12], &v11[v12]);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_18F2EE298()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      OUTLINED_FUNCTION_7_40();
      sub_18F52279C();
      MEMORY[0x193ADB000](0xD000000000000033, 0x800000018F5296A0);
      v7 = v1;
      v8 = v2;
      goto LABEL_7;
    }

    v4 = *(v0 + 24);
    OUTLINED_FUNCTION_7_40();
    sub_18F52279C();

    v10 = 0xD000000000000010;
    v5 = sub_18F522C9C();
    MEMORY[0x193ADB000](v5);

    MEMORY[0x193ADB000](544108320, 0xE400000000000000);
    MEMORY[0x193ADB000](v3, v4);
    MEMORY[0x193ADB000](0xD000000000000012, 0x800000018F529700);
    v6 = sub_18F1F753C(v1);
  }

  else
  {
    OUTLINED_FUNCTION_7_40();
    sub_18F52279C();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    v10 = v2;
    MEMORY[0x193ADB000](0xD000000000000027, 0x800000018F529720);
    v6 = sub_18F522C9C();
  }

  MEMORY[0x193ADB000](v6);

  v7 = 46;
  v8 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x193ADB000](v7, v8);
  return v10;
}

uint64_t sub_18F2EE46C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32) && v4 == *a2)
    {
      if (v5 != a2[1] || v6 != a2[2])
      {
        return sub_18F522D5C();
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32) == 2)
    {
      if (v4 != *a2 || v5 != a2[1])
      {
        return sub_18F522D5C();
      }

      return 1;
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  if (v4 != *a2 || v5 != a2[1])
  {
    return 0;
  }

  if (v6 != a2[2] || a1[3] != a2[3])
  {
    return sub_18F522D5C();
  }

  return 1;
}

uint64_t sub_18F2EE530(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_18F2EE94C;

  return sub_18F2ECD2C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_18F2EE5F4()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_18F2EE6C8;

  return sub_18F2ED424(v3, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_18F2EE6C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2EE7AC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_18F2EE94C;

  return sub_18F2EDEE8(a1, a2, v7, v6);
}

unint64_t sub_18F2EE894()
{
  result = qword_1EACD59D8;
  if (!qword_1EACD59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD59D8);
  }

  return result;
}

BOOL sub_18F2EE8E8(id *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  return v3 == [v2 type];
}

uint64_t sub_18F2EE974()
{
  sub_18F521EBC();
  *(v0 + 24) = sub_18F521EAC();
  v2 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F2EEA08, v2, v1);
}

uint64_t sub_18F2EEA08()
{

  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F3E71C4();

  if (v1)
  {
    [v1 _linkWithAuxiliaryManager_];
  }

  else
  {
    sub_18F2EEF4C();
    swift_allocError();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18F2EEBA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18F2EEC60;

  return AppContext.linkUndoManager(_:)(v6);
}

uint64_t sub_18F2EEC60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_18F520A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_18F2EEE20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350, &unk_18F5407B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = sub_18F5218DC();
  *(inited + 40) = v1;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x800000018F5297A0;
  return sub_18F5216CC();
}

uint64_t sub_18F2EEEC8(uint64_t a1)
{
  v2 = sub_18F2EF0A8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F2EEF04(uint64_t a1)
{
  v2 = sub_18F2EF0A8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F2EEF4C()
{
  result = qword_1EACD59E0;
  if (!qword_1EACD59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD59E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkUndoManagerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F2EF054()
{
  result = qword_1EACD59E8;
  if (!qword_1EACD59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD59E8);
  }

  return result;
}

unint64_t sub_18F2EF0A8()
{
  result = qword_1EACD59F0[0];
  if (!qword_1EACD59F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD59F0);
  }

  return result;
}

uint64_t sub_18F2EF0FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F10DF80;

  return sub_18F2EEBA0(v2, v3, v4);
}

uint64_t sub_18F2EF1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  v12 = *(a4 + 16);
  *v11 = v13;
  v11[1] = sub_18F13B9C4;

  return sub_18F354850(a1, a2, a3, v12, a5);
}

uint64_t sub_18F2EF290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18F13B9C4;

  return sub_18F2EF1D0(a1, a2, a3, a4, v10);
}

uint64_t sub_18F2EF358(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2EF394(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F2EF404(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F2EF540(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F2EF744()
{
  if ([v0 localizedStringResource])
  {
    sub_18F118258();
    return sub_18F520A9C();
  }

  else
  {
    result = OUTLINED_FUNCTION_0_79();
    __break(1u);
  }

  return result;
}

uint64_t _AssistantUniqueEntityExample.init<A>(get:phrases:)@<X0>(uint64_t (*a1)(void)@<X1>, void *a2@<X8>)
{
  *a2 = a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400, &qword_18F545B30);
  result = sub_18F5216CC();
  a2[1] = result;
  return result;
}

uint64_t _AssistantUniqueEntityExample.Phrase.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  a4[1] = a1;
  a4[2] = a2;
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  return result;
}

double _AssistantUniqueEntityExample.Phrase.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  _AssistantUniqueEntityExample.Phrase.init(_:)(a1, a2, &v7);
  result = *&v7;
  v6 = v8;
  *a4 = v7;
  *(a4 + 16) = v6;
  return result;
}

__n128 _AssistantUniqueEntityExample.Phrase.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _AssistantUniqueEntityExample.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  a4[1] = 0;
  a4[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

uint64_t _AssistantUniqueEntityExample.Phrase.StringInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_80(a1, a2);
  sub_18F521D7C();
  v4 = sub_18F522C9C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  swift_allocObject();
  v5 = sub_18F521CDC();
  *v6 = v2;
  sub_18F129FD4(v5, v3);

  sub_18F521D5C();
}

uint64_t _AssistantUniqueEntityExample.Phrase.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_80(a1, a2);
  sub_18F521D7C();
  v4 = sub_18F522C9C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  swift_allocObject();
  v5 = sub_18F521CDC();
  *v6 = v2;
  sub_18F129FD4(v5, v3);

  sub_18F521D5C();
}

uint64_t _AssistantUniqueEntityExample.Value.init<A>(for:builder:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_18F2328C8();
  a2[1] = v4;
  v5 = a1();

  a2[2] = v5;
  return result;
}