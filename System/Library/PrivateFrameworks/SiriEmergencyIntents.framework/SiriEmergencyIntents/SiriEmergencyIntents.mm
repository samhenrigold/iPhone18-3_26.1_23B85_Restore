unint64_t NLConstants.asNamespace.getter(unsigned __int8 a1)
{
  sub_266AEEC38();

  v1 = sub_266AEEB58();
  v3 = v2;

  MEMORY[0x26D5E9DD0](v1, v3);

  return 0xD000000000000012;
}

unint64_t NLConstants.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x636E656772656D65;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000012;
  if (a1 == 4)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (a1 == 1)
  {
    v4 = 0x636E656772656D65;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266ADBB00(uint64_t a1)
{
  sub_266AEEB78();
}

unint64_t sub_266ADBC04@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::NLConstants_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents11NLConstantsO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_266ADBC34(uint64_t *a1@<X8>)
{
  v2 = 0x636E656772656D65;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x8000000266AF0520;
  v6 = 0xD000000000000015;
  v7 = 0x8000000266AF0540;
  v8 = 0xD000000000000012;
  if (v3 == 4)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0x8000000266AF0560;
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006272655679;
  v10 = 0xD000000000000012;
  if (v3 == 1)
  {
    v10 = 0x636E656772656D65;
  }

  else
  {
    v9 = 0x8000000266AF0500;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

uint64_t NLv4IdentifierNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000013;
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54746361746E6F63;
    v2 = 0x707954656E6F6870;
    if (a1 != 7)
    {
      v2 = 0x614E746E65746E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_266ADBE5C()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266ADE300(v3, v1);
  return sub_266AEED38();
}

uint64_t sub_266ADBEAC(uint64_t a1)
{
  v2 = *v1;
  sub_266AEED18();
  sub_266ADE300(v4, v2);
  return sub_266AEED38();
}

unint64_t sub_266ADBEF0@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::NLv4IdentifierNamespace_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents23NLv4IdentifierNamespaceO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_266ADBF20@<X0>(uint64_t *a1@<X8>)
{
  result = NLv4IdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t NLv4EntityAttributeName.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x6F69746175746973;
}

uint64_t sub_266ADBFA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6F69746175746973;
    v3 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6F69746175746973;
    v7 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266AEECB8();
  }

  return v11 & 1;
}

uint64_t sub_266ADC098()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADC134(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266ADC1BC(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

unint64_t sub_266ADC254@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::NLv4EntityAttributeName_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents23NLv4EntityAttributeNameO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_266ADC284(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6F69746175746973;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s20SiriEmergencyIntents11NLConstantsO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t _s20SiriEmergencyIntents23NLv4IdentifierNamespaceO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t _s20SiriEmergencyIntents23NLv4EntityAttributeNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266ADC3D0()
{
  result = qword_2800BD570;
  if (!qword_2800BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD570);
  }

  return result;
}

unint64_t sub_266ADC428()
{
  result = qword_2800BD578;
  if (!qword_2800BD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD578);
  }

  return result;
}

unint64_t sub_266ADC480()
{
  result = qword_2800BD580;
  if (!qword_2800BD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLConstants(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLv4IdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLv4IdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLv4EntityAttributeName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLv4EntityAttributeName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SiriEmergencyIntents::EmergencyCallIntent __swiftcall EmergencyCallIntent.init(emergencyOrganization:emergencySituation:isDirectCall:)(SiriEmergencyIntents::EmergencyOrganization_optional emergencyOrganization, SiriEmergencyIntents::EmergencySituation_optional emergencySituation, Swift::Bool isDirectCall)
{
  if (isDirectCall)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return (v3 & 0xFFFF0000 | (emergencySituation.value << 8) | emergencyOrganization.value);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyCallIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyCallIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

Swift::String __swiftcall EmergencyConfirmation.toPromptResponseOption()()
{
  v1 = v0;
  sub_266AEEC38();

  v2 = sub_266AEEB58();
  MEMORY[0x26D5E9DD0](v2);

  MEMORY[0x26D5E9DD0](0x2E65756C61562ELL, 0xE700000000000000);
  if (v1)
  {
    v3 = 28526;
  }

  else
  {
    v3 = 7562617;
  }

  if (v1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x26D5E9DD0](v3, v4);

  v5 = 0xD000000000000012;
  v6 = 0x8000000266AF1110;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t EmergencyConfirmation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

SiriEmergencyIntents::EmergencyConfirmation_optional __swiftcall EmergencyConfirmation.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_EmergencyConfirmation_no;
  }

  else
  {
    v2.value = SiriEmergencyIntents_EmergencyConfirmation_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266ADCBB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 28526;
  }

  else
  {
    v3 = 7562617;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 28526;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

unint64_t sub_266ADCC50()
{
  result = qword_2800BD588;
  if (!qword_2800BD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD588);
  }

  return result;
}

uint64_t sub_266ADCCA4()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADCD14(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266ADCD70(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADCDDC@<X0>(char *a2@<X8>)
{
  v3 = sub_266AEEC78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_266ADCE3C(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 28526;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for EmergencyConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyConfirmation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t InstrumentationTask.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x65726953706F7453;
  }

  else
  {
    return 0x7269537472617453;
  }
}

SiriEmergencyIntents::InstrumentationTask_optional __swiftcall InstrumentationTask.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_InstrumentationTask_StopSiren;
  }

  else
  {
    v2.value = SiriEmergencyIntents_InstrumentationTask_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266ADD058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65726953706F7453;
  }

  else
  {
    v3 = 0x7269537472617453;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x65726953706F7453;
  }

  else
  {
    v5 = 0x7269537472617453;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

unint64_t sub_266ADD10C()
{
  result = qword_2800BD590;
  if (!qword_2800BD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD590);
  }

  return result;
}

uint64_t sub_266ADD160()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD1EC(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266ADD264(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD2EC@<X0>(char *a2@<X8>)
{
  v3 = sub_266AEEC78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_266ADD34C(uint64_t *a1@<X8>)
{
  v2 = 0x7269537472617453;
  if (*v1)
  {
    v2 = 0x65726953706F7453;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_266ADD3A8(unsigned __int8 a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD4BC(unsigned __int8 a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t DirectInvocationURI.payloadKey.getter(unsigned __int8 a1)
{
  v2 = sub_266AEEAC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 5)
    {
      return 0xD000000000000012;
    }

    if (a1 == 3)
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    if (a1 == 1)
    {
      return 0x614E746E65746E69;
    }

    if (a1 == 2)
    {
      return 0x72506E6F74747562;
    }
  }

  v7 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v3 + 16))(v5, v7, v2);
  v8 = sub_266AEEAB8();
  v9 = sub_266AEEBC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0xD000000000000034;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    if (a1)
    {
      if (a1 == 4)
      {
        v13 = "emergency.callEmergencyResource";
      }

      else
      {
        v10 = 0xD000000000000035;
        v13 = "emergency.startSiren";
      }
    }

    else
    {
      v13 = "StartSiren";
    }

    v14 = sub_266ADDBA0(v10, v13 | 0x8000000000000000, &v15);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_266ADA000, v8, v9, "Undefined payloadKey for this DirectInvocationURI: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5EA2D0](v12, -1, -1);
    MEMORY[0x26D5EA2D0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

unint64_t DirectInvocationURI.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000034;
  v2 = 0xD00000000000003FLL;
  if (a1 == 4)
  {
    v3 = 0xD000000000000034;
  }

  else
  {
    v3 = 0xD000000000000035;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000032;
  if (a1 != 1)
  {
    v4 = 0xD000000000000035;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266ADD924(uint64_t a1)
{
  sub_266AEEB78();
}

unint64_t sub_266ADD9FC@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::DirectInvocationURI_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents19DirectInvocationURIO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_266ADDA2C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000034;
  v3 = *v1;
  v4 = "StartSiren";
  v5 = "emergency.buttonPress";
  v6 = 0xD00000000000003FLL;
  v7 = "emergency.callEmergencyResource";
  if (v3 == 4)
  {
    v8 = 0xD000000000000034;
  }

  else
  {
    v8 = 0xD000000000000035;
  }

  if (v3 != 4)
  {
    v7 = "emergency.startSiren";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "Phone.StartAudioCall";
  v10 = 0xD000000000000032;
  if (v3 != 1)
  {
    v10 = 0xD000000000000035;
    v9 = "socialConversation";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t sub_266ADDAD0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_266ADDB44(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_266ADDBA0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_266ADDBA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266ADDC6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_266ADE258(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266ADDC6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266ADDD78(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_266AEEC58();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_266ADDD78(uint64_t a1, unint64_t a2)
{
  v3 = sub_266ADDDC4(a1, a2);
  sub_266ADDEF4(&unk_287842B48);
  return v3;
}

void *sub_266ADDDC4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_266ADDFE0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_266AEEC58();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_266AEEB98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266ADDFE0(v10, 0);
        result = sub_266AEEC28();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_266ADDEF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_266ADE054(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266ADDFE0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5A0, &qword_266AEF708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_266ADE054(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5A0, &qword_266AEF708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_266ADE148(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t _s20SiriEmergencyIntents19DirectInvocationURIO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266ADE1F4()
{
  result = qword_2800BD598;
  if (!qword_2800BD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD598);
  }

  return result;
}

uint64_t sub_266ADE258(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_266ADE300(uint64_t a1, unsigned __int8 a2)
{
  sub_266AEEB78();
}

uint64_t sub_266ADE474(uint64_t a1, unsigned __int8 a2)
{
  sub_266AEEB78();
}

uint64_t sub_266ADE598(uint64_t a1, unsigned __int8 a2)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADE6D0(uint64_t a1, unsigned __int8 a2)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADE7E0(uint64_t a1, unsigned __int8 a2)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t EmergencyVerb.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819042147;
  v2 = 0x736972616D6D7573;
  if (a1 != 6)
  {
    v2 = 0x6978456B63656863;
  }

  v3 = 0x656C62616E65;
  if (a1 != 4)
  {
    v3 = 0x656C6261736964;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6E6F69746361;
  if (a1 != 2)
  {
    v4 = 0x627265566F6ELL;
  }

  if (a1)
  {
    v1 = 1684957542;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266ADE9E0@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::EmergencyVerb_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents0B4VerbO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_266ADEA10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1819042147;
  v5 = 0xE900000000000065;
  v6 = 0x736972616D6D7573;
  if (v2 != 6)
  {
    v6 = 0x6978456B63656863;
    v5 = 0xEE0065636E657473;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (v2 != 4)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6F69746361;
  if (v2 != 2)
  {
    v9 = 0x627265566F6ELL;
  }

  if (*v1)
  {
    v4 = 1684957542;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t _s20SiriEmergencyIntents0B4VerbO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t _s20SiriEmergencyIntents0B4VerbO4from07usoTaskD0ACSgSSSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 8;
  }

  if (a1 == 1819042147 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x627265566F6ELL && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x656C62616E65 && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x736972616D6D7573 && a2 == 0xE900000000000065 || (sub_266AEECB8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6978456B63656863 && a2 == 0xEE0065636E657473 || (sub_266AEECB8() & 1) != 0)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

unint64_t sub_266ADEDA8()
{
  result = qword_2800BD5A8;
  if (!qword_2800BD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyVerb(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EmergencyDialogAct.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for EmergencyDialogAct(uint64_t a1)
{
  result = qword_2800BD610;
  if (!qword_2800BD610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmergencyDialogAct.init(userParse:nlv4MigrationFeatureFlagIsEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B0, &qword_266AEF850);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B8, &qword_266AEF858);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5C0, &qword_266AEF860);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5C8, &qword_266AEF868);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5D0, &qword_266AEF870);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5D8, &qword_266AEF878);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v22 = sub_266AEE778();
  v50 = *(v22 - 8);
  v23 = *(v50 + 16);
  v56 = a3;
  v23(a3, a1, v22);
  v24 = swift_allocObject();
  v57 = a2 & 1;
  *(v24 + 16) = a2;
  sub_266AEEA58();
  v25 = sub_266AEEA68();
  (*(v19 + 8))(v21, v18);
  v25(&v59, a1);

  v26 = v59;
  v27 = type metadata accessor for EmergencyDialogAct(0);
  v28 = v56;
  *(v56 + v27[6]) = v26;
  *(swift_allocObject() + 16) = v57;
  sub_266AEEA58();
  v29 = sub_266AEEA68();
  (*(v15 + 8))(v17, v14);
  v29((v58 + 4), a1);

  *(v28 + v27[7]) = BYTE4(v58[0]);
  *(swift_allocObject() + 16) = v57;
  v30 = v43;
  sub_266AEEA58();
  v31 = v45;
  v32 = sub_266AEEA68();
  (*(v44 + 8))(v30, v31);
  v32((v58 + 3), a1);

  *(v28 + v27[8]) = BYTE3(v58[0]);
  v33 = v46;
  sub_266AEEA58();
  v34 = v48;
  v35 = sub_266AEEA68();
  (*(v47 + 8))(v33, v34);
  v35((v58 + 2), a1);

  *(v28 + v27[9]) = BYTE2(v58[0]);
  v36 = v49;
  sub_266AEEA58();
  v37 = v52;
  v38 = sub_266AEEA68();
  (*(v51 + 8))(v36, v37);
  v38((v58 + 1), a1);

  *(v28 + v27[5]) = BYTE1(v58[0]);
  *(swift_allocObject() + 16) = v57;
  v39 = v53;
  sub_266AEEA58();
  v40 = v55;
  v41 = sub_266AEEA68();
  (*(v54 + 8))(v39, v40);
  v41(v58, a1);

  LOBYTE(v41) = v58[0];
  result = (*(v50 + 8))(a1, v22);
  *(v28 + v27[10]) = v41;
  return result;
}

uint64_t sub_266ADF8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmergencyDialogAct.description.getter()
{
  BYTE8(v9) = 0;
  sub_266AEEC38();
  MEMORY[0x26D5E9DD0](0xD000000000000020, 0x8000000266AF1150);
  v1 = type metadata accessor for EmergencyDialogAct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
  v2 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v2);

  MEMORY[0x26D5E9DD0](0xD000000000000011, 0x8000000266AF1180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E8, &qword_266AEF888);
  v3 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v3);

  MEMORY[0x26D5E9DD0](0x69727474412D200ALL, 0xEE00203A65747562);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5F0, &qword_266AEF890);
  v4 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v4);

  MEMORY[0x26D5E9DD0](0xD000000000000011, 0x8000000266AF11A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5F8, &qword_266AEF898);
  v5 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v5);

  MEMORY[0x26D5E9DD0](0x3A627265562D200ALL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD600, &qword_266AEF8A0);
  v6 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v6);

  MEMORY[0x26D5E9DD0](0x72657665532D200ALL, 0xED0000203A797469);
  *&v9 = *(v0 + *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD608, &qword_266AEF8A8);
  v7 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v7);

  MEMORY[0x26D5E9DD0](34, 0xE100000000000000);
  return *(&v9 + 1);
}

uint64_t sub_266ADFCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266AEE778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266ADFDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266AEE778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

void sub_266ADFE78(uint64_t a1)
{
  sub_266AEE778();
  if (v1 <= 0x3F)
  {
    sub_266ADFFD4(319, &qword_2800BD620, &type metadata for EmergencyVerb);
    if (v2 <= 0x3F)
    {
      sub_266ADFFD4(319, &qword_2800BD628, &type metadata for EmergencySituation);
      if (v3 <= 0x3F)
      {
        sub_266ADFFD4(319, &qword_2800BD630, &type metadata for EmergencyOrganization);
        if (v4 <= 0x3F)
        {
          sub_266ADFFD4(319, &qword_2800BD638, &type metadata for EmergencyAttribute);
          if (v5 <= 0x3F)
          {
            sub_266ADFFD4(319, &qword_2800BD640, &type metadata for EmergencyConfirmation);
            if (v6 <= 0x3F)
            {
              sub_266ADFFD4(319, &qword_2800BD648, &type metadata for CrisisSeverity);
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

void sub_266ADFFD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_266AEEBE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_266AE0030@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v40 = a3;
  v6 = sub_266AEEAC8();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B8, &qword_266AEF858);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  if (a2)
  {
    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v43)
    {
      sub_266AEE968();
      if (swift_dynamicCast())
      {
        sub_266AEE998();

        if (*v42)
        {
          v13 = sub_266AEE8B8();

          if (v13)
          {
            v39 = v6;
            v14 = sub_266AEE8A8();
            v38 = sub_266AEDD98(v14, &unk_287842F48);
            v16 = v15;

            if (v16)
            {
              v17 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v38, v16);
              LODWORD(v38) = v17;

              v6 = v39;
              if (v38 != 2)
              {
                goto LABEL_24;
              }
            }

            else
            {

              v6 = v39;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v42);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v43)
    {
      sub_266AEE988();
      if (swift_dynamicCast())
      {
        sub_266AEE8F8();

        if (*v42)
        {
          v19 = sub_266AEE8B8();

          if (v19)
          {
            v39 = v6;
            v20 = sub_266AEE8A8();
            v38 = sub_266AEDD98(v20, &unk_287842F70);
            v22 = v21;

            if (v22)
            {
              v17 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v38, v22);
              LODWORD(v38) = v17;

              v6 = v39;
              if (v38 != 2)
              {
LABEL_24:
                LOBYTE(v27) = v17 & 1;
LABEL_35:
                *v40 = v27;
                return result;
              }
            }

            else
            {

              v6 = v39;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v42);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v43)
    {
      sub_266AEE938();
      if (swift_dynamicCast())
      {
        sub_266AEE848();

        if (*v42)
        {
          v23 = sub_266AEE8B8();

          if (v23)
          {
            v39 = v6;
            v24 = sub_266AEE8A8();
            v38 = sub_266AEDD98(v24, &unk_287842F98);
            v26 = v25;

            if (v26)
            {
              v17 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v38, v26);
              LODWORD(v38) = v17;

              v6 = v39;
              if (v38 != 2)
              {
                goto LABEL_24;
              }
            }

            else
            {

              v6 = v39;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v42);
    }
  }

  sub_266AEE778();
  sub_266AEEA58();
  v28 = sub_266AEEA68();
  (*(v10 + 8))(v12, v9);
  v28(v42, a1);
  if (v3)
  {
    MEMORY[0x26D5EA1E0](v3);
  }

  else
  {

    if (v42[0] <= 3u && !v42[0])
    {

      LOBYTE(v27) = 0;
      goto LABEL_35;
    }

    v29 = sub_266AEECB8();

    LOBYTE(v27) = 0;
    if (v29)
    {
      goto LABEL_35;
    }
  }

  v30 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287842FC0);
  if (v30.value._object)
  {
    result = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0(v30.value._countAndFlagsBits, v30.value._object);
    if ((result - 10) <= 7u)
    {
      v27 = (0xF0u >> (result - 10)) & 1;
      goto LABEL_35;
    }
  }

  v31 = sub_266AEEAA8();
  swift_beginAccess();
  v32 = v41;
  (*(v41 + 16))(v8, v31, v6);
  v33 = sub_266AEEAB8();
  v34 = sub_266AEEBB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_266ADA000, v33, v34, "No EmergencyAttribute found in user parse", v35, 2u);
    MEMORY[0x26D5EA2D0](v35, -1, -1);
  }

  (*(v32 + 8))(v8, v6);
  v36 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D61DF8], v36);
  return swift_willThrow();
}

uint64_t sub_266AE07DC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_266AEEAC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserParse.usoTask.getter() && (v6 = sub_266AEEA48(), v8 = v7, , v9 = _s20SiriEmergencyIntents0B4VerbO4from07usoTaskD0ACSgSSSg_tFZ_0(v6, v8), result = , v9 != 8))
  {
    *a1 = v9;
  }

  else
  {
    v11 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v3 + 16))(v5, v11, v2);
    v12 = sub_266AEEAB8();
    v13 = sub_266AEEBB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266ADA000, v12, v13, "No EmergencyVerb found in user parse", v14, 2u);
      MEMORY[0x26D5EA2D0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v15 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D61DF8], v15);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_266AE0A18@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_30;
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v38)
  {
    sub_266AEE968();
    if (swift_dynamicCast())
    {
      sub_266AEE998();

      if (v37[0])
      {
        v36 = a2;
        v8 = sub_266AEE8A8();
        v9 = sub_266AEDD98(v8, &unk_287843090);
        v11 = v10;

        if (v11)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(v9, v11);

          a2 = v36;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v36;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v37);
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v38)
  {
    sub_266AEE988();
    if (swift_dynamicCast())
    {
      sub_266AEE8F8();

      if (v37[0])
      {
        v36 = a2;
        v13 = sub_266AEE8A8();
        v14 = sub_266AEDD98(v13, &unk_2878430B8);
        v16 = v15;

        if (v16)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(v14, v16);

          a2 = v36;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v36;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v37);
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (!v38)
  {
    sub_266AE2128(v37);
    goto LABEL_23;
  }

  sub_266AEEA08();
  if (swift_dynamicCast())
  {
    sub_266AEE8F8();

    if (v37[0])
    {
      v36 = a2;
      v17 = sub_266AEE8A8();
      v18 = sub_266AEDD98(v17, &unk_2878430E0);
      v20 = v19;

      if (!v20)
      {

        a2 = v36;
        goto LABEL_23;
      }

      v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(v18, v20);

      a2 = v36;
      if (v12 != 4)
      {
LABEL_28:
        result = v12;
LABEL_35:
        *a2 = result;
        return result;
      }
    }
  }

LABEL_23:
  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v38)
  {
    sub_266AEE938();
    if (swift_dynamicCast())
    {
      sub_266AEE848();

      if (v37[0])
      {
        v36 = a2;
        v21 = sub_266AEE8A8();
        v22 = sub_266AEDD98(v21, &unk_287843108);
        v24 = v23;

        if (v24)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(v22, v24);

          a2 = v36;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v36;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v37);
  }

LABEL_30:
  v26 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287843130);
  if (v26.value._object)
  {
    result = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(v26.value._countAndFlagsBits, v26.value._object);
    if (result != 4)
    {
      goto LABEL_35;
    }
  }

  v27 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287843158);
  if (v27.value._object)
  {
    v28 = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0(v27.value._countAndFlagsBits, v27.value._object) - 10;
    if (v28 < 0xCu)
    {
      result = byte_266AEF932[v28];
      goto LABEL_35;
    }
  }

  v29 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v7, v29, v4);
  v30 = sub_266AEEAB8();
  v31 = sub_266AEEBB8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_266ADA000, v30, v31, "No EmergencyOrganization found in user parse", v32, 2u);
    MEMORY[0x26D5EA2D0](v32, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v33 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D61DF8], v33);
  return swift_willThrow();
}

uint64_t sub_266AE1038@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE9B8();
      if (swift_dynamicCast())
      {
        sub_266AEE8C8();

        if (v41[0])
        {
          v40 = a2;
          v8 = sub_266AEE8A8();
          v9 = sub_266AEDD98(v8, &unk_2878434E8);
          v11 = v10;

          if (v11)
          {
            v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v9, v11);

            a2 = v40;
            if (v12 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE9B8();
      if (swift_dynamicCast())
      {
        sub_266AEE8C8();

        if (v41[0])
        {
          v40 = a2;
          v14 = sub_266AEE8A8();
          v15 = sub_266AEDD98(v14, &unk_287843510);
          v17 = v16;

          if (v17)
          {
            v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v15, v17);

            a2 = v40;
            if (v12 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE948();
      if (swift_dynamicCast())
      {
        sub_266AEE9A8();

        if (v41[0])
        {
          v40 = a2;
          v18 = sub_266AEE8A8();
          v19 = sub_266AEDD98(v18, &unk_287843538);
          v21 = v20;

          if (v21)
          {
            v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v19, v21);

            a2 = v40;
            if (v12 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE978();
      if (swift_dynamicCast())
      {
        sub_266AEE9A8();

        if (v41[0])
        {
          v40 = a2;
          v22 = sub_266AEE8A8();
          v23 = sub_266AEDD98(v22, &unk_287843560);
          v25 = v24;

          if (v25)
          {
            v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v23, v25);

            a2 = v40;
            if (v12 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE958();
      if (swift_dynamicCast())
      {
        sub_266AEE848();

        if (v41[0])
        {
          v40 = a2;
          v26 = sub_266AEE8A8();
          v27 = sub_266AEDD98(v26, &unk_287843588);
          v29 = v28;

          if (v29)
          {
            v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v27, v29);

            a2 = v40;
            if (v12 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }
  }

  v30 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_2878435B0);
  if (v30.value._object)
  {
    v12 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v30.value._countAndFlagsBits, v30.value._object);

    if (v12 != 35)
    {
      goto LABEL_46;
    }
  }

  v31 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_2878435D8);
  if (v31.value._object)
  {
    v32 = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0(v31.value._countAndFlagsBits, v31.value._object);
    if (v32 != 23)
    {
      result = _s20SiriEmergencyIntents0B9SituationO14catiIntentNameACSgAA010CATIIntentG0O_tcfC_0(v32);
      if (result != 35)
      {
        v12 = result;
LABEL_46:
        *a2 = v12;
        return result;
      }
    }
  }

  v33 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v7, v33, v4);
  v34 = sub_266AEEAB8();
  v35 = sub_266AEEBB8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266ADA000, v34, v35, "No EmergencySituation found in parse", v36, 2u);
    MEMORY[0x26D5EA2D0](v36, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v37 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D61DF8], v37);
  return swift_willThrow();
}

uint64_t sub_266AE1808@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_266AEEAC8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = sub_266AEE7C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_266AEE748();
  if (*(v14 + 16))
  {
    (*(v8 + 16))(v11, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v13, v11, v7);
    if (sub_266AEE788())
    {
      v15 = 0;
LABEL_10:
      result = (*(v8 + 8))(v13, v7);
      *v32 = v15;
      return result;
    }

    if (sub_266AEE798() & 1) != 0 || (sub_266AEE7A8())
    {
      v15 = 1;
      goto LABEL_10;
    }

    v23 = sub_266AEEAA8();
    swift_beginAccess();
    v24 = v2;
    v25 = v31;
    (*(v2 + 16))(v31, v23, v1);
    v26 = sub_266AEEAB8();
    v27 = sub_266AEEBB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266ADA000, v26, v27, "No EmergencyConfirmation found in parse", v28, 2u);
      MEMORY[0x26D5EA2D0](v28, -1, -1);
    }

    (*(v24 + 8))(v25, v1);
    v29 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D61DF8], v29);
    swift_willThrow();
    return (*(v8 + 8))(v13, v7);
  }

  else
  {

    v16 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v2 + 16))(v6, v16, v1);
    v17 = sub_266AEEAB8();
    v18 = sub_266AEEBB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266ADA000, v17, v18, "No EmergencyConfirmation found in parse (no userDialogAct)", v19, 2u);
      MEMORY[0x26D5EA2D0](v19, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    v20 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D61DF8], v20);
    return swift_willThrow();
  }
}

uint64_t sub_266AE1CC8@<X0>(char a1@<W1>, char *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  if ((a1 & 1) == 0)
  {
    v15 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v8, v15, v4);
    v16 = sub_266AEEAB8();
    v17 = sub_266AEEBB8();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_14:

      (*(v5 + 8))(v8, v4);
      v21 = sub_266AEEA78();
      sub_266AE20D0();
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D61DF8], v21);
      return swift_willThrow();
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266ADA000, v16, v17, "nlv4MigrationFeatureFlagIsEnabled == false. No crisisSeverity found in parse.", v18, 2u);
LABEL_12:
    MEMORY[0x26D5EA2D0](v18, -1, -1);
    goto LABEL_14;
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (!v30[3])
  {
    sub_266AE2128(v30);
LABEL_10:
    v19 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v10, v19, v4);
    v16 = sub_266AEEAB8();
    v20 = sub_266AEEBB8();
    if (!os_log_type_enabled(v16, v20))
    {
      v8 = v10;
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266ADA000, v16, v20, "No crisisSeverity found in parse", v18, 2u);
    v8 = v10;
    goto LABEL_12;
  }

  sub_266AEE9B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_266AEE8C8();

  if (!v30[0])
  {
    goto LABEL_10;
  }

  v11 = sub_266AEE8A8();
  sub_266AEDD98(v11, &unk_287843600);
  v13 = v12;

  if (!v13)
  {
    v24 = sub_266AEE8A8();
    sub_266AEDD98(v24, &unk_287843628);
    v26 = v25;

    if (v26)
    {
      v14 = 1;
      goto LABEL_17;
    }

    v27 = sub_266AEE8A8();
    sub_266AEDD98(v27, &unk_287843650);
    v29 = v28;

    if (v29)
    {
      v14 = 0;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v14 = 2;
LABEL_17:

LABEL_18:

  *a2 = v14;
  return result;
}

unint64_t sub_266AE20D0()
{
  result = qword_2800BD650;
  if (!qword_2800BD650)
  {
    sub_266AEEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD650);
  }

  return result;
}

uint64_t sub_266AE2128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD658, &qword_266AEF928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t CATIIntentName.rawValue.getter(char a1)
{
  result = 0xD00000000000002FLL;
  switch(a1)
  {
    case 1:
    case 2:
    case 7:
      result = 0xD00000000000002BLL;
      break;
    case 3:
    case 9:
      result = 0xD00000000000002ELL;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000037;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 10:
    case 13:
      result = 0xD00000000000006CLL;
      break;
    case 11:
      result = 0xD00000000000006FLL;
      break;
    case 12:
      result = 0xD000000000000068;
      break;
    case 14:
      result = 0xD00000000000004ALL;
      break;
    case 15:
    case 16:
      result = 0xD000000000000046;
      break;
    case 17:
      result = 0xD000000000000049;
      break;
    case 18:
    case 21:
      result = 0xD000000000000039;
      break;
    case 19:
      result = 0xD00000000000003CLL;
      break;
    case 20:
      result = 0xD000000000000035;
      break;
    case 22:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266AE23FC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CATIIntentName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == CATIIntentName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

uint64_t sub_266AE2484()
{
  v1 = *v0;
  sub_266AEED18();
  CATIIntentName.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE24E8(uint64_t a1)
{
  CATIIntentName.rawValue.getter(*v1);
  sub_266AEEB78();
}

uint64_t sub_266AE253C(uint64_t a1)
{
  v2 = *v1;
  sub_266AEED18();
  CATIIntentName.rawValue.getter(v2);
  sub_266AEEB78();

  return sub_266AEED38();
}

unint64_t sub_266AE259C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266AE25CC@<X0>(unint64_t *a1@<X8>)
{
  result = CATIIntentName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEECC8();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266AE2650()
{
  result = qword_2800BD660;
  if (!qword_2800BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATIIntentName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CATIIntentName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t CrisisSeverity.rawValue.getter(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  return result;
}

uint64_t sub_266AE2850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "crisisSituationHigh";
  v4 = 0xD000000000000015;
  if (v2 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "crisisSituationHigh";
  }

  else
  {
    v6 = "emergencySirenNoun";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "crisisSituationMedium";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "emergencySirenNoun";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "crisisSituationMedium";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266AEECB8();
  }

  return v11 & 1;
}

uint64_t sub_266AE2924()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE29BC(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266AE2A40(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

unint64_t sub_266AE2AD4@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::CrisisSeverity_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents14CrisisSeverityO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_266AE2B04(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "crisisSituationHigh";
  v4 = 0xD000000000000015;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "emergencySirenNoun";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "crisisSituationMedium";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t _s20SiriEmergencyIntents14CrisisSeverityO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266AE2BAC()
{
  result = qword_2800BD668;
  if (!qword_2800BD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD668);
  }

  return result;
}

uint64_t GeneralEmergencyIntent.isLowRisk.getter(uint64_t a1)
{
  v1 = a1;
  if (EmergencySituation.rawValue.getter(a1) == 0xD00000000000001ALL && 0x8000000266AF0F40 == v2)
  {
    goto LABEL_3;
  }

  v3 = sub_266AEECB8();

  if (v3)
  {
    return 1;
  }

  if (EmergencySituation.rawValue.getter(v1) == 1886152040 && v5 == 0xE400000000000000)
  {
LABEL_3:

    return 1;
  }

  v6 = sub_266AEECB8();

  return v6 & 1;
}

uint64_t GeneralEmergencyIntent.isHighRisk.getter(uint64_t a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD00000000000001BLL && 0x8000000266AF0F20 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

SiriEmergencyIntents::GeneralEmergencyIntent_optional __swiftcall GeneralEmergencyIntent.init(emergencySituation:)(SiriEmergencyIntents::EmergencySituation_optional emergencySituation)
{
  value = emergencySituation.value;
  v2 = emergencySituation.value;
  v3 = sub_266AEEAC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v2 != 35)
  {
    if (EmergencySituation.rawValue.getter(value) == 0xD00000000000001ALL && 0x8000000266AF0F40 == v15)
    {
      goto LABEL_7;
    }

    v16 = sub_266AEECB8();

    if (v16)
    {
      return value;
    }

    if (EmergencySituation.rawValue.getter(value) == 0xD00000000000001BLL && 0x8000000266AF0F20 == v18)
    {
      goto LABEL_7;
    }

    v19 = sub_266AEECB8();

    if (v19)
    {
      return value;
    }

    if (EmergencySituation.rawValue.getter(value) == 1886152040 && v20 == 0xE400000000000000)
    {
LABEL_7:

      return value;
    }

    v21 = sub_266AEECB8();

    if (v21)
    {
      return value;
    }
  }

  v7 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_266AEEAB8();
  v9 = sub_266AEEBC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v22[15] = value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
    v12 = sub_266AEEBD8();
    v14 = sub_266ADDBA0(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_266ADA000, v8, v9, "Failed to initialize GeneralEmergencyIntent. Unsupported emergencySituation: [%s]", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D5EA2D0](v11, -1, -1);
    MEMORY[0x26D5EA2D0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 35;
}

uint64_t getEnumTagSinglePayload for EmergencySituation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencySituation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SiriEmergencyIntents::EmergencyAttribute_optional __swiftcall EmergencyAttribute.init(catiIntentName:)(SiriEmergencyIntents::CATIIntentName catiIntentName)
{
  if (((catiIntentName - 10) & 0xF8) != 0)
  {
    return 2;
  }

  else
  {
    return (0x101010100000000uLL >> (8 * (catiIntentName - 10)));
  }
}

SiriEmergencyIntents::EmergencyAttribute_optional __swiftcall EmergencyAttribute.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_EmergencyAttribute_website;
  }

  else
  {
    v2.value = SiriEmergencyIntents_EmergencyAttribute_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t EmergencyAttribute.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x65746973626577;
  }

  else
  {
    return 0x756E20656E6F6870;
  }
}

uint64_t sub_266AE3274(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746973626577;
  }

  else
  {
    v3 = 0x756E20656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEC0000007265626DLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65746973626577;
  }

  else
  {
    v5 = 0x756E20656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC0000007265626DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

uint64_t sub_266AE3324()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE33B0(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266AE3428(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE34B0@<X0>(char *a2@<X8>)
{
  v3 = sub_266AEEC78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_266AE3510(uint64_t *a1@<X8>)
{
  v2 = 0x756E20656E6F6870;
  if (*v1)
  {
    v2 = 0x65746973626577;
  }

  v3 = 0xEC0000007265626DLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E20656E6F6870 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_266AEECB8() & 1) != 0 || a1 == 0x656E6F6870 && a2 == 0xE500000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {
    return 1;
  }

  v6 = sub_266AEECB8();
  v8 = a1 == 0x65676170626577 && a2 == 0xE700000000000000;
  result = 1;
  if ((v6 & 1) == 0 && !v8)
  {
    if (sub_266AEECB8())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_266AE3698()
{
  result = qword_2800BD670;
  if (!qword_2800BD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD670);
  }

  return result;
}

uint64_t sub_266AE36FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0xD000000000000012;
  v4 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x8000000266AF0580;
    if (a1 == 2)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v11 = 0x8000000266AF05A0;
    }

    v13 = 0x8000000266AF0540;
    v14 = 0xD000000000000015;
    if (a1)
    {
      v14 = 0xD000000000000012;
      v13 = 0x8000000266AF0500;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x707954656E6F6870;
    v6 = 0xE900000000000065;
    if (a1 != 7)
    {
      v5 = 0x614E746E65746E69;
      v6 = 0xEA0000000000656DLL;
    }

    if (a1 == 6)
    {
      v5 = 0x54746361746E6F63;
      v6 = 0xEB00000000657079;
    }

    v7 = 0x8000000266AF05C0;
    v8 = 0xD000000000000015;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x8000000266AF05E0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0x8000000266AF05A0;
        v3 = 0xD000000000000013;
        goto LABEL_46;
      }

      v16 = "emergencySirenNoun";
    }

    else
    {
      if (!a2)
      {
        v15 = "emergencyOrganization";
LABEL_39:
        v2 = (v15 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000015;
        goto LABEL_46;
      }

      v16 = "emergencySituation";
    }

LABEL_45:
    v2 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_46;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = "crisisSituationMedium";
      goto LABEL_39;
    }

    v16 = "crisisSituationLow";
    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v3 = 0x54746361746E6F63;
  }

  else if (a2 == 7)
  {
    v3 = 0x707954656E6F6870;
    v2 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x614E746E65746E69;
    v2 = 0xEA0000000000656DLL;
  }

LABEL_46:
  if (v9 == v3 && v10 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_266AEECB8();
  }

  return v17 & 1;
}

uint64_t sub_266AE3964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000034;
  v3 = "StartSiren";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000034;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (a1 == 4)
  {
    v6 = "emergency.callEmergencyResource";
  }

  else
  {
    v6 = "emergency.startSiren";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000003FLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "emergency.buttonPress";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000032;
  }

  else
  {
    v9 = 0xD000000000000035;
  }

  if (v4 == 1)
  {
    v10 = "Phone.StartAudioCall";
  }

  else
  {
    v10 = "socialConversation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000034;
    v10 = "StartSiren";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000003FLL;
      v3 = "emergency.buttonPress";
    }

    else if (a2 == 4)
    {
      v3 = "emergency.callEmergencyResource";
    }

    else
    {
      v2 = 0xD000000000000035;
      v3 = "emergency.startSiren";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000032;
      v3 = "Phone.StartAudioCall";
    }

    else
    {
      v2 = 0xD000000000000035;
      v3 = "socialConversation";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_266AEECB8();
  }

  return v12 & 1;
}

uint64_t sub_266AE3AC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819042147;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x736972616D6D7573;
  v6 = 0xE900000000000065;
  if (a1 != 6)
  {
    v5 = 0x6978456B63656863;
    v6 = 0xEE0065636E657473;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (a1 != 4)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6E6F69746361;
  if (a1 != 2)
  {
    v9 = 0x627265566F6ELL;
  }

  v10 = 1684957542;
  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v10 = 1819042147;
  }

  if (a1 > 1u)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x736972616D6D7573)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xEE0065636E657473;
        if (v11 != 0x6978456B63656863)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C62616E65)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x656C6261736964)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v13 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x6E6F69746361)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x627265566F6ELL;
    }

    else
    {
      v13 = 0xE400000000000000;
      if (a2)
      {
        if (v11 != 1684957542)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v11 != v2)
    {
LABEL_43:
      v14 = sub_266AEECB8();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_266AE3D14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2 == 2)
    {
      v4 = "sexual assault crisis center";
    }

    else
    {
      v4 = "poison control center";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2)
    {
      v4 = "suicide prevention center";
    }

    else
    {
      v4 = "ncyConfirmation_webSearch";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2 == 2)
    {
      v6 = "sexual assault crisis center";
    }

    else
    {
      v6 = "poison control center";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2)
    {
      v6 = "suicide prevention center";
    }

    else
    {
      v6 = "ncyConfirmation_webSearch";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_266AEECB8();
  }

  return v7 & 1;
}

uint64_t sub_266AE3E24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x636E656772656D65;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x8000000266AF0540;
    if (a1 == 4)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (a1 != 4)
    {
      v9 = 0x8000000266AF0560;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x8000000266AF0520;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0xED00006272655679;
    if (a1 == 1)
    {
      v6 = 0x636E656772656D65;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 1)
    {
      v5 = 0x8000000266AF0500;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x636E656772656D65;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000079;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000015;
      }

      else
      {
        v11 = 0xD000000000000012;
      }

      if (a2 == 4)
      {
        v2 = 0x8000000266AF0540;
      }

      else
      {
        v2 = 0x8000000266AF0560;
      }

      if (v7 != v11)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v2 = 0x8000000266AF0520;
    v3 = 0xD000000000000015;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xED00006272655679;
      if (v7 != 0x636E656772656D65)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x8000000266AF0500;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_40;
  }

  if (v7 != v3)
  {
LABEL_43:
    v12 = sub_266AEECB8();
    goto LABEL_44;
  }

LABEL_40:
  if (v8 != v2)
  {
    goto LABEL_43;
  }

  v12 = 1;
LABEL_44:

  return v12 & 1;
}

SiriEmergencyIntents::EmergencyCSAMIntent_optional __swiftcall EmergencyCSAMIntent.init(emergencySituation:emergencyVerb:originalInput:)(SiriEmergencyIntents::EmergencySituation_optional emergencySituation, SiriEmergencyIntents::EmergencyVerb_optional emergencyVerb, Swift::String_optional originalInput)
{
  object = originalInput.value._object;
  countAndFlagsBits = originalInput.value._countAndFlagsBits;
  value = emergencySituation.value;
  v7 = sub_266AEEAC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((value - 6) > 3)
  {

    v13 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v8 + 16))(v11, v13, v7);
    v14 = sub_266AEEAB8();
    v15 = sub_266AEEBC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v24[15] = value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
      v18 = sub_266AEEBD8();
      v20 = sub_266ADDBA0(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_266ADA000, v14, v15, "Failed to initialize EmergencyCSAMIntent. Unsupported emergencySituation: [%s]", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D5EA2D0](v17, -1, -1);
      MEMORY[0x26D5EA2D0](v16, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v12 = 0;
    countAndFlagsBits = 0;
    object = 1;
  }

  else
  {
    v12 = value | (emergencyVerb.value << 8);
  }

  v21 = v12;
  v22 = countAndFlagsBits;
  v23 = object;
  result.value.originalInput.value._object = v23;
  result.value.originalInput.value._countAndFlagsBits = v22;
  *&result.value.emergencySituation = v21;
  result.is_nil = v9;
  return result;
}

uint64_t EmergencyCSAMIntent.isCSAMContentReporting.getter(uint64_t a1)
{
  v1 = a1;
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000011 && 0x8000000266AF0FB0 == v2)
  {
    goto LABEL_3;
  }

  v4 = sub_266AEECB8();

  if (v4)
  {
    return 1;
  }

  if (EmergencySituation.rawValue.getter(v1) == 0x7078655F6D617363 && v5 == 0xED0000746963696CLL)
  {
  }

  else
  {
    v6 = sub_266AEECB8();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (HIBYTE(v1) <= 3u)
  {
    if (HIBYTE(v1) <= 1u && !HIBYTE(v1))
    {
LABEL_3:

      return 1;
    }
  }

  else if (HIBYTE(v1) >= 8u)
  {
    return 0;
  }

  v7 = sub_266AEECB8();

  return v7 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMHelpBadActor.getter(uint64_t a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000266AF0F70 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMHelpVictim.getter(uint64_t a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000266AF0F90 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMExplicit.getter(uint64_t a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0x7078655F6D617363 && v1 == 0xED0000746963696CLL)
  {

    return 1;
  }

  else
  {
    v3 = sub_266AEECB8();

    return v3 & 1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266AE45F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_266AE464C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyBasicIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for EmergencyBasicIntent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EmergencyOrganizationInfo.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmergencyOrganizationInfo.languageCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmergencyOrganizationInfo.city.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EmergencyOrganizationInfo.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EmergencyOrganizationInfo.phoneNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t EmergencyOrganizationInfo.website.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t EmergencyOrganizationInfo.websearchQuery.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t EmergencyOrganizationInfo.emergencyOrganization.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void __swiftcall EmergencyOrganizationInfo.init(countryCode:languageCode:city:name:phoneNumber:website:websearchQuery:emergencyOrganization:)(SiriEmergencyIntents::EmergencyOrganizationInfo *__return_ptr retstr, Swift::String countryCode, Swift::String languageCode, Swift::String city, Swift::String name, Swift::String phoneNumber, Swift::String website, Swift::String websearchQuery, Swift::String emergencyOrganization)
{
  retstr->countryCode = countryCode;
  retstr->languageCode = languageCode;
  retstr->city = city;
  retstr->name = name;
  retstr->phoneNumber = phoneNumber;
  retstr->website = website;
  retstr->websearchQuery = websearchQuery;
  retstr->emergencyOrganization = emergencyOrganization;
}

double EmergencyOrganizationInfo.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_266AE5A08(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_266AE4A48()
{
  v1 = *v0;
  sub_266AEED18();
  MEMORY[0x26D5E9F70](v1);
  return sub_266AEED38();
}

uint64_t sub_266AE4ABC(uint64_t a1)
{
  v2 = *v1;
  sub_266AEED18();
  MEMORY[0x26D5E9F70](v2);
  return sub_266AEED38();
}

unint64_t sub_266AE4B00()
{
  v1 = *v0;
  v2 = 0x437972746E756F63;
  v3 = 0x6372616573626577;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6D754E656E6F6870;
  if (v1 != 4)
  {
    v4 = 0x65746973626577;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 2037672291;
  if (v1 != 2)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = 0x65676175676E616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266AE4C14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266AE6304(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266AE4C54(uint64_t a1)
{
  v2 = sub_266AE5FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AE4C90(uint64_t a1)
{
  v2 = sub_266AE5FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void static EmergencyOrganizationInfo.siren()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0x636E656772656D45;
  a1[7] = 0xEF6E657269532079;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
}

void static EmergencyOrganizationInfo.emergencyServices()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0xD000000000000012;
  a1[7] = 0x8000000266AF11C0;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
}

uint64_t EmergencyOrganizationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD678, &qword_266AEFD50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AE5FF8();
  sub_266AEED58();
  v8[15] = 0;
  sub_266AEEC98();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_266AEEC98();
  v8[13] = 2;
  sub_266AEEC98();
  v8[12] = 3;
  sub_266AEEC98();
  v8[11] = 4;
  sub_266AEEC98();
  v8[10] = 5;
  sub_266AEEC98();
  v8[9] = 6;
  sub_266AEEC98();
  v8[8] = 7;
  sub_266AEEC98();
  return (*(v4 + 8))(v6, v3);
}

double sub_266AE4F9C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_266AE5A08(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

BOOL EmergencyOrganizationInfo.hasNameAndNumber.getter()
{
  v1 = v0[7];
  if ((v1 & 0x2000000000000000) != 0)
  {
    if ((v1 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v0[6] & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

LABEL_3:
  v2 = v0[9];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v0[8] & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

BOOL EmergencyOrganizationInfo.hasNameAndWebsite.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + 56);
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((*(v0 + 48) & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

LABEL_3:
  sub_266AEE6C8();
  v5 = sub_266AEE6D8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_266AE604C(v3);
  return v6;
}

BOOL EmergencyOrganizationInfo.hasWebsearchQuery.getter()
{
  v1 = *(v0 + 104);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 96) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

void __swiftcall EmergencyOrganizationInfo.asWebsearchQueryOnly()(SiriEmergencyIntents::EmergencyOrganizationInfo *__return_ptr retstr)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  v4 = v1[6];
  v10 = v1[7];
  v11 = v4;
  v8 = v3;
  v9 = v12;
  sub_266AE60B4(&v13, v7);
  sub_266AE60B4(&v12, v7);
  sub_266AE60B4(&v11, v7);
  sub_266AE60B4(&v10, v7);
  v5 = v9;
  retstr->countryCode = v8;
  retstr->languageCode = v5;
  retstr->city._countAndFlagsBits = 0;
  retstr->city._object = 0xE000000000000000;
  retstr->name._countAndFlagsBits = 0;
  retstr->name._object = 0xE000000000000000;
  retstr->phoneNumber._countAndFlagsBits = 0;
  retstr->phoneNumber._object = 0xE000000000000000;
  retstr->website._countAndFlagsBits = 0;
  retstr->website._object = 0xE000000000000000;
  v6 = v1[7];
  retstr->websearchQuery = v1[6];
  retstr->emergencyOrganization = v6;
}

void *EmergencyOrganizationInfo.asRREntities()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD690, &qword_266AEFD60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_266AEEAF8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v45 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = sub_266AEE898();
  v53 = *(v19 - 8);
  v54 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1[7];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

  v48 = v18;
  v49 = v16;
  v52 = v4;
  v47 = v7;
  v24 = v8;
  v25 = v1[9];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v46 = v9;
    sub_266AEE9F8();
    swift_allocObject();
    v27 = sub_266AEE9E8();

    sub_266AEE9D8();
    sub_266AEEA38();
    swift_allocObject();
    sub_266AEEA28();
    sub_266AEEA18();

    sub_266AEE9C8();

    sub_266AEEB68();
    if (v28)
    {
    }

    v29 = v24;

    sub_266AEE868();
    sub_266AEE858();
    (*(v53 + 8))(v21, v54);
    if (MEMORY[0x26D5E9B30](v27))
    {
      v30 = sub_266AEEAD8();
      (*(*(v30 - 8) + 56))(v47, 1, 1, v30);

      v31 = v48;
      sub_266AEEAE8();
      (*(v46 + 16))(v49, v31, v24);
      v32 = sub_266AEE2EC(0, 1, 1, MEMORY[0x277D84F90]);
      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        v32 = sub_266AEE2EC((v33 > 1), v34 + 1, 1, v32);
      }

      v35 = v52;

      v9 = v46;
      (*(v46 + 8))(v48, v29);
      v32[2] = v34 + 1;
      (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v49, v29);
      goto LABEL_17;
    }

    v32 = MEMORY[0x277D84F90];
    v9 = v46;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v29 = v8;
  }

  v35 = v52;
LABEL_17:

  sub_266AEE6C8();
  v36 = sub_266AEE6D8();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {

    sub_266AE604C(v35);
  }

  else
  {
    sub_266AE604C(v35);
    sub_266AEE928();
    swift_allocObject();
    v37 = sub_266AEE918();
    sub_266AEE908();
    sub_266AEEB68();
    if (v38)
    {
    }

    sub_266AEE868();
    sub_266AEE858();
    (*(v53 + 8))(v21, v54);
    if (MEMORY[0x26D5E9B30](v37))
    {
      v39 = sub_266AEEAD8();
      (*(*(v39 - 8) + 56))(v47, 1, 1, v39);

      v40 = v50;
      sub_266AEEAE8();
      v41 = v51;
      (*(v9 + 16))(v51, v40, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_266AEE2EC(0, v32[2] + 1, 1, v32);
      }

      v43 = v32[2];
      v42 = v32[3];
      if (v43 >= v42 >> 1)
      {
        v32 = sub_266AEE2EC((v42 > 1), v43 + 1, 1, v32);
      }

      (*(v9 + 8))(v40, v29);
      v32[2] = v43 + 1;
      (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43, v41, v29);
    }

    else
    {
    }
  }

  return v32;
}

uint64_t sub_266AE5A08@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD6B0, &unk_266AEFF70);
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v49 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AE5FF8();
  sub_266AEED48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v63 = v5;
  LOBYTE(v72[0]) = 0;
  v8 = sub_266AEEC88();
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  LOBYTE(v72[0]) = 1;
  v13 = sub_266AEEC88();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v60 = v15;
  v61 = v11;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v62 = v16;
  LOBYTE(v72[0]) = 2;
  v17 = sub_266AEEC88();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v59 = v20;
  LOBYTE(v72[0]) = 3;
  v21 = sub_266AEEC88();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v56 = v23;
  v57 = v19;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  LOBYTE(v72[0]) = 4;
  v25 = sub_266AEEC88();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v55 = v28;
  LOBYTE(v72[0]) = 5;
  v54 = 0;
  v29 = sub_266AEEC88();
  v51 = v27;
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v52 = v32;
  LOBYTE(v72[0]) = 6;
  v50 = sub_266AEEC88();
  v34 = 0xE000000000000000;
  v35 = v33;
  if (v33)
  {
    v34 = v33;
  }

  v53 = v34;
  LOBYTE(v72[0]) = 7;
  v36 = sub_266AEEC88();
  v58 = 0;
  v38 = v50;
  if (!v35)
  {
    v38 = 0;
  }

  v49 = v31;
  v50 = v38;
  if (v37)
  {
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v37)
  {
    v40 = v37;
  }

  v54 = v40;
  (*(v63 + 8))(v7, v73);
  *&v64 = v61;
  *(&v64 + 1) = v12;
  v73 = v12;
  v41 = v62;
  *&v65 = v60;
  *(&v65 + 1) = v62;
  v42 = v59;
  *&v66 = v57;
  *(&v66 + 1) = v59;
  *&v67 = v56;
  *(&v67 + 1) = v24;
  v43 = v55;
  *&v68 = v51;
  *(&v68 + 1) = v55;
  v44 = v53;
  *&v69 = v49;
  *(&v69 + 1) = v52;
  *&v70 = v50;
  *(&v70 + 1) = v53;
  *&v71 = v39;
  *(&v71 + 1) = v54;
  sub_266AE65B4(&v64, v72);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v72[0] = v61;
  v72[1] = v73;
  v72[2] = v60;
  v72[3] = v41;
  v72[4] = v57;
  v72[5] = v42;
  v72[6] = v56;
  v72[7] = v24;
  v72[8] = v51;
  v72[9] = v43;
  v72[10] = v49;
  v72[11] = v52;
  v72[12] = v50;
  v72[13] = v44;
  v72[14] = v39;
  v72[15] = v54;
  result = sub_266AE65EC(v72);
  v45 = v69;
  a2[4] = v68;
  a2[5] = v45;
  v46 = v71;
  a2[6] = v70;
  a2[7] = v46;
  v47 = v65;
  *a2 = v64;
  a2[1] = v47;
  v48 = v67;
  a2[2] = v66;
  a2[3] = v48;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266AE5FF8()
{
  result = qword_2800BD680;
  if (!qword_2800BD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD680);
  }

  return result;
}

uint64_t sub_266AE604C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_266AE6134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266AE617C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266AE6200()
{
  result = qword_2800BD698;
  if (!qword_2800BD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD698);
  }

  return result;
}

unint64_t sub_266AE6258()
{
  result = qword_2800BD6A0;
  if (!qword_2800BD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6A0);
  }

  return result;
}

unint64_t sub_266AE62B0()
{
  result = qword_2800BD6A8;
  if (!qword_2800BD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6A8);
  }

  return result;
}

uint64_t sub_266AE6304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_266AEECB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_266AEECB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_266AEECB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6372616573626577 && a2 == 0xEE00797265755168 || (sub_266AEECB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000266AF0540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_266AEECB8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EmergencyInformationIntentResponseCode.hashValue.getter(unsigned __int8 a1)
{
  sub_266AEED18();
  MEMORY[0x26D5E9F70](a1);
  return sub_266AEED38();
}

uint64_t sub_266AE66E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD6B8, &qword_266AEFF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall EmergencyInformationIntentResponse.init(code:emergencyOrganizationInfo:)(SiriEmergencyIntents::EmergencyInformationIntentResponse *__return_ptr retstr, SiriEmergencyIntents::EmergencyInformationIntentResponseCode code, SiriEmergencyIntents::EmergencyOrganizationInfo_optional *emergencyOrganizationInfo)
{
  *&v3[39] = emergencyOrganizationInfo->value.city;
  *&v3[23] = emergencyOrganizationInfo->value.languageCode;
  *&v3[7] = emergencyOrganizationInfo->value.countryCode;
  *&v3[119] = emergencyOrganizationInfo->value.emergencyOrganization;
  *&v3[103] = emergencyOrganizationInfo->value.websearchQuery;
  *&v3[87] = emergencyOrganizationInfo->value.website;
  *&v3[71] = emergencyOrganizationInfo->value.phoneNumber;
  *&v3[55] = emergencyOrganizationInfo->value.name;
  retstr->code = code;
  retstr->emergencyOrganizationInfo.value.countryCode = *v3;
  retstr->emergencyOrganizationInfo.value.phoneNumber = *&v3[64];
  retstr->emergencyOrganizationInfo.value.name = *&v3[48];
  retstr->emergencyOrganizationInfo.value.city = *&v3[32];
  retstr->emergencyOrganizationInfo.value.languageCode = *&v3[16];
  *(&retstr->emergencyOrganizationInfo.value.emergencyOrganization._object + 7) = *&v3[127];
  retstr->emergencyOrganizationInfo.value.emergencyOrganization = *&v3[112];
  retstr->emergencyOrganizationInfo.value.websearchQuery = *&v3[96];
  retstr->emergencyOrganizationInfo.value.website = *&v3[80];
}

unint64_t sub_266AE67DC()
{
  result = qword_2800BD6C0;
  if (!qword_2800BD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyInformationIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyInformationIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriEmergencyIntents0B16OrganizationInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_266AE6998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_266AE69F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

SiriEmergencyIntents::EmergencyOrganization_optional __swiftcall EmergencyOrganization.init(catiIntentName:)(SiriEmergencyIntents::CATIIntentName catiIntentName)
{
  if ((catiIntentName - 10) > 0xBu)
  {
    return 4;
  }

  else
  {
    return byte_266AF0238[(catiIntentName - 10)];
  }
}

unint64_t EmergencyOrganization.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000015;
  if (a1 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266AE6B24()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE6BD8(uint64_t a1)
{
  sub_266AEEB78();
}

uint64_t sub_266AE6C78(uint64_t a1)
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

unint64_t sub_266AE6D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266AE6D58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "ncyConfirmation_webSearch";
  v4 = "sexual assault crisis center";
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000019;
    v4 = "poison control center";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "suicide prevention center";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEEC78();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266AE6E1C()
{
  result = qword_2800BD6C8;
  if (!qword_2800BD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyOrganization(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyOrganization(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EmergencyOrganizationInfoProvider.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE718();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmergencyOrganizationInfoProvider.locationProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EmergencyOrganizationInfoProvider(0) + 20);

  return sub_266AE70C8(v3, a1);
}

uint64_t type metadata accessor for EmergencyOrganizationInfoProvider(uint64_t a1)
{
  result = qword_2800BD6E8;
  if (!qword_2800BD6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266AE70C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t EmergencyOrganizationInfoProvider.resourceDecoder.getter()
{
  v1 = (v0 + *(type metadata accessor for EmergencyOrganizationInfoProvider(0) + 24));
  v2 = *v1;
  sub_266AE7170(*v1, v1[1]);
  return v2;
}

uint64_t sub_266AE7170(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t EmergencyOrganizationInfoProvider.resourceDecoder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EmergencyOrganizationInfoProvider(0) + 24));
  result = sub_266AE71C8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_266AE71C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t EmergencyOrganizationInfoProvider.init(siriLocale:locationProvider:resourceDecoder:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for EmergencyOrganizationInfoProvider(0);
  v11 = (a5 + *(v10 + 24));
  v12 = sub_266AEE718();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = sub_266AE72CC(a2, a5 + *(v10 + 20));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_266AE72CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266AE72E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v52 - v11;
  v12 = sub_266AEE6D8();
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v55 = a1;
  v19 = sub_266AEEB08();
  v20 = sub_266AEEB08();
  v21 = [v18 pathForResource:v19 ofType:v20 inDirectory:0];

  if (v21)
  {
    v56 = v18;
    sub_266AEEB18();

    sub_266AEE6B8();

    v22 = sub_266AEE6E8();
    v34 = v33;
    v53 = v16;
    v35 = v22;
    sub_266AEE6A8();
    swift_allocObject();
    sub_266AEE698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD730, &unk_266AF03E0);
    sub_266AEBB0C();
    sub_266AEE688();
    v52 = v35;
    v59 = v34;

    v38 = v60[1];
    v39 = sub_266AEEAA8();
    swift_beginAccess();
    v40 = v5;
    v41 = *(v5 + 16);
    v42 = v54;
    v43 = v4;
    v41(v54, v39, v4);

    v44 = sub_266AEEAB8();
    v45 = sub_266AEEBB8();

    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v48 = v40;
      v49 = swift_slowAlloc();
      v60[0] = v49;
      *v47 = 136315138;
      *(v47 + 4) = sub_266ADDBA0(v55, a2, v60);
      _os_log_impl(&dword_266ADA000, v44, v45, "Successfully decoded plist for resourceName: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x26D5EA2D0](v49, -1, -1);
      MEMORY[0x26D5EA2D0](v47, -1, -1);

      (*(v48 + 8))(v42, v43);
    }

    else
    {

      (*(v40 + 8))(v42, v4);
    }

    v50 = v57;
    v51 = v53;

    sub_266AEBBE4(v52, v59);

    (*(v58 + 8))(v51, v50);
  }

  else
  {
    v23 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v10, v23, v4);

    v24 = v18;
    v25 = v4;
    v26 = sub_266AEEAB8();
    v27 = sub_266AEEBC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v54 = v25;
      v29 = v28;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60[0] = v31;
      *v29 = 138412546;
      *(v29 + 4) = v24;
      *v30 = v24;
      *(v29 + 12) = 2080;
      v32 = v24;
      *(v29 + 14) = sub_266ADDBA0(v55, a2, v60);
      _os_log_impl(&dword_266ADA000, v26, v27, "Error getting path from bundle [%@] for resource file: %s.plist", v29, 0x16u);
      sub_266AEBA4C(v30);
      MEMORY[0x26D5EA2D0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D5EA2D0](v31, -1, -1);
      MEMORY[0x26D5EA2D0](v29, -1, -1);

      (*(v5 + 8))(v10, v54);
    }

    else
    {

      (*(v5 + 8))(v10, v25);
    }

    sub_266AEB1A8();
    v38 = swift_allocError();
    *v36 = 0;
  }

  return v38;
}

uint64_t EmergencyOrganizationInfoProvider.getOrganizationInfo(situation:organization:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 2704) = v3;
  *(v4 + 146) = a3;
  *(v4 + 145) = a2;
  *(v4 + 2696) = a1;
  v5 = type metadata accessor for EmergencyOrganizationInfoProvider(0);
  *(v4 + 2712) = v5;
  v6 = *(v5 - 8);
  *(v4 + 2720) = v6;
  *(v4 + 2728) = *(v6 + 64);
  *(v4 + 2736) = swift_task_alloc();
  v7 = sub_266AEEAC8();
  *(v4 + 2744) = v7;
  *(v4 + 2752) = *(v7 - 8);
  *(v4 + 2760) = swift_task_alloc();
  *(v4 + 2768) = swift_task_alloc();
  *(v4 + 2776) = swift_task_alloc();
  *(v4 + 2784) = swift_task_alloc();
  *(v4 + 2792) = swift_task_alloc();
  *(v4 + 2800) = swift_task_alloc();
  *(v4 + 2808) = swift_task_alloc();
  *(v4 + 2816) = swift_task_alloc();
  *(v4 + 2824) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266AE7D58, 0, 0);
}

uint64_t sub_266AE7D58(uint64_t a1)
{
  v90 = v1;
  v2 = *(v1 + 2824);
  v3 = *(v1 + 2752);
  v4 = *(v1 + 2744);
  v5 = sub_266AEEAA8();
  *(v1 + 2832) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v1 + 2840) = v6;
  *(v1 + 2848) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_266AEEAB8();
  v8 = sub_266AEEBB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 145);
    v10 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v10 = 136315394;
    v84 = v6;
    v86 = v83;
    if (v9 == 35)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = EmergencySituation.rawValue.getter(*(v1 + 145));
      v11 = v17;
    }

    v18 = *(v1 + 146);
    v19 = sub_266ADDBA0(v12, v11, &v86);

    v20 = 0xE300000000000000;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2080;
    v21 = 0x8000000266AF0E80;
    v22 = 0xD000000000000015;
    v23 = 0xD000000000000019;
    if (v18 == 3)
    {
      v20 = 0x8000000266AF0EA0;
    }

    else
    {
      v23 = 7104878;
    }

    if (v18 != 2)
    {
      v22 = v23;
      v21 = v20;
    }

    v24 = 0xD000000000000019;
    v25 = 0x8000000266AF0E40;
    if (v18)
    {
      v24 = 0xD00000000000001CLL;
      v25 = 0x8000000266AF0E60;
    }

    if (v18 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v18 <= 1)
    {
      v27 = v25;
    }

    else
    {
      v27 = v21;
    }

    v82 = *(v1 + 2824);
    v28 = *(v1 + 2752);
    v29 = *(v1 + 2744);
    v30 = sub_266ADDBA0(v26, v27, &v86);

    *(v10 + 14) = v30;
    _os_log_impl(&dword_266ADA000, v7, v8, "Fetching org info for situation: %s, organization: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v83, -1, -1);
    MEMORY[0x26D5EA2D0](v10, -1, -1);

    v16 = *(v28 + 8);
    v16(v82, v29);
    v6 = v84;
  }

  else
  {
    v13 = *(v1 + 2824);
    v14 = *(v1 + 2752);
    v15 = *(v1 + 2744);

    v16 = *(v14 + 8);
    v16(v13, v15);
  }

  *(v1 + 2856) = v16;
  v31.value = inferUsableSituation(situation:organization:)(*(v1 + 145), *(v1 + 146)).value;
  if (v31.value == SiriEmergencyIntents_EmergencySituation_unknownDefault)
  {
    v32 = v1 + 152;
    v33 = *(v1 + 2760);
    v34 = *(v1 + 2744);
    swift_beginAccess();
    v6(v33, v5, v34);
    v35 = sub_266AEEAB8();
    v36 = sub_266AEEBC8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266ADA000, v35, v36, "Both EmergencySituation and EmergencyOrganization were nil while fetching Resource", v37, 2u);
      MEMORY[0x26D5EA2D0](v37, -1, -1);
    }

    v38 = *(v1 + 2760);
    v39 = *(v1 + 2744);

    v16(v38, v39);
    sub_266AEB1A8();
    v40 = swift_allocError();
    *v41 = 1;
    *(v1 + 152) = v40;
    goto LABEL_32;
  }

  value = v31.value;
  v43 = *(v1 + 2704);
  v44 = (v43 + *(*(v1 + 2712) + 24));
  v45 = *v44;
  v46 = v44[1];
  if (*v44)
  {
    v47 = sub_266AEBC3C;
    v48 = *v44;
    v49 = v44[1];
  }

  else
  {
    v50 = *(v1 + 2736);
    v51 = *(v1 + 2720);
    sub_266AEB208(v43, v50);
    v52 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v49 = swift_allocObject();
    sub_266AEB36C(v50, v49 + v52);
    v47 = sub_266AEB480;
    v48 = sub_266AEB3D0;
  }

  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  *(v53 + 24) = v49;
  if ((value & 0xFE) == 4)
  {
    v54 = 0x8000000266AF1210;
    sub_266AE7170(v45, v46);
    v55 = 0xD00000000000001DLL;
  }

  else
  {
    *(v1 + 2672) = EmergencySituation.rawValue.getter(value);
    *(v1 + 2680) = v56;
    sub_266AE7170(v45, v46);
    sub_266AEB484();
    v57 = sub_266AEEBF8();
    v59 = v58;

    *(v1 + 2656) = v57;
    *(v1 + 2664) = v59;
    *(v1 + 2640) = 32;
    *(v1 + 2648) = 0xE100000000000000;
    *(v1 + 2624) = 0;
    *(v1 + 2632) = 0xE000000000000000;
    v60 = sub_266AEEC18();
    v62 = v61;

    v86 = v60;
    v87 = v62;

    MEMORY[0x26D5E9DD0](0x617A696E6167724FLL, 0xED0000736E6F6974);

    v55 = v86;
    v54 = v87;
  }

  v86 = v55;
  v87 = v54;
  (v47)(&v88, &v86);

  v63 = v88;
  *(v1 + 2864) = v88;
  if (v89)
  {
    v32 = v1 + 288;
    *(v1 + 288) = v63;
LABEL_32:
    sub_266AEB1FC(v32);
    v64 = *(v32 + 112);
    *(v1 + 112) = *(v32 + 96);
    *(v1 + 128) = v64;
    *(v1 + 144) = *(v32 + 128);
    v65 = *(v32 + 48);
    *(v1 + 48) = *(v32 + 32);
    *(v1 + 64) = v65;
    v66 = *(v32 + 80);
    *(v1 + 80) = *(v32 + 64);
    *(v1 + 96) = v66;
    v67 = *(v32 + 16);
    *(v1 + 16) = *v32;
    *(v1 + 32) = v67;
    v68 = *(v1 + 2696);
    v69 = *(v1 + 48);
    v70 = *(v1 + 80);
    *(v68 + 48) = *(v1 + 64);
    *(v68 + 64) = v70;
    *(v68 + 16) = v67;
    *(v68 + 32) = v69;
    v71 = *(v1 + 112);
    v72 = *(v1 + 128);
    *(v68 + 128) = *(v1 + 144);
    *(v68 + 96) = v71;
    *(v68 + 112) = v72;
    *(v68 + 80) = v66;
    *v68 = *(v1 + 16);

    v73 = *(v1 + 8);

    return v73();
  }

  v75 = *(v1 + 2712);
  v76 = *(v1 + 2704);

  *(v1 + 2872) = sub_266AEE708();
  *(v1 + 2880) = v77;
  v78 = *(v75 + 20);
  *(v1 + 148) = v78;
  v79 = *(v76 + v78 + 24);
  v80 = *(v76 + v78 + 32);
  __swift_project_boxed_opaque_existential_1((v76 + v78), v79);
  v85 = (*(v80 + 16) + **(v80 + 16));
  v81 = swift_task_alloc();
  *(v1 + 2888) = v81;
  *v81 = v1;
  v81[1] = sub_266AE8578;

  return v85(v79, v80);
}

uint64_t sub_266AE8578(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2896) = a1;
  *(v3 + 2904) = a2;

  return MEMORY[0x2822009F8](sub_266AE867C, 0, 0);
}

uint64_t sub_266AE867C()
{
  v241 = v0;
  v1 = *(v0 + 2904);
  v2 = *(v0 + 2880);
  v3 = *(v0 + 2840);
  v4 = *(v0 + 2832);
  v5 = *(v0 + 2816);
  v6 = *(v0 + 2744);
  swift_beginAccess();
  v3(v5, v4, v6);

  v7 = sub_266AEEAB8();
  v8 = sub_266AEEBB8();

  if (os_log_type_enabled(v7, v8))
  {
    v213 = *(v0 + 2896);
    v218 = *(v0 + 2904);
    v9 = *(v0 + 2880);
    v10 = *(v0 + 2872);
    v230 = *(v0 + 2816);
    v236 = *(v0 + 2856);
    v225 = *(v0 + 2744);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v240 = v12;
    *v11 = 136315394;
    if (v9)
    {
      v13 = v2;
    }

    else
    {
      v10 = 0x3E7974706D653CLL;
      v13 = 0xE700000000000000;
    }

    v14 = sub_266ADDBA0(v10, v13, &v240);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    if (v218)
    {
      v15 = v213;
    }

    else
    {
      v15 = 0x3E7974706D653CLL;
    }

    if (v218)
    {
      v16 = v1;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_266ADDBA0(v15, v16, &v240);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_266ADA000, v7, v8, "Looking for an organization matching siriLanguageCode: %s, physicalLocationCountryCode: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v12, -1, -1);
    MEMORY[0x26D5EA2D0](v11, -1, -1);

    result = v236(v230, v225);
  }

  else
  {
    v19 = *(v0 + 2856);
    v20 = *(v0 + 2816);
    v21 = *(v0 + 2744);

    result = v19(v20, v21);
  }

  v22 = *(v0 + 2864);
  v23 = *(v22 + 16);
  *(v0 + 2912) = v23;
  if (v23)
  {
    v24 = 0;
    v25 = (v0 + 1592);
    v26 = *(v0 + 2904);
    v27 = *(v0 + 2880);
    v28 = v22 + 32;
    v237 = MEMORY[0x277D84F90];
    do
    {
      v29 = (v28 + (v24 << 7));
      v30 = v24;
      while (1)
      {
        if (v30 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_107;
        }

        v31 = *v29;
        v32 = v29[1];
        v33 = v29[3];
        v25[2] = v29[2];
        v25[3] = v33;
        *v25 = v31;
        v25[1] = v32;
        v34 = v29[4];
        v35 = v29[5];
        v36 = v29[7];
        v25[6] = v29[6];
        v25[7] = v36;
        v25[4] = v34;
        v25[5] = v35;
        if (v27)
        {
          if (result = *(v0 + 1608), result == *(v0 + 2872)) && *(v0 + 2880) == *(v0 + 1616) || (result = sub_266AEECB8(), (result))
          {
            if (v26)
            {
              if (*(v0 + 1592) == *(v0 + 2896) && *(v0 + 2904) == *(v0 + 1600))
              {
                break;
              }

              result = sub_266AEECB8();
              if (result)
              {
                break;
              }
            }
          }
        }

        ++v30;
        v29 += 8;
        if (v23 == v30)
        {
          goto LABEL_34;
        }
      }

      sub_266AE65B4(v25, v0 + 1720);
      result = swift_isUniquelyReferenced_nonNull_native();
      v240 = v237;
      v211 = v0;
      if (result)
      {
        v37 = v237;
      }

      else
      {
        result = sub_266AEB4D8(0, *(v237 + 16) + 1, 1);
        v37 = v240;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_266AEB4D8((v38 > 1), v39 + 1, 1);
        v40 = v39 + 1;
        v37 = v240;
      }

      v24 = v30 + 1;
      *(v37 + 16) = v40;
      v237 = v37;
      v41 = (v37 + (v39 << 7));
      v42 = *v25;
      v43 = v25[1];
      v44 = v25[3];
      v41[4] = v25[2];
      v41[5] = v44;
      v41[2] = v42;
      v41[3] = v43;
      v45 = v25[4];
      v46 = v25[5];
      v47 = v25[7];
      v41[8] = v25[6];
      v41[9] = v47;
      v41[6] = v45;
      v41[7] = v46;
      v28 = v22 + 32;
      v0 = v211;
    }

    while (v23 - 1 != v30);
  }

  else
  {
    v237 = MEMORY[0x277D84F90];
  }

LABEL_34:
  *(v0 + 2920) = v237;
  *(v0 + 2688) = v237;
  v48 = *(v237 + 16);
  if (v48 > 1)
  {
    v49 = *(v0 + 2840);
    v50 = *(v0 + 2832);
    v51 = *(v0 + 2808);
    v52 = *(v0 + 2744);
    swift_beginAccess();
    v49(v51, v50, v52);
    v53 = sub_266AEEAB8();
    v54 = sub_266AEEBB8();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 2856);
    v57 = *(v0 + 2808);
    v58 = *(v0 + 2744);
    if (v55)
    {
      v231 = *(v0 + 2808);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v240 = v60;
      *v59 = 136315138;
      v226 = v56;

      v62 = MEMORY[0x26D5E9DF0](v61, &type metadata for EmergencyOrganizationInfo);
      v64 = v63;

      v65 = sub_266ADDBA0(v62, v64, &v240);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_266ADA000, v53, v54, "Multiple orgs found: [%s]. Refining search by current city.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x26D5EA2D0](v60, -1, -1);
      MEMORY[0x26D5EA2D0](v59, -1, -1);

      v226(v231, v58);
    }

    else
    {

      v56(v57, v58);
    }

    v67 = (*(v0 + 2704) + *(v0 + 148));
    v68 = v67[3];
    v69 = v67[4];
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v238 = (*(v69 + 24) + **(v69 + 24));
    v70 = swift_task_alloc();
    *(v0 + 2928) = v70;
    *v70 = v0;
    v70[1] = sub_266AE9958;

    return v238(v68, v69);
  }

  if (v48)
  {
    v66 = *(v0 + 2864);

    sub_266AEB4F8(v66, 0);
LABEL_94:
    v149 = *(v0 + 2840);
    v150 = *(v0 + 2832);
    v151 = *(v0 + 2744);
    if (*(v237 + 16))
    {
      v152 = (v0 + 696);
      v153 = (v0 + 1848);
      v154 = *(v0 + 2776);
      v155 = *(v237 + 80);
      v157 = *(v237 + 32);
      v156 = *(v237 + 48);
      *(v0 + 1880) = *(v237 + 64);
      *(v0 + 1896) = v155;
      *(v0 + 1848) = v157;
      *(v0 + 1864) = v156;
      v158 = *(v237 + 144);
      v160 = *(v237 + 96);
      v159 = *(v237 + 112);
      *(v0 + 1944) = *(v237 + 128);
      *(v0 + 1960) = v158;
      *(v0 + 1912) = v160;
      *(v0 + 1928) = v159;
      swift_beginAccess();
      v149(v154, v150, v151);
      sub_266AE65B4(v0 + 1848, v0 + 2104);
      sub_266AE65B4(v0 + 1848, v0 + 2232);
      v161 = sub_266AEEAB8();
      v162 = sub_266AEEBB8();
      sub_266AE65EC(v0 + 1848);
      v163 = os_log_type_enabled(v161, v162);
      v164 = *(v0 + 2856);
      v165 = *(v0 + 2776);
      v166 = *(v0 + 2744);
      if (v163)
      {
        v235 = *(v0 + 2776);
        v224 = *(v0 + 2864);
        v167 = swift_slowAlloc();
        v220 = v164;
        v168 = swift_slowAlloc();
        v240 = v168;
        *v167 = 136315138;
        v169 = *(v0 + 1928);
        *(v0 + 2040) = *(v0 + 1912);
        *(v0 + 2056) = v169;
        v170 = *(v0 + 1960);
        *(v0 + 2072) = *(v0 + 1944);
        *(v0 + 2088) = v170;
        v171 = *(v0 + 1864);
        *(v0 + 1976) = *v153;
        *(v0 + 1992) = v171;
        v172 = *(v0 + 1896);
        *(v0 + 2008) = *(v0 + 1880);
        *(v0 + 2024) = v172;
        sub_266AE65B4(v0 + 1848, v0 + 1464);
        v173 = sub_266AEEB28();
        v217 = v166;
        v175 = sub_266ADDBA0(v173, v174, &v240);

        *(v167 + 4) = v175;
        _os_log_impl(&dword_266ADA000, v161, v162, "Found matching organization: %s", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v168);
        MEMORY[0x26D5EA2D0](v168, -1, -1);
        MEMORY[0x26D5EA2D0](v167, -1, -1);

        sub_266AEB4F8(v224, 0);
        v220(v235, v217);
      }

      else
      {
        sub_266AEB4F8(*(v0 + 2864), 0);

        v164(v165, v166);
      }

      v183 = *(v0 + 1928);
      *(v0 + 760) = *(v0 + 1912);
      *(v0 + 776) = v183;
      v184 = *(v0 + 1960);
      *(v0 + 792) = *(v0 + 1944);
      *(v0 + 808) = v184;
      v185 = *(v0 + 1864);
      *v152 = *v153;
      *(v0 + 712) = v185;
      v186 = *(v0 + 1896);
      *(v0 + 728) = *(v0 + 1880);
      *(v0 + 744) = v186;
      nullsub_1();
      v187 = *(v0 + 776);
      *(v0 + 624) = *(v0 + 760);
      *(v0 + 640) = v187;
      v188 = *(v0 + 808);
      *(v0 + 656) = *(v0 + 792);
      *(v0 + 672) = v188;
      v189 = *(v0 + 712);
      *(v0 + 560) = *v152;
      *(v0 + 576) = v189;
      v190 = *(v0 + 744);
      *(v0 + 592) = *(v0 + 728);
      *(v0 + 608) = v190;
      sub_266AEB504(v0 + 560);
      v191 = *(v0 + 672);
      *(v0 + 112) = *(v0 + 656);
      *(v0 + 128) = v191;
      *(v0 + 144) = *(v0 + 688);
      v192 = *(v0 + 608);
      *(v0 + 48) = *(v0 + 592);
      *(v0 + 64) = v192;
      v193 = *(v0 + 640);
      *(v0 + 80) = *(v0 + 624);
      *(v0 + 96) = v193;
      v195 = *(v0 + 560);
      v194 = *(v0 + 576);
    }

    else
    {
      v176 = (v0 + 424);
      v177 = *(v0 + 2768);
      swift_beginAccess();
      v149(v177, v150, v151);
      v178 = sub_266AEEAB8();
      v179 = sub_266AEEBB8();
      v180 = os_log_type_enabled(v178, v179);
      v181 = *(v0 + 2864);
      if (v180)
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_266ADA000, v178, v179, "No matching organization found", v182, 2u);
        MEMORY[0x26D5EA2D0](v182, -1, -1);

        sub_266AEB4F8(v181, 0);
      }

      else
      {
        sub_266AEB4F8(*(v0 + 2864), 0);
      }

      (*(v0 + 2856))(*(v0 + 2768), *(v0 + 2744));

      sub_266AEB50C((v0 + 1336));
      v196 = *(v0 + 1416);
      *(v0 + 488) = *(v0 + 1400);
      *(v0 + 504) = v196;
      v197 = *(v0 + 1448);
      *(v0 + 520) = *(v0 + 1432);
      *(v0 + 536) = v197;
      v198 = *(v0 + 1352);
      *v176 = *(v0 + 1336);
      *(v0 + 440) = v198;
      v199 = *(v0 + 1384);
      *(v0 + 456) = *(v0 + 1368);
      *(v0 + 472) = v199;
      sub_266AEB504(v0 + 424);
      v200 = *(v0 + 536);
      *(v0 + 112) = *(v0 + 520);
      *(v0 + 128) = v200;
      *(v0 + 144) = *(v0 + 552);
      v201 = *(v0 + 472);
      *(v0 + 48) = *(v0 + 456);
      *(v0 + 64) = v201;
      v202 = *(v0 + 504);
      *(v0 + 80) = *(v0 + 488);
      *(v0 + 96) = v202;
      v195 = *v176;
      v194 = *(v0 + 440);
    }

    *(v0 + 16) = v195;
    *(v0 + 32) = v194;
    v203 = *(v0 + 2696);
    v204 = *(v0 + 80);
    v206 = *(v0 + 32);
    v205 = *(v0 + 48);
    *(v203 + 48) = *(v0 + 64);
    *(v203 + 64) = v204;
    *(v203 + 16) = v206;
    *(v203 + 32) = v205;
    v208 = *(v0 + 112);
    v207 = *(v0 + 128);
    v209 = *(v0 + 96);
    *(v203 + 128) = *(v0 + 144);
    *(v203 + 96) = v208;
    *(v203 + 112) = v207;
    *(v203 + 80) = v209;
    *v203 = *(v0 + 16);

    v210 = *(v0 + 8);

    return v210();
  }

  v212 = v0;
  v71 = *(v0 + 2840);
  v72 = *(v0 + 2832);
  v73 = *(v0 + 2792);
  v74 = *(v0 + 2744);
  swift_beginAccess();
  v71(v73, v72, v74);

  v75 = sub_266AEEAB8();
  v76 = sub_266AEEBB8();

  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 2904);
  if (v77)
  {
    v79 = *(v0 + 2880);
    v80 = *(v0 + 2872);
    v227 = *(v0 + 2792);
    v232 = *(v0 + 2856);
    v214 = *(v0 + 2896);
    v221 = *(v0 + 2744);
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v240 = v82;
    *v81 = 136315394;
    if (v79)
    {
      v83 = v79;
    }

    else
    {
      v80 = 0x3E7974706D653CLL;
      v83 = 0xE700000000000000;
    }

    v84 = sub_266ADDBA0(v80, v83, &v240);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    if (v78)
    {
      v85 = v214;
    }

    else
    {
      v85 = 0x3E7974706D653CLL;
    }

    if (v78)
    {
      v86 = v78;
    }

    else
    {
      v86 = 0xE700000000000000;
    }

    v87 = sub_266ADDBA0(v85, v86, &v240);

    *(v81 + 14) = v87;
    _os_log_impl(&dword_266ADA000, v75, v76, "No orgs found matching siriLanguageCode: %s, physicalLocationCountryCode: %s.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v82, -1, -1);
    MEMORY[0x26D5EA2D0](v81, -1, -1);

    v232(v227, v221);
  }

  else
  {
    v88 = *(v0 + 2856);
    v89 = *(v0 + 2792);
    v90 = *(v0 + 2744);

    v88(v89, v90);
  }

  v91 = *(v0 + 2840);
  v92 = *(v0 + 2832);
  v93 = *(v0 + 2784);
  v94 = *(v0 + 2744);
  v95 = sub_266AEE6F8();
  v97 = v96;
  swift_beginAccess();
  v91(v93, v92, v94);

  v98 = sub_266AEEAB8();
  v99 = sub_266AEEBB8();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = *(v0 + 2880);
    v101 = *(v0 + 2872);
    v228 = *(v0 + 2784);
    v233 = *(v0 + 2856);
    v222 = *(v0 + 2744);
    v102 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v240 = v215;
    *v102 = 136315394;
    if (v100)
    {
      v103 = v100;
    }

    else
    {
      v101 = 0x3E7974706D653CLL;
      v103 = 0xE700000000000000;
    }

    v104 = sub_266ADDBA0(v101, v103, &v240);

    *(v102 + 4) = v104;
    *(v102 + 12) = 2080;
    if (v97)
    {
      v105 = v95;
    }

    else
    {
      v105 = 0x3E7974706D653CLL;
    }

    if (v97)
    {
      v106 = v97;
    }

    else
    {
      v106 = 0xE700000000000000;
    }

    v107 = sub_266ADDBA0(v105, v106, &v240);

    *(v102 + 14) = v107;
    _os_log_impl(&dword_266ADA000, v98, v99, "Falling back to locale search. Looking for an organization matching siriLanguageCode: %s, siriRegionCode: %s.", v102, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v215, -1, -1);
    MEMORY[0x26D5EA2D0](v102, -1, -1);

    result = v233(v228, v222);
  }

  else
  {
    v108 = *(v0 + 2856);
    v109 = *(v0 + 2784);
    v110 = *(v0 + 2744);

    result = v108(v109, v110);
  }

  v111 = MEMORY[0x277D84F90];
  if (!*(v0 + 2912))
  {
    v116 = MEMORY[0x277D84F90];
LABEL_87:
    sub_266AEB4F8(*(v0 + 2864), 0);

    swift_beginAccess();
    *(v0 + 2688) = v116;

    v136 = *(v116 + 16);
    if (v136)
    {
      v240 = v111;

      sub_266AEB4D8(0, v136, 0);
      v137 = 0;
      v138 = v240;
      v139 = v240[2];
      v216 = v139 << 7;
      v219 = v116;
      do
      {
        v140 = v116 + v137;
        v141 = *(v116 + v137 + 40);
        v142 = *(v116 + v137 + 56);
        v223 = *(v116 + v137 + 48);
        v229 = *(v116 + v137 + 32);
        v143 = *(v116 + v137 + 128);
        v144 = *(v116 + v137 + 136);
        v145 = *(v140 + 152);
        v234 = v143;
        v239 = *(v140 + 144);
        v240 = v138;
        v146 = v139 + 1;
        v147 = *(v138 + 24);

        if (v139 >= v147 >> 1)
        {
          sub_266AEB4D8((v147 > 1), v146, 1);
          v138 = v240;
        }

        *(v138 + 16) = v146;
        v148 = (v138 + v216 + v137);
        v148[4] = v229;
        v148[5] = v141;
        v148[6] = v223;
        v148[7] = v142;
        v148[8] = 0;
        v148[9] = 0xE000000000000000;
        v148[10] = 0;
        v148[11] = 0xE000000000000000;
        v148[12] = 0;
        v148[13] = 0xE000000000000000;
        v148[14] = 0;
        v148[15] = 0xE000000000000000;
        v148[16] = v234;
        v148[17] = v144;
        v137 += 128;
        ++v139;
        v148[18] = v239;
        v148[19] = v145;
        --v136;
        v116 = v219;
      }

      while (v136);
      v237 = v138;

      v0 = v212;
    }

    else
    {

      v237 = MEMORY[0x277D84F90];
    }

    goto LABEL_94;
  }

  v112 = 0;
  v113 = (v0 + 1208);
  v114 = *(v0 + 2880);
  v115 = *(v0 + 2864) + 32;
  v116 = MEMORY[0x277D84F90];
LABEL_69:
  v117 = (v115 + (v112++ << 7));
  while ((v112 - 1) < *(*(v0 + 2864) + 16))
  {
    v119 = *v117;
    v120 = v117[1];
    v121 = v117[3];
    v113[2] = v117[2];
    v113[3] = v121;
    *v113 = v119;
    v113[1] = v120;
    v122 = v117[4];
    v123 = v117[5];
    v124 = v117[7];
    v113[6] = v117[6];
    v113[7] = v124;
    v113[4] = v122;
    v113[5] = v123;
    if (v114)
    {
      if (result = *(v0 + 1224), result == *(v0 + 2872)) && *(v0 + 2880) == *(v0 + 1232) || (result = sub_266AEECB8(), (result))
      {
        if (v97)
        {
          if (*(v0 + 1208) == v95 && v97 == *(v0 + 1216) || (result = sub_266AEECB8(), (result & 1) != 0))
          {
            sub_266AE65B4(v113, v0 + 1080);
            result = swift_isUniquelyReferenced_nonNull_native();
            v240 = v116;
            if ((result & 1) == 0)
            {
              result = sub_266AEB4D8(0, *(v116 + 16) + 1, 1);
              v116 = v240;
            }

            v126 = *(v116 + 16);
            v125 = *(v116 + 24);
            v127 = v116;
            if (v126 >= v125 >> 1)
            {
              result = sub_266AEB4D8((v125 > 1), v126 + 1, 1);
              v127 = v240;
            }

            v128 = *(v212 + 2912);
            *(v127 + 16) = v126 + 1;
            v129 = (v127 + (v126 << 7));
            v0 = v212;
            v130 = *v113;
            v131 = v113[1];
            v132 = v113[3];
            v129[4] = v113[2];
            v129[5] = v132;
            v129[2] = v130;
            v129[3] = v131;
            v133 = v113[4];
            v134 = v113[5];
            v135 = v113[7];
            v129[8] = v113[6];
            v129[9] = v135;
            v129[6] = v133;
            v129[7] = v134;
            v116 = v127;
            if (v128 != v112)
            {
              goto LABEL_69;
            }

            goto LABEL_87;
          }
        }
      }
    }

    v117 += 8;
    if (v112++ == *(v0 + 2912))
    {
      goto LABEL_87;
    }
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_266AE9958(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2936) = a1;
  *(v3 + 2944) = a2;

  return MEMORY[0x2822009F8](sub_266AE9A5C, 0, 0);
}

uint64_t sub_266AE9A5C()
{
  v208 = v0;
  v1 = v0[368];
  v2 = v0[355];
  v3 = v0[354];
  v4 = v0[350];
  v5 = v0[343];
  swift_beginAccess();
  v2(v4, v3, v5);

  v6 = sub_266AEEAB8();
  v7 = sub_266AEEBB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[368];
    v9 = v0[367];
    v201 = v0[350];
    v205 = v0[357];
    v10 = v0[343];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v207 = v12;
    *v11 = 136315138;
    if (v8)
    {
      v13 = v1;
    }

    else
    {
      v9 = 0x3E7974706D653CLL;
      v13 = 0xE700000000000000;
    }

    v14 = sub_266ADDBA0(v9, v13, &v207);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_266ADA000, v6, v7, "Fetched current city: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5EA2D0](v12, -1, -1);
    MEMORY[0x26D5EA2D0](v11, -1, -1);

    v205(v201, v10);
  }

  else
  {
    v15 = v0[357];
    v16 = v0[350];
    v17 = v0[343];

    v15(v16, v17);
  }

  v18 = *(v0[365] + 16);

  v20 = v0;
  if (v18)
  {
    v21 = 0;
    v22 = (v0 + 119);
    v23 = v0[368];
    v24 = result + 32;
    v25 = MEMORY[0x277D84F90];
    do
    {
      v26 = (v24 + (v21 << 7));
      v27 = v21;
      while (1)
      {
        if (v27 >= *(v20[365] + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        v28 = *v26;
        v29 = v26[1];
        v30 = v26[3];
        *(v20 + 123) = v26[2];
        *(v20 + 125) = v30;
        *v22 = v28;
        *(v20 + 121) = v29;
        v31 = v26[4];
        v32 = v26[5];
        v33 = v26[7];
        *(v20 + 131) = v26[6];
        *(v20 + 133) = v33;
        *(v20 + 127) = v31;
        *(v20 + 129) = v32;
        if (v23)
        {
          if (v20[123] == v20[367] && v20[368] == v20[124])
          {
            break;
          }

          result = sub_266AEECB8();
          if (result)
          {
            break;
          }
        }

        ++v27;
        v26 += 8;
        if (v18 == v27)
        {
          goto LABEL_23;
        }
      }

      sub_266AE65B4((v20 + 119), (v20 + 103));
      result = swift_isUniquelyReferenced_nonNull_native();
      v207 = v25;
      if ((result & 1) == 0)
      {
        result = sub_266AEB4D8(0, *(v25 + 16) + 1, 1);
        v25 = v207;
      }

      v34 = v25;
      v35 = *(v25 + 16);
      v36 = *(v34 + 24);
      if (v35 >= v36 >> 1)
      {
        result = sub_266AEB4D8((v36 > 1), v35 + 1, 1);
        v34 = v207;
      }

      v21 = v27 + 1;
      *(v34 + 16) = v35 + 1;
      v37 = (v34 + (v35 << 7));
      v38 = *v22;
      v39 = *(v20 + 121);
      v40 = *(v20 + 125);
      v37[4] = *(v20 + 123);
      v37[5] = v40;
      v37[2] = v38;
      v37[3] = v39;
      v41 = *(v20 + 127);
      v42 = *(v20 + 129);
      v43 = *(v20 + 133);
      v37[8] = *(v20 + 131);
      v37[9] = v43;
      v37[6] = v41;
      v37[7] = v42;
      v25 = v34;
    }

    while (v18 - 1 != v27);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

LABEL_23:

  swift_beginAccess();
  v20[336] = v25;

  if (*(v25 + 16))
  {
    v44 = v20[358];

    sub_266AEB4F8(v44, 0);
LABEL_75:
    v122 = v20;
    v123 = v20[355];
    v124 = v122[354];
    v125 = v122[343];
    if (*(v25 + 16))
    {
      v126 = v122 + 87;
      v127 = v122 + 231;
      v128 = v122[347];
      v129 = *(v25 + 80);
      v131 = *(v25 + 32);
      v130 = *(v25 + 48);
      *(v122 + 235) = *(v25 + 64);
      *(v122 + 237) = v129;
      *(v122 + 231) = v131;
      *(v122 + 233) = v130;
      v132 = *(v25 + 144);
      v134 = *(v25 + 96);
      v133 = *(v25 + 112);
      *(v122 + 243) = *(v25 + 128);
      *(v122 + 245) = v132;
      *(v122 + 239) = v134;
      *(v122 + 241) = v133;
      swift_beginAccess();
      v123(v128, v124, v125);
      sub_266AE65B4((v122 + 231), (v122 + 263));
      sub_266AE65B4((v122 + 231), (v122 + 279));
      v135 = sub_266AEEAB8();
      v136 = sub_266AEEBB8();
      sub_266AE65EC((v122 + 231));
      v137 = os_log_type_enabled(v135, v136);
      v138 = v122[357];
      v139 = v122[347];
      v140 = v122[343];
      v141 = v122;
      if (v137)
      {
        v196 = v122[358];
        v200 = v122[343];
        v142 = swift_slowAlloc();
        v192 = v138;
        v143 = swift_slowAlloc();
        v207 = v143;
        *v142 = 136315138;
        v144 = *(v122 + 241);
        *(v122 + 255) = *(v122 + 239);
        *(v122 + 257) = v144;
        v145 = *(v122 + 245);
        *(v122 + 259) = *(v122 + 243);
        *(v122 + 261) = v145;
        v146 = *(v122 + 233);
        *(v122 + 247) = *v127;
        *(v122 + 249) = v146;
        v147 = *(v122 + 237);
        *(v122 + 251) = *(v122 + 235);
        *(v122 + 253) = v147;
        sub_266AE65B4((v122 + 231), (v122 + 183));
        v148 = sub_266AEEB28();
        v150 = sub_266ADDBA0(v148, v149, &v207);

        *(v142 + 4) = v150;
        _os_log_impl(&dword_266ADA000, v135, v136, "Found matching organization: %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x26D5EA2D0](v143, -1, -1);
        MEMORY[0x26D5EA2D0](v142, -1, -1);

        sub_266AEB4F8(v196, 0);
        v192(v139, v200);
      }

      else
      {
        sub_266AEB4F8(v122[358], 0);

        v138(v139, v140);
      }

      v159 = v127[5];
      v126[4] = v127[4];
      v126[5] = v159;
      v160 = v127[7];
      v126[6] = v127[6];
      v126[7] = v160;
      v161 = v127[1];
      *v126 = *v127;
      v126[1] = v161;
      v162 = v127[3];
      v126[2] = v127[2];
      v126[3] = v162;
      nullsub_1();
      v163 = v126[5];
      *(v141 + 39) = v126[4];
      *(v141 + 40) = v163;
      v164 = v126[7];
      *(v141 + 41) = v126[6];
      *(v141 + 42) = v164;
      v165 = v126[1];
      *(v141 + 35) = *v126;
      *(v141 + 36) = v165;
      v166 = v126[3];
      *(v141 + 37) = v126[2];
      *(v141 + 38) = v166;
      sub_266AEB504((v141 + 70));
      v167 = *(v141 + 42);
      *(v141 + 7) = *(v141 + 41);
      *(v141 + 8) = v167;
      *(v141 + 144) = *(v141 + 688);
      v168 = *(v141 + 38);
      *(v141 + 3) = *(v141 + 37);
      *(v141 + 4) = v168;
      v169 = *(v141 + 40);
      *(v141 + 5) = *(v141 + 39);
      *(v141 + 6) = v169;
      v171 = *(v141 + 35);
      v170 = *(v141 + 36);
    }

    else
    {
      v151 = (v122 + 53);
      v152 = v122 + 167;
      v153 = v122[346];
      swift_beginAccess();
      v123(v153, v124, v125);
      v154 = sub_266AEEAB8();
      v155 = sub_266AEEBB8();
      v156 = os_log_type_enabled(v154, v155);
      v157 = v122[358];
      v141 = v122;
      if (v156)
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_266ADA000, v154, v155, "No matching organization found", v158, 2u);
        MEMORY[0x26D5EA2D0](v158, -1, -1);

        sub_266AEB4F8(v157, 0);
      }

      else
      {
        sub_266AEB4F8(v122[358], 0);
      }

      (v141[357])(v141[346], v141[343]);

      sub_266AEB50C(v152);
      v172 = v152[5];
      *(v151 + 64) = v152[4];
      *(v151 + 80) = v172;
      v173 = v152[7];
      *(v151 + 96) = v152[6];
      *(v151 + 112) = v173;
      v174 = v152[1];
      *v151 = *v152;
      *(v151 + 16) = v174;
      v175 = v152[3];
      *(v151 + 32) = v152[2];
      *(v151 + 48) = v175;
      sub_266AEB504(v151);
      v176 = *(v151 + 112);
      *(v141 + 7) = *(v151 + 96);
      *(v141 + 8) = v176;
      *(v141 + 144) = *(v151 + 128);
      v177 = *(v151 + 48);
      *(v141 + 3) = *(v151 + 32);
      *(v141 + 4) = v177;
      v178 = *(v151 + 80);
      *(v141 + 5) = *(v151 + 64);
      *(v141 + 6) = v178;
      v171 = *v151;
      v170 = *(v151 + 16);
    }

    *(v141 + 1) = v171;
    *(v141 + 2) = v170;
    v179 = v141[337];
    v180 = *(v141 + 5);
    v182 = *(v141 + 2);
    v181 = *(v141 + 3);
    *(v179 + 48) = *(v141 + 4);
    *(v179 + 64) = v180;
    *(v179 + 16) = v182;
    *(v179 + 32) = v181;
    v184 = *(v141 + 7);
    v183 = *(v141 + 8);
    v185 = *(v141 + 6);
    *(v179 + 128) = *(v141 + 144);
    *(v179 + 96) = v184;
    *(v179 + 112) = v183;
    *(v179 + 80) = v185;
    *v179 = *(v141 + 1);

    v186 = v141[1];

    return v186();
  }

  v187 = v20;
  v45 = v20[355];
  v46 = v187[354];
  v47 = v187[349];
  v48 = v187[343];
  swift_beginAccess();
  v45(v47, v46, v48);
  v20 = v187;

  v49 = sub_266AEEAB8();
  v50 = sub_266AEEBB8();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v187[363];
  if (v51)
  {
    v53 = v187[360];
    v54 = v187[359];
    v197 = v187[349];
    v202 = v187[357];
    v188 = v187[362];
    v193 = v187[343];
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v207 = v56;
    *v55 = 136315394;
    if (v53)
    {
      v57 = v53;
    }

    else
    {
      v54 = 0x3E7974706D653CLL;
      v57 = 0xE700000000000000;
    }

    v58 = sub_266ADDBA0(v54, v57, &v207);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    if (v52)
    {
      v59 = v188;
    }

    else
    {
      v59 = 0x3E7974706D653CLL;
    }

    if (v52)
    {
      v60 = v52;
    }

    else
    {
      v60 = 0xE700000000000000;
    }

    v61 = sub_266ADDBA0(v59, v60, &v207);

    *(v55 + 14) = v61;
    _os_log_impl(&dword_266ADA000, v49, v50, "No orgs found matching siriLanguageCode: %s, physicalLocationCountryCode: %s.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v56, -1, -1);
    MEMORY[0x26D5EA2D0](v55, -1, -1);

    v202(v197, v193);
  }

  else
  {
    v62 = v187[357];
    v63 = v187[349];
    v64 = v187[343];

    v62(v63, v64);
  }

  v65 = v187[355];
  v66 = v187[354];
  v67 = v187[348];
  v68 = v187[343];
  v69 = sub_266AEE6F8();
  v71 = v70;
  swift_beginAccess();
  v65(v67, v66, v68);

  v72 = sub_266AEEAB8();
  v73 = sub_266AEEBB8();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = v187[360];
    v75 = v187[359];
    v198 = v187[348];
    v203 = v187[357];
    v194 = v187[343];
    v76 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v207 = v189;
    *v76 = 136315394;
    if (v74)
    {
      v77 = v74;
    }

    else
    {
      v75 = 0x3E7974706D653CLL;
      v77 = 0xE700000000000000;
    }

    v78 = sub_266ADDBA0(v75, v77, &v207);

    *(v76 + 4) = v78;
    *(v76 + 12) = 2080;
    if (v71)
    {
      v79 = v69;
    }

    else
    {
      v79 = 0x3E7974706D653CLL;
    }

    if (v71)
    {
      v80 = v71;
    }

    else
    {
      v80 = 0xE700000000000000;
    }

    v81 = sub_266ADDBA0(v79, v80, &v207);

    *(v76 + 14) = v81;
    _os_log_impl(&dword_266ADA000, v72, v73, "Falling back to locale search. Looking for an organization matching siriLanguageCode: %s, siriRegionCode: %s.", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v189, -1, -1);
    MEMORY[0x26D5EA2D0](v76, -1, -1);

    result = v203(v198, v194);
  }

  else
  {
    v82 = v187[357];
    v83 = v187[348];
    v84 = v187[343];

    result = v82(v83, v84);
  }

  v85 = MEMORY[0x277D84F90];
  if (!v187[364])
  {
LABEL_68:
    sub_266AEB4F8(v187[358], 0);

    swift_beginAccess();
    v187[336] = v85;

    v110 = *(v85 + 16);
    if (v110)
    {
      v207 = MEMORY[0x277D84F90];

      sub_266AEB4D8(0, v110, 0);
      v111 = 0;
      v25 = v207;
      v112 = v207[2];
      v190 = v112 << 7;
      v191 = v85;
      do
      {
        v113 = v85 + v111;
        v114 = *(v85 + v111 + 40);
        v115 = *(v85 + v111 + 56);
        v195 = *(v85 + v111 + 48);
        v199 = *(v85 + v111 + 32);
        v116 = *(v85 + v111 + 128);
        v117 = *(v85 + v111 + 136);
        v118 = *(v113 + 152);
        v204 = v116;
        v206 = *(v113 + 144);
        v207 = v25;
        v119 = v112 + 1;
        v120 = *(v25 + 24);

        if (v112 >= v120 >> 1)
        {
          sub_266AEB4D8((v120 > 1), v119, 1);
          v25 = v207;
        }

        *(v25 + 16) = v119;
        v121 = (v25 + v190 + v111);
        v121[4] = v199;
        v121[5] = v114;
        v121[6] = v195;
        v121[7] = v115;
        v121[8] = 0;
        v121[9] = 0xE000000000000000;
        v121[10] = 0;
        v121[11] = 0xE000000000000000;
        v121[12] = 0;
        v121[13] = 0xE000000000000000;
        v121[14] = 0;
        v121[15] = 0xE000000000000000;
        v121[16] = v204;
        v121[17] = v117;
        v111 += 128;
        ++v112;
        v121[18] = v206;
        v121[19] = v118;
        --v110;
        v85 = v191;
      }

      while (v110);

      v20 = v187;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    goto LABEL_75;
  }

  v86 = 0;
  v87 = (v187 + 151);
  v88 = v187[360];
  v89 = v187[358] + 32;
LABEL_51:
  v90 = v89;
  v91 = (v89 + (v86++ << 7));
  while ((v86 - 1) < *(v187[358] + 16))
  {
    v93 = *v91;
    v94 = v91[1];
    v95 = v91[3];
    *(v187 + 155) = v91[2];
    *(v187 + 157) = v95;
    *v87 = v93;
    *(v187 + 153) = v94;
    v96 = v91[4];
    v97 = v91[5];
    v98 = v91[7];
    *(v187 + 163) = v91[6];
    *(v187 + 165) = v98;
    *(v187 + 159) = v96;
    *(v187 + 161) = v97;
    if (v88)
    {
      if (result = v187[153], result == v187[359]) && v187[360] == v187[154] || (result = sub_266AEECB8(), (result))
      {
        if (v71)
        {
          if (v187[151] == v69 && v71 == v187[152] || (result = sub_266AEECB8(), (result & 1) != 0))
          {
            sub_266AE65B4((v187 + 151), (v187 + 135));
            result = swift_isUniquelyReferenced_nonNull_native();
            v207 = v85;
            if ((result & 1) == 0)
            {
              result = sub_266AEB4D8(0, *(v85 + 16) + 1, 1);
              v85 = v207;
            }

            v100 = *(v85 + 16);
            v99 = *(v85 + 24);
            v101 = v85;
            if (v100 >= v99 >> 1)
            {
              result = sub_266AEB4D8((v99 > 1), v100 + 1, 1);
              v101 = v207;
            }

            v102 = v187[364];
            *(v101 + 16) = v100 + 1;
            v103 = (v101 + (v100 << 7));
            v104 = *v87;
            v105 = *(v187 + 153);
            v106 = *(v187 + 157);
            v103[4] = *(v187 + 155);
            v103[5] = v106;
            v103[2] = v104;
            v103[3] = v105;
            v107 = *(v187 + 159);
            v108 = *(v187 + 161);
            v109 = *(v187 + 165);
            v103[8] = *(v187 + 163);
            v103[9] = v109;
            v103[6] = v107;
            v103[7] = v108;
            v92 = v102 == v86;
            v85 = v101;
            v89 = v90;
            if (v92)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }
      }
    }

    v91 += 8;
    v92 = v86++ == v187[364];
    if (v92)
    {
      goto LABEL_68;
    }
  }

LABEL_88:
  __break(1u);
  return result;
}

SiriEmergencyIntents::EmergencySituation_optional __swiftcall inferUsableSituation(situation:organization:)(SiriEmergencyIntents::EmergencySituation_optional situation, SiriEmergencyIntents::EmergencyOrganization_optional organization)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v39[-v12];
  if (situation.value > SiriEmergencyIntents_EmergencySituation_unknownDefault)
  {
LABEL_12:
    if (situation.value == SiriEmergencyIntents_EmergencySituation_abuse)
    {
      v23 = sub_266AEEAA8();
      swift_beginAccess();
      (*(v5 + 16))(v13, v23, v4);
      v24 = sub_266AEEAB8();
      v25 = sub_266AEEBB8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v41 = v27;
        *v26 = 136315138;
        value = SiriEmergencyIntents_EmergencySituation_abuse;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
        v28 = sub_266AEEBD8();
        v30 = sub_266ADDBA0(v28, v29, &v41);

        *(v26 + 4) = v30;
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x26D5EA2D0](v27, -1, -1);
        MEMORY[0x26D5EA2D0](v26, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      return 3;
    }

    return situation;
  }

  if (((1 << situation.value) & 0xD8000000) != 0)
  {
    v14 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_266AEEAB8();
    v16 = sub_266AEEBB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136315138;
      value = situation.value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
      v19 = sub_266AEEBD8();
      v21 = sub_266ADDBA0(v19, v20, &v41);

      *(v17 + 4) = v21;
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5EA2D0](v18, -1, -1);
      MEMORY[0x26D5EA2D0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  if (situation.value != SiriEmergencyIntents_EmergencySituation_assault)
  {
    if (situation.value == SiriEmergencyIntents_EmergencySituation_unknownDefault)
    {
      if (organization.value == SiriEmergencyIntents_EmergencyOrganization_unknownDefault)
      {
        return 35;
      }

      else
      {
        return organization.value;
      }
    }

    goto LABEL_12;
  }

  v31 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v11, v31, v4);
  v32 = sub_266AEEAB8();
  v33 = sub_266AEEBB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    value = SiriEmergencyIntents_EmergencySituation_assault;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
    v36 = sub_266AEEBD8();
    v38 = sub_266ADDBA0(v36, v37, &v41);

    *(v34 + 4) = v38;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D5EA2D0](v35, -1, -1);
    MEMORY[0x26D5EA2D0](v34, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  return 1;
}

uint64_t EmergencyOrganizationInfoProvider.EmergencyPropertyListReaderError.hashValue.getter(char a1)
{
  sub_266AEED18();
  MEMORY[0x26D5E9F70](a1 & 1);
  return sub_266AEED38();
}

uint64_t sub_266AEAFC0(uint64_t a1, char a2, char a3)
{
  *(v3 + 152) = a1;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_266AEB070;

  return EmergencyOrganizationInfoProvider.getOrganizationInfo(situation:organization:)(v3 + 16, a2, a3);
}

uint64_t sub_266AEB070()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v11 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 80);
  *(v2 + 48) = *(v1 + 64);
  *(v2 + 64) = v5;
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  v6 = *(v1 + 96);
  v7 = *(v1 + 112);
  v8 = *(v1 + 128);
  *(v2 + 128) = *(v1 + 144);
  *(v2 + 96) = v7;
  *(v2 + 112) = v8;
  *(v2 + 80) = v6;
  v9 = *(v11 + 8);

  return v9();
}

unint64_t sub_266AEB1A8()
{
  result = qword_2800BD6D0;
  if (!qword_2800BD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6D0);
  }

  return result;
}

uint64_t sub_266AEB208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyOrganizationInfoProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266AEB26C()
{
  v1 = (type metadata accessor for EmergencyOrganizationInfoProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_266AEE718();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  if (*(v0 + v3 + v1[8]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266AEB36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyOrganizationInfoProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}