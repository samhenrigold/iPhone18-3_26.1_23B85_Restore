uint64_t sub_1B496F398(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for CacheIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B496F4A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_1B496F4B4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B496F4D8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1B4D17BBC();
}

double sub_1B496F4FC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence28InferenceTelemetryIdentifierVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B496F52C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1B496F544(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B496F618()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496F74C()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496F880(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t sub_1B496F99C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t sub_1B496FAB8(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496FBE8(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B496FD18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1B496FE58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

FitnessIntelligence::DaemonMessageCode_optional __swiftcall DaemonMessageCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0;
  v3 = 21;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_37;
    case 2u:
      v2 = 1;
      goto LABEL_37;
    case 3u:
      v2 = 2;
      goto LABEL_37;
    case 4u:
      v2 = 3;
      goto LABEL_37;
    case 5u:
      v2 = 4;
      goto LABEL_37;
    case 6u:
      v2 = 5;
      goto LABEL_37;
    case 7u:
      v2 = 6;
      goto LABEL_37;
    case 8u:
      v2 = 7;
      goto LABEL_37;
    case 0x15u:
      v2 = 8;
      goto LABEL_37;
    case 0x1Eu:
      v2 = 9;
      goto LABEL_37;
    case 0x1Fu:
      v2 = 10;
      goto LABEL_37;
    case 0x20u:
      v2 = 11;
      goto LABEL_37;
    case 0x21u:
      v2 = 12;
      goto LABEL_37;
    case 0x22u:
      v2 = 13;
      goto LABEL_37;
    case 0x32u:
      v2 = 14;
      goto LABEL_37;
    case 0x33u:
      v2 = 15;
      goto LABEL_37;
    case 0x34u:
      v2 = 16;
      goto LABEL_37;
    case 0x35u:
      v2 = 17;
      goto LABEL_37;
    case 0x36u:
      v2 = 18;
      goto LABEL_37;
    case 0x37u:
      v2 = 19;
      goto LABEL_37;
    case 0x38u:
      v2 = 20;
LABEL_37:
      v3 = v2;
      goto LABEL_38;
    case 0x3Cu:
LABEL_38:
      *v1 = v3;
      break;
    case 0x3Du:
      *v1 = 22;
      break;
    case 0x3Fu:
      *v1 = 23;
      break;
    case 0x46u:
      *v1 = 24;
      break;
    case 0x47u:
      *v1 = 25;
      break;
    case 0x48u:
      *v1 = 26;
      break;
    case 0x49u:
      *v1 = 27;
      break;
    case 0x4Au:
      *v1 = 28;
      break;
    case 0x4Bu:
      *v1 = 29;
      break;
    case 0x4Cu:
      *v1 = 30;
      break;
    case 0x4Du:
      *v1 = 31;
      break;
    case 0x4Eu:
      *v1 = 32;
      break;
    case 0x50u:
      *v1 = 33;
      break;
    case 0x5Au:
      *v1 = 34;
      break;
    case 0x5Bu:
      *v1 = 35;
      break;
    case 0x5Cu:
      *v1 = 36;
      break;
    case 0x5Du:
      *v1 = 37;
      break;
    case 0x5Eu:
      *v1 = 38;
      break;
    default:
      *v1 = 39;
      break;
  }

  return rawValue;
}

unint64_t sub_1B49702D0()
{
  result = qword_1EDC3CFA0;
  if (!qword_1EDC3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CFA0);
  }

  return result;
}

uint64_t sub_1B4970324()
{
  sub_1B4D18E8C();
  sub_1B4D18EBC();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49703AC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D18EBC();
  return sub_1B4D18EDC();
}

uint64_t getEnumTagSinglePayload for DaemonMessageCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonMessageCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B4970564(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4970584(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
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

uint64_t sub_1B49705D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B49705F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t _s19FitnessIntelligence23RingsTotalCountPropertyV9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4970744(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

BOOL sub_1B49707D8(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B4970808@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B4970834@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1B49709B0(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  swift_getWitnessTable();
  sub_1B4D17A1C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4970A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_DWORD *sub_1B4970AA8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B4970AD8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1B4970DE4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B4970B18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1B4D17A0C();
}

void sub_1B4970BE8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B4970DE4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t SnapshotQueryResult.init(_:)@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v242 = a3;
  v287 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v241 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v300 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v267 = &v234 - v8;
  v262 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v240 = (&v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v239 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v260 = &v234 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v279 = &v234 - v15;
  v277 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v286 = (&v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v254);
  v278 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v291);
  v285 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v255 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v238 = (&v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v237 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v253 = &v234 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v275 = &v234 - v25;
  v273 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v281 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v252);
  v274 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v290);
  v294 = (&v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v259 = &v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v247 = &v234 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v258 = &v234 - v34;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v282 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v256 = &v234 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v246 = (&v234 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v263 = (&v234 - v39);
  v251 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v236 = (&v234 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v235 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v249 = &v234 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v271 = &v234 - v46;
  v269 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v280 = &v234 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v248);
  v270 = &v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v289);
  v284 = (&v234 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v234 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v234 - v54;
  v288 = sub_1B4D1880C();
  v293 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v264 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v245 = &v234 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v244 = &v234 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v243 = &v234 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v292 = &v234 - v64;
  v299 = AssociatedTypeWitness;
  v298 = sub_1B4D1880C();
  v295 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v266 = &v234 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v234 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v234 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v234 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v297 = &v234 - v76;
  sub_1B4974FBC(v4, v55, &qword_1EB8A6688, &qword_1B4D1A660);
  v77 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v77 - 8) + 48))(v55, 1, v77) == 1)
  {
    _s7FailureOMa(0, a2, v301, v78);
    swift_getWitnessTable();
    swift_allocError();
    *v79 = 0;
    v79[1] = 0;
    swift_willThrow();
    v80 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult;
LABEL_3:
    v81 = v80;
    v82 = v4;
LABEL_4:
    sub_1B497538C(v82, v81);
    return sub_1B4975024(v55, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  v234 = a2;
  v265 = v4;
  sub_1B4974FBC(v55, v52, &qword_1EB8A6688, &qword_1B4D1A660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v284;
      sub_1B49752F8(v52, v284, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v85 = v271;
      sub_1B4974FBC(v4 + v289[5], v271, &qword_1EB8A6680, &unk_1B4D2FD90);
      v86 = *(v268 + 48);
      v87 = v269;
      if (v86(v85, 1, v269) == 1)
      {
        v88 = MEMORY[0x1E69E7CC0];
        v89 = v280;
        *v280 = MEMORY[0x1E69E7CC0];
        *(v89 + 1) = v88;
        sub_1B4D17BBC();
        v90 = *(v87 + 28);
        v91 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v91 - 8) + 56))(&v89[v90], 1, 1, v91);
        v92 = *(v87 + 32);
        v93 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        (*(*(v93 - 8) + 56))(&v89[v92], 1, 1, v93);
        v94 = v86(v85, 1, v87);
        v95 = v300;
        v96 = v298;
        v97 = v296;
        if (v94 != 1)
        {
          sub_1B4975024(v85, &qword_1EB8A6680, &unk_1B4D2FD90);
        }
      }

      else
      {
        v89 = v280;
        sub_1B49752F8(v85, v280, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v95 = v300;
        v96 = v298;
        v97 = v296;
      }

      RingsPropertiesQuery.init(_:)(v89, v270);
      v131 = v97;
      if (v97)
      {
        sub_1B497538C(v265, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        v80 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
        goto LABEL_3;
      }

      v296 = v55;
      v133 = v299;
      v134 = swift_dynamicCast();
      (*(v95 + 56))(v74, v134 ^ 1u, 1, v133);
      (*(v295 + 32))(v297, v74, v96);
      v135 = v289[6];
      v136 = v249;
      sub_1B4974FBC(v4 + v135, v249, &qword_1EB8A6678, &qword_1B4D3CE20);
      v137 = v251;
      v294 = *(v250 + 48);
      v138 = v294(v136, 1, v251);
      sub_1B4975024(v136, &qword_1EB8A6678, &qword_1B4D3CE20);
      if (v138 == 1)
      {
        v139 = v243;
        v286 = *(v287 + 56);
        v286(v243, 1, 1, v234);
        v140 = v292;
        v141 = v293;
        v142 = Metrics;
        v143 = v282;
        v144 = v258;
      }

      else
      {
        v172 = v4 + v135;
        v173 = v235;
        sub_1B4974FBC(v172, v235, &qword_1EB8A6678, &qword_1B4D3CE20);
        v174 = v294;
        v175 = v294(v173, 1, v137);
        v142 = Metrics;
        v144 = v258;
        if (v175 == 1)
        {
          v176 = v236;
          *v236 = 0;
          v176[1] = 0;
          v176[2] = MEMORY[0x1E69E7CC0];
          sub_1B4D17BBC();
          if (v174(v173, 1, v137) != 1)
          {
            sub_1B4975024(v173, &qword_1EB8A6678, &qword_1B4D3CE20);
          }
        }

        else
        {
          v176 = v236;
          sub_1B49752F8(v173, v236, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
        }

        RingsProperties.init(_:)(v176, &v304);
        v189 = v234;
        v143 = v282;
        v302 = v304;
        v303 = v305;
        v139 = v243;
        v193 = swift_dynamicCast();
        v286 = *(v287 + 56);
        v286(v139, v193 ^ 1u, 1, v189);
        v140 = v292;
        v141 = v293;
        v4 = v284;
      }

      (*(v141 + 32))(v140, v139, v288);
      sub_1B4974FBC(v4 + v289[7], v144, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v194 = *(v143 + 48);
      if (v194(v144, 1, v142) == 1)
      {
        v195 = v299;
        v196 = v263;
        *v263 = 0;
        v196[1] = 0;
        *(v196 + 16) = 0;
        sub_1B4D17BBC();
        sub_1B497538C(v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        if (v194(v144, 1, v142) != 1)
        {
          sub_1B4975024(v144, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }

        v197 = v301;
        v198 = v266;
        v156 = v298;
        v199 = v263;
        goto LABEL_63;
      }

      v195 = v299;
      sub_1B497538C(v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v200 = v263;
      sub_1B49752F8(v144, v263, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v199 = v200;
    }

    else
    {
      v114 = v52;
      v115 = v285;
      sub_1B49752F8(v114, v285, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v116 = v279;
      sub_1B4974FBC(v115 + *(v291 + 20), v279, &qword_1EB8A6658, &qword_1B4D1A650);
      v117 = *(v276 + 48);
      v118 = v277;
      if (v117(v116, 1, v277) == 1)
      {
        v119 = MEMORY[0x1E69E7CC0];
        v120 = v286;
        *v286 = MEMORY[0x1E69E7CC0];
        *(v120 + 1) = v119;
        sub_1B4D17BBC();
        v121 = *(v118 + 28);
        v122 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v122 - 8) + 56))(&v120[v121], 1, 1, v122);
        v123 = *(v118 + 32);
        v124 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
        (*(*(v124 - 8) + 56))(&v120[v123], 1, 1, v124);
        v125 = v117(v116, 1, v118);
        v126 = v120;
        v127 = v265;
        v129 = v299;
        v128 = v300;
        v130 = v296;
        if (v125 != 1)
        {
          sub_1B4975024(v116, &qword_1EB8A6658, &qword_1B4D1A650);
          v126 = v286;
        }
      }

      else
      {
        v126 = v286;
        sub_1B49752F8(v116, v286, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v127 = v265;
        v129 = v299;
        v128 = v300;
        v130 = v296;
      }

      FitnessPlusPropertiesQuery.init(_:)(v126, v278);
      if (v130)
      {
        sub_1B497538C(v127, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B497538C(v115, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        return sub_1B4975024(v55, &qword_1EB8A6688, &qword_1B4D1A660);
      }

      v296 = v55;
      v158 = swift_dynamicCast();
      (*(v128 + 56))(v68, v158 ^ 1u, 1, v129);
      (*(v295 + 32))(v297, v68, v298);
      v159 = *(v291 + 24);
      v160 = v260;
      sub_1B4974FBC(v115 + v159, v260, &qword_1EB8A6650, &unk_1B4D2FDC0);
      v161 = v262;
      v294 = *(v261 + 48);
      v162 = v294(v160, 1, v262);
      sub_1B4975024(v160, &qword_1EB8A6650, &unk_1B4D2FDC0);
      if (v162 == 1)
      {
        v163 = v245;
        v286 = *(v287 + 56);
        v286(v245, 1, 1, v234);
        v164 = v292;
        v165 = v293;
        v166 = Metrics;
        v167 = v282;
        v131 = 0;
        v168 = v163;
        v169 = v299;
        v170 = v259;
        v171 = v256;
      }

      else
      {
        v182 = v115 + v159;
        v183 = v239;
        sub_1B4974FBC(v182, v239, &qword_1EB8A6650, &unk_1B4D2FDC0);
        v184 = v294;
        v185 = v294(v183, 1, v161);
        v166 = Metrics;
        v171 = v256;
        if (v185 == 1)
        {
          v186 = v161;
          v187 = v240;
          *v240 = 0;
          v187[1] = 0;
          v187[2] = MEMORY[0x1E69E7CC0];
          sub_1B4D17BBC();
          v188 = v184(v183, 1, v186);
          v170 = v259;
          if (v188 != 1)
          {
            sub_1B4975024(v183, &qword_1EB8A6650, &unk_1B4D2FDC0);
          }
        }

        else
        {
          v187 = v240;
          sub_1B49752F8(v183, v240, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
          v170 = v259;
        }

        FitnessPlusProperties.init(_:)(v187, &v304);
        v131 = v130;
        v192 = v234;
        v167 = v282;
        v115 = v285;
        v169 = v299;
        v302 = v304;
        v303 = v305;
        v208 = v245;
        v209 = swift_dynamicCast();
        v286 = *(v287 + 56);
        v286(v208, v209 ^ 1u, 1, v192);
        v168 = v208;
        v164 = v292;
        v165 = v293;
      }

      (*(v165 + 32))(v164, v168, v288);
      sub_1B4974FBC(v115 + *(v291 + 28), v170, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v210 = *(v167 + 48);
      v195 = v169;
      if (v210(v170, 1, v166) == 1)
      {
        *v171 = 0;
        *(v171 + 8) = 0;
        *(v171 + 16) = 0;
        sub_1B4D17BBC();
        sub_1B497538C(v115, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        if (v210(v170, 1, v166) != 1)
        {
          sub_1B4975024(v170, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }
      }

      else
      {
        sub_1B497538C(v115, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        sub_1B49752F8(v170, v171, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      v199 = v171;
    }

    v197 = v301;
    v198 = v266;
    v156 = v298;
    goto LABEL_63;
  }

  v98 = v294;
  sub_1B49752F8(v52, v294, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  v99 = v275;
  sub_1B4974FBC(v98 + v290[5], v275, &qword_1EB8A6668, &qword_1B4D1A658);
  v100 = *(v272 + 48);
  v101 = v273;
  if (v100(v99, 1, v273) == 1)
  {
    v102 = MEMORY[0x1E69E7CC0];
    v103 = v281;
    *v281 = MEMORY[0x1E69E7CC0];
    *(v103 + 1) = v102;
    sub_1B4D17BBC();
    v104 = v55;
    v105 = *(v101 + 28);
    v106 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v106 - 8) + 56))(&v103[v105], 1, 1, v106);
    v107 = *(v101 + 32);
    v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
    v109 = &v103[v107];
    v55 = v104;
    (*(*(v108 - 8) + 56))(v109, 1, 1, v108);
    v110 = v100(v99, 1, v101);
    v111 = v265;
    v113 = v299;
    v112 = v300;
    if (v110 != 1)
    {
      sub_1B4975024(v99, &qword_1EB8A6668, &qword_1B4D1A658);
    }
  }

  else
  {
    v103 = v281;
    sub_1B49752F8(v99, v281, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v111 = v265;
    v113 = v299;
    v112 = v300;
  }

  v132 = v296;
  WorkoutPropertiesQuery.init(_:)(v103, v274);
  v131 = v132;
  if (v132)
  {
    sub_1B497538C(v111, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v81 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
    v82 = v294;
    goto LABEL_4;
  }

  v296 = v55;
  v145 = swift_dynamicCast();
  (*(v112 + 56))(v71, v145 ^ 1u, 1, v113);
  (*(v295 + 32))(v297, v71, v298);
  v146 = v290[6];
  v147 = v294;
  v148 = v253;
  sub_1B4974FBC(v294 + v146, v253, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v149 = v257;
  v291 = *(v255 + 48);
  v150 = (v291)(v148, 1, v257);
  sub_1B4975024(v148, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v150 == 1)
  {
    v151 = v244;
    v286 = *(v287 + 56);
    v286(v244, 1, 1, v234);
    v152 = v292;
    v153 = v293;
    v154 = Metrics;
    v155 = v282;
    v156 = v298;
    v157 = v299;
  }

  else
  {
    v177 = v237;
    sub_1B4974FBC(v147 + v146, v237, &qword_1EB8A6660, &unk_1B4D2FDB0);
    v178 = v291;
    v179 = (v291)(v177, 1, v149);
    v154 = Metrics;
    if (v179 == 1)
    {
      v180 = v238;
      *v238 = 0;
      v180[1] = 0;
      v180[2] = MEMORY[0x1E69E7CC0];
      sub_1B4D17BBC();
      v181 = v178(v177, 1, v149);
      v157 = v299;
      if (v181 != 1)
      {
        sub_1B4975024(v177, &qword_1EB8A6660, &unk_1B4D2FDB0);
      }
    }

    else
    {
      v180 = v238;
      sub_1B49752F8(v177, v238, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      v157 = v299;
    }

    WorkoutProperties.init(_:)(v180, &v304);
    v190 = v234;
    v155 = v282;
    v191 = v287;
    v302 = v304;
    v303 = v305;
    v151 = v244;
    v201 = swift_dynamicCast();
    v286 = *(v191 + 56);
    v286(v151, v201 ^ 1u, 1, v190);
    v152 = v292;
    v153 = v293;
    v156 = v298;
  }

  (*(v153 + 32))(v152, v151, v288);
  v202 = v294;
  v203 = v247;
  sub_1B4974FBC(v294 + v290[7], v247, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v204 = *(v155 + 48);
  v195 = v157;
  if (v204(v203, 1, v154) == 1)
  {
    v205 = v154;
    v206 = v246;
    *v246 = 0;
    v206[1] = 0;
    *(v206 + 16) = 0;
    sub_1B4D17BBC();
    sub_1B497538C(v202, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    if (v204(v203, 1, v205) != 1)
    {
      sub_1B4975024(v203, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }

    v199 = v206;
  }

  else
  {
    sub_1B497538C(v202, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v207 = v246;
    sub_1B49752F8(v203, v246, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v199 = v207;
  }

  v197 = v301;
  v198 = v266;
LABEL_63:
  v211 = *v199;
  v212 = v199[1];
  v213 = *(v199 + 16);
  sub_1B497538C(v199, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4975024(v296, &qword_1EB8A6688, &qword_1B4D1A660);
  v214 = v295;
  (*(v295 + 16))(v198, v297, v156);
  v215 = v300;
  v216 = v195;
  if ((*(v300 + 48))(v198, 1, v195) == 1)
  {
    (*(v214 + 8))(v198, v156);
    v218 = v288;
LABEL_67:
    _s7FailureOMa(0, v234, v197, v217);
    swift_getWitnessTable();
    swift_allocError();
    *v224 = xmmword_1B4D1A640;
    swift_willThrow();
    sub_1B497538C(v265, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    (*(v293 + 8))(v292, v218);
    return (*(v214 + 8))(v297, v156);
  }

  LODWORD(v294) = v213;
  v219 = v287;
  v296 = v131;
  v291 = *(v215 + 32);
  (v291)(v267, v198, v216);
  v221 = v292;
  v220 = v293;
  v222 = v264;
  v218 = v288;
  (*(v293 + 16))(v264, v292, v288);
  v223 = v234;
  if ((*(v219 + 48))(v222, 1, v234) == 1)
  {
    (*(v215 + 8))(v267, v216);
    (*(v220 + 8))(v222, v218);
    v197 = v301;
    v214 = v295;
    v156 = v298;
    goto LABEL_67;
  }

  sub_1B497538C(v265, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  (*(v220 + 8))(v221, v218);
  (*(v295 + 8))(v297, v298);
  v225 = v223;
  v226 = *(v219 + 32);
  v227 = v216;
  v228 = v241;
  v226(v241, v222, v225);
  v229 = v242;
  (v291)(v242, v267, v227);
  v231 = type metadata accessor for SnapshotQueryResult(0, v225, v301, v230);
  v232 = *(v231 + 36);
  v226((v229 + v232), v228, v225);
  result = (v286)(v229 + v232, 0, 1, v225);
  v233 = v229 + *(v231 + 40);
  *v233 = v211;
  *(v233 + 8) = v212;
  *(v233 + 16) = v294;
  *(v233 + 24) = v211 + v212;
  return result;
}

uint64_t SnapshotQueryResult.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  sub_1B49754C4(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B497343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a1;
  v77 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v86);
  v96 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v75 - v10;
  v79 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v75 - v14;
  v83 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v21 = sub_1B4D1880C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v75 - v24;
  v97 = a3;
  v98 = a4;
  v27 = *(type metadata accessor for SnapshotQueryResult(0, a3, a4, v26) + 36);
  v90 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v94 = *(v21 - 8);
  (*(v94 + 16))(v25, a2 + v27, v21);
  v93 = *(AssociatedTypeWitness - 8);
  v29 = *(v93 + 16);
  v102 = v28;
  v91 = a2;
  v29(&v25[v28], a2, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6720, &qword_1B4D1F7B0);
  if (swift_dynamicCast())
  {
    v30 = AssociatedTypeWitness;
    v32 = v99;
    v31 = v100;
    v33 = v101;
    v76 = v30;
    if (swift_dynamicCast())
    {
      v34 = v85;
      v35 = sub_1B49752F8(v20, v85, type metadata accessor for RingsPropertiesQuery);
      MEMORY[0x1EEE9AC00](v35);
      v36 = v98;
      *(&v75 - 8) = v97;
      *(&v75 - 7) = v36;
      *(&v75 - 6) = v34;
      *(&v75 - 5) = v32;
      *(&v75 - 4) = v31;
      *(&v75 - 3) = v33;
      *(&v75 - 2) = v91;
      sub_1B49754C4(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v37 = v84;
      v38 = v92;
      sub_1B4D17DAC();
      if (v38)
      {

        sub_1B497538C(v34, type metadata accessor for RingsPropertiesQuery);
        (*(v93 + 8))(&v25[v102], v76);
LABEL_23:
        v65 = v94;
        return (*(v65 + 8))(v25, v21);
      }

      v66 = v82;
      sub_1B4975024(v82, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v37, v66, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v67 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      sub_1B497538C(v34, type metadata accessor for RingsPropertiesQuery);
      v68 = v76;
LABEL_22:
      (*(v93 + 8))(&v25[v102], v68);
      goto LABEL_23;
    }

    AssociatedTypeWitness = v76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6728, &qword_1B4D1A750);
  v39 = swift_dynamicCast();
  v40 = v95;
  v41 = v96;
  if (v39)
  {
    v42 = v99;
    v43 = v100;
    v44 = v101;
    v45 = v87;
    if (swift_dynamicCast())
    {
      v46 = v45;
      v47 = AssociatedTypeWitness;
      v41 = v81;
      v48 = sub_1B49752F8(v46, v81, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v48);
      v49 = v98;
      *(&v75 - 8) = v97;
      *(&v75 - 7) = v49;
      *(&v75 - 6) = v41;
      *(&v75 - 5) = v42;
      *(&v75 - 4) = v43;
      *(&v75 - 3) = v44;
      *(&v75 - 2) = v91;
      sub_1B49754C4(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v50 = v80;
      v51 = v92;
      sub_1B4D17DAC();
      if (v51)
      {

        v52 = type metadata accessor for WorkoutPropertiesQuery;
LABEL_15:
        sub_1B497538C(v41, v52);
        (*(v93 + 8))(&v25[v102], v47);
        goto LABEL_23;
      }

      v69 = v82;
      sub_1B4975024(v82, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v50, v69, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v70 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      v71 = type metadata accessor for WorkoutPropertiesQuery;
      goto LABEL_21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6730, &qword_1B4D1A758);
  if (swift_dynamicCast())
  {
    v53 = v99;
    v54 = v100;
    v55 = v101;
    if (swift_dynamicCast())
    {
      v47 = AssociatedTypeWitness;
      v56 = sub_1B49752F8(v40, v41, type metadata accessor for FitnessPlusPropertiesQuery);
      MEMORY[0x1EEE9AC00](v56);
      v57 = v98;
      *(&v75 - 8) = v97;
      *(&v75 - 7) = v57;
      *(&v75 - 6) = v41;
      *(&v75 - 5) = v53;
      *(&v75 - 4) = v54;
      *(&v75 - 3) = v55;
      *(&v75 - 2) = v91;
      sub_1B49754C4(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v58 = v78;
      v59 = v92;
      sub_1B4D17DAC();
      if (v59)
      {

        v52 = type metadata accessor for FitnessPlusPropertiesQuery;
        goto LABEL_15;
      }

      v72 = v82;
      sub_1B4975024(v82, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v58, v72, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v73 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
      v71 = type metadata accessor for FitnessPlusPropertiesQuery;
LABEL_21:
      sub_1B497538C(v41, v71);
      v68 = v47;
      goto LABEL_22;
    }
  }

  v99 = v21;
  swift_getMetatypeMetadata();
  v60 = sub_1B4D181AC();
  v62 = v61;
  _s7FailureOMa(0, v97, v98, v63);
  swift_getWitnessTable();
  swift_allocError();
  *v64 = v60;
  v64[1] = v62;
  swift_willThrow();
  v65 = v89;
  v21 = v90;
  return (*(v65 + 8))(v25, v21);
}

uint64_t sub_1B4973F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v53 = a6;
  v51 = a5;
  v47 = a4;
  v48 = a3;
  v49 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v50 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  sub_1B49754C4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v21 = v48;
    v42 = v12;
    v43 = 0;
    v22 = Metrics;
    v41 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
    v23 = *(v41 + 20);
    v24 = v49;
    sub_1B4975024(v49 + v23, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B49752F8(v19, v24 + v23, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v25 = (*(v17 + 56))(v24 + v23, 0, 1, v16);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v25);
      v27 = v47;
      *(&v40 - 4) = v21;
      *(&v40 - 3) = v27;
      *(&v40 - 2) = v28;
      sub_1B49754C4(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
      v29 = v43;
      result = sub_1B4D17DAC();
      v30 = v22;
      v31 = v50;
      if (v29)
      {
        return result;
      }

      v43 = 0;
      v32 = v41;
      v33 = *(v41 + 24);
      sub_1B4975024(v24 + v33, &qword_1EB8A6678, &qword_1B4D3CE20);
      sub_1B49752F8(v15, v24 + v33, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      (*(v44 + 56))(v24 + v33, 0, 1, v13);
    }

    else
    {
      v30 = v22;
      v31 = v50;
      v32 = v41;
    }

    v34 = type metadata accessor for SnapshotQueryResult(0, v45, v46, v26);
    v35 = MEMORY[0x1EEE9AC00](v34);
    *(&v40 - 2) = v36;
    *(&v40 - 16) = v37;
    *(&v40 - 1) = v35;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
    v38 = v42;
    sub_1B4D17DAC();
    v39 = *(v32 + 28);
    sub_1B4975024(v24 + v39, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v38, v24 + v39, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v31 + 56))(v24 + v39, 0, 1, v30);
  }

  return result;
}

uint64_t sub_1B497447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v53 = a6;
  v51 = a5;
  v47 = a4;
  v48 = a3;
  v49 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v50 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  sub_1B49754C4(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v21 = v48;
    v42 = v12;
    v43 = 0;
    v22 = Metrics;
    v41 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
    v23 = *(v41 + 20);
    v24 = v49;
    sub_1B4975024(v49 + v23, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B49752F8(v19, v24 + v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v25 = (*(v17 + 56))(v24 + v23, 0, 1, v16);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v25);
      v27 = v47;
      *(&v40 - 4) = v21;
      *(&v40 - 3) = v27;
      *(&v40 - 2) = v28;
      sub_1B49754C4(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
      v29 = v43;
      result = sub_1B4D17DAC();
      v30 = v22;
      v31 = v50;
      if (v29)
      {
        return result;
      }

      v43 = 0;
      v32 = v41;
      v33 = *(v41 + 24);
      sub_1B4975024(v24 + v33, &qword_1EB8A6660, &unk_1B4D2FDB0);
      sub_1B49752F8(v15, v24 + v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      (*(v44 + 56))(v24 + v33, 0, 1, v13);
    }

    else
    {
      v30 = v22;
      v31 = v50;
      v32 = v41;
    }

    v34 = type metadata accessor for SnapshotQueryResult(0, v45, v46, v26);
    v35 = MEMORY[0x1EEE9AC00](v34);
    *(&v40 - 2) = v36;
    *(&v40 - 16) = v37;
    *(&v40 - 1) = v35;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
    v38 = v42;
    sub_1B4D17DAC();
    v39 = *(v32 + 28);
    sub_1B4975024(v24 + v39, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v38, v24 + v39, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v31 + 56))(v24 + v39, 0, 1, v30);
  }

  return result;
}

uint64_t sub_1B497496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v53 = a6;
  v51 = a5;
  v47 = a4;
  v48 = a3;
  v49 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v50 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  sub_1B49754C4(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v21 = v48;
    v42 = v12;
    v43 = 0;
    v22 = Metrics;
    v41 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
    v23 = *(v41 + 20);
    v24 = v49;
    sub_1B4975024(v49 + v23, &qword_1EB8A6658, &qword_1B4D1A650);
    sub_1B49752F8(v19, v24 + v23, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v25 = (*(v17 + 56))(v24 + v23, 0, 1, v16);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v25);
      v27 = v47;
      *(&v40 - 4) = v21;
      *(&v40 - 3) = v27;
      *(&v40 - 2) = v28;
      sub_1B49754C4(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      v29 = v43;
      result = sub_1B4D17DAC();
      v30 = v22;
      v31 = v50;
      if (v29)
      {
        return result;
      }

      v43 = 0;
      v32 = v41;
      v33 = *(v41 + 24);
      sub_1B4975024(v24 + v33, &qword_1EB8A6650, &unk_1B4D2FDC0);
      sub_1B49752F8(v15, v24 + v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      (*(v44 + 56))(v24 + v33, 0, 1, v13);
    }

    else
    {
      v30 = v22;
      v31 = v50;
      v32 = v41;
    }

    v34 = type metadata accessor for SnapshotQueryResult(0, v45, v46, v26);
    v35 = MEMORY[0x1EEE9AC00](v34);
    *(&v40 - 2) = v36;
    *(&v40 - 16) = v37;
    *(&v40 - 1) = v35;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
    v38 = v42;
    sub_1B4D17DAC();
    v39 = *(v32 + 28);
    sub_1B4975024(v24 + v39, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v38, v24 + v39, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v31 + 56))(v24 + v39, 0, 1, v30);
  }

  return result;
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

uint64_t sub_1B4974FBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B4975024(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B4975134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence19SnapshotQueryResultV7Failure33_044BC95952B0291D09E5BA4ABBA0CA80LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B49751A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B49751F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B4975250(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B49752F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497538C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49754C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void RingsPropertyRecord.dimensions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
}

uint64_t sub_1B497558C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t RingsPropertyRecord.propertyKind.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t RingsPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t RingsPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 18) = v7;
  return sub_1B496F398(a4, a5 + 24);
}

uint64_t RingsPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 18);
  result = sub_1B497558C(v3 + 24, a3 + 24);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8;
  return result;
}

unint64_t sub_1B49757F4()
{
  result = qword_1EDC390F0;
  if (!qword_1EDC390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390F0);
  }

  return result;
}

unint64_t sub_1B497584C()
{
  result = qword_1EB8A6758;
  if (!qword_1EB8A6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6758);
  }

  return result;
}

void sub_1B49758AC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
}

uint64_t sub_1B49758C0()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B497590C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B4975998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 18);
  result = sub_1B497558C(v3 + 24, a3 + 24);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8;
  return result;
}

unint64_t sub_1B49759F0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4975A20();
  result = sub_1B4975A74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4975A20()
{
  result = qword_1EDC39598;
  if (!qword_1EDC39598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39598);
  }

  return result;
}

unint64_t sub_1B4975A74()
{
  result = qword_1EDC395A8;
  if (!qword_1EDC395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395A8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B4975AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4975B28(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4975B88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C616F47;
  v3 = 0x736569726F6C6163;
  v4 = a1;
  v5 = 0x6573696372657865;
  if (a1 == 2)
  {
    v6 = 0xEC0000006C616F47;
  }

  else
  {
    v5 = 0x616F47646E617473;
    v6 = 0xE90000000000006CLL;
  }

  v7 = 0x756E694D65766F6DLL;
  v8 = 0xEF6C616F47736574;
  if (!a1)
  {
    v7 = 0x736569726F6C6163;
    v8 = 0xEC0000006C616F47;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6573696372657865;
  if (a2 == 2)
  {
    v12 = 0xEC0000006C616F47;
  }

  else
  {
    v11 = 0x616F47646E617473;
    v12 = 0xE90000000000006CLL;
  }

  if (a2)
  {
    v3 = 0x756E694D65766F6DLL;
    v2 = 0xEF6C616F47736574;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B4975CE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1702260589;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646E617473;
    }

    else
    {
      v4 = 0x65657268546C6C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xED000073676E6952;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573696372657865;
    }

    else
    {
      v4 = 1702260589;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646E617473;
  if (a2 != 2)
  {
    v8 = 0x65657268546C6C61;
    v7 = 0xED000073676E6952;
  }

  if (a2)
  {
    v2 = 0x6573696372657865;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4975E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1801807223;
    }

    else
    {
      v4 = 7954788;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1918985593;
    }

    else
    {
      v4 = 1919252069;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1801807223;
    }

    else
    {
      v8 = 7954788;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1918985593;
    if (a2 != 3)
    {
      v5 = 1919252069;
    }

    if (a2 == 2)
    {
      v6 = 0x68746E6F6DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1B4D18DCC();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1B4975F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "le_description>.";
  if (a1 > 3u)
  {
    v4 = "ne of my favorites.";
    v5 = 0xD00000000000006DLL;
    if (a1 != 6)
    {
      v5 = 0xD000000000000061;
      v4 = " this is one of my favorites.";
    }

    v6 = "is of genre <genre>.";
    v7 = 0xD000000000000047;
    if (a1 != 4)
    {
      v7 = 0xD000000000000053;
      v6 = "is one of my favorites.";
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = "ia_title> by <artist>.";
    v5 = 0xD000000000000050;
    if (a1 != 2)
    {
      v5 = 0xD000000000000044;
      v4 = "f genre <genre>.";
    }

    v6 = "istening to <media_title>.";
    v7 = 0xD000000000000036;
    if (!a1)
    {
      v7 = 0xD00000000000002ALL;
      v6 = "le_description>.";
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ne of my favorites.";
        v2 = 0xD00000000000006DLL;
      }

      else
      {
        v3 = " this is one of my favorites.";
        v2 = 0xD000000000000061;
      }
    }

    else if (a2 == 4)
    {
      v3 = "is of genre <genre>.";
      v2 = 0xD000000000000047;
    }

    else
    {
      v3 = "is one of my favorites.";
      v2 = 0xD000000000000053;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ia_title> by <artist>.";
      v2 = 0xD000000000000050;
    }

    else
    {
      v3 = "f genre <genre>.";
      v2 = 0xD000000000000044;
    }
  }

  else if (a2)
  {
    v3 = "istening to <media_title>.";
    v2 = 0xD000000000000036;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B497617C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ringsPropertiesThisWeek";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "_type> workouts.";
      v4 = 0xD0000000000000CELL;
    }

    else
    {
      v5 = "ime_last_week_total_distance>.";
      v4 = 0xD0000000000000CALL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000070;
    }

    else
    {
      v4 = 0xD000000000000069;
    }

    if (v3)
    {
      v5 = "<activity_type> workouts.";
    }

    else
    {
      v5 = "ringsPropertiesThisWeek";
    }
  }

  if (a2 > 1u)
  {
    v2 = "_type> workouts.";
    v6 = "ime_last_week_total_distance>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000CELL;
    }

    else
    {
      v8 = 0xD0000000000000CALL;
    }
  }

  else
  {
    v6 = "<activity_type> workouts.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000070;
    }

    else
    {
      v8 = 0xD000000000000069;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B49762A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x7275446C61746F74;
  v6 = 0xED00006E6F697461;
  if (a1 != 4)
  {
    v5 = 0x746E656D6F6DLL;
    v6 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0x44676E6974696177;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0x687370616E537369;
  v8 = 0xEF7972657551746FLL;
  if (a1 != 1)
  {
    v7 = 0xD000000000000012;
    v8 = 0x80000001B4D4E5A0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x7972657571;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEF6E6F6974617275;
      if (v9 != 0x44676E6974696177)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697461;
      if (v9 != 0x7275446C61746F74)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x746E656D6F6DLL)
      {
LABEL_35:
        v12 = sub_1B4D18DCC();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEF7972657551746FLL;
      if (v9 != 0x687370616E537369)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x80000001B4D4E5A0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x7972657571)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_1B49764C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e of <distance_milestone>.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000019;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = "lastSixWeeksWorkoutProperties";
    }

    else
    {
      v5 = "ness_plus_modality> workout.";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3)
    {
      v5 = "rmatted_average_duration>.";
    }

    else
    {
      v5 = "e of <distance_milestone>.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "lastSixWeeksWorkoutProperties";
    v6 = "ness_plus_modality> workout.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000019;
    }

    else
    {
      v8 = 0xD000000000000015;
    }
  }

  else
  {
    v6 = "rmatted_average_duration>.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001ALL;
    }

    else
    {
      v8 = 0xD000000000000019;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B49765C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726165;
  v3 = 0x59664F68746E6F6DLL;
  v4 = a1;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001B4D48D10;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656557664F796164;
  v10 = 0xE90000000000006BLL;
  if (a1 != 1)
  {
    v9 = 0x6144664F72756F68;
    v10 = 0xE900000000000079;
  }

  if (!a1)
  {
    v9 = 0x59664F68746E6F6DLL;
    v10 = 0xEB00000000726165;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0x7974697669746361;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001B4D48D10;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v13 = 0x6E6F697461636F6CLL;
    }

    v2 = 0xEC00000065707954;
    if (v11 != v13)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE90000000000006BLL;
      if (v11 != 0x656557664F796164)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v3 = 0x6144664F72756F68;
    v2 = 0xE900000000000079;
  }

  if (v11 != v3)
  {
LABEL_31:
    v14 = sub_1B4D18DCC();
    goto LABEL_32;
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

uint64_t sub_1B49767B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (a1 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (a1 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (a1 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F6DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756874;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697266;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746173;
      goto LABEL_31;
    }

    v2 = 0x7961646E7573;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657574;
  }

  else
  {
    v2 = 0x616473656E646577;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B4D18DCC();
  }

  return v14 & 1;
}

uint64_t sub_1B4976994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "date>. <sub_templates>";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000003BLL;
    }

    else
    {
      v5 = 0xD00000000000002FLL;
    }

    if (v3 == 2)
    {
      v4 = "closure_count> times.";
    }

    else
    {
      v4 = "etition with <friend_name>.";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "> workouts this week.";
    }

    else
    {
      v4 = "date>. <sub_templates>";
    }

    v5 = 0xD000000000000045;
  }

  v6 = "closure_count> times.";
  v7 = 0xD00000000000003BLL;
  if (a2 != 2)
  {
    v7 = 0xD00000000000002FLL;
    v6 = "etition with <friend_name>.";
  }

  if (a2)
  {
    v2 = "> workouts this week.";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000045;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4976AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C62616E45746F6ELL;
  v4 = a1;
  v5 = 0xD000000000000018;
  v6 = 0x5364696C61766E69;
  v7 = 0xEC00000065746174;
  if (a1 != 4)
  {
    v6 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001B4D48E90;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7964616552746F6ELL;
  if (a1 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001B4D48E70;
  }

  if (!a1)
  {
    v10 = 0x6C62616E45746F6ELL;
    v9 = 0xEA00000000006465;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001B4D48E90;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000065746174;
      if (v11 != 0x5364696C61766E69)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x726568746FLL)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7964616552746F6ELL)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000011;
      v2 = 0x80000001B4D48E70;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_1B4D18DCC();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_1B4976C84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F6F646E69;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x726F6F6474756FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x657461576E65706FLL;
    v4 = 0xE900000000000072;
  }

  else
  {
    v3 = 0x676E696D6D697773;
    v4 = 0xEC0000006C6F6F50;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x726F6F646E69;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x657461576E65706FLL;
    v6 = 0xE900000000000072;
    if (a2 != 3)
    {
      v5 = 0x676E696D6D697773;
      v6 = 0xEC0000006C6F6F50;
    }

    if (a2 == 2)
    {
      v7 = 0x726F6F6474756FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1B4D18DCC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1B4976E20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "y <speed_delta_from_baseline>.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "formatted_days> this week.";
      v4 = 0xD000000000000042;
    }

    else
    {
      v5 = ", including today.";
      v4 = 0xD000000000000046;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000009ALL;
    }

    else
    {
      v4 = 0xD000000000000058;
    }

    if (v3)
    {
      v5 = "me> every day this week.";
    }

    else
    {
      v5 = "y <speed_delta_from_baseline>.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "formatted_days> this week.";
    v6 = ", including today.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000042;
    }

    else
    {
      v8 = 0xD000000000000046;
    }
  }

  else
  {
    v6 = "me> every day this week.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000009ALL;
    }

    else
    {
      v8 = 0xD000000000000058;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4976F4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "y and the day before.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "<duration_delta_from_baseline>.";
      v4 = 0xD0000000000000A5;
    }

    else
    {
      v5 = "delta_from_baseline>.";
      v4 = 0xD0000000000000AELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD0000000000000AFLL;
    }

    else
    {
      v4 = 0xD0000000000000A6;
    }

    if (v3)
    {
      v5 = "_delta_from_baseline>.";
    }

    else
    {
      v5 = "y and the day before.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "<duration_delta_from_baseline>.";
    v6 = "delta_from_baseline>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000A5;
    }

    else
    {
      v8 = 0xD0000000000000AELL;
    }
  }

  else
  {
    v6 = "_delta_from_baseline>.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD0000000000000AFLL;
    }

    else
    {
      v8 = 0xD0000000000000A6;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4977070(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "sponds to Hard.";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000041;
    }

    else
    {
      v5 = 0xD000000000000025;
    }

    if (v3)
    {
      v4 = " workout of the week.";
    }

    else
    {
      v4 = "sponds to Hard.";
    }
  }

  else if (a1 == 2)
  {
    v4 = "ber_of_workouts>.";
    v5 = 0xD000000000000079;
  }

  else if (a1 == 3)
  {
    v4 = "orkout_type_with_dates>\n}";
    v5 = 0xD000000000000055;
  }

  else
  {
    v4 = " workout of the week.";
    v5 = 0xD00000000000010FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000041;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a2)
    {
      v2 = " workout of the week.";
    }
  }

  else if (a2 == 2)
  {
    v2 = "ber_of_workouts>.";
    v6 = 0xD000000000000079;
  }

  else
  {
    v2 = "orkout_type_with_dates>\n}";
    if (a2 == 3)
    {
      v6 = 0xD000000000000055;
    }

    else
    {
      v6 = 0xD00000000000010FLL;
    }

    if (a2 != 3)
    {
      v2 = " workout of the week.";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B49771D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000041;
  v3 = "poolSwimDistanceWithTime";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "d_date_and_time> in <location>.";
    v12 = 0xD00000000000004DLL;
    if (a1 != 6)
    {
      v12 = 0xD00000000000005BLL;
      v11 = "d_date_and_time> with <goal>.";
    }

    v13 = "ime> in <location> with <goal>.";
    v14 = 0xD00000000000004FLL;
    if (a1 == 4)
    {
      v14 = 0xD000000000000041;
    }

    else
    {
      v13 = "d_date_and_time>.";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
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
    v5 = 0xD000000000000045;
    v6 = "ime> in <location>.";
    v7 = 0xD000000000000051;
    if (a1 != 2)
    {
      v7 = 0xD00000000000005FLL;
      v6 = "ime> with <goal>.";
    }

    v8 = "start_date_and_time>.";
    if (a1)
    {
      v5 = 0xD000000000000053;
    }

    else
    {
      v8 = "poolSwimDistanceWithTime";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "d_date_and_time> in <location>.";
        v2 = 0xD00000000000004DLL;
      }

      else
      {
        v3 = "d_date_and_time> with <goal>.";
        v2 = 0xD00000000000005BLL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "ime> in <location> with <goal>.";
    }

    else
    {
      v3 = "d_date_and_time>.";
      v2 = 0xD00000000000004FLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ime> in <location>.";
      v2 = 0xD000000000000051;
    }

    else
    {
      v3 = "ime> with <goal>.";
      v2 = 0xD00000000000005FLL;
    }
  }

  else if (a2)
  {
    v3 = "start_date_and_time>.";
    v2 = 0xD000000000000053;
  }

  else
  {
    v2 = 0xD000000000000045;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B49773E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "evious_date_range>.";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "VoiceAssetSettingsChanged";
    v12 = 0xD000000000000026;
    if (a1 != 6)
    {
      v12 = 0xD00000000000002BLL;
      v11 = "gistry.devicedidunpair";
    }

    v13 = "vailabilityChanged";
    v14 = 0xD000000000000019;
    if (a1 == 4)
    {
      v14 = 0xD000000000000016;
    }

    else
    {
      v13 = "VoiceAssetCacheChanged";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
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
    v5 = 0xD000000000000030;
    v6 = "ailability.notification";
    v7 = 0xD000000000000033;
    if (a1 != 2)
    {
      v7 = 0xD000000000000022;
      v6 = "itialSyncCompletion";
    }

    v8 = "rwinNotification";
    if (a1)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v8 = "evious_date_range>.";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "VoiceAssetSettingsChanged";
        v2 = 0xD000000000000026;
      }

      else
      {
        v3 = "gistry.devicedidunpair";
        v2 = 0xD00000000000002BLL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "vailabilityChanged";
    }

    else
    {
      v3 = "VoiceAssetCacheChanged";
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ailability.notification";
      v2 = 0xD000000000000033;
    }

    else
    {
      v3 = "itialSyncCompletion";
      v2 = 0xD000000000000022;
    }
  }

  else if (a2)
  {
    v3 = "rwinNotification";
    v2 = 0xD000000000000027;
  }

  else
  {
    v2 = 0xD000000000000030;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B49775F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000033;
  v3 = "guration";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000033;
    }

    else
    {
      v6 = 0xD00000000000003BLL;
    }

    if (v4)
    {
      v7 = "ck with my 28-day baseline.";
    }

    else
    {
      v7 = "guration";
    }
  }

  else if (a1 == 2)
  {
    v7 = "my 28-day baseline.";
    v6 = 0xD000000000000033;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = "My 7-day training load is well above my 28-day baseline.";
    }

    else
    {
      v5 = "My 7-day training load is well below my 28-day baseline.";
    }

    v7 = (v5 - 32);
    v6 = 0xD000000000000038;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "ck with my 28-day baseline.";
    }

    else
    {
      v2 = 0xD00000000000003BLL;
    }
  }

  else if (a2 == 2)
  {
    v3 = "my 28-day baseline.";
  }

  else
  {
    if (a2 == 3)
    {
      v8 = "My 7-day training load is well above my 28-day baseline.";
    }

    else
    {
      v8 = "My 7-day training load is well below my 28-day baseline.";
    }

    v3 = (v8 - 32);
    v2 = 0xD000000000000038;
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4977748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000009DLL;
  v3 = " rings: <sub_templates>";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = " is <exercise_ring_percentage>.";
    v12 = 0xD000000000000102;
    if (a1 != 6)
    {
      v12 = 0xD0000000000000B1;
      v11 = "_ring_percentage>.";
    }

    v13 = "ng is <move_ring_percentage>.";
    v14 = 0xD0000000000000D7;
    if (a1 != 4)
    {
      v14 = 0xD0000000000000DFLL;
      v13 = "rcise_ring_percentage>.";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
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
    v5 = 0xD0000000000000BFLL;
    v6 = "<move_ring_percentage>.";
    v7 = 0xD0000000000000E6;
    if (a1 != 2)
    {
      v7 = 0xD00000000000009DLL;
      v6 = "move_ring_percentage>.";
    }

    v8 = "ring is <move_ring_percentage>.";
    if (a1)
    {
      v5 = 0xD0000000000000C7;
    }

    else
    {
      v8 = " rings: <sub_templates>";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = " is <exercise_ring_percentage>.";
        v2 = 0xD000000000000102;
      }

      else
      {
        v3 = "_ring_percentage>.";
        v2 = 0xD0000000000000B1;
      }
    }

    else if (a2 == 4)
    {
      v3 = "ng is <move_ring_percentage>.";
      v2 = 0xD0000000000000D7;
    }

    else
    {
      v3 = "rcise_ring_percentage>.";
      v2 = 0xD0000000000000DFLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "<move_ring_percentage>.";
      v2 = 0xD0000000000000E6;
    }

    else
    {
      v3 = "move_ring_percentage>.";
    }
  }

  else if (a2)
  {
    v3 = "ring is <move_ring_percentage>.";
    v2 = 0xD0000000000000C7;
  }

  else
  {
    v2 = 0xD0000000000000BFLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B4977958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000027;
  v3 = "activitySummaryContext";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "_week>. It's a weekday.";
    }

    else
    {
      v4 = "activitySummaryContext";
    }

    v5 = 0xD000000000000027;
  }

  else if (a1 == 2)
  {
    v4 = "_week>. It's a weekend.";
    v5 = 0xD000000000000048;
  }

  else if (a1 == 3)
  {
    v4 = "f the week in my locale.";
    v5 = 0xD000000000000045;
  }

  else
  {
    v4 = "he week in my locale.";
    v5 = 0xD000000000000047;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "_week>. It's a weekday.";
    }
  }

  else if (a2 == 2)
  {
    v3 = "_week>. It's a weekend.";
    v2 = 0xD000000000000048;
  }

  else
  {
    v3 = "f the week in my locale.";
    if (a2 == 3)
    {
      v2 = 0xD000000000000045;
    }

    else
    {
      v2 = 0xD000000000000047;
    }

    if (a2 != 3)
    {
      v3 = "he week in my locale.";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1B4D18DCC();
  }

  return v6 & 1;
}

uint64_t sub_1B4977AB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ng";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "e> is <ring_percentage>.";
      v4 = 0xD0000000000000C4;
    }

    else
    {
      v5 = "s <ring_percentage>.";
      v4 = 0xD000000000000084;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD0000000000000A8;
    }

    else
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v3)
    {
      v5 = "l my activity rings today.";
    }

    else
    {
      v5 = "ng";
    }
  }

  if (a2 > 1u)
  {
    v2 = "e> is <ring_percentage>.";
    v6 = "s <ring_percentage>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000C4;
    }

    else
    {
      v8 = 0xD000000000000084;
    }
  }

  else
  {
    v6 = "l my activity rings today.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD0000000000000A8;
    }

    else
    {
      v8 = 0xD00000000000002ALL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4977BDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73746867696C66;
  if (a1 != 5)
  {
    v5 = 0x65636E6174736964;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6E6952646E617473;
  v7 = 0xE900000000000067;
  if (a1 != 3)
  {
    v6 = 0x7370657473;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x756E694D65766F6DLL;
  v9 = 0xEE00676E69526574;
  if (a1 != 1)
  {
    v8 = 0x6573696372657865;
    v9 = 0xEC000000676E6952;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x676E695265766F6DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE00676E69526574;
        if (v10 != 0x756E694D65766F6DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEC000000676E6952;
        if (v10 != 0x6573696372657865)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E695265766F6DLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73746867696C66)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65636E6174736964)
      {
LABEL_39:
        v13 = sub_1B4D18DCC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E6952646E617473)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7370657473)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1B4977E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656557664F796164;
    }

    else
    {
      v5 = 0x59664F68746E6F6DLL;
    }

    if (v2)
    {
      v6 = 0xE90000000000006BLL;
    }

    else
    {
      v6 = 0xEB00000000726165;
    }
  }

  else
  {
    v3 = 0x7974696C61646F6DLL;
    v4 = 0xEC000000646E694BLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x80000001B4D48DB0;
    }

    if (a1 == 2)
    {
      v5 = 0x6144664F72756F68;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000079;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x656557664F796164;
    }

    else
    {
      v11 = 0x59664F68746E6F6DLL;
    }

    if (a2)
    {
      v10 = 0xE90000000000006BLL;
    }

    else
    {
      v10 = 0xEB00000000726165;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x7974696C61646F6DLL;
    v8 = 0x80000001B4D48DB0;
    if (a2 == 3)
    {
      v8 = 0xEC000000646E694BLL;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x6144664F72756F68;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1B4977FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = 0x6B726F5774736562;
      v5 = 0xEB0000000074756FLL;
    }

    else if (a1 == 4)
    {
      v4 = 0x547942746E756F63;
      v5 = 0xEE0072656E696172;
    }

    else
    {
      v4 = 0x756F436C61746F74;
      v5 = 0xEA0000000000746ELL;
    }
  }

  else
  {
    v3 = 0x80000001B4D48B80;
    if (a1 != 1)
    {
      v3 = 0x80000001B4D48BA0;
    }

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001ALL;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001B4D48B40;
    }
  }

  if (a2 > 2u)
  {
    v9 = 0x547942746E756F63;
    v10 = 0xEE0072656E696172;
    if (a2 != 4)
    {
      v9 = 0x756F436C61746F74;
      v10 = 0xEA0000000000746ELL;
    }

    if (a2 == 3)
    {
      v11 = 0x6B726F5774736562;
    }

    else
    {
      v11 = v9;
    }

    if (a2 == 3)
    {
      v8 = 0xEB0000000074756FLL;
    }

    else
    {
      v8 = v10;
    }

    if (v4 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = 0x80000001B4D48BA0;
    if (a2 == 1)
    {
      v6 = 0x80000001B4D48B80;
    }

    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x80000001B4D48B40;
    }

    if (v4 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v5 != v8)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1B49781EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000062;
  v3 = "userWorkoutPreferences";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = " only one workout.";
      v5 = 0xD00000000000008DLL;
    }

    else
    {
      v6 = " of <workout_count> workouts.";
      v5 = 0xD000000000000075;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000062;
    }

    else
    {
      v5 = 0xD00000000000007ALL;
    }

    if (v4)
    {
      v6 = "tion> in only one workout.";
    }

    else
    {
      v6 = "userWorkoutPreferences";
    }
  }

  if (a2 > 1u)
  {
    v3 = " only one workout.";
    v7 = 0xD00000000000008DLL;
    v8 = " of <workout_count> workouts.";
    v2 = 0xD000000000000075;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000007ALL;
    v8 = "tion> in only one workout.";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B4D18DCC();
  }

  return v12 & 1;
}

uint64_t sub_1B497830C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7365636E657265;
  v3 = 0xD000000000000016;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000019;
    if (v4 == 2)
    {
      v5 = 0xD00000000000001DLL;
      v6 = 0x80000001B4D4AAF0;
    }

    else
    {
      v6 = 0x80000001B4D4AB10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x6665725072657375;
    }

    if (v4)
    {
      v6 = 0x80000001B4D4BF20;
    }

    else
    {
      v6 = 0xEF7365636E657265;
    }
  }

  v7 = 0xD00000000000001DLL;
  v8 = 0x80000001B4D4AB10;
  if (a2 == 2)
  {
    v8 = 0x80000001B4D4AAF0;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (a2)
  {
    v2 = 0x80000001B4D4BF20;
  }

  else
  {
    v3 = 0x6665725072657375;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4978440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65636E6174736964;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x796772656E65;
    if (a1 != 3)
    {
      v4 = 0xD000000000000018;
      v3 = 0x80000001B4D4AB70;
    }

    if (a1 == 2)
    {
      v5 = 1701669236;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x65636E6174736964;
    }

    else
    {
      v11 = 1852141679;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x796772656E65;
    v8 = 0x80000001B4D4AB70;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000018;
    }

    if (a2 == 2)
    {
      v9 = 1701669236;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

FitnessIntelligence::RingsPropertyDimensionsField_optional __swiftcall RingsPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingsPropertyDimensionsField.rawValue.getter()
{
  v1 = 0x656557664F796164;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x59664F68746E6F6DLL;
  }
}

uint64_t sub_1B4978674(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656557664F796164;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x59664F68746E6F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726165;
  }

  v7 = 0x656557664F796164;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x646573756170;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x59664F68746E6F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726165;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B497877C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4978828(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B49788C0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4978974(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0xE90000000000006BLL;
  v5 = 0x656557664F796164;
  if (v2 != 1)
  {
    v5 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x59664F68746E6F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FitnessIntelligence::RingsPropertyDimensions __swiftcall RingsPropertyDimensions.init(monthOfYear:dayOfWeek:paused:)(FitnessIntelligence::MonthOfYear_optional monthOfYear, FitnessIntelligence::DayOfWeek_optional dayOfWeek, Swift::Bool_optional paused)
{
  v4 = *dayOfWeek.value;
  v3->value = *monthOfYear.value;
  v3[1].value = v4;
  v3[2].value = paused.value;
  result.monthOfYear = monthOfYear;
  return result;
}

FitnessIntelligence::RingsPropertyDimensions __swiftcall RingsPropertyDimensions.mask(with:)(Swift::OpaquePointer_optional with)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  if (with.value._rawValue)
  {
    v16 = v2[2];
    v17 = v2[1];
    v19 = *v2;
    v18 = v1;
    v6 = *(with.value._rawValue + 2);
    v7 = with.value._rawValue + 32;
    v8 = v6;
    v9 = with.value._rawValue + 32;
    while (1)
    {
      if (!v8)
      {
        v19 = 12;
        goto LABEL_10;
      }

      v11 = *v9;
      if (v11 != 1 && v11 != 2)
      {
        break;
      }

      v10 = sub_1B4D18DCC();

      ++v9;
      --v8;
      if (v10)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    v12 = v6;
    v13 = v7;
    while (1)
    {
      if (!v12)
      {
        v4 = 7;
        goto LABEL_20;
      }

      if (*v13 && *v13 != 2)
      {
        break;
      }

      v14 = sub_1B4D18DCC();

      ++v13;
      --v12;
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    v4 = v17;
    while (1)
    {
LABEL_20:
      if (!v6)
      {
        v5 = 2;
        v1 = v18;
        v3 = v19;
        goto LABEL_27;
      }

      if (*v7 && *v7 != 1)
      {
        break;
      }

      v15 = sub_1B4D18DCC();

      ++v7;
      --v6;
      if (v15)
      {
        goto LABEL_26;
      }
    }

LABEL_26:
    v1 = v18;
    v3 = v19;
    v5 = v16;
  }

LABEL_27:
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  return *&with.value._rawValue;
}

BOOL sub_1B4978C4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 5)
    {
      if (*v3 > 8u)
      {
        if (v8 == 9)
        {
          v14 = 0xE700000000000000;
          v13 = 0x7265626F74636FLL;
          if (v4 <= 5)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v8 == 10)
          {
            v15 = 1702260590;
          }

          else
          {
            v15 = 1701012836;
          }

          v13 = v15 | 0x7265626D00000000;
          if (v4 <= 5)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v8 == 6)
      {
        v14 = 0xE400000000000000;
        v13 = 2037151082;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }

      else if (v8 == 7)
      {
        v14 = 0xE600000000000000;
        v13 = 0x747375677561;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v13 = 0x65626D6574706573;
        v14 = 0xE900000000000072;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v9 = 1701737834;
      if (v8 == 4)
      {
        v9 = 7954797;
      }

      v10 = 0xE300000000000000;
      if (v8 != 4)
      {
        v10 = 0xE400000000000000;
      }

      if (v8 == 3)
      {
        v9 = 0x6C69727061;
        v10 = 0xE500000000000000;
      }

      v11 = 0x7972617572626566;
      if (v8 == 1)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v11 = 0x686372616DLL;
        v12 = 0xE500000000000000;
      }

      if (!*v3)
      {
        v11 = 0x797261756E616ALL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v4 <= 5)
      {
LABEL_51:
        v16 = 1701737834;
        if (v4 == 4)
        {
          v16 = 7954797;
        }

        v17 = 0xE300000000000000;
        if (v4 != 4)
        {
          v17 = 0xE400000000000000;
        }

        if (v4 == 3)
        {
          v16 = 0x6C69727061;
          v17 = 0xE500000000000000;
        }

        v18 = 0x7972617572626566;
        if (v4 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v18 = 0x686372616DLL;
          v19 = 0xE500000000000000;
        }

        if (!v4)
        {
          v18 = 0x797261756E616ALL;
          v19 = 0xE700000000000000;
        }

        v20 = v4 <= 2;
        goto LABEL_63;
      }
    }

    v16 = 0x7265626D65766F6ELL;
    if (v4 != 10)
    {
      v16 = 0x7265626D65636564;
    }

    v17 = 0xE800000000000000;
    if (v4 == 9)
    {
      v16 = 0x7265626F74636FLL;
      v17 = 0xE700000000000000;
    }

    v18 = 0x65626D6574706573;
    if (v4 == 7)
    {
      v18 = 0x747375677561;
    }

    v19 = 0xE900000000000072;
    if (v4 == 7)
    {
      v19 = 0xE600000000000000;
    }

    if (v4 == 6)
    {
      v18 = 2037151082;
      v19 = 0xE400000000000000;
    }

    v20 = v4 <= 8;
LABEL_63:
    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v16;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }

    if (v13 == v21 && v14 == v22)
    {

      return v6 != 0;
    }

    v5 = sub_1B4D18DCC();

    ++v3;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1B4978F94(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6E776F646C6F6F63;
    switch(*v4)
    {
      case 1:
        v8 = 0xE400000000000000;
        v9 = 1701998435;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v9 = 0x676E696C637963;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x65636E6164;
        break;
      case 4:
        v8 = 0xE90000000000006ELL;
        v9 = 0x7552646564697567;
        break;
      case 5:
        v8 = 0xEA00000000006B6CLL;
        v9 = 0x6157646564697567;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = 1953065320;
        break;
      case 7:
        v9 = 0x69786F626B63696BLL;
        v8 = 0xEA0000000000676ELL;
        break;
      case 8:
        v8 = 0xEA00000000006E6FLL;
        v9 = 0x697461746964656DLL;
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = 0x736574616C6970;
        break;
      case 0xA:
        v8 = 0xE600000000000000;
        v9 = 0x676E69776F72;
        break;
      case 0xB:
        v9 = 0x6874676E65727473;
        break;
      case 0xC:
        v9 = 0x6C696D6461657274;
        v8 = 0xE90000000000006CLL;
        break;
      case 0xD:
        v8 = 0xE400000000000000;
        v9 = 1634168697;
        break;
      case 0xE:
        v8 = 0xE500000000000000;
        v9 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v10 = 0xE800000000000000;
    v11 = 0x6E776F646C6F6F63;
    switch(a1)
    {
      case 1:
        v10 = 0xE400000000000000;
        if (v9 == 1701998435)
        {
          goto LABEL_47;
        }

        goto LABEL_2;
      case 2:
        v10 = 0xE700000000000000;
        if (v9 != 0x676E696C637963)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 3:
        v10 = 0xE500000000000000;
        if (v9 != 0x65636E6164)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 4:
        v10 = 0xE90000000000006ELL;
        if (v9 != 0x7552646564697567)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 5:
        v10 = 0xEA00000000006B6CLL;
        if (v9 != 0x6157646564697567)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 6:
        v10 = 0xE400000000000000;
        if (v9 != 1953065320)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 7:
        v10 = 0xEA0000000000676ELL;
        if (v9 != 0x69786F626B63696BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 8:
        v10 = 0xEA00000000006E6FLL;
        if (v9 != 0x697461746964656DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 9:
        v10 = 0xE700000000000000;
        if (v9 != 0x736574616C6970)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 10:
        v10 = 0xE600000000000000;
        v11 = 0x676E69776F72;
        goto LABEL_46;
      case 11:
        if (v9 != 0x6874676E65727473)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 12:
        v10 = 0xE90000000000006CLL;
        if (v9 != 0x6C696D6461657274)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 13:
        v10 = 0xE400000000000000;
        if (v9 != 1634168697)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 14:
        v10 = 0xE500000000000000;
        if (v9 != 0x726568746FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_47:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_1B4D18DCC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_1B49793B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = a3();
    v10 = v9;
    if (v8 == a3() && v10 == v11)
    {

      return v6 != 0;
    }

    v13 = sub_1B4D18DCC();

    ++v5;
  }

  while ((v13 & 1) == 0);
  return v6 != 0;
}

Swift::Bool __swiftcall RingsPropertyDimensions.matches(_:)(FitnessIntelligence::RingsPropertyDimensionsFilters_optional a1)
{
  a1.value.dayOfWeek._rawValue = *a1.value.monthOfYear._rawValue;
  if (!*a1.value.monthOfYear._rawValue)
  {
    return 1;
  }

  rawValue = a1.value.monthOfYear._rawValue;
  LODWORD(a1.value.monthOfYear._rawValue) = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = rawValue[1];
  v6 = rawValue[2];
  if (LODWORD(a1.value.monthOfYear._rawValue) != 12 && *(a1.value.dayOfWeek._rawValue + 2) && !sub_1B4978C4C(a1.value.monthOfYear._rawValue, a1.value.dayOfWeek._rawValue))
  {
    return 0;
  }

  v27 = v6;
  if (v3 != 7)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = (v5 + 32);
      do
      {
        if (!v7)
        {
          return 0;
        }

        v12 = *v8;
        if (v12 <= 2)
        {
          v16 = 0x616473656E646577;
          if (v12 == 1)
          {
            v16 = 0x79616473657574;
          }

          v17 = 0xE900000000000079;
          if (v12 == 1)
          {
            v17 = 0xE700000000000000;
          }

          if (*v8)
          {
            v13 = v16;
          }

          else
          {
            v13 = 0x7961646E6F6DLL;
          }

          if (*v8)
          {
            v14 = v17;
          }

          else
          {
            v14 = 0xE600000000000000;
          }

          if (v3 > 2)
          {
LABEL_42:
            v18 = 0x7961646E7573;
            if (v3 == 5)
            {
              v18 = 0x7961647275746173;
              v19 = 0xE800000000000000;
            }

            else
            {
              v19 = 0xE600000000000000;
            }

            v20 = 0x7961647372756874;
            if (v3 == 3)
            {
              v21 = 0xE800000000000000;
            }

            else
            {
              v20 = 0x796164697266;
              v21 = 0xE600000000000000;
            }

            if (v3 <= 4)
            {
              v22 = v20;
            }

            else
            {
              v22 = v18;
            }

            if (v3 <= 4)
            {
              v10 = v21;
            }

            else
            {
              v10 = v19;
            }

            if (v13 != v22)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }

        else if (*v8 > 4u)
        {
          if (v12 == 5)
          {
            v14 = 0xE800000000000000;
            v13 = 0x7961647275746173;
            if (v3 > 2)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v13 = 0x7961646E7573;
            v14 = 0xE600000000000000;
            if (v3 > 2)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (v12 == 3)
          {
            v13 = 0x7961647372756874;
          }

          else
          {
            v13 = 0x796164697266;
          }

          if (v12 == 3)
          {
            v14 = 0xE800000000000000;
          }

          else
          {
            v14 = 0xE600000000000000;
          }

          if (v3 > 2)
          {
            goto LABEL_42;
          }
        }

        if (v3)
        {
          if (v3 == 1)
          {
            v15 = 0x79616473657574;
          }

          else
          {
            v15 = 0x616473656E646577;
          }

          if (v3 == 1)
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xE900000000000079;
          }

          if (v13 != v15)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = 0xE600000000000000;
          if (v13 != 0x7961646E6F6DLL)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        if (v14 == v10)
        {

          break;
        }

LABEL_11:
        v11 = sub_1B4D18DCC();

        ++v8;
        --v7;
      }

      while ((v11 & 1) == 0);
    }
  }

  if (v4 != 2)
  {
    v23 = *(v27 + 16);
    if (v23)
    {
      v24 = (v27 + 32);
      while (1)
      {
        v26 = *v24++;
        v25 = v26;
        if (v26 != 2 && ((v25 ^ v4) & 1) == 0)
        {
          break;
        }

        if (!--v23)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t RingsPropertyDimensions.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  if (*v1 == 12)
  {
    sub_1B4D18EAC();
    if (v2 != 7)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1B4D18EAC();
    if (v3 == 2)
    {
      return sub_1B4D18EAC();
    }

    goto LABEL_4;
  }

  sub_1B4D18EAC();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  if (v2 == 7)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B4D18EAC();
  sub_1B4D1820C();

  if (v3 != 2)
  {
LABEL_4:
    sub_1B4D18EAC();
  }

  return sub_1B4D18EAC();
}

uint64_t RingsPropertyDimensions.hashValue.getter()
{
  v1 = *(v0 + 2);
  *&v3[77] = *v0;
  v3[79] = v1;
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4979978()
{
  v1 = *(v0 + 2);
  *&v3[77] = *v0;
  v3[79] = v1;
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49799D0(uint64_t a1)
{
  v2 = *(v1 + 2);
  *&v4[77] = *v1;
  v4[79] = v2;
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)(v4);
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence23RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (*a1 == 12)
  {
    if (v4 == 12)
    {
      goto LABEL_3;
    }
  }

  else if (v4 != 12)
  {
    v7 = MonthOfYear.rawValue.getter();
    v9 = v8;
    if (v7 == MonthOfYear.rawValue.getter() && v9 == v10)
    {

      if (v2 == 7)
      {
LABEL_4:
        if (v5 != 7)
        {
          return 0;
        }

LABEL_12:
        if (v3 == 2)
        {
          if (v6 != 2)
          {
            return 0;
          }
        }

        else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
        {
          return 0;
        }

        return 1;
      }

LABEL_10:
      if (v5 == 7 || (sub_1B49767B8(v2, v5) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v11 = sub_1B4D18DCC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence23RingsPropertyDimensionsV10dimensions4from3forSayACGAA0C13Representable_p_AA0cD4KindOtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *a2;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(*(v15 + 8) + 8))(&v28, v16);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4D1796C();
  __swift_project_value_buffer(v17, qword_1EDC3CE48);
  CacheIndex.date(for:)(v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v13, v6, v7);
  v18 = *(v8 + 16);
  v18(v10, v13, v7);
  DayOfWeek.init(from:)(v10, &v28);
  v19 = v28;
  if (v28 == 7 || (v18(v10, v13, v7), MonthOfYear.init(from:)(v10, &v28), v20 = v28, v28 == 12))
  {
    (*(v8 + 8))(v13, v7);
    return MEMORY[0x1E69E7CC0];
  }

  else if (v14 <= 0x15 && ((1 << v14) & 0x38000F) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6798, &qword_1B4D1AA20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B4D1A800;
    *(v22 + 32) = 1804;
    *(v22 + 34) = 2;
    (*(v8 + 8))(v13, v7);
    return v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6798, &qword_1B4D1AA20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B4D1A800;
    v25 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v26 = (*(v24 + 24))(v25, v24);
    *(v23 + 32) = v20;
    *(v23 + 33) = v19;
    *(v23 + 34) = v26 & 1;
    (*(v8 + 8))(v13, v7);
    return v23;
  }
}

unint64_t sub_1B4979F40()
{
  result = qword_1EB8A6760;
  if (!qword_1EB8A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6760);
  }

  return result;
}

unint64_t sub_1B4979F94(void *a1)
{
  a1[1] = sub_1B4979FCC();
  a1[2] = sub_1B4979F40();
  result = sub_1B497A020();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4979FCC()
{
  result = qword_1EB8A6768;
  if (!qword_1EB8A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6768);
  }

  return result;
}

unint64_t sub_1B497A020()
{
  result = qword_1EB8A6770;
  if (!qword_1EB8A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6770);
  }

  return result;
}

unint64_t sub_1B497A078()
{
  result = qword_1EB8A6778;
  if (!qword_1EB8A6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6780, &qword_1B4D1A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6778);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B497A128()
{
  result = qword_1EB8A6788;
  if (!qword_1EB8A6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6788);
  }

  return result;
}

unint64_t sub_1B497A180()
{
  result = qword_1EDC36F60[0];
  if (!qword_1EDC36F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC36F60);
  }

  return result;
}

unint64_t sub_1B497A1D4(uint64_t a1)
{
  *(a1 + 8) = sub_1B497A204();
  result = sub_1B497A258();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B497A204()
{
  result = qword_1EDC390E8;
  if (!qword_1EDC390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390E8);
  }

  return result;
}

unint64_t sub_1B497A258()
{
  result = qword_1EDC39100;
  if (!qword_1EDC39100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39100);
  }

  return result;
}

unint64_t sub_1B497A2B0()
{
  result = qword_1EDC390F8;
  if (!qword_1EDC390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyDimensionsField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RingsPropertyDimensionsField(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyDimensions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyDimensions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
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
      *(result + 2) = a2 + 2;
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

uint64_t sub_1B497A590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B497A600(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B497CC9C(a1, v7, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload())
  {
    v11 = type metadata accessor for FitnessContextQueryDescriptor;
    v12 = v7;
LABEL_7:
    sub_1B497CC3C(v12, v11);
    v27 = 0;
    return v27 & 1;
  }

  sub_1B497CD04(v7, v10, type metadata accessor for WorkoutPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v10, a2) & 1) == 0)
  {
    v11 = type metadata accessor for WorkoutPropertiesQuery;
    v12 = v10;
    goto LABEL_7;
  }

  v31[7] = v2;
  v13 = &v10[*(v8 + 20)];
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[4];
  v18 = v13[5];
  v31[0] = *v13;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[5] = v18;
  v19 = *(v8 + 20);
  v29[0] = a2;
  v20 = (a2 + v19);
  v22 = *v20;
  v21 = v20[1];
  v24 = v20[2];
  v23 = v20[3];
  v26 = v20[4];
  v25 = v20[5];
  v29[1] = v23;
  v29[2] = v26;
  v29[3] = v25;
  v30[0] = v22;
  v30[1] = v21;
  v30[2] = v24;
  v30[3] = v23;
  v30[4] = v26;
  v30[5] = v25;

  LOBYTE(v15) = _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v31, v30);

  if (v15)
  {
    v27 = sub_1B4A0DD68(*&v10[*(v8 + 24)], *(v29[0] + *(v8 + 24)));
    sub_1B497CC3C(v10, type metadata accessor for WorkoutPropertiesQuery);
  }

  else
  {
    sub_1B497CC3C(v10, type metadata accessor for WorkoutPropertiesQuery);
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1B497A920@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v25 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_1B497CC9C(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B497CD04(v9, v6, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = v24(v6);
      if (v3)
      {
        sub_1B497CC3C(v6, type metadata accessor for FitnessContextQueryDescriptor);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_1B497CC3C(v6, type metadata accessor for FitnessContextQueryDescriptor);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    sub_1B497CD04(v6, v23, type metadata accessor for FitnessContextQueryDescriptor);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, Descriptor);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, Descriptor);
      }

      v12 = *(a2 + 64 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B497ABAC(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 23;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 23;
    }
  }

  return v7;
}

uint64_t sub_1B497AC18(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B497CC9C(a1, v7, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = type metadata accessor for FitnessContextQueryDescriptor;
    v21 = v7;
LABEL_9:
    sub_1B497CC3C(v21, v20);
    v19 = 0;
    return v19 & 1;
  }

  sub_1B497CD04(v7, v10, type metadata accessor for RingsPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v10, a2) & 1) == 0)
  {
    v20 = type metadata accessor for RingsPropertiesQuery;
    v21 = v10;
    goto LABEL_9;
  }

  v25 = v2;
  v11 = *(v8 + 20);
  v12 = *&v10[v11];
  v13 = *&v10[v11 + 8];
  v14 = *&v10[v11 + 16];
  v15 = (a2 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];

  if ((sub_1B4A0A1C0(v12, v16) & 1) == 0 || (sub_1B4A0A568(v13, v17) & 1) == 0)
  {

    goto LABEL_11;
  }

  v24 = sub_1B4A0A7D0(v14, v18);

  if ((v24 & 1) == 0)
  {
LABEL_11:
    sub_1B497CC3C(v10, type metadata accessor for RingsPropertiesQuery);
    v19 = 0;
    return v19 & 1;
  }

  v19 = sub_1B4A0D340(*&v10[*(v8 + 24)], *(a2 + *(v8 + 24)));
  sub_1B497CC3C(v10, type metadata accessor for RingsPropertiesQuery);
  return v19 & 1;
}

uint64_t _s19FitnessIntelligence0A19ContextQueryPlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0(unint64_t a1)
{
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A0, &unk_1B4D1AA50);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v236 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v289 = &v236 - v4;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v287 = *(Request - 8);
  v288 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v260 = &v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v253);
  v262 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v261 = &v236 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v275 = &v236 - v11;
  v256 = type metadata accessor for DateRangeDescriptor(0);
  v12 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v246 = &v236 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v244 = &v236 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v245 = &v236 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v252 = &v236 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v243 = &v236 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v249 = &v236 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v267 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v273 = &v236 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v266 = &v236 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v272 = &v236 - v31;
  v248 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v248);
  v257 = &v236 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v258 = &v236 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v274 = &v236 - v36;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v38 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v276 = &v236 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v255 = &v236 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v265 = &v236 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v264 = &v236 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v254 = &v236 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v263 = &v236 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v236 - v51;
  v53 = type metadata accessor for FitnessContextQueryRequest(0);
  v283 = *(v53 - 8);
  v284 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v236 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v281 = (&v236 - v57);
  v268 = sub_1B4D1777C();
  v270 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v247 = &v236 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v259 = &v236 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v269 = &v236 - v62;
  sub_1B4D1776C();
  v293 = sub_1B4C946F0(MEMORY[0x1E69E7CC0]);
  v295 = v293;
  v63 = a1 + 56;
  v64 = 1 << *(a1 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(a1 + 56);
  v67 = (v64 + 63) >> 6;
  v286 = v38;
  v271 = (v38 + 48);
  v68 = v55;
  v250 = (v12 + 48);
  v251 = (v12 + 56);

  v69 = 0;
  v282 = 0;
  v280 = xmmword_1B4D1A800;
  v278 = v52;
  v279 = a1;
  v292 = Descriptor;
  v285 = v55;
  for (i = v67; ; v67 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v66)
        {
          do
          {
            v70 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              __break(1u);
              goto LABEL_83;
            }

            if (v70 >= v67)
            {

              if (qword_1EDC3CEC8 == -1)
              {
                goto LABEL_58;
              }

              goto LABEL_90;
            }

            v66 = *(v63 + 8 * v70);
            ++v69;
          }

          while (!v66);
          v69 = v70;
        }

        v71 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v72 = v281;
        sub_1B497CC9C(*(a1 + 48) + *(v283 + 72) * (v71 | (v69 << 6)), v281, type metadata accessor for FitnessContextQueryRequest);
        sub_1B497CD04(v72, v68, type metadata accessor for FitnessContextQueryRequest);
        v73 = *(v284 + 20);
        sub_1B497CC9C(v68 + v73, v52, type metadata accessor for FitnessContextQueryDescriptor);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v83 = v275;
        v84 = sub_1B497CD04(v52, v275, type metadata accessor for RingsPropertiesQuery);
        MEMORY[0x1EEE9AC00](v84);
        *(&v236 - 2) = v83;
        v85 = v293;

        v86 = v273;
        v87 = v282;
        sub_1B497A920(sub_1B497CBFC, v85, v273);
        v282 = v87;

        v88 = v267;
        v89 = v86;
        v90 = v292;
        sub_1B4974FBC(v89, v267, &qword_1EB8A67B0, &unk_1B4D1AA60);
        if ((*v271)(v88, 1, v90) == 1)
        {
          sub_1B4975024(v88, &qword_1EB8A67B0, &unk_1B4D1AA60);
          v67 = i;
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
          inited = swift_initStackObject();
          *(inited + 16) = v280;
          v134 = v285;
          v135 = v285[1];
          *(inited + 32) = *v285;
          *(inited + 40) = v135;

          v136 = sub_1B49B554C(inited);
          swift_setDeallocating();
          v68 = v134;
          sub_1B497CBA8(inited + 32);
          v137 = v295;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v294 = v137;
          sub_1B4BA3834(v136, v134 + v73, isUniquelyReferenced_nonNull_native);
          v293 = v294;
          v295 = v294;
          a1 = v279;
          goto LABEL_50;
        }

        v119 = v88;
        v120 = v265;
        sub_1B497CD04(v119, v265, type metadata accessor for FitnessContextQueryDescriptor);
        v121 = v255;
        sub_1B497CC9C(v120, v255, type metadata accessor for FitnessContextQueryDescriptor);
        v122 = swift_getEnumCaseMultiPayload();
        v67 = i;
        if (v122 != 1)
        {
          sub_1B497CC3C(v120, type metadata accessor for FitnessContextQueryDescriptor);
          sub_1B497CC3C(v121, type metadata accessor for FitnessContextQueryDescriptor);
          goto LABEL_35;
        }

        v123 = v261;
        sub_1B497CD04(v121, v261, type metadata accessor for RingsPropertiesQuery);
        v124 = v252;
        v125 = v256;
        (*v251)(v252, 1, 1, v256);
        v294 = *(v123 + v253[7]);

        sub_1B49972B4(v126);
        v242 = v294;
        v127 = v245;
        sub_1B4974FBC(v124, v245, &qword_1EB8A67A8, &qword_1B4D1E060);
        v128 = *v250;
        if ((*v250)(v127, 1, v125) == 1)
        {
          v129 = v123;
          v130 = v246;
          sub_1B497CC9C(v129, v246, type metadata accessor for DateRangeDescriptor);
          if (v128(v127, 1, v125) != 1)
          {
            sub_1B4975024(v127, &qword_1EB8A67A8, &qword_1B4D1E060);
          }
        }

        else
        {
          v130 = v246;
          sub_1B497CD04(v127, v246, type metadata accessor for DateRangeDescriptor);
        }

        v146 = v253;
        v147 = v253[6];
        v148 = (v261 + v253[5]);
        v149 = *v148;
        v150 = v148[1];
        v240 = v148[2];
        v241 = v149;
        v151 = *(v261 + v147);
        v152 = v130;
        v153 = v262;
        sub_1B497CD04(v152, v262, type metadata accessor for DateRangeDescriptor);

        v154 = v150;

        v155 = v240;

        sub_1B4975024(v252, &qword_1EB8A67A8, &qword_1B4D1E060);
        v156 = (v153 + v146[5]);
        v157 = v242;
        *v156 = v241;
        v156[1] = v154;
        v156[2] = v155;
        *(v153 + v146[6]) = v151;
        *(v153 + v146[7]) = v157;
        v158 = v293;
        if (*(v293 + 16))
        {
          v159 = v265;
          v160 = sub_1B49E9FEC(v265);
          a1 = v279;
          if (v161)
          {
            v293 = *(*(v158 + 56) + 8 * v160);
          }

          else
          {
            v293 = MEMORY[0x1E69E7CD0];
          }
        }

        else
        {
          v293 = MEMORY[0x1E69E7CD0];
          a1 = v279;
          v159 = v265;
        }

        v181 = v264;
        sub_1B497CC9C(v159, v264, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49CA830(0, v181);
        sub_1B497CC9C(v262, v181, type metadata accessor for RingsPropertiesQuery);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
        v182 = swift_initStackObject();
        *(v182 + 16) = v280;
        v183 = v285;
        v184 = v285[1];
        *(v182 + 32) = *v285;
        *(v182 + 40) = v184;

        v293 = sub_1B49A9FA4(v182, v293);
        swift_setDeallocating();
        sub_1B497CBA8(v182 + 32);
        v185 = v295;
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v185;
        sub_1B4BA3834(v293, v181, v186);
        sub_1B497CC3C(v181, type metadata accessor for FitnessContextQueryDescriptor);
        v293 = v294;
        v295 = v294;
        sub_1B497CC3C(v262, type metadata accessor for RingsPropertiesQuery);
        v68 = v183;
        sub_1B497CC3C(v261, type metadata accessor for RingsPropertiesQuery);
        sub_1B497CC3C(v265, type metadata accessor for FitnessContextQueryDescriptor);
LABEL_50:
        sub_1B4975024(v273, &qword_1EB8A67B0, &unk_1B4D1AA60);
        sub_1B497CC3C(v68, type metadata accessor for FitnessContextQueryRequest);
        sub_1B497CC3C(v275, type metadata accessor for RingsPropertiesQuery);
        v52 = v278;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      v75 = v274;
      v76 = sub_1B497CD04(v52, v274, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v76);
      *(&v236 - 2) = v75;
      v77 = v293;

      v78 = v272;
      v79 = v282;
      sub_1B497A920(sub_1B497CC1C, v77, v272);
      v282 = v79;

      v80 = v78;
      v81 = v292;
      v82 = v266;
      sub_1B4974FBC(v80, v266, &qword_1EB8A67B0, &unk_1B4D1AA60);
      if ((*v271)(v82, 1, v81) == 1)
      {
        sub_1B4975024(v82, &qword_1EB8A67B0, &unk_1B4D1AA60);
        v67 = i;
LABEL_25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
        v113 = swift_initStackObject();
        *(v113 + 16) = v280;
        v114 = v285;
        v115 = v285[1];
        *(v113 + 32) = *v285;
        *(v113 + 40) = v115;

        v116 = sub_1B49B554C(v113);
        swift_setDeallocating();
        v68 = v114;
        sub_1B497CBA8(v113 + 32);
        v117 = v295;
        v118 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v117;
        sub_1B4BA3834(v116, v114 + v73, v118);
        v293 = v294;
        v295 = v294;
        goto LABEL_26;
      }

      v108 = v82;
      v109 = v263;
      sub_1B497CD04(v108, v263, type metadata accessor for FitnessContextQueryDescriptor);
      v110 = v254;
      sub_1B497CC9C(v109, v254, type metadata accessor for FitnessContextQueryDescriptor);
      v111 = swift_getEnumCaseMultiPayload();
      v112 = v258;
      v67 = i;
      if (v111)
      {
        sub_1B497CC3C(v109, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B497CC3C(v110, type metadata accessor for FitnessContextQueryDescriptor);
        goto LABEL_25;
      }

      sub_1B497CD04(v110, v258, type metadata accessor for WorkoutPropertiesQuery);
      v139 = v249;
      v140 = v256;
      (*v251)(v249, 1, 1, v256);
      v294 = *(v112 + v248[7]);

      sub_1B49972CC(v141);
      v239 = v294;
      v142 = v243;
      sub_1B4974FBC(v139, v243, &qword_1EB8A67A8, &qword_1B4D1E060);
      v143 = *v250;
      if ((*v250)(v142, 1, v140) == 1)
      {
        v144 = v244;
        sub_1B497CC9C(v112, v244, type metadata accessor for DateRangeDescriptor);
        v145 = v144;
        if (v143(v142, 1, v256) != 1)
        {
          sub_1B4975024(v142, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v145 = v244;
        sub_1B497CD04(v142, v244, type metadata accessor for DateRangeDescriptor);
      }

      v162 = v248;
      v163 = v248[6];
      v164 = (v112 + v248[5]);
      v166 = *v164;
      v165 = v164[1];
      v167 = v164[3];
      v240 = v164[2];
      v241 = v165;
      v168 = v112;
      v169 = v164[5];
      v237 = v164[4];
      v238 = v166;
      v242 = *(v168 + v163);
      v170 = v145;
      v171 = v257;
      sub_1B497CD04(v170, v257, type metadata accessor for DateRangeDescriptor);

      v172 = v237;

      sub_1B4975024(v249, &qword_1EB8A67A8, &qword_1B4D1E060);
      v173 = (v171 + v162[5]);
      v174 = v240;
      v175 = v241;
      *v173 = v238;
      v173[1] = v175;
      v173[2] = v174;
      v173[3] = v167;
      v173[4] = v172;
      v173[5] = v169;
      *(v171 + v162[6]) = v242;
      *(v171 + v162[7]) = v239;
      v176 = v293;
      if (*(v293 + 16))
      {
        v177 = v263;
        v178 = sub_1B49E9FEC(v263);
        if (v179)
        {
          v180 = *(*(v176 + 56) + 8 * v178);
        }

        else
        {
          v180 = MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
        v180 = MEMORY[0x1E69E7CD0];
        v177 = v263;
      }

      v187 = v264;
      sub_1B497CC9C(v177, v264, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B49CA830(0, v187);
      sub_1B497CC9C(v257, v187, type metadata accessor for WorkoutPropertiesQuery);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
      v188 = swift_initStackObject();
      *(v188 + 16) = v280;
      v189 = v285;
      v190 = v285[1];
      *(v188 + 32) = *v285;
      *(v188 + 40) = v190;

      v191 = sub_1B49A9FA4(v188, v180);
      swift_setDeallocating();
      sub_1B497CBA8(v188 + 32);
      v192 = v295;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v294 = v192;
      sub_1B4BA3834(v191, v187, v193);
      sub_1B497CC3C(v187, type metadata accessor for FitnessContextQueryDescriptor);
      v293 = v294;
      v295 = v294;
      sub_1B497CC3C(v257, type metadata accessor for WorkoutPropertiesQuery);
      v68 = v189;
      sub_1B497CC3C(v258, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B497CC3C(v263, type metadata accessor for FitnessContextQueryDescriptor);
LABEL_26:
      sub_1B4975024(v272, &qword_1EB8A67B0, &unk_1B4D1AA60);
      sub_1B497CC3C(v68, type metadata accessor for FitnessContextQueryRequest);
      sub_1B497CC3C(v274, type metadata accessor for WorkoutPropertiesQuery);
      v52 = v278;
      a1 = v279;
    }

    a1 = v276;
    sub_1B497CC9C(v68 + v73, v276, type metadata accessor for FitnessContextQueryDescriptor);
    v91 = v293;
    if (*(v293 + 16) && (v92 = sub_1B49E9FEC(v68 + v73), (v93 & 1) != 0))
    {
      v94 = *(*(v91 + 56) + 8 * v92);
    }

    else
    {
      v94 = MEMORY[0x1E69E7CD0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
    v95 = swift_initStackObject();
    *(v95 + 16) = v280;
    v96 = v285[1];
    *(v95 + 32) = *v285;
    *(v95 + 40) = v96;

    v97 = sub_1B49A9FA4(v95, v94);
    swift_setDeallocating();
    sub_1B497CBA8(v95 + 32);
    v98 = v295;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v98;
    v100 = sub_1B49E9FEC(a1);
    v102 = *(v98 + 16);
    v103 = (v101 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
      break;
    }

    v106 = v101;
    if (*(v98 + 24) < v105)
    {
      sub_1B49855D4(v105, v99);
      v100 = sub_1B49E9FEC(v276);
      if ((v106 & 1) != (v107 & 1))
      {
        result = sub_1B4D18E1C();
        __break(1u);
        return result;
      }

LABEL_32:
      v131 = v294;
      if (v106)
      {
        goto LABEL_33;
      }

      goto LABEL_55;
    }

    if (v99)
    {
      goto LABEL_32;
    }

    v194 = v100;
    sub_1B4989318();
    v100 = v194;
    v131 = v294;
    if (v106)
    {
LABEL_33:
      *(v131[7] + 8 * v100) = v97;

      v132 = v276;
      goto LABEL_56;
    }

LABEL_55:
    v195 = v100;
    v132 = v276;
    v196 = v264;
    sub_1B497CC9C(v276, v264, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B4BA3F30(v195, v196, v97, v131);
LABEL_56:
    v52 = v278;
    sub_1B497CC3C(v132, type metadata accessor for FitnessContextQueryDescriptor);
    v293 = v131;
    v295 = v131;
    v68 = v285;
    sub_1B497CC3C(v285, type metadata accessor for FitnessContextQueryRequest);
    sub_1B497CC3C(v52, type metadata accessor for FitnessContextQueryDescriptor);
    a1 = v279;
  }

  while (1)
  {
    __break(1u);
LABEL_90:
    swift_once();
LABEL_58:
    v197 = sub_1B4D17F6C();
    __swift_project_value_buffer(v197, qword_1EDC3CED0);
    v198 = v270;
    v199 = v259;
    v200 = v268;
    (*(v270 + 16))(v259, v269, v268);

    v201 = sub_1B4D17F5C();
    v202 = a1;
    a1 = sub_1B4D1873C();
    v203 = os_log_type_enabled(v201, a1);
    v204 = v260;
    v205 = v293;
    if (v203)
    {
      v206 = swift_slowAlloc();
      *v206 = 134218496;
      *(v206 + 4) = *(v202 + 16);

      *(v206 + 12) = 2048;
      *(v206 + 14) = *(v205 + 16);
      *(v206 + 22) = 2048;
      v207 = v247;
      sub_1B4D1776C();
      sub_1B4D176FC();
      v209 = v208;
      v210 = *(v198 + 8);
      v211 = v207;
      v205 = v293;
      v210(v211, v200);
      v281 = v210;
      v210(v199, v200);
      *(v206 + 24) = v209;
      _os_log_impl(&dword_1B4953000, v201, a1, "Coalesced %ld queries into %ld in %fs", v206, 0x20u);
      MEMORY[0x1B8C7DDA0](v206, -1, -1);
    }

    else
    {

      v281 = *(v198 + 8);
      v281(v199, v200);
    }

    v213 = *(v205 + 16);
    v214 = MEMORY[0x1E69E7CC0];
    if (!v213)
    {
      break;
    }

    v294 = MEMORY[0x1E69E7CC0];

    sub_1B4BCF03C(0, v213, 0);
    v214 = v294;
    v215 = (v205 + 64);
    v216 = sub_1B4D188DC();
    v217 = 0;
    v293 = *(v205 + 36);
    v283 = v205 + 72;
    v284 = v213;
    v285 = (v205 + 64);
    while ((v216 & 0x8000000000000000) == 0 && v216 < 1 << *(v205 + 32))
    {
      v219 = v216 >> 6;
      if ((v215[v216 >> 6] & (1 << v216)) == 0)
      {
        goto LABEL_84;
      }

      if (v293 != *(v205 + 36))
      {
        goto LABEL_85;
      }

      v292 = v217;
      v220 = *(v205 + 48) + *(v286 + 72) * v216;
      v221 = v205;
      v222 = v289;
      sub_1B497CC9C(v220, v289, type metadata accessor for FitnessContextQueryDescriptor);
      v223 = *(*(v221 + 56) + 8 * v216);
      v224 = v222;
      v225 = v290;
      sub_1B497CD04(v224, v290, type metadata accessor for FitnessContextQueryDescriptor);
      *(v225 + *(v291 + 48)) = v223;
      sub_1B497CC9C(v225, v204 + *(v288 + 20), type metadata accessor for FitnessContextQueryDescriptor);
      *v204 = v223;
      swift_bridgeObjectRetain_n();
      sub_1B4975024(v225, &qword_1EB8A67A0, &unk_1B4D1AA50);
      v294 = v214;
      v227 = *(v214 + 16);
      v226 = *(v214 + 24);
      a1 = v227 + 1;
      if (v227 >= v226 >> 1)
      {
        sub_1B4BCF03C((v226 > 1), v227 + 1, 1);
        v214 = v294;
      }

      *(v214 + 16) = a1;
      sub_1B497CD04(v204, v214 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v227, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v218 = 1 << *(v221 + 32);
      if (v216 >= v218)
      {
        goto LABEL_86;
      }

      v205 = v221;
      v215 = v285;
      v228 = v285[v219];
      if ((v228 & (1 << v216)) == 0)
      {
        goto LABEL_87;
      }

      if (v293 != *(v205 + 36))
      {
        goto LABEL_88;
      }

      v229 = v228 & (-2 << (v216 & 0x3F));
      if (v229)
      {
        v218 = __clz(__rbit64(v229)) | v216 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        a1 = v219 << 6;
        v230 = v219 + 1;
        v231 = (v283 + 8 * v219);
        while (v230 < (v218 + 63) >> 6)
        {
          v233 = *v231++;
          v232 = v233;
          a1 += 64;
          ++v230;
          if (v233)
          {
            sub_1B497CD6C(v216, v293, 0);
            v218 = __clz(__rbit64(v232)) + a1;
            goto LABEL_64;
          }
        }

        sub_1B497CD6C(v216, v293, 0);
      }

LABEL_64:
      v217 = v292 + 1;
      v216 = v218;
      if (v292 + 1 == v284)
      {

        v200 = v268;
        goto LABEL_81;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

LABEL_81:
  v234 = sub_1B4A02EB8(v214, v212);

  v281(v269, v200);

  return v234;
}

uint64_t getEnumTagSinglePayload for FitnessContextQueryPlanner(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FitnessContextQueryPlanner(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B497CC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B497CC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497CD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497CD6C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t type metadata accessor for FitnessContextDemoClient(uint64_t a1)
{
  result = qword_1EB8A67C0;
  if (!qword_1EB8A67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B497CDEC(uint64_t a1)
{
  result = sub_1B4D1796C();
  if (v2 <= 0x3F)
  {
    result = sub_1B4D1777C();
    if (v3 <= 0x3F)
    {
      result = sub_1B498AFB8(319, &qword_1EDC36DC8, 0x1E699C9F0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B497CEA8()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t sub_1B497CEEC(uint64_t a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t sub_1B497CF2C(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v2[68] = type metadata accessor for FitnessContextQueryDescriptor(0);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v3 = type metadata accessor for FitnessContextQueryResult(0);
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B497D0B0, 0, 0);
}

uint64_t sub_1B497D0B0()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 592);
  v114 = *(v0 + 584);
  v3 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1AA70;
  *(v0 + 424) = &type metadata for RingProgressFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D0, &unk_1B4D419B0);
  v116 = sub_1B4D181CC();
  v129 = v5;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  *(inited + 32) = v116;
  *(inited + 40) = v129;
  *(v0 + 432) = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v117 = sub_1B4D181CC();
  v130 = v6;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  *(inited + 48) = v117;
  *(inited + 56) = v130;
  v110 = sub_1B49B554C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = v2[5];
  v113 = v3 + *(type metadata accessor for FitnessContextDemoClient(0) + 20);
  v8 = sub_1B4D1777C();
  v9 = *(*(v8 - 8) + 16);
  v9(v1 + v7, v113, v8);
  swift_storeEnumTagMultiPayload();
  v10 = (v1 + v2[6]);
  v10[3] = type metadata accessor for ActivitySummaryContext(0);
  v10[4] = &protocol witness table for ActivitySummaryContext;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1B497E6EC(boxed_opaque_existential_1);
  *v1 = v110;
  v104 = v2;
  v12 = v1 + v2[7];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 1) = xmmword_1B4D1AA80;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1B4D1A800;
  *(v0 + 440) = &type metadata for CompletedWorkoutsFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E0, &qword_1B4D478F0);
  v118 = sub_1B4D181CC();
  v131 = v14;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E420);
  *(v13 + 32) = v118;
  *(v13 + 40) = v131;
  v15 = sub_1B49B554C(v13);
  swift_setDeallocating();
  sub_1B497CBA8(v13 + 32);
  v108 = v8;
  v9(v114, v113, v8);
  swift_storeEnumTagMultiPayload();
  *(v0 + 248) = &type metadata for WorkoutWeekContext;
  *(v0 + 256) = &protocol witness table for WorkoutWeekContext;
  v115 = v0;
  sub_1B497F0F0((v0 + 224));
  v16 = *(v0 + 664);
  v17 = *(v0 + 656);
  v101 = *(v0 + 640);
  v18 = *(v0 + 584);
  v102 = *(v0 + 576);
  v100 = *(v0 + 648);
  *v16 = v15;
  sub_1B498B198(v18, v16 + v104[5], type metadata accessor for FitnessContextQueryDescriptor);
  v19 = v16 + v104[6];
  v20 = *(v0 + 224);
  v21 = *(v0 + 240);
  *(v19 + 4) = *(v0 + 256);
  *v19 = v20;
  *(v19 + 1) = v21;
  v22 = v16 + v104[7];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 1) = xmmword_1B4D1AA80;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1B4D1A800;
  *(v0 + 448) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v119 = sub_1B4D181CC();
  v132 = v24;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  *(v23 + 32) = v119;
  *(v23 + 40) = v132;
  v25 = sub_1B49B554C(v23);
  swift_setDeallocating();
  sub_1B497CBA8(v23 + 32);
  v9(v17 + v104[5], v113, v8);
  swift_storeEnumTagMultiPayload();
  v26 = v17 + v104[6];
  *(v26 + 3) = &type metadata for TrainingLoadContext;
  *(v26 + 4) = &protocol witness table for TrainingLoadContext;
  *v26 = 2;
  *v17 = v25;
  v27 = v17 + v104[7];
  *v27 = 0;
  *(v27 + 1) = 0;
  *(v27 + 1) = xmmword_1B4D1AA80;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D1AA70;
  *(v0 + 456) = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F0, &qword_1B4D1AB08);
  v120 = sub_1B4D181CC();
  v133 = v29;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E890);

  *(v28 + 32) = v120;
  *(v28 + 40) = v133;
  *(v0 + 464) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F8, &qword_1B4D1AB10);
  v121 = sub_1B4D181CC();
  v134 = v30;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4E570);

  *(v28 + 48) = v121;
  *(v28 + 56) = v134;
  v31 = sub_1B49B554C(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v100 + v104[5];
  v9(v32, v113, v8);
  type metadata accessor for DateRangeDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for WorkoutPropertiesQuery(0);
  v34 = &v32[v33[5]];
  v35 = MEMORY[0x1E69E7CC0];
  *v34 = MEMORY[0x1E69E7CC0];
  *(v34 + 1) = v35;
  *(v34 + 2) = v35;
  *(v34 + 3) = v35;
  *(v34 + 4) = v35;
  *(v34 + 5) = v35;
  *&v32[v33[6]] = v35;
  *&v32[v33[7]] = &unk_1F2CB81C0;
  swift_storeEnumTagMultiPayload();
  v36 = (v100 + v104[6]);
  v36[3] = &type metadata for WorkoutProperties;
  v36[4] = &protocol witness table for WorkoutProperties;
  sub_1B497F9FC(v36);
  *v100 = v31;
  v37 = v100 + v104[7];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v37 + 1) = xmmword_1B4D1AA80;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1B4D1A800;
  *(v0 + 472) = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  v122 = sub_1B4D181CC();
  v135 = v39;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E8B0);

  *(v38 + 32) = v122;
  *(v38 + 40) = v135;
  v40 = sub_1B49B554C(v38);
  swift_setDeallocating();
  sub_1B497CBA8(v38 + 32);
  v41 = v101 + v104[5];
  v9(v41, v113, v8);
  swift_storeEnumTagMultiPayload();
  v42 = &v41[v33[5]];
  *v42 = v35;
  *(v42 + 1) = v35;
  *(v42 + 2) = v35;
  *(v42 + 3) = v35;
  *(v42 + 4) = v35;
  *(v42 + 5) = v35;
  *&v41[v33[6]] = v35;
  *&v41[v33[7]] = &unk_1F2CB81E8;
  swift_storeEnumTagMultiPayload();
  v43 = (v101 + v104[6]);
  v43[3] = &type metadata for WorkoutProperties;
  v43[4] = &protocol witness table for WorkoutProperties;
  sub_1B4980308(v43);
  *v101 = v40;
  v44 = v101 + v104[7];
  *v44 = 0;
  *(v44 + 1) = 0;
  *(v44 + 1) = xmmword_1B4D1AA80;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1B4D1AA70;
  *(v0 + 480) = &type metadata for AverageWorkoutDurationFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6800, &qword_1B4D1AB18);
  v123 = sub_1B4D181CC();
  v136 = v46;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);
  *(v45 + 32) = v123;
  *(v45 + 40) = v136;
  *(v0 + 488) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v124 = sub_1B4D181CC();
  v137 = v47;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);

  *(v45 + 48) = v124;
  *(v45 + 56) = v137;
  v48 = sub_1B49B554C(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9(v102, v113, v108);
  swift_storeEnumTagMultiPayload();
  v49 = &v102[v33[5]];
  *v49 = v35;
  *(v49 + 1) = v35;
  *(v49 + 2) = v35;
  *(v49 + 3) = v35;
  *(v49 + 4) = v35;
  *(v49 + 5) = v35;
  *&v102[v33[6]] = v35;
  *&v102[v33[7]] = &unk_1F2CB8210;
  swift_storeEnumTagMultiPayload();
  *(v0 + 288) = &type metadata for WorkoutProperties;
  *(v0 + 296) = &protocol witness table for WorkoutProperties;
  v50 = (v0 + 264);
  sub_1B4980E70(v50);
  v52 = *(v115 + 632);
  v53 = *(v115 + 576);
  v54 = *(v115 + 568);
  *v52 = v48;
  sub_1B498B198(v53, v52 + v104[5], type metadata accessor for FitnessContextQueryDescriptor);
  v55 = v52 + v104[6];
  v56 = *v50;
  v57 = *(v50 + 1);
  *(v55 + 4) = v50[4];
  *v55 = v56;
  *(v55 + 1) = v57;
  v58 = v52 + v104[7];
  *v58 = 0;
  *(v58 + 1) = 0;
  *(v58 + 1) = xmmword_1B4D1AA80;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B4D1A800;
  *(v115 + 496) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6808, &unk_1B4D1AB20);
  v125 = sub_1B4D181CC();
  v138 = v60;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  *(v59 + 32) = v125;
  *(v59 + 40) = v138;
  v103 = sub_1B49B554C(v59);
  swift_setDeallocating();
  sub_1B497CBA8(v59 + 32);
  swift_deallocClassInstance();
  v9(v54, v113, v108);
  swift_storeEnumTagMultiPayload();
  v61 = &v54[v33[5]];
  *v61 = v35;
  *(v61 + 1) = v35;
  *(v61 + 2) = v35;
  *(v61 + 3) = v35;
  *(v61 + 4) = v35;
  *(v61 + 5) = v35;
  *&v54[v33[6]] = v35;
  *&v54[v33[7]] = &unk_1F2CB8238;
  swift_storeEnumTagMultiPayload();
  *(v115 + 328) = &type metadata for WorkoutProperties;
  *(v115 + 336) = &protocol witness table for WorkoutProperties;
  sub_1B4981A7C((v115 + 304));
  v62 = *(v115 + 624);
  v63 = *(v115 + 568);
  v64 = *(v115 + 560);
  *v62 = v103;
  sub_1B498B198(v63, v62 + v104[5], type metadata accessor for FitnessContextQueryDescriptor);
  v65 = v62 + v104[6];
  v66 = *(v115 + 304);
  v67 = *(v115 + 320);
  *(v65 + 4) = *(v115 + 336);
  *v65 = v66;
  *(v65 + 1) = v67;
  v68 = v62 + v104[7];
  *v68 = 0;
  *(v68 + 1) = 0;
  *(v68 + 1) = xmmword_1B4D1AA80;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1B4D1AA70;
  *(v115 + 504) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v126 = sub_1B4D181CC();
  v139 = v70;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  *(v69 + 32) = v126;
  *(v69 + 40) = v139;
  *(v115 + 512) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  v127 = sub_1B4D181CC();
  v140 = v71;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  *(v69 + 48) = v127;
  *(v69 + 56) = v140;
  v105 = sub_1B49B554C(v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9(v64, v113, v108);
  swift_storeEnumTagMultiPayload();
  v72 = &v64[v33[5]];
  *v72 = v35;
  *(v72 + 1) = v35;
  *(v72 + 2) = v35;
  *(v72 + 3) = v35;
  *(v72 + 4) = v35;
  *(v72 + 5) = v35;
  *&v64[v33[6]] = v35;
  *&v64[v33[7]] = &unk_1F2CB8260;
  swift_storeEnumTagMultiPayload();
  *(v115 + 368) = &type metadata for WorkoutProperties;
  *(v115 + 376) = &protocol witness table for WorkoutProperties;
  sub_1B4982240((v115 + 344));
  v73 = *(v115 + 616);
  v74 = *(v115 + 560);
  v75 = *(v115 + 552);
  *v73 = v105;
  sub_1B498B198(v74, v73 + v104[5], type metadata accessor for FitnessContextQueryDescriptor);
  v76 = v73 + v104[6];
  v77 = *(v115 + 344);
  v78 = *(v115 + 360);
  *(v76 + 4) = *(v115 + 376);
  *v76 = v77;
  *(v76 + 1) = v78;
  v79 = v73 + v104[7];
  *v79 = 0;
  *(v79 + 1) = 0;
  *(v79 + 1) = xmmword_1B4D1AA80;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1B4D1A800;
  *(v115 + 520) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v128 = sub_1B4D181CC();
  v141 = v81;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  *(v80 + 32) = v128;
  *(v80 + 40) = v141;
  v82 = sub_1B49B554C(v80);
  swift_setDeallocating();
  sub_1B497CBA8(v80 + 32);
  swift_deallocClassInstance();
  v9(v75, v113, v108);
  swift_storeEnumTagMultiPayload();
  v83 = &v75[v33[5]];
  *v83 = v35;
  *(v83 + 1) = v35;
  *(v83 + 2) = v35;
  *(v83 + 3) = v35;
  *(v83 + 4) = v35;
  *(v83 + 5) = v35;
  *&v75[v33[6]] = v35;
  *&v75[v33[7]] = &unk_1F2CB8288;
  swift_storeEnumTagMultiPayload();
  *(v115 + 408) = &type metadata for WorkoutProperties;
  *(v115 + 416) = &protocol witness table for WorkoutProperties;
  sub_1B4982E30((v115 + 384));
  v84 = *(v115 + 672);
  v85 = *(v115 + 664);
  v86 = *(v115 + 656);
  v87 = *(v115 + 648);
  v109 = *(v115 + 640);
  v112 = *(v115 + 632);
  v88 = *(v115 + 624);
  v107 = *(v115 + 616);
  v89 = *(v115 + 608);
  v90 = *(v115 + 600);
  v91 = *(v115 + 552);
  v106 = *(v115 + 528);
  *v89 = v82;
  sub_1B498B198(v91, v89 + v104[5], type metadata accessor for FitnessContextQueryDescriptor);
  v92 = v89 + v104[6];
  v93 = *(v115 + 384);
  v94 = *(v115 + 400);
  *(v92 + 4) = *(v115 + 416);
  *v92 = v93;
  *(v92 + 1) = v94;
  v95 = v89 + v104[7];
  *v95 = 0;
  *(v95 + 1) = 0;
  *(v95 + 1) = xmmword_1B4D1AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6810, &unk_1B4D20400);
  v96 = *(v90 + 72);
  v97 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1B4D1AA90;
  v98 = v111 + v97;
  sub_1B498B130(v85, v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v84, v98 + v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v86, v98 + 2 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v87, v98 + 3 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v109, v98 + 4 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v88, v98 + 5 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v112, v98 + 6 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v107, v98 + 7 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B198(v89, v98 + 8 * v96, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v107, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v88, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v112, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v109, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v87, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v86, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v85, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v84, type metadata accessor for FitnessContextQueryResult);
  *v106 = v111;

  v99 = *(v115 + 8);

  return v99();
}

uint64_t sub_1B497E6EC@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v103 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v102 = v1 + *(type metadata accessor for FitnessContextDemoClient(0) + 20);
  v7 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4D1796C();
  v101 = __swift_project_value_buffer(v8, qword_1EDC3CE48);
  v9 = sub_1B4D178CC();
  v97 = _HKCacheIndexFromDate();

  v10 = v2[7];
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC36DF8;
  v12 = sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v13 = v11;
  sub_1B4D1741C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(&v6[v10], 0, 1, v14);
  v18 = v2[8];
  v91 = v13;
  v99 = v12;
  sub_1B4D1741C();
  v94 = v16;
  v95 = v14;
  v93 = v17;
  v16(&v6[v18], 0, 1, v14);
  v19 = v2[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(&v6[v19], 1, 1, v20);
  v22(&v6[v2[10]], 1, 1, v20);
  v24 = v2[11];
  v25 = objc_opt_self();
  v26 = [v25 minutes];
  v27 = v2;
  v28 = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v22(&v6[v24], 0, 1, v20);
  v29 = v27[12];
  v92 = v25;
  v30 = [v25 minutes];
  v90 = v28;
  v31 = v27;
  sub_1B4D1741C();
  v100 = v20;
  v98 = v22;
  v96 = v23;
  v22(&v6[v29], 0, 1, v20);
  v32 = v27[13];
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDC36E78;
  v34 = type metadata accessor for UnitCount();
  v35 = v33;
  sub_1B4D1741C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(&v6[v32], 0, 1, v36);
  v40 = v31[14];
  v41 = v35;
  sub_1B4D1741C();
  v38(&v6[v40], 0, 1, v36);
  v42 = v31[15];
  v43 = v41;
  v80 = v34;
  sub_1B4D1741C();
  v81 = v36;
  v82 = v39;
  v83 = v38;
  v38(&v6[v42], 0, 1, v36);
  v44 = v31[16];
  v79 = v43;
  sub_1B4D1741C();
  v38(&v6[v44], 0, 1, v36);
  v45 = v31[17];
  v88 = objc_opt_self();
  v46 = [v88 meters];
  v87 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v47 = *(v85 - 8);
  v84 = *(v47 + 56);
  v86 = v47 + 56;
  v84(&v6[v45], 0, 1, v85);
  v48 = v31[19];
  v49 = &v6[v31[18]];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = v97;
  *(v6 + 12) = 1;
  *v49 = 0;
  v49[8] = 1;
  v6[v48] = 0;
  v50 = sub_1B4D1771C();
  v51 = sub_1B4D178CC();
  v102 = _HKCacheIndexFromDate();

  v52 = v31[7];
  v53 = v89;
  sub_1B4D1741C();
  v55 = v94;
  v54 = v95;
  v94(v53 + v52, 0, 1, v95);
  v56 = v31[8];
  sub_1B4D1741C();
  v55(v53 + v56, 0, 1, v54);
  v57 = v100;
  v58 = v98;
  v98(v53 + v31[9], 1, 1, v100);
  v58(v53 + v31[10], 1, 1, v57);
  v59 = v31[11];
  v101 = v6;
  v60 = v92;
  v61 = [v92 minutes];
  sub_1B4D1741C();
  v58(v53 + v59, 0, 1, v57);
  v62 = v31[12];
  v63 = [v60 minutes];
  sub_1B4D1741C();
  v58(v53 + v62, 0, 1, v57);
  v64 = v31[13];
  v65 = v79;
  sub_1B4D1741C();
  v66 = v81;
  v67 = v83;
  v83(v53 + v64, 0, 1, v81);
  v68 = v31[14];
  v69 = v65;
  sub_1B4D1741C();
  v67(v53 + v68, 0, 1, v66);
  v70 = v31[15];
  sub_1B4D1741C();
  v67(v53 + v70, 0, 1, v66);
  v71 = v31[16];
  sub_1B4D1741C();
  v67(v53 + v71, 0, 1, v66);
  v72 = v31[17];
  v73 = [v88 meters];
  sub_1B4D1741C();
  v84((v53 + v72), 0, 1, v85);
  v74 = v31[19];
  v75 = v53 + v31[18];
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  *v53 = v102;
  *(v53 + 24) = 1;
  *v75 = 0;
  *(v75 + 8) = 1;
  *(v53 + v74) = 0;
  sub_1B498B000(v53, type metadata accessor for HKActivitySummaryRepresentable);
  v76 = v104;
  sub_1B498B198(v101, v104, type metadata accessor for HKActivitySummaryRepresentable);
  return (*(v103 + 56))(v76, 0, 1, v31);
}

uint64_t sub_1B497F0F0@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v90 = sub_1B4D1794C();
  v99 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v69 - v4;
  v5 = type metadata accessor for WorkoutRecord(0);
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FitnessContextDemoClient(0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1777C();
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v97 = v1;
  v24 = sub_1B4D178CC();
  v74 = v9;
  v25 = sub_1B4D1771C();
  v26 = [v24 hk:v25 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v27 = v97;
  sub_1B4D1782C();
  v28 = v94;
  sub_1B498B130(v27, v94, type metadata accessor for FitnessContextDemoClient);
  v29 = v75 + 16;
  v30 = *(v75 + 16);
  v91 = v17;
  v69 = v23;
  v30(v17, v23, v11);
  v70 = v20;
  v81 = v30;
  v82 = v29;
  v30(v83, v20, v11);
  result = sub_1B49833B4();
  v32 = result;
  v33 = 0;
  v34 = result + 64;
  v35 = 1 << *(result + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(result + 64);
  v73 = v28 + 192;
  v72 = (v35 + 63) >> 6;
  v86 = *MEMORY[0x1E6969A48];
  v97 = v99 + 13;
  v85 = (v99 + 1);
  v99 = (v75 + 32);
  v38 = MEMORY[0x1E69E7CC0];
  v76 = result;
  v98 = v11;
  v77 = result + 64;
  v84 = (v75 + 48);
  while (v37)
  {
LABEL_10:
    v40 = (v33 << 9) | (8 * __clz(__rbit64(v37)));
    v41 = *(*(v32 + 56) + v40);
    if (v41 < 0)
    {
      goto LABEL_36;
    }

    v79 = v37;
    v80 = v33;
    if (v41)
    {
      v78 = v38;
      v93 = *(*(v32 + 48) + v40);
      v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCED9C(0, v41, 0);
      v42 = 0;
      v43 = v100;
      v92 = *v97;
      do
      {
        v44 = v41;
        v46 = v89;
        v45 = v90;
        v92(v89, v86, v90);
        v47 = v88;
        sub_1B4D1790C();
        v48 = v46;
        v49 = v47;
        (*v85)(v48, v45);
        v50 = *v84;
        v51 = v47;
        v52 = v98;
        if ((*v84)(v51, 1, v98) == 1)
        {
          v53 = v87;
          v81(v87, v83, v52);
          if (v50(v49, 1, v52) != 1)
          {
            sub_1B4975024(v49, &qword_1EB8A6790, &qword_1B4D1BBC0);
          }
        }

        else
        {
          v53 = v87;
          (*v99)(v87, v49, v52);
        }

        sub_1B4D177BC();
        v54 = v95;
        sub_1B4D1770C();
        (*v99)(&v8[v54[6]], v53, v52);
        *&v8[v54[7]] = v93;
        v8[v54[8]] = 2;
        v55 = &v8[v54[9]];
        *v55 = 0;
        *(v55 + 1) = 0;
        v56 = &v8[v54[10]];
        *v56 = 0;
        *(v56 + 1) = 0;
        v56[24] = 0;
        *(v56 + 2) = 0;
        v100 = v43;
        v58 = *(v43 + 16);
        v57 = *(v43 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1B4BCED9C((v57 > 1), v58 + 1, 1);
          v43 = v100;
        }

        ++v42;
        *(v43 + 16) = v58 + 1;
        result = sub_1B498B198(v8, v43 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v58, type metadata accessor for WorkoutRecord);
        v41 = v44;
      }

      while (v44 != v42);
      v11 = v98;
      v38 = v78;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v59 = *(v43 + 16);
    v60 = v38[2];
    v61 = v60 + v59;
    if (__OFADD__(v60, v59))
    {
      goto LABEL_37;
    }

    v62 = v38;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v61 > v62[3] >> 1)
    {
      if (v60 <= v61)
      {
        v63 = v60 + v59;
      }

      else
      {
        v63 = v60;
      }

      result = sub_1B4A1D454(result, v63, 1, v62);
      v62 = result;
    }

    v34 = v77;
    v33 = v80;
    v37 = (v79 - 1) & v79;
    if (*(v43 + 16))
    {
      if ((v62[3] >> 1) - v62[2] < v59)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      v38 = v62;
      v32 = v76;
      if (v59)
      {
        v64 = v62[2];
        v65 = __OFADD__(v64, v59);
        v66 = v64 + v59;
        if (v65)
        {
          goto LABEL_40;
        }

        v62[2] = v66;
      }
    }

    else
    {

      v38 = v62;
      v32 = v76;
      if (v59)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v72)
    {
      v67 = *(v75 + 8);
      v68 = v38;
      v67(v83, v11);
      v67(v91, v11);
      sub_1B498B000(v94, type metadata accessor for FitnessContextDemoClient);
      v67(v70, v11);
      v67(v69, v11);

      *v71 = v68;
      return result;
    }

    v37 = *(v34 + 8 * v39);
    ++v33;
    if (v37)
    {
      v33 = v39;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B497F9FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v76 - v5;
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4D178CC();
  v11 = type metadata accessor for FitnessContextDemoClient(0);
  v92 = v1 + *(v11 + 20);
  v12 = sub_1B4D1771C();
  v13 = [v10 hk:v12 startOfFitnessWeekBeforeDate:?];

  v93 = v9;
  sub_1B4D1775C();

  v14 = sub_1B49833B4();
  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v14[8];
  v21 = (v18 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v22 >= v21)
        {
          goto LABEL_13;
        }

        v20 = v14[v22 + 8];
        ++v16;
        if (v20)
        {
          v16 = v22;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v22 = v16;
LABEL_10:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = *(v14[7] + ((v22 << 9) | (8 * v23)));
    v25 = __OFADD__(v17, v24);
    v17 += v24;
  }

  while (!v25);
  __break(1u);
LABEL_13:
  v86 = v7;
  v87 = v6;
  v88 = a1;
  MEMORY[0x1EEE9AC00](v14);
  *(&v76 - 2) = v2;
  sub_1B4983910(sub_1B498AF9C, (&v76 - 4), v15);

  v13 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
LABEL_20:
    swift_once();
  }

  v26 = sub_1B4D1796C();
  v27 = __swift_project_value_buffer(v26, qword_1EDC3CE48);
  v28 = sub_1B4D178CC();
  v85 = _HKCacheIndexFromDate();

  v29 = sub_1B4D1771C();
  v82 = v27;
  v30 = sub_1B4D178CC();
  v84 = _HKCacheIndexFromDate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B4D1AA70;
  v32 = sub_1B4D1771C();
  v33 = sub_1B4D178CC();
  v81 = _HKCacheIndexFromDate();

  v34 = sub_1B4D1771C();
  v35 = sub_1B4D178CC();
  v80 = _HKCacheIndexFromDate();

  v83 = *(v2 + *(v11 + 24));
  v79 = [v83 effectiveTypeIdentifier];
  LOBYTE(v106) = 1;
  LOBYTE(v101) = 0;
  v36 = [objc_opt_self() meters];
  v78 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [ObjCClassFromMetadata baseUnit];
  *(v31 + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  *(v31 + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 104));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v40 = v39[11];
  v41 = v90;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v39[7]) = 1;
  v42 = v89;
  v43 = *(v89 + 16);
  v43(boxed_opaque_existential_1, boxed_opaque_existential_1 + v40, v41);
  v44 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  (*(v42 + 8))(v91, v41);
  v43((boxed_opaque_existential_1 + v39[9]), boxed_opaque_existential_1 + v40, v41);
  v43((boxed_opaque_existential_1 + v39[8]), boxed_opaque_existential_1 + v40, v41);
  v45 = v80;
  *(v31 + 32) = v81;
  *(v31 + 40) = v45;
  *(v31 + 48) = 1804;
  *(v31 + 50) = *&v114[7];
  *(v31 + 54) = v115;
  *(v31 + 56) = 0;
  *(v31 + 64) = 1;
  *(v31 + 65) = *v114;
  *(v31 + 68) = *&v114[3];
  *(v31 + 72) = v79;
  *(v31 + 80) = 1280;
  LODWORD(v45) = v112;
  *(v31 + 86) = v113;
  *(v31 + 82) = v45;
  *(v31 + 88) = 0;
  *(v31 + 96) = 0;
  v46 = sub_1B4D1771C();
  v47 = sub_1B4D178CC();
  v48 = _HKCacheIndexFromDate();

  v49 = sub_1B4D1771C();
  v50 = sub_1B4D178CC();
  v51 = _HKCacheIndexFromDate();

  v52 = [v83 effectiveTypeIdentifier];
  LOBYTE(v106) = 1;
  LOBYTE(v101) = 0;
  *(v31 + 240) = &type metadata for WorkoutTotalCountProperty;
  v53 = sub_1B498AF48();
  *(v31 + 144) = v48;
  *(v31 + 248) = v53;
  *(v31 + 216) = v17;
  *(v31 + 152) = v51;
  *(v31 + 160) = 1804;
  *(v31 + 162) = *&v118[7];
  *(v31 + 166) = v119;
  *(v31 + 168) = 0;
  *(v31 + 176) = 1;
  *(v31 + 177) = *v118;
  *(v31 + 180) = *&v118[3];
  *(v31 + 184) = v52;
  *(v31 + 192) = 1280;
  v54 = v84;
  *(v31 + 194) = v116;
  *(v31 + 198) = v117;
  *(v31 + 200) = 0;
  *(v31 + 208) = 0;
  v111 = MEMORY[0x1E69E7CC0];
  sub_1B4BCECFC(0, 2, 0);
  v55 = v111;
  v56 = v85;
  sub_1B498ADFC(v31 + 32, &v101);
  v120 = v102;
  v121 = v103;
  v122 = v104;
  v123 = *&v105[0];
  sub_1B496F398((v105 + 8), v110 + 8);
  *&v106 = v56;
  *(&v106 + 1) = v54;
  v107 = v120;
  v108 = v121;
  v109 = v122;
  *&v110[0] = v123;
  v58 = *(v55 + 16);
  v57 = *(v55 + 24);
  if (v58 >= v57 >> 1)
  {
    sub_1B4BCECFC((v57 > 1), v58 + 1, 1);
    v55 = v111;
  }

  *(v55 + 16) = v58 + 1;
  v59 = (v55 + 112 * v58);
  v60 = v106;
  v61 = v108;
  v59[3] = v107;
  v59[4] = v61;
  v59[2] = v60;
  v62 = v109;
  v63 = v110[0];
  v64 = v110[2];
  v59[7] = v110[1];
  v59[8] = v64;
  v59[5] = v62;
  v59[6] = v63;
  sub_1B498ADFC(v31 + 144, v94);

  v97 = v94[1];
  v98 = v94[2];
  v99 = v94[3];
  v100 = v95;
  sub_1B496F398(&v96, v105 + 8);
  *&v101 = v56;
  *(&v101 + 1) = v54;
  v102 = v97;
  v103 = v98;
  v104 = v99;
  *&v105[0] = v100;
  v66 = *(v55 + 16);
  v65 = *(v55 + 24);
  v67 = v86;
  if (v66 >= v65 >> 1)
  {
    sub_1B4BCECFC((v65 > 1), v66 + 1, 1);
    v55 = v111;
  }

  *(v55 + 16) = v66 + 1;
  v68 = (v55 + 112 * v66);
  v69 = v101;
  v70 = v103;
  v68[3] = v102;
  v68[4] = v70;
  v68[2] = v69;
  v71 = v104;
  v72 = v105[0];
  v73 = v105[2];
  v68[7] = v105[1];
  v68[8] = v73;
  v68[5] = v71;
  v68[6] = v72;
  result = (*(v67 + 8))(v93);
  v75 = v88;
  *v88 = v56;
  v75[1] = v54;
  v75[2] = v55;
  return result;
}

uint64_t sub_1B4980308@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v102 - v4;
  v115 = sub_1B4D1794C();
  v5 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v102 - v9;
  v11 = sub_1B4D1777C();
  v119 = *(v11 - 8);
  v120 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  v16 = sub_1B4D178CC();
  v116 = type metadata accessor for FitnessContextDemoClient(0);
  v17 = v116[5];
  v18 = sub_1B4D1771C();
  v19 = [v16 hk:v18 startOfFitnessWeekBeforeDate:?];

  v20 = v119;
  sub_1B4D1775C();

  v21 = v2;
  v22 = v115;
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A48], v115);
  v121 = v15;
  sub_1B4D1790C();
  v23 = v7;
  v24 = v120;
  (*(v5 + 8))(v23, v22);
  v25 = *(v20 + 48);
  if (v25(v10, 1, v24) == 1)
  {
    (*(v20 + 16))(v118, v21 + v17, v24);
    v26 = v17;
    if (v25(v10, 1, v24) != 1)
    {
      sub_1B4975024(v10, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v20 + 32))(v118, v10, v24);
    v26 = v17;
  }

  v27 = 0;
  v28 = 0;
  v29 = v116;
  v30 = *(v21 + v116[7]);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v30 + 64;
  v34 = v32 & *(v30 + 64);
  v35 = (v31 + 63) >> 6;
  while (v34)
  {
    v36 = v27;
LABEL_14:
    v37 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v38 = *(*(v30 + 56) + 56 * (v37 | (v36 << 6)) + 8);
    v39 = __OFADD__(v28, v38);
    v28 += v38;
    if (v39)
    {
      __break(1u);
LABEL_17:
      v40 = 0;
      v41 = 1 << *(v30 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v30 + 64);
      v44 = (v41 + 63) >> 6;
      for (i = 0.0; v43; i = i + v49 * *(v48 + 8))
      {
        v46 = v40;
LABEL_25:
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = *(v30 + 56) + 56 * (v47 | (v46 << 6));
        v49 = *(v48 + 40);
        if (*(v48 + 48))
        {
          v49 = 0.0;
        }
      }

      while (1)
      {
        v46 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_36;
        }

        if (v46 >= v44)
        {
          v10 = sub_1B4D1771C();
          if (qword_1EDC3CE40 != -1)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }

        v43 = *(v33 + 8 * v46);
        ++v40;
        if (v43)
        {
          v40 = v46;
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v36 >= v35)
    {
      goto LABEL_17;
    }

    v34 = *(v33 + 8 * v36);
    ++v27;
    if (v34)
    {
      v27 = v36;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_30:
  v50 = sub_1B4D1796C();
  v51 = __swift_project_value_buffer(v50, qword_1EDC3CE48);
  v52 = sub_1B4D178CC();
  v115 = _HKCacheIndexFromDate();

  v53 = sub_1B4D1771C();
  v54 = sub_1B4D178CC();
  v111 = _HKCacheIndexFromDate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1B4D1AA70;
  v56 = sub_1B4D1771C();
  v110 = v51;
  v57 = sub_1B4D178CC();
  v109 = _HKCacheIndexFromDate();

  v58 = sub_1B4D1771C();
  v59 = sub_1B4D178CC();
  v108 = _HKCacheIndexFromDate();

  v116 = *(v21 + v29[6]);
  v107 = [v116 effectiveTypeIdentifier];
  LOBYTE(v134) = 1;
  LOBYTE(v129) = 0;
  v60 = [objc_opt_self() meters];
  v104 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = [ObjCClassFromMetadata baseUnit];
  *(v55 + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  *(v55 + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 104));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v105 = v26;
  v106 = v21;
  v64 = v63;
  v65 = *(v63 + 44);
  v66 = v113;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v64[7]) = 1;
  v67 = v112;
  v68 = *(v112 + 16);
  v68(boxed_opaque_existential_1, boxed_opaque_existential_1 + v65, v66);
  v69 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  (*(v67 + 8))(v117, v66);
  v68((boxed_opaque_existential_1 + v64[9]), boxed_opaque_existential_1 + v65, v66);
  v68((boxed_opaque_existential_1 + v64[8]), boxed_opaque_existential_1 + v65, v66);
  v70 = v108;
  *(v55 + 32) = v109;
  *(v55 + 40) = v70;
  *(v55 + 48) = 1804;
  *(v55 + 50) = *&v142[7];
  *(v55 + 54) = v143;
  *(v55 + 56) = 0;
  *(v55 + 64) = 1;
  *(v55 + 65) = *v142;
  *(v55 + 68) = *&v142[3];
  *(v55 + 72) = v107;
  *(v55 + 80) = 1280;
  LODWORD(v70) = v140;
  *(v55 + 86) = v141;
  *(v55 + 82) = v70;
  *(v55 + 88) = 0;
  *(v55 + 96) = 0;
  v71 = sub_1B4D1771C();
  v72 = sub_1B4D178CC();
  v73 = _HKCacheIndexFromDate();

  v74 = sub_1B4D1771C();
  v75 = sub_1B4D178CC();
  v76 = _HKCacheIndexFromDate();

  v77 = [v116 effectiveTypeIdentifier];
  LOBYTE(v134) = 1;
  LOBYTE(v129) = 0;
  *(v55 + 240) = &type metadata for WorkoutTotalCountProperty;
  v78 = sub_1B498AF48();
  *(v55 + 144) = v73;
  *(v55 + 248) = v78;
  *(v55 + 216) = v28;
  *(v55 + 152) = v76;
  *(v55 + 160) = 1804;
  *(v55 + 162) = *&v146[7];
  *(v55 + 166) = v147;
  *(v55 + 168) = 0;
  *(v55 + 176) = 1;
  *(v55 + 177) = *v146;
  *(v55 + 180) = *&v146[3];
  *(v55 + 184) = v77;
  *(v55 + 192) = 1280;
  v79 = v111;
  *(v55 + 194) = v144;
  *(v55 + 198) = v145;
  *(v55 + 200) = 0;
  *(v55 + 208) = 0;
  v139 = MEMORY[0x1E69E7CC0];
  sub_1B4BCECFC(0, 2, 0);
  v80 = v139;
  v81 = v115;
  sub_1B498ADFC(v55 + 32, &v129);
  v148 = v130;
  v149 = v131;
  v150 = v132;
  v151 = *&v133[0];
  sub_1B496F398((v133 + 8), v138 + 8);
  *&v134 = v81;
  *(&v134 + 1) = v79;
  v135 = v148;
  v136 = v149;
  v137 = v150;
  *&v138[0] = v151;
  v83 = *(v80 + 16);
  v82 = *(v80 + 24);
  if (v83 >= v82 >> 1)
  {
    sub_1B4BCECFC((v82 > 1), v83 + 1, 1);
    v80 = v139;
  }

  *(v80 + 16) = v83 + 1;
  v84 = (v80 + 112 * v83);
  v85 = v134;
  v86 = v136;
  v84[3] = v135;
  v84[4] = v86;
  v84[2] = v85;
  v87 = v137;
  v88 = v138[0];
  v89 = v138[2];
  v84[7] = v138[1];
  v84[8] = v89;
  v84[5] = v87;
  v84[6] = v88;
  sub_1B498ADFC(v55 + 144, v122);

  v125 = v122[1];
  v126 = v122[2];
  v127 = v122[3];
  v128 = v123;
  sub_1B496F398(&v124, v133 + 8);
  *&v129 = v81;
  *(&v129 + 1) = v79;
  v130 = v125;
  v131 = v126;
  v132 = v127;
  *&v133[0] = v128;
  v91 = *(v80 + 16);
  v90 = *(v80 + 24);
  v92 = v114;
  if (v91 >= v90 >> 1)
  {
    sub_1B4BCECFC((v90 > 1), v91 + 1, 1);
    v80 = v139;
  }

  *(v80 + 16) = v91 + 1;
  v93 = (v80 + 112 * v91);
  v94 = v129;
  v95 = v131;
  v93[3] = v130;
  v93[4] = v95;
  v93[2] = v94;
  v96 = v132;
  v97 = v133[0];
  v98 = v133[2];
  v93[7] = v133[1];
  v93[8] = v98;
  v93[5] = v96;
  v93[6] = v97;
  v99 = *(v119 + 8);
  v100 = v120;
  v99(v118, v120);
  result = (v99)(v121, v100);
  *v92 = v81;
  v92[1] = v79;
  v92[2] = v80;
  return result;
}