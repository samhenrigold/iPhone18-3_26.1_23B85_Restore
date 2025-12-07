uint64_t getEnumTagSinglePayload for LazyCanvasItemContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 249))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 248);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyCanvasItemContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 233) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 248) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E676DFC4(uint64_t a1)
{
  result = *(a1 + 248);
  if (result >= 0xC)
  {
    return (*a1 + 12);
  }

  return result;
}

uint64_t sub_1E676DFE0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 240) = 0;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 248) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyCanvasItemContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyCanvasItemContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E676E268()
{
  result = qword_1ED0974D0;
  if (!qword_1ED0974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974D0);
  }

  return result;
}

unint64_t sub_1E676E2C0()
{
  result = qword_1ED0974D8;
  if (!qword_1ED0974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974D8);
  }

  return result;
}

unint64_t sub_1E676E318()
{
  result = qword_1ED0974E0;
  if (!qword_1ED0974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974E0);
  }

  return result;
}

unint64_t sub_1E676E370()
{
  result = qword_1ED0974E8;
  if (!qword_1ED0974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974E8);
  }

  return result;
}

unint64_t sub_1E676E3C8()
{
  result = qword_1ED0974F0;
  if (!qword_1ED0974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974F0);
  }

  return result;
}

unint64_t sub_1E676E420()
{
  result = qword_1ED0974F8;
  if (!qword_1ED0974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974F8);
  }

  return result;
}

unint64_t sub_1E676E478()
{
  result = qword_1ED097500;
  if (!qword_1ED097500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097500);
  }

  return result;
}

unint64_t sub_1E676E4D0()
{
  result = qword_1ED097508;
  if (!qword_1ED097508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097508);
  }

  return result;
}

unint64_t sub_1E676E528()
{
  result = qword_1ED097510;
  if (!qword_1ED097510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097510);
  }

  return result;
}

unint64_t sub_1E676E580()
{
  result = qword_1ED097518;
  if (!qword_1ED097518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097518);
  }

  return result;
}

unint64_t sub_1E676E5D8()
{
  result = qword_1ED097520;
  if (!qword_1ED097520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097520);
  }

  return result;
}

unint64_t sub_1E676E630()
{
  result = qword_1ED097528;
  if (!qword_1ED097528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097528);
  }

  return result;
}

unint64_t sub_1E676E688()
{
  result = qword_1ED097530;
  if (!qword_1ED097530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097530);
  }

  return result;
}

unint64_t sub_1E676E6E0()
{
  result = qword_1ED097538;
  if (!qword_1ED097538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097538);
  }

  return result;
}

unint64_t sub_1E676E738()
{
  result = qword_1ED097540;
  if (!qword_1ED097540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097540);
  }

  return result;
}

unint64_t sub_1E676E790()
{
  result = qword_1ED097548;
  if (!qword_1ED097548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097548);
  }

  return result;
}

unint64_t sub_1E676E7E8()
{
  result = qword_1ED097550;
  if (!qword_1ED097550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097550);
  }

  return result;
}

unint64_t sub_1E676E840()
{
  result = qword_1ED097558;
  if (!qword_1ED097558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097558);
  }

  return result;
}

unint64_t sub_1E676E898()
{
  result = qword_1ED097560;
  if (!qword_1ED097560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097560);
  }

  return result;
}

unint64_t sub_1E676E8F0()
{
  result = qword_1ED097568;
  if (!qword_1ED097568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097568);
  }

  return result;
}

unint64_t sub_1E676E948()
{
  result = qword_1ED097570;
  if (!qword_1ED097570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097570);
  }

  return result;
}

unint64_t sub_1E676E9A0()
{
  result = qword_1ED097578;
  if (!qword_1ED097578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097578);
  }

  return result;
}

unint64_t sub_1E676E9F8()
{
  result = qword_1ED097580;
  if (!qword_1ED097580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097580);
  }

  return result;
}

unint64_t sub_1E676EA50()
{
  result = qword_1ED097588;
  if (!qword_1ED097588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097588);
  }

  return result;
}

unint64_t sub_1E676EAA8()
{
  result = qword_1ED097590;
  if (!qword_1ED097590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097590);
  }

  return result;
}

unint64_t sub_1E676EB00()
{
  result = qword_1ED097598;
  if (!qword_1ED097598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097598);
  }

  return result;
}

unint64_t sub_1E676EB58()
{
  result = qword_1ED0975A0;
  if (!qword_1ED0975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975A0);
  }

  return result;
}

unint64_t sub_1E676EBB0()
{
  result = qword_1ED0975A8;
  if (!qword_1ED0975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975A8);
  }

  return result;
}

unint64_t sub_1E676EC08()
{
  result = qword_1ED0975B0;
  if (!qword_1ED0975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975B0);
  }

  return result;
}

unint64_t sub_1E676EC60()
{
  result = qword_1ED0975B8;
  if (!qword_1ED0975B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975B8);
  }

  return result;
}

unint64_t sub_1E676ECB8()
{
  result = qword_1ED0975C0;
  if (!qword_1ED0975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975C0);
  }

  return result;
}

unint64_t sub_1E676ED10()
{
  result = qword_1ED0975C8;
  if (!qword_1ED0975C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975C8);
  }

  return result;
}

unint64_t sub_1E676ED68()
{
  result = qword_1ED0975D0;
  if (!qword_1ED0975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975D0);
  }

  return result;
}

unint64_t sub_1E676EDC0()
{
  result = qword_1ED0975D8;
  if (!qword_1ED0975D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975D8);
  }

  return result;
}

unint64_t sub_1E676EE18()
{
  result = qword_1ED0975E0;
  if (!qword_1ED0975E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975E0);
  }

  return result;
}

unint64_t sub_1E676EE70()
{
  result = qword_1ED0975E8;
  if (!qword_1ED0975E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975E8);
  }

  return result;
}

unint64_t sub_1E676EEC8()
{
  result = qword_1ED0975F0;
  if (!qword_1ED0975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975F0);
  }

  return result;
}

unint64_t sub_1E676EF20()
{
  result = qword_1ED0975F8;
  if (!qword_1ED0975F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975F8);
  }

  return result;
}

unint64_t sub_1E676EF78()
{
  result = qword_1ED097600;
  if (!qword_1ED097600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097600);
  }

  return result;
}

unint64_t sub_1E676EFD0()
{
  result = qword_1ED097608;
  if (!qword_1ED097608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097608);
  }

  return result;
}

unint64_t sub_1E676F028()
{
  result = qword_1ED097610;
  if (!qword_1ED097610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097610);
  }

  return result;
}

unint64_t sub_1E676F080()
{
  result = qword_1ED097618;
  if (!qword_1ED097618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097618);
  }

  return result;
}

unint64_t sub_1E676F0D8()
{
  result = qword_1ED097620;
  if (!qword_1ED097620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097620);
  }

  return result;
}

uint64_t sub_1E676F12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61436E6F69746361 && a2 == 0xEA00000000006472;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xEE00656761745368 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463416F666E69 && a2 == 0xEE00647261436E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697242656772616CLL && a2 == 0xEA00000000006B63 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E28B0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E28D0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E28F0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xEC00000064726143 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E2910 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2930 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x437972616D6D7573 && a2 == 0xEB00000000647261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x647261436C6C6174 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2950 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6369724265646977 && a2 == 0xE90000000000006BLL)
  {

    return 13;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t DataItemResolution.init(resolved:failed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static DataItemResolution.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((sub_1E68B3100() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE696C8](v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DataItemResolution.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B30F0();

  return MEMORY[0x1EEE696D8](a1, v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DataItemResolution.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_1E68B3B70();
  DataItemResolution.hash(into:)(v4, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676F808(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  DataItemResolution.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676F874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E676F8BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E676F904(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E676F95C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](0);
    result = sub_1E68B3BB0();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E676FA70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](v13);
    result = sub_1E68B3BB0();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasSectionDescriptor.identifier.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t CanvasSectionDescriptor.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 180);
  v5 = *(a1 + 80);
  v6 = *(a1 + 152);
  v7 = *(a1 + 168);
  v10[0] = *(a1 + 64);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = type metadata accessor for CanvasSectionLayout(0, v10);
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t CanvasSectionDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 160);
  v10[0] = *(a1 + 16);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  type metadata accessor for CanvasSectionHeader(255, v10);
  v8 = sub_1E68B3750();
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t CanvasSectionDescriptor.items.getter(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t CanvasSectionDescriptor.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 192);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CanvasSectionDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 196);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionDescriptor.redactionReasons.getter(uint64_t a1)
{
  sub_1E6772948(a1);
}

uint64_t CanvasSectionDescriptor.init(identifier:layout:header:footer:items:metrics:redactionReasons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v35 = *a5;
  *a9 = a1;
  *(a9 + 1) = a2;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v45 = a15;
  v46 = a16;
  v47 = a17;
  v48 = a18;
  v49 = a19;
  v50 = a20;
  v51 = a21;
  v52 = a22;
  v53 = a23;
  v54 = a24;
  v55 = a25;
  v26 = type metadata accessor for CanvasSectionDescriptor(0, &v40);
  v27 = v26[45];
  v40 = a15;
  *&v41 = a17;
  *(&v41 + 1) = a23;
  v42 = a25;
  v28 = type metadata accessor for CanvasSectionLayout(0, &v40);
  (*(*(v28 - 8) + 32))(&a9[v27], a3, v28);
  v29 = v26[46];
  v40 = a10;
  *&v41 = a16;
  *(&v41 + 1) = a18;
  v42 = a24;
  type metadata accessor for CanvasSectionHeader(255, &v40);
  v30 = sub_1E68B3750();
  (*(*(v30 - 8) + 32))(&a9[v29], a4, v30);
  a9[v26[47]] = v35;
  *&a9[v26[48]] = a6;
  v31 = v26[49];
  v32 = sub_1E68B3750();
  result = (*(*(v32 - 8) + 32))(&a9[v31], a7, v32);
  *&a9[v26[50]] = a8;
  return result;
}

uint64_t sub_1E677004C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2970 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1E6770294(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7363697274656DLL;
  if (a1 != 5)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0x7265746F6F66;
  if (a1 != 3)
  {
    v3 = 0x736D657469;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x726564616568;
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

uint64_t sub_1E6770474(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E6739CF4(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6770544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E677004C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67705A4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E6773BAC();
  *a2 = result;
  return result;
}

uint64_t sub_1E6770608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E677065C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E67706B0()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t sub_1E67706F4(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t sub_1E6770720(uint64_t a1)
{
  sub_1E6772948(a1);
}

uint64_t CanvasSectionDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v12 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  v21 = *(a2 + 152);
  v22 = *(a2 + 160);
  v23 = *(a2 + 168);
  v53 = v4;
  v61 = v4;
  v62 = v5;
  v48 = v5;
  v47 = v6;
  v63 = v6;
  v64 = v7;
  v46 = v7;
  v45 = v8;
  v65 = v8;
  v66 = v9;
  v38[2] = v9;
  v54 = v10;
  v67 = v10;
  v68 = v11;
  v51 = v11;
  v56 = v13;
  v69 = v13;
  v70 = v12;
  v50 = v12;
  v44 = v14;
  v71 = v14;
  v72 = v15;
  v43 = v15;
  v42 = v16;
  v73 = v16;
  v74 = v17;
  v41 = v17;
  v40 = v18;
  v75 = v18;
  v76 = v19;
  v39 = v19;
  v38[1] = v20;
  v77 = v20;
  v78 = v21;
  v52 = v21;
  v49 = v22;
  v79 = v22;
  v80 = v23;
  v55 = v23;
  type metadata accessor for CanvasSectionDescriptor.CodingKeys(255, &v61);
  swift_getWitnessTable();
  v24 = sub_1E68B3AC0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v38 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  LOBYTE(v61) = 0;
  v29 = v57;
  sub_1E68B3A70();
  if (v29)
  {
    return (*(v25 + 8))(v28, v24);
  }

  v31 = v51;
  v32 = v53;
  v38[0] = v25;
  v57 = v28;
  LOBYTE(v81) = 1;
  v61 = v54;
  v62 = v56;
  v63 = v52;
  v64 = v55;
  type metadata accessor for CanvasSectionLayout(0, &v61);
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v81) = 2;
  v33 = v32;
  v61 = v32;
  v62 = v31;
  v34 = v50;
  v63 = v50;
  v64 = v49;
  type metadata accessor for CanvasSectionHeader(0, &v61);
  swift_getWitnessTable();
  v35 = v58;
  sub_1E68B3A60();
  LOBYTE(v61) = *(v35 + *(a2 + 188));
  LOBYTE(v81) = 3;
  sub_1E674B0D4();
  sub_1E68B3AB0();
  v36 = v38[0];
  v81 = *(v58 + *(a2 + 192));
  v60 = 4;
  v61 = v33;
  v62 = v48;
  v63 = v47;
  v64 = v46;
  v65 = v45;
  v66 = v56;
  v67 = v34;
  v68 = v44;
  v69 = v43;
  v70 = v42;
  v71 = v41;
  v72 = v40;
  v73 = v39;
  v74 = v55;
  type metadata accessor for CanvasItemDescriptor(255, &v61);
  sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v37 = v57;
  sub_1E68B3AB0();
  LOBYTE(v61) = 5;
  sub_1E68B3A60();
  v61 = *(v58 + *(a2 + 200));
  LOBYTE(v81) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097628, &qword_1E68B6790);
  sub_1E67729D8(&qword_1EE2EA488, sub_1E6772984, MEMORY[0x1E69E64F0]);
  sub_1E68B3AB0();
  return (*(v36 + 8))(v37, v24);
}

uint64_t CanvasSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, void *a12, char *a13, char *a14, void *a15, char *a16, char *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22)
{
  v91 = a7;
  v95 = a6;
  v87 = a5;
  v85 = a4;
  v94 = a3;
  v79 = a1;
  v62 = a9;
  v90 = a19;
  v96 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v93 = a14;
  v92 = a13;
  v89 = a10;
  v67 = sub_1E68B3750();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v24);
  v63 = &v61 - v25;
  v98 = a2;
  v99 = a10;
  v81 = a2;
  v83 = a12;
  v100 = a12;
  v101 = a21;
  v76 = a21;
  v72 = type metadata accessor for CanvasSectionHeader(255, &v98);
  v64 = sub_1E68B3750();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v26);
  v66 = &v61 - v27;
  v28 = a8;
  v75 = a8;
  v98 = a8;
  v99 = a11;
  v82 = a11;
  v100 = a20;
  v101 = a22;
  v77 = a20;
  v70 = type metadata accessor for CanvasSectionLayout(0, &v98);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v29);
  v71 = &v61 - v30;
  v98 = a2;
  v99 = v94;
  v31 = v85;
  v32 = v87;
  v100 = v85;
  v101 = v87;
  v102 = v95;
  v103 = v91;
  v104 = v28;
  v105 = v89;
  v106 = a11;
  v107 = a12;
  v108 = v92;
  v109 = v93;
  v33 = v84;
  v34 = v86;
  v110 = v84;
  v111 = v86;
  v35 = v88;
  v112 = v88;
  v113 = v96;
  v114 = v90;
  v115 = a20;
  v116 = a21;
  v117 = a22;
  type metadata accessor for CanvasSectionDescriptor.CodingKeys(255, &v98);
  WitnessTable = swift_getWitnessTable();
  v74 = sub_1E68B3A20();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v36);
  v38 = &v61 - v37;
  v98 = v81;
  v99 = v94;
  v100 = v31;
  v101 = v32;
  v102 = v95;
  v103 = v91;
  v104 = v75;
  v105 = v89;
  v39 = v79;
  v106 = v82;
  v107 = v83;
  v108 = v92;
  v109 = v93;
  v110 = v33;
  v111 = v34;
  v112 = v35;
  v113 = v96;
  v114 = v90;
  v115 = v77;
  v116 = v76;
  v117 = a22;
  v77 = a22;
  v40 = type metadata accessor for CanvasSectionDescriptor(0, &v98);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = (&v61 - v43);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v89 = v38;
  v45 = v80;
  sub_1E68B3BC0();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v46 = v71;
  WitnessTable = v41;
  v80 = v40;
  LOBYTE(v98) = 0;
  *v44 = sub_1E68B39C0();
  v44[1] = v47;
  v76 = v44;
  LOBYTE(v98) = 1;
  v48 = v70;
  swift_getWitnessTable();
  v49 = v46;
  sub_1E68B3A00();
  v50 = v76;
  (*(v69 + 32))(v76 + v80[45], v49, v48);
  LOBYTE(v98) = 2;
  swift_getWitnessTable();
  v51 = v66;
  sub_1E68B39B0();
  v52 = v80;
  (*(v65 + 32))(v50 + v80[46], v51, v64);
  LOBYTE(v118) = 3;
  sub_1E674B128();
  v53 = v74;
  sub_1E68B3A00();
  *(v50 + v52[47]) = v98;
  v98 = v81;
  v99 = v94;
  v100 = v85;
  v101 = v87;
  v102 = v95;
  v103 = v82;
  v104 = v83;
  v105 = v92;
  v106 = v93;
  v107 = v84;
  v108 = v86;
  v109 = v88;
  v110 = v96;
  v111 = v77;
  type metadata accessor for CanvasItemDescriptor(255, &v98);
  sub_1E68B33B0();
  LOBYTE(v98) = 4;
  v97 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  v54 = v73;
  v55 = v80;
  *(v76 + v80[48]) = v118;
  LOBYTE(v98) = 5;
  v56 = v63;
  sub_1E68B39B0();
  (*(v68 + 32))(v76 + v55[49], v56, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097628, &qword_1E68B6790);
  LOBYTE(v118) = 6;
  sub_1E67729D8(&qword_1ED097630, sub_1E6772A50, MEMORY[0x1E69E6510]);
  v57 = v89;
  sub_1E68B3A00();
  (*(v54 + 8))(v57, v53);
  v58 = v76;
  *(v76 + v55[50]) = v98;
  v59 = WitnessTable;
  (*(WitnessTable + 16))(v62, v58, v55);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return (*(v59 + 8))(v58, v55);
}

uint64_t static CanvasSectionDescriptor.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v109 = a7;
  v108 = a6;
  v107 = a5;
  v106 = a4;
  v26 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v93 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E68B3750();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v96 = &v77 - v31;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v32);
  v97 = &v77 - v33;
  v112 = a3;
  v114 = a3;
  v115 = a10;
  v110 = a10;
  v113 = a12;
  v116 = a12;
  v117 = a21;
  v111 = a21;
  v34 = type metadata accessor for CanvasSectionHeader(0, &v114);
  v104 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v99 = &v77 - v36;
  v37 = sub_1E68B3750();
  v105 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v103 = &v77 - v39;
  v40 = swift_getTupleTypeMetadata2();
  v102 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v77 - v42;
  if (*a1 != *a2 && (sub_1E68B3B00() & 1) == 0)
  {
    goto LABEL_21;
  }

  v100 = v34;
  v101 = v40;
  v95 = v29;
  v83 = v28;
  v84 = v26;
  v114 = v112;
  v115 = v106;
  v116 = v107;
  v117 = v108;
  v118 = v109;
  v119 = a8;
  v120 = a9;
  v121 = v110;
  v122 = a11;
  v123 = v113;
  v86 = a13;
  v124 = a13;
  v125 = a14;
  v87 = a14;
  v88 = a15;
  v126 = a15;
  v127 = a16;
  v89 = a16;
  v90 = a17;
  v128 = a17;
  v129 = a18;
  v91 = a18;
  v82 = a19;
  v130 = a19;
  v131 = a20;
  v132 = v111;
  v133 = a22;
  v44 = type metadata accessor for CanvasSectionDescriptor(0, &v114);
  v45 = *(v44 + 180);
  v85 = a11;
  v92 = a22;
  if ((static CanvasSectionLayout.== infix(_:_:)(&a1[v45], &a2[v45], a9, a11, a20, a22) & 1) == 0)
  {
    goto LABEL_21;
  }

  v78 = a8;
  v46 = a1;
  v80 = v44;
  v47 = *(v44 + 184);
  v48 = v101;
  v49 = *(v101 + 48);
  v50 = *(v105 + 16);
  v81 = v46;
  v50(v43, &v46[v47], v37);
  v79 = a2;
  v50(&v43[v49], &a2[v47], v37);
  v51 = v104;
  v52 = *(v104 + 48);
  v53 = v100;
  if (v52(v43, 1, v100) == 1)
  {
    v54 = v52(&v43[v49], 1, v53);
    v55 = v95;
    if (v54 == 1)
    {
      (*(v105 + 8))(v43, v37);
      goto LABEL_11;
    }

LABEL_9:
    (*(v102 + 8))(v43, v48);
    goto LABEL_21;
  }

  v50(v103, v43, v37);
  if (v52(&v43[v49], 1, v53) == 1)
  {
    (*(v51 + 8))(v103, v53);
    goto LABEL_9;
  }

  v56 = v99;
  (*(v51 + 32))(v99, &v43[v49], v53);
  v57 = v103;
  v58 = static CanvasSectionHeader.== infix(_:_:)(v103, v56, v112, v110, v113, v111);
  v59 = *(v51 + 8);
  v59(v56, v53);
  v59(v57, v53);
  (*(v105 + 8))(v43, v37);
  v55 = v95;
  if (!v58)
  {
    goto LABEL_21;
  }

LABEL_11:
  v60 = v80;
  v61 = v81;
  v62 = v79;
  if (v81[*(v80 + 188)] != v79[*(v80 + 188)])
  {
    goto LABEL_21;
  }

  v114 = v112;
  v115 = v106;
  v116 = v107;
  v117 = v108;
  v118 = v109;
  v119 = v85;
  v120 = v113;
  v121 = v86;
  v122 = v87;
  v123 = v88;
  v124 = v89;
  v125 = v90;
  v126 = v91;
  v127 = v92;
  type metadata accessor for CanvasItemDescriptor(0, &v114);
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v63 = *(v60 + 196);
  v64 = *(TupleTypeMetadata2 + 48);
  v65 = *(v55 + 16);
  v66 = v97;
  v67 = v83;
  v65(v97, &v61[v63], v83);
  v65(&v66[v64], &v62[v63], v67);
  v68 = *(v84 + 48);
  v69 = v78;
  if (v68(v66, 1, v78) != 1)
  {
    v65(v96, v66, v67);
    if (v68(&v66[v64], 1, v69) == 1)
    {
      (*(v84 + 8))(v96, v69);
      goto LABEL_18;
    }

    v70 = v84;
    v71 = v93;
    (*(v84 + 32))(v93, &v66[v64], v69);
    v72 = v96;
    v73 = sub_1E68B3190();
    v74 = *(v70 + 8);
    v74(v71, v69);
    v74(v72, v69);
    (*(v55 + 8))(v66, v67);
    if (v73)
    {
      goto LABEL_20;
    }

LABEL_21:
    v75 = 0;
    return v75 & 1;
  }

  if (v68(&v66[v64], 1, v69) != 1)
  {
LABEL_18:
    (*(v94 + 8))(v66, TupleTypeMetadata2);
    goto LABEL_21;
  }

  (*(v55 + 8))(v66, v83);
LABEL_20:
  v75 = sub_1E676F95C(*&v81[*(v80 + 200)], *&v62[*(v80 + 200)]);
  return v75 & 1;
}

uint64_t CanvasSectionDescriptor.hash(into:)(__int128 *a1, uint64_t a2)
{
  sub_1E68B31F0();
  v5 = *(a2 + 80);
  v6 = *(a2 + 152);
  v7 = *(a2 + 168);
  v15 = *(a2 + 64);
  *&v16 = v5;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  v8 = type metadata accessor for CanvasSectionLayout(0, &v15);
  CanvasSectionLayout.hash(into:)(a1, v8);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v12 = *(a2 + 160);
  v15 = *(a2 + 16);
  v9 = v15;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  *&v17 = v12;
  type metadata accessor for CanvasSectionHeader(255, &v15);
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  MEMORY[0x1E69523D0](*(v2 + *(a2 + 188)));
  v16 = *(a2 + 24);
  v17 = *(a2 + 40);
  v13 = *(a2 + 112);
  v20 = *(a2 + 96);
  v15 = v9;
  v18 = v5;
  v19 = v11;
  v21 = v13;
  v22 = *(a2 + 128);
  v23 = v7;
  type metadata accessor for CanvasItemDescriptor(0, &v15);
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  sub_1E68B3760();
  return sub_1E677270C(a1, *(v2 + *(a2 + 200)));
}

uint64_t CanvasSectionDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasSectionDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6772670(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasSectionDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E677270C(__int128 *a1, uint64_t a2)
{
  result = sub_1E68B3BB0();
  v4 = 0;
  v5 = 0;
  v8 = *(a2 + 56);
  v7 = a2 + 56;
  v6 = v8;
  v9 = 1 << *(v7 - 24);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_4:
    v11 &= v11 - 1;
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](0);
    result = sub_1E68B3BB0();
    v4 ^= result;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return MEMORY[0x1E69523D0](v4);
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6772810(__int128 *a1, uint64_t a2)
{
  result = sub_1E68B3BB0();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](v12);
    result = sub_1E68B3BB0();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E69523D0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E6772984()
{
  result = qword_1EE2EC730;
  if (!qword_1EE2EC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC730);
  }

  return result;
}

uint64_t sub_1E67729D8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097628, &qword_1E68B6790);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6772A50()
{
  result = qword_1ED097638;
  if (!qword_1ED097638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097638);
  }

  return result;
}

uint64_t sub_1E6772AD8(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

void sub_1E6772C28(uint64_t a1)
{
  v29 = 0;
  v35 = MEMORY[0x1E69E6158];
  v2 = *(a1 + 80);
  v3 = *(a1 + 152);
  v4 = *(a1 + 168);
  v20 = *(a1 + 64);
  *&v21 = v2;
  *(&v21 + 1) = v3;
  *&v22 = v4;
  v5 = type metadata accessor for CanvasSectionLayout(319, &v20);
  if (v6 <= 0x3F)
  {
    v30 = 0;
    v36 = v5;
    v7 = *(a1 + 16);
    v8 = *(a1 + 72);
    v9 = *(a1 + 88);
    v10 = *(a1 + 160);
    v20 = v7;
    *&v21 = v8;
    *(&v21 + 1) = v9;
    *&v22 = v10;
    type metadata accessor for CanvasSectionHeader(255, &v20);
    v11 = sub_1E68B3750();
    if (v12 <= 0x3F)
    {
      v21 = *(a1 + 24);
      v22 = *(a1 + 40);
      v13 = *(a1 + 112);
      v25 = *(a1 + 96);
      v31 = 0;
      v37 = v11;
      v38 = &type metadata for CanvasSectionFooter;
      v20 = v7;
      v23 = v2;
      v24 = v9;
      v26 = v13;
      v27 = *(a1 + 128);
      v28 = v4;
      type metadata accessor for CanvasItemDescriptor(255, &v20);
      v14 = sub_1E68B33B0();
      if (v15 <= 0x3F)
      {
        v32 = 0;
        v39 = v14;
        v16 = sub_1E68B3750();
        if (v17 <= 0x3F)
        {
          v33 = 0;
          v40 = v16;
          sub_1E6773960(319);
          if (v19 <= 0x3F)
          {
            v34 = 0;
            v41 = v18;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6772DA4(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a3[10] - 8);
  v13 = *(v12 + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v64 = v13;
  v14 = *(sub_1E68B1820() - 8);
  v15 = *(v14 + 84);
  v61 = a3[9];
  v16 = *(v61 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v18;
  }

  v60 = a3[2];
  v20 = *(v60 - 8);
  v21 = *(v20 + 84);
  v22 = v21 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = 0;
  }

  v63 = a3[7];
  v25 = *(v63 - 8);
  v26 = *(v25 + 84);
  v27 = v26 - 1;
  if (!v26)
  {
    v27 = 0;
  }

  if (v24 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v24;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(*(v61 - 8) + 64);
  if (!v17)
  {
    ++v30;
  }

  v31 = *(v12 + 80);
  v62 = v14;
  v32 = *(v14 + 80);
  v33 = *(v16 + 80);
  v34 = *(v14 + 64);
  if (v21)
  {
    v35 = v23 == 0;
  }

  else
  {
    v35 = (v23 == 0) + 1;
  }

  v36 = *(v25 + 80);
  v37 = 7;
  if (!v26)
  {
    v37 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v38 = (v31 | v8) & 0xF8 | 7u;
  v39 = v64 + 1;
  v40 = *(v20 + 80);
  v41 = (v33 | v32 | *(v20 + 80));
  v42 = v34 + v33;
  v43 = v30 + v40;
  v44 = v35 + *(*(v60 - 8) + 64) + ((v30 + v40 + (v42 & ~v33)) & ~v40);
  v45 = v36 + 16;
  if (v29 < a2)
  {
    v46 = ((v37 + *(*(v63 - 8) + 64) + ((v45 + ((v44 + ((v39 + v41 + ((v38 + 16) & ~v38)) & ~v41)) & 0xFFFFFFFFFFFFFFF8)) & ~v36)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v47 = v46 & 0xFFFFFFF8;
    if ((v46 & 0xFFFFFFF8) != 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = a2 - v29 + 1;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = *(a1 + v46);
        if (v51)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v51 = *(a1 + v46);
        if (v51)
        {
          goto LABEL_57;
        }
      }
    }

    else if (v50)
    {
      v51 = *(a1 + v46);
      if (v51)
      {
LABEL_57:
        v52 = v51 - 1;
        if (v47)
        {
          v52 = 0;
          v53 = *a1;
        }

        else
        {
          v53 = 0;
        }

        return v29 + (v53 | v52) + 1;
      }
    }
  }

  if ((v28 & 0x80000000) != 0)
  {
    v56 = (((a1 + v38 + 16) & ~v38) + v41 + v39) & ~v41;
    if (v24 == v29)
    {
      if (v23 >= 2)
      {
        if (v15 == v23)
        {
          v57 = (*(v62 + 48))((((a1 + v38 + 16) & ~v38) + v41 + v39) & ~v41);
        }

        else
        {
          v58 = (v42 + v56) & ~v33;
          if (v18 == v23)
          {
            v59 = (*(*(v61 - 8) + 48))(v58, v17, v61);
          }

          else
          {
            v59 = (*(v20 + 48))((v43 + v58) & ~v40, v21, v60);
          }

          if (v59 >= 2)
          {
            v57 = v59 - 1;
          }

          else
          {
            v57 = 0;
          }
        }

        goto LABEL_82;
      }
    }

    else if (v26 >= 2)
    {
      v57 = (*(v25 + 48))((v45 + ((v44 + v56) & 0xFFFFFFFFFFFFFFF8)) & ~v36, v26, v63);
LABEL_82:
      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v54 = *(a1 + 1);
  if (v54 >= 0xFFFFFFFF)
  {
    LODWORD(v54) = -1;
  }

  return (v54 + 1);
}

void sub_1E67732BC(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a4[10] - 8);
  if (*(v12 + 64) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = sub_1E68B1820();
  v15 = 0;
  v16 = *(v14 - 8);
  v66 = a4[9];
  v17 = *(v66 - 8);
  v18 = *(v17 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  v68 = *(v16 + 84);
  if (v19 <= v68)
  {
    v20 = *(v16 + 84);
  }

  else
  {
    v20 = v19;
  }

  v64 = a4[2];
  v21 = *(v64 - 8);
  v22 = *(v21 + 84);
  if (v22)
  {
    v23 = v22 - 1;
  }

  else
  {
    v23 = 0;
  }

  if (v23 <= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = v24 - 1;
  }

  else
  {
    v25 = 0;
  }

  v69 = a4[7];
  v26 = *(v69 - 8);
  v27 = *(v26 + 84);
  v28 = *(*(v64 - 8) + 64);
  v65 = *(v66 - 8);
  v29 = *(v17 + 80);
  v67 = *(v14 - 8);
  v30 = *(v16 + 80);
  v31 = *(v26 + 80);
  v32 = *(v26 + 64);
  v33 = v27 - 1;
  if (!v27)
  {
    v33 = 0;
  }

  if (v25 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v25;
  }

  if (v34 <= 0x7FFFFFFF)
  {
    v35 = 0x7FFFFFFF;
  }

  else
  {
    v35 = v34;
  }

  if (v18)
  {
    v36 = *(*(v66 - 8) + 64);
  }

  else
  {
    v36 = *(*(v66 - 8) + 64) + 1;
  }

  if (!v22)
  {
    ++v28;
  }

  v37 = v29;
  v38 = *(v12 + 80) | v8;
  v39 = *(v21 + 80);
  v40 = *(*(v14 - 8) + 64) + v29;
  v41 = v36 + v39;
  v42 = (v41 + (v40 & ~v29)) & ~v39;
  v43 = v42 + v28;
  v44 = v29 | v30 | *(v21 + 80);
  if (v24)
  {
    v45 = v42 + v28;
  }

  else
  {
    v45 = v43 + 1;
  }

  v46 = v38 & 0xF8 | 7u;
  v47 = v44;
  if (!v27)
  {
    ++v32;
  }

  v48 = ((v32 + ((v31 + 16 + ((v45 + ((v13 + 1 + v44 + ((v46 + 16) & ~v46)) & ~v44)) & 0xFFFFFFFFFFFFFFF8)) & ~v31) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v35 < a3)
  {
    if (((v32 + ((v31 + 16 + ((v45 + ((v13 + 1 + v44 + ((v46 + 16) & ~v46)) & ~v44)) & 0xFFFFFFF8)) & ~v31) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v49 = a3 - v35 + 1;
    }

    else
    {
      v49 = 2;
    }

    if (v49 >= 0x10000)
    {
      v50 = 4;
    }

    else
    {
      v50 = 2;
    }

    if (v49 < 0x100)
    {
      v50 = 1;
    }

    if (v49 >= 2)
    {
      v15 = v50;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v35)
  {
    if (v48)
    {
      v51 = 1;
    }

    else
    {
      v51 = a2 - v35;
    }

    if (v48)
    {
      bzero(a1, v48);
      *a1 = ~v35 + a2;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v48) = v51;
      }

      else
      {
        *(a1 + v48) = v51;
      }
    }

    else if (v15)
    {
      *(a1 + v48) = v51;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v48) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_76;
    }

    *(a1 + v48) = 0;
  }

  else if (v15)
  {
    *(a1 + v48) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_76;
  }

  if (!a2)
  {
    return;
  }

LABEL_76:
  if ((v34 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      a1[1] = a2 - 1;
    }

    return;
  }

  v52 = ((((a1 + v46 + 16) & ~v46) + v47 + v13 + 1) & ~v47);
  if (v25 != v35)
  {
    if (v27 < 2)
    {
      return;
    }

    v53 = *(v26 + 56);
    v56 = (v31 + 16 + (&v52[v45] & 0xFFFFFFFFFFFFFFF8)) & ~v31;
    v54 = a2 + 1;
    v22 = v27;
    v55 = v69;

LABEL_92:
    v53(v56, v54, v22, v55);
    return;
  }

  if (v24 < 2)
  {
    return;
  }

  if (a2 >= v24)
  {
    if (v43 <= 3)
    {
      v57 = ~(-1 << (8 * v43));
    }

    else
    {
      v57 = -1;
    }

    if (v43)
    {
      v58 = v57 & (a2 - v24);
      if (v43 <= 3)
      {
        v59 = v42 + v28;
      }

      else
      {
        v59 = 4;
      }

      bzero(v52, v43);
      if (v59 > 2)
      {
        if (v59 == 3)
        {
          *v52 = v58;
          v52[2] = BYTE2(v58);
        }

        else
        {
          *v52 = v58;
        }
      }

      else if (v59 == 1)
      {
        *v52 = v58;
      }

      else
      {
        *v52 = v58;
      }
    }
  }

  else
  {
    if (v68 == v24)
    {
      v53 = *(v67 + 56);
      v54 = a2 + 1;
      v55 = v14;
      v56 = v52;
      v22 = v68;
      goto LABEL_109;
    }

    v56 = &v52[v40] & ~v37;
    if (v19 == v24)
    {
      v55 = v66;
      v53 = *(v65 + 56);
      v54 = a2 + 2;
      v22 = v18;
      goto LABEL_109;
    }

    v60 = (v41 + v56) & ~v39;
    if (a2 < v23)
    {
      v55 = v64;
      v53 = *(v21 + 56);
      v54 = a2 + 2;
      v56 = (v41 + v56) & ~v39;
LABEL_109:

      goto LABEL_92;
    }

    if (v28 <= 3)
    {
      v61 = ~(-1 << (8 * v28));
    }

    else
    {
      v61 = -1;
    }

    if (v28)
    {
      v62 = v61 & (a2 - v23);
      if (v28 <= 3)
      {
        v63 = v28;
      }

      else
      {
        v63 = 4;
      }

      bzero(((v41 + v56) & ~v39), v28);
      if (v63 > 2)
      {
        if (v63 == 3)
        {
          *v60 = v62;
          *(v60 + 2) = BYTE2(v62);
        }

        else
        {
          *v60 = v62;
        }
      }

      else if (v63 == 1)
      {
        *v60 = v62;
      }

      else
      {
        *v60 = v62;
      }
    }
  }
}

void sub_1E6773960(uint64_t a1)
{
  if (!qword_1EE2EA490)
  {
    sub_1E67739BC();
    v1 = sub_1E68B3630();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2EA490);
    }
  }
}

unint64_t sub_1E67739BC()
{
  result = qword_1EE2EC728;
  if (!qword_1EE2EC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC728);
  }

  return result;
}

uint64_t sub_1E6773A18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E6773AA8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CanvasItemDescriptor.title.getter(uint64_t a1)
{
  v3 = sub_1E68B1820();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v85 - v8;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 72);
  v12 = *(a1 + 120);
  v93 = v10;
  v94 = v9;
  v87 = *(a1 + 56);
  v95 = v87;
  v96 = v11;
  v97 = v12;
  v13 = type metadata accessor for CanvasItemContent(0, &v93);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v90 = &v85 - v25;
  (*(v14 + 16))(v17, v1 + *(a1 + 132), v13, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v32 = type metadata accessor for FullWidthItemDescriptor(0, v9, v11, v28);
      goto LABEL_17;
    case 2:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      v93 = &type metadata for FullWidthStageViewLayout;
      v94 = v9;
      *&v95 = &type metadata for FullWidthStageViewStyle;
      *(&v95 + 1) = v18;
      v96 = v18;
      v97 = v18;
      v98 = sub_1E68B3750();
      v99 = v98;
      v100 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v56 = TupleTypeMetadata[12];
      v57 = TupleTypeMetadata[20];
      v86 = TupleTypeMetadata[24];
      *&v87 = v56;
      v58 = TupleTypeMetadata[28];
      v59 = TupleTypeMetadata[32];
      v60 = TupleTypeMetadata[36];
      v61 = TupleTypeMetadata[40];
      v38 = v90;
      sub_1E6774DF4(&v17[v57], v90);
      v62 = sub_1E68B3750();
      (*(*(v62 - 8) + 8))(&v17[v61], v62);
      v63 = sub_1E68B3750();
      v64 = *(*(v63 - 8) + 8);
      v64(&v17[v60], v63);
      v64(&v17[v59], v63);
      sub_1E6744A10(&v17[v58], &qword_1ED096E68, &qword_1E68B4840);
      v47 = &v17[v86];
      goto LABEL_13;
    case 3:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 48, "layout title description actionButton ");
      v93 = &type metadata for InfoActionCardViewLayout;
      v94 = v18;
      *&v95 = v18;
      *(&v95 + 1) = sub_1E68B3750();
      v65 = swift_getTupleTypeMetadata();
      v66 = v65[16];
      v67 = v65[20];
      v38 = v90;
      sub_1E6774DF4(&v17[v65[12]], v90);
      v68 = sub_1E68B3750();
      (*(*(v68 - 8) + 8))(&v17[v67], v68);
      sub_1E6744A10(&v17[v66], &qword_1ED096E68, &qword_1E68B4840);
      goto LABEL_24;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 48, "artwork footnote subtitle title ");
      v93 = v9;
      v94 = v18;
      *&v95 = v18;
      *(&v95 + 1) = v18;
      v48 = swift_getTupleTypeMetadata();
      v49 = v48[12];
      v50 = v48[16];
      v38 = v90;
      sub_1E6774DF4(&v17[v48[20]], v90);
      sub_1E6744A10(&v17[v50], &qword_1ED096E68, &qword_1E68B4840);
      v51 = &v17[v49];
      goto LABEL_10;
    case 5:
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 48, "artwork caption displayStyle layout title ");
      v93 = v9;
      v94 = v18;
      *&v95 = &type metadata for DynamicBrickDisplayStyle;
      *(&v95 + 1) = &type metadata for DynamicBrickViewLayout;
      v96 = v18;
      v29 = swift_getTupleTypeMetadata();
      v30 = *(v29 + 48);
      v31 = *(v29 + 96);
      goto LABEL_9;
    case 6:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 48, "layout artwork title subtitle ");
      v93 = &type metadata for MonogramVerticalStackViewLayout;
      v94 = v9;
      *&v95 = v18;
      *(&v95 + 1) = v18;
      v53 = swift_getTupleTypeMetadata();
      v34 = v53[12];
      v54 = v53[20];
      v38 = v90;
      sub_1E6774DF4(&v17[v53[16]], v90);
      v39 = &v17[v54];
      goto LABEL_22;
    case 8:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      qmemcpy(&v85 - 6, "layout artwork title subtitle caption ", 38);
      v76 = &type metadata for StandardCardViewLayout;
      goto LABEL_21;
    case 9:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      v93 = &type metadata for StandardHorizontalStackViewLayout;
      v94 = v9;
      *&v95 = v18;
      *(&v95 + 1) = v18;
      v96 = v18;
      v97 = v18;
      v98 = sub_1E68B3750();
      v41 = swift_getTupleTypeMetadata();
      *&v87 = v41[12];
      v42 = v41[20];
      v43 = v41[24];
      v44 = v41[28];
      v45 = v41[32];
      v38 = v90;
      sub_1E6774DF4(&v17[v41[16]], v90);
      v46 = sub_1E68B3750();
      (*(*(v46 - 8) + 8))(&v17[v45], v46);
      sub_1E6744A10(&v17[v44], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v17[v43], &qword_1ED096E68, &qword_1E68B4840);
      v47 = &v17[v42];
LABEL_13:
      sub_1E6744A10(v47, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v9 - 8) + 8))(&v17[v87], v9);
      goto LABEL_24;
    case 10:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      qmemcpy(&v85 - 6, "layout artwork title subtitle caption ", 38);
      v76 = &type metadata for StandardVerticalStackViewLayout;
      goto LABEL_21;
    case 11:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      v93 = &type metadata for SummaryCardViewLayout;
      v94 = v9;
      *&v95 = v18;
      *(&v95 + 1) = v18;
      v96 = v18;
      v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
      v33 = swift_getTupleTypeMetadata();
      v34 = v33[12];
      v35 = v33[20];
      v36 = v33[24];
      v37 = v33[28];
      v38 = v90;
      sub_1E6774DF4(&v17[v33[16]], v90);
      sub_1E6744A10(&v17[v37], &qword_1ED096E88, &qword_1E68B9CF0);
      sub_1E6744A10(&v17[v36], &qword_1ED096E68, &qword_1E68B4840);
      v39 = &v17[v35];
      goto LABEL_22;
    case 12:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 48, "layout artwork title overlay ");
      v93 = &type metadata for TallCardViewLayout;
      v94 = v9;
      *&v95 = v18;
      *(&v95 + 1) = &type metadata for Overlay;
      v40 = swift_getTupleTypeMetadata();
      v34 = *(v40 + 48);
      v38 = v90;
      sub_1E6774DF4(&v17[*(v40 + 64)], v90);
      goto LABEL_23;
    case 13:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      qmemcpy(&v85 - 6, "layout artwork title subtitle caption ", 38);
      v76 = &type metadata for VerticalStackCardLayout;
LABEL_21:
      *(&v85 - 10) = 0;
      v93 = v76;
      v94 = v9;
      *&v95 = v18;
      *(&v95 + 1) = v18;
      v96 = v18;
      v77 = swift_getTupleTypeMetadata();
      v34 = v77[12];
      v78 = v77[20];
      v79 = v77[24];
      v38 = v90;
      sub_1E6774DF4(&v17[v77[16]], v90);
      sub_1E6744A10(&v17[v79], &qword_1ED096E68, &qword_1E68B4840);
      v39 = &v17[v78];
LABEL_22:
      sub_1E6744A10(v39, &qword_1ED096E68, &qword_1E68B4840);
LABEL_23:
      (*(*(v9 - 8) + 8))(&v17[v34], v9);
      goto LABEL_24;
    case 14:
      v32 = v87;
LABEL_17:
      (*(*(v32 - 8) + 8))(v17);
      return 0;
    case 15:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v30 = *(TupleTypeMetadata3 + 48);
      v31 = *(TupleTypeMetadata3 + 64);
LABEL_9:
      v38 = v90;
      sub_1E6774DF4(&v17[v31], v90);
      v51 = &v17[v30];
LABEL_10:
      sub_1E6744A10(v51, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v9 - 8) + 8))(v17, v9);
      goto LABEL_24;
    default:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v27);
      strcpy(&v85 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      v93 = &type metadata for ActionCardViewLayout;
      v94 = v9;
      *&v95 = &type metadata for ActionCardViewStyle;
      *(&v95 + 1) = v18;
      v96 = v18;
      v97 = v18;
      v98 = v10;
      v99 = sub_1E68B3750();
      v69 = swift_getTupleTypeMetadata();
      v70 = v69[12];
      v71 = v69[24];
      v72 = v69[28];
      v73 = v69[32];
      v74 = v69[36];
      v38 = v90;
      sub_1E6774DF4(&v17[v69[20]], v90);
      v75 = sub_1E68B3750();
      (*(*(v75 - 8) + 8))(&v17[v74], v75);
      (*(v10[-1].Description + 1))(&v17[v73], v10);
      sub_1E6744A10(&v17[v72], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v17[v71], &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v9 - 8) + 8))(&v17[v70], v9);
LABEL_24:
      sub_1E6774DF4(v38, v21);
      v81 = v91;
      v80 = v92;
      if ((*(v91 + 48))(v21, 1, v92) == 1)
      {
        sub_1E6744A10(v21, &qword_1ED096E68, &qword_1E68B4840);
        return 0;
      }

      else
      {
        v83 = v89;
        (*(v81 + 32))(v89, v21, v80);
        (*(v81 + 16))(v88, v83, v80);
        v84 = sub_1E68B31D0();
        (*(v81 + 8))(v83, v80);
        return v84;
      }
  }
}

uint64_t sub_1E6774DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6774EEC()
{
  result = qword_1EE2EC1F0[0];
  if (!qword_1EE2EC1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC1F0);
  }

  return result;
}

char *sub_1E6774F5C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v133 = a5;
  v141 = a4;
  v142 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097640, &qword_1E68B6AF8);
  MEMORY[0x1EEE9AC00](v147, v7);
  v146 = (&v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v139 = &v128 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097650, &qword_1E68B6B08);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v144 = &v128 - v14;
  v148 = sub_1E68B1CD0();
  v15 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v16);
  v143 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v137 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v134 = &v128 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v128 - v26;
  v28 = sub_1E68B1D80();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v130 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v128 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658, &qword_1E68B6B10);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = &v128 - v43;
  v145 = *v149;
  v138 = a3;
  v140 = a1;
  if (v145)
  {
    v45 = a3;
  }

  else
  {
    v45 = a1;
  }

  v46 = *&v45;
  v47 = *(v29 + 16);
  v132 = v29 + 16;
  v131 = v47;
  (v47)(v35, v133, v28, v42);
  v128 = sub_1E6776634(&qword_1EE2EA860, MEMORY[0x1E697E3D0]);
  sub_1E68B32C0();
  v129 = v36;
  v48 = *(v36 + 36);
  sub_1E6776634(&qword_1EE2EA858, MEMORY[0x1E697E3D8]);
  v149 = (v15 + 16);
  v135 = v15;
  v49 = (v15 + 8);
  v136 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v50 = v148;
  while (1)
  {
    sub_1E68B3690();
    if (*&v44[v48] == *&v152)
    {
      break;
    }

    v51 = sub_1E68B36F0();
    (*v149)(v27);
    (v51)(&v152, 0);
    sub_1E68B36A0();
    sub_1E6774EEC();
    sub_1E68B1CE0();
    v52 = v152;
    LOBYTE(v51) = v153;
    (*v49)(v27, v50);
    if ((v51 & 1) == 0)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v136;
      }

      else
      {
        v53 = sub_1E6792DB4(0, *(v136 + 2) + 1, 1, v136);
      }

      v55 = *(v53 + 2);
      v54 = *(v53 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_1E6792DB4((v54 > 1), v55 + 1, 1, v53);
      }

      *(v53 + 2) = v55 + 1;
      v136 = v53;
      *&v53[8 * v55 + 32] = v52;
      goto LABEL_5;
    }
  }

  v56 = v141;
  if (!v145)
  {
    v56 = v142;
  }

  if (v56)
  {
    v46 = 10.0;
  }

  sub_1E6744A10(v44, &qword_1ED097658, &qword_1E68B6B10);
  v57 = *(v136 + 2);
  if (!v57)
  {

    v62 = 1.0;
    v58 = v133;
    v59 = v134;
    goto LABEL_30;
  }

  v58 = v133;
  v59 = v134;
  if (v57 > 3)
  {
    v60 = v57 & 0x7FFFFFFFFFFFFFFCLL;
    v63 = (v136 + 48);
    v61 = 0.0;
    v64 = v57 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v61 = v61 + *(v63 - 2) + *(v63 - 1) + *v63 + v63[1];
      v63 += 4;
      v64 -= 4;
    }

    while (v64);
    if (v57 == v60)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0.0;
  }

  v65 = v57 - v60;
  v66 = &v136[8 * v60 + 32];
  do
  {
    v67 = *v66++;
    v61 = v61 + v67;
    --v65;
  }

  while (v65);
LABEL_27:

  if (1.0 - v61 < 0.0)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = 1.0 - v61;
  }

LABEL_30:
  v131(v130, v58, v28);
  sub_1E68B32C0();
  v68 = *(v129 + 36);
  sub_1E68B3690();
  if (*&v39[v68] == *&v152)
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v136 = v135 + 32;
    v69 = MEMORY[0x1E69E7CC0];
    do
    {
      v72 = sub_1E68B36F0();
      (*v149)(v59);
      v72(&v152, 0);
      sub_1E68B36A0();
      sub_1E6774EEC();
      sub_1E68B1CE0();
      if (v153 == 1)
      {
        v73 = *v136;
        (*v136)(v137, v59, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E68B0EEC(0, *(*&v69 + 16) + 1, 1);
          v69 = v151;
        }

        v76 = *(*&v69 + 16);
        v75 = *(*&v69 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1E68B0EEC((v75 > 1), v76 + 1, 1);
          v69 = v151;
        }

        *(*&v69 + 16) = v76 + 1;
        v77 = *&v69 + ((v135[80] + 32) & ~v135[80]) + *(v135 + 9) * v76;
        v50 = v148;
        v73(v77, v137, v148);
        v59 = v134;
      }

      else
      {
        (*v49)(v59, v50);
      }

      sub_1E68B3690();
    }

    while (*&v39[v68] != *&v152);
  }

  sub_1E6744A10(v39, &qword_1ED097658, &qword_1E68B6B10);
  v70 = *(*&v69 + 16);

  if (v70)
  {
    v71 = v62 / v70;
  }

  else
  {
    v71 = 0.0;
  }

  v78 = v144;
  v79 = v133;
  v80 = sub_1E68B3670();
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v82 = v80;
    v151 = MEMORY[0x1E69E7CC0];
    sub_1E68B0EAC(0, v80 & ~(v80 >> 63), 0);
    v83 = v151;
    result = sub_1E68B3660();
    if (v82 < 0)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    do
    {
      v85 = sub_1E68B36F0();
      v86 = v148;
      v87 = v143;
      (*v149)(v143);
      v85(&v152, 0);
      sub_1E6774EEC();
      sub_1E68B1CE0();
      (*v49)(v87, v86);
      if (v153)
      {
        v88 = v71;
      }

      else
      {
        v88 = v152;
      }

      v151 = v83;
      v90 = *(*&v83 + 16);
      v89 = *(*&v83 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1E68B0EAC((v89 > 1), v90 + 1, 1);
        v83 = v151;
      }

      *(*&v83 + 16) = v90 + 1;
      *(*&v83 + 8 * v90 + 32) = v46 * v88;
      sub_1E68B36A0();
      --v82;
    }

    while (v82);
    v143 = *&v83;
    v78 = v144;
    v81 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v143 = MEMORY[0x1E69E7CC0];
  }

  v131(v78, v79, v28);
  v91 = sub_1E68B3670();
  if (!v91)
  {
    sub_1E6744A10(v78, &qword_1ED097650, &qword_1E68B6B08);
    *&v93 = MEMORY[0x1E69E7CC0];
    v114 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v114)
    {
LABEL_85:

      v115 = MEMORY[0x1E69E7CC0];
      v122 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v122)
      {
LABEL_86:

        return v143;
      }

LABEL_78:
      v123 = *(*&v115 + 32);
      v124 = v122 - 1;
      if (v124)
      {
        v125 = (*&v115 + 40);
        do
        {
          v126 = *v125++;
          v127 = v126;
          if (v123 < v126)
          {
            v123 = v127;
          }

          --v124;
        }

        while (v124);
      }

      goto LABEL_86;
    }

LABEL_71:
    v152 = v81;
    sub_1E68B0EAC(0, v114, 0);
    v115 = v152;
    v116 = *(*&v152 + 16);
    v117 = (v93 + 5);
    v118 = v145;
    do
    {
      v119 = v117 - 1;
      if (!v118)
      {
        v119 = v117;
      }

      v120 = *v119;
      v152 = v115;
      v121 = *(*&v115 + 24);
      if (v116 >= v121 >> 1)
      {
        sub_1E68B0EAC((v121 > 1), v116 + 1, 1);
        v118 = v145;
        v115 = v152;
      }

      *(*&v115 + 16) = v116 + 1;
      *(*&v115 + 8 * v116 + 32) = v120;
      v117 += 2;
      ++v116;
      --v114;
    }

    while (v114);

    v122 = *(*&v115 + 16);
    if (!v122)
    {
      goto LABEL_86;
    }

    goto LABEL_78;
  }

  v92 = v91;
  v151 = v81;
  sub_1E68B0ECC(0, v91 & ~(v91 >> 63), 0);
  *&v93 = v151;
  result = sub_1E68B3660();
  if ((v92 & 0x8000000000000000) == 0)
  {
    v94 = 0;
    v95 = v152;
    v137 = v135 + 32;
    v135 = v143 + 32;
    v136 = v92;
    do
    {
      v96 = *(v147 + 48);
      v150 = v95;
      result = sub_1E68B3660();
      if (*&v95 < *&v152)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      result = sub_1E68B3690();
      if (*&v95 >= *&v152)
      {
        goto LABEL_88;
      }

      v97 = sub_1E68B36F0();
      v98 = v148;
      v99 = v139;
      (*v149)(&v139[v96]);
      v97(&v152, 0);
      v101 = v146;
      v100 = v147;
      *v146 = v94;
      (*v137)(v101 + *(v100 + 48), &v99[v96], v98);
      LODWORD(v99) = sub_1E68B24E0();
      result = sub_1E68B24E0();
      v102 = v142;
      if (v99 != result)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        if (v94 >= *(v143 + 2))
        {
          goto LABEL_91;
        }

        v102 = 0;
      }

      v103 = sub_1E68B24E0();
      result = sub_1E68B24E0();
      v104 = v141;
      if (v103 == result)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        if (v94 >= *(v143 + 2))
        {
          goto LABEL_92;
        }

        v104 = 0;
      }

      LOBYTE(v152) = v102 & 1;
      LOBYTE(v150) = v104 & 1;
      v105 = v146;
      sub_1E68B1CB0();
      v107 = v106;
      v109 = v108;
      sub_1E6744A10(v105, &qword_1ED097640, &qword_1E68B6AF8);
      v151 = *&v93;
      v111 = v93[2];
      v110 = v93[3];
      if (v111 >= v110 >> 1)
      {
        sub_1E68B0ECC((v110 > 1), v111 + 1, 1);
        *&v93 = v151;
      }

      ++v94;
      v93[2] = v111 + 1;
      v112 = &v93[2 * v111];
      v112[4] = v107;
      v112[5] = v109;
      v150 = v95;
      v113 = v144;
      sub_1E68B3680();
      v95 = v152;
    }

    while (v136 != v94);
    sub_1E6744A10(v113, &qword_1ED097650, &qword_1E68B6B08);
    v81 = MEMORY[0x1E69E7CC0];
    v114 = v93[2];
    if (!v114)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

LABEL_94:
  __break(1u);
  return result;
}

double RatioStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1E6774F5C(a1, a2 & 1, a3, a4 & 1, a5);
  v6 = v5;
  v8 = v7;
  v9 = sub_1E68B24E0();
  if (v9 == sub_1E68B24E0())
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  sub_1E68B24E0();
  sub_1E68B24E0();

  return v10;
}

uint64_t RatioStack.placeSubviews(in:proposal:subviews:cache:)(char *a1, char a2, char *a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  LODWORD(v80) = a4;
  v84 = a1;
  v85 = a3;
  v83 = sub_1E68B1CD0();
  v78 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v16);
  v82 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097640, &qword_1E68B6AF8);
  MEMORY[0x1EEE9AC00](v81, v18);
  v20 = &v69 - v19;
  v21 = sub_1E68B1D80();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097648, &qword_1E68B6B00);
  MEMORY[0x1EEE9AC00](v69, v26);
  v28 = &v69 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097650, &qword_1E68B6B08);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v70 = &v69 - v35;
  v36 = *v9;
  v86[0] = *v9;
  v88 = a2 & 1;
  v87 = v80 & 1;
  v37 = sub_1E6774F5C(v84, a2 & 1, v85, v80 & 1, a5);
  v80 = v38;
  v84 = v37;
  v39 = sub_1E68B24E0();
  v40 = sub_1E68B24E0();
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  if (v39 == v40)
  {
    MinY = CGRectGetMinY(*&v41);
  }

  else
  {
    MinY = CGRectGetMinX(*&v41);
  }

  v46 = MinY;
  v47 = v70;
  (*(v22 + 16))(v70, a5, v21);
  sub_1E67765C4(v47, v32);
  (*(v22 + 32))(v25, v32, v21);
  sub_1E6776634(&qword_1EE2EA860, MEMORY[0x1E697E3D0]);
  sub_1E68B32C0();
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658, &qword_1E68B6B10) + 36);
  v49 = sub_1E6776634(&qword_1EE2EA858, MEMORY[0x1E697E3D8]);
  sub_1E68B3690();
  if (*&v28[v48] == *v86)
  {
    v50 = 0;
LABEL_6:

    v51 = *(v69 + 36);
    sub_1E6744A10(v70, &qword_1ED097650, &qword_1E68B6B08);
    *&v28[v51] = v50;
    return sub_1E6744A10(v28, &qword_1ED097648, &qword_1E68B6B00);
  }

  else
  {
    v50 = 0;
    v79 = (v78 + 2);
    v78 += 4;
    v85 = v84 + 32;
    v75 = a7;
    v76 = a8;
    v74 = a6;
    v73 = a9;
    v72 = v48;
    v71 = v49;
    v77 = v20;
    while (1)
    {
      v53 = v36;
      v54 = v28;
      v55 = v50;
      v56 = sub_1E68B36F0();
      v57 = v21;
      v58 = v82;
      v59 = v83;
      (*v79)(v82);
      v56(v86, 0);
      v60 = v55;
      v61 = v54;
      v62 = v77;
      v63 = v57;
      sub_1E68B36A0();
      v64 = *(v81 + 48);
      *v62 = v60;
      v65 = v62;
      result = (*v78)(&v62[v64], v58, v59);
      if (v60 >= *(v84 + 2))
      {
        break;
      }

      v36 = v53;
      v66 = sub_1E68B24E0();
      if (v66 == sub_1E68B24E0())
      {
        v89.origin.x = a6;
        v89.origin.y = a7;
        v89.size.width = a8;
        v89.size.height = a9;
        CGRectGetMidX(v89);
      }

      v67 = sub_1E68B24E0();
      v21 = v63;
      if (v67 != sub_1E68B24E0())
      {
        v90.origin.x = a6;
        v90.origin.y = a7;
        v90.size.width = a8;
        v90.size.height = a9;
        CGRectGetMidY(v90);
      }

      v68 = sub_1E68B24E0();
      if (v68 == sub_1E68B24E0())
      {
        sub_1E68B2F30();
      }

      else
      {
        sub_1E68B2F60();
      }

      sub_1E68B24E0();
      sub_1E68B24E0();
      sub_1E68B24E0();
      sub_1E68B24E0();
      v86[0] = 0;
      v88 = 0;
      sub_1E68B1CC0();
      v46 = v46 + *&v85[8 * v60];
      sub_1E6744A10(v65, &qword_1ED097640, &qword_1E68B6AF8);
      v28 = v61;
      sub_1E68B3690();
      v50 = v60 + 1;
      a9 = v73;
      a8 = v76;
      a7 = v75;
      a6 = v74;
      if (*&v61[v72] == *v86)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E67765C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097650, &qword_1E68B6B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6776634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B1D80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E677667C()
{
  result = qword_1EE2EC440[0];
  if (!qword_1EE2EC440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC440);
  }

  return result;
}

unint64_t sub_1E67767C8()
{
  result = qword_1ED097660;
  if (!qword_1ED097660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097660);
  }

  return result;
}

uint64_t (*sub_1E677681C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E68B1AF0();
  return sub_1E67768A4;
}

void sub_1E67768A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1E6776900()
{
  result = qword_1ED097670;
  if (!qword_1ED097670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097668, &qword_1E68B6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097670);
  }

  return result;
}

uint64_t sub_1E6776974(uint64_t a1)
{
  v2 = sub_1E6776FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67769B0(uint64_t a1)
{
  v2 = sub_1E6776FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67769EC()
{
  if (*v0)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1E6776A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E68E2990 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C63726963 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E68B3B00();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E6776B0C(uint64_t a1)
{
  v2 = sub_1E6776F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6776B48(uint64_t a1)
{
  v2 = sub_1E6776F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6776B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6776C04(uint64_t a1)
{
  v2 = sub_1E677702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6776C40(uint64_t a1)
{
  v2 = sub_1E677702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkClipShape.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v21 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097678, &qword_1E68B6C50);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097680, &qword_1E68B6C58);
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097688, &qword_1E68B6C60);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6776F84();
  sub_1E68B3BD0();
  if (v23)
  {
    v25 = 1;
    sub_1E6776FD8();
    sub_1E68B3A30();
    (*(v19 + 8))(v7, v20);
  }

  else
  {
    v24 = 0;
    sub_1E677702C();
    sub_1E68B3A30();
    v22 = v21;
    sub_1E67621E8();
    sub_1E68B3AB0();
    (*(v18 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1E6776F84()
{
  result = qword_1EE2EBC68;
  if (!qword_1EE2EBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC68);
  }

  return result;
}

unint64_t sub_1E6776FD8()
{
  result = qword_1ED097690;
  if (!qword_1ED097690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097690);
  }

  return result;
}

unint64_t sub_1E677702C()
{
  result = qword_1EE2EBC40;
  if (!qword_1EE2EBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC40);
  }

  return result;
}

void *ArtworkClipShape.init(from:)(void *a1)
{
  result = sub_1E67772DC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1E67770A4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E67772DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

BOOL static ArtworkClipShape.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t ArtworkClipShape.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1E69523D0](1, a2);
  }

  MEMORY[0x1E69523D0](0);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1E69523F0](v5);
}

uint64_t ArtworkClipShape.hashValue.getter(uint64_t a1, char a2)
{
  sub_1E68B3B70();
  if (a2)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1E69523F0](v4);
  }

  return sub_1E68B3BB0();
}

uint64_t sub_1E67771F0()
{
  if (v0[1])
  {
    return MEMORY[0x1E69523D0](1);
  }

  v2 = *v0;
  MEMORY[0x1E69523D0](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1E69523F0](v3);
}

uint64_t sub_1E6777240(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E68B3B70();
  if (v3)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1E69523F0](v4);
  }

  return sub_1E68B3BB0();
}

uint64_t sub_1E67772AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void *sub_1E67772DC(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0976B0, &qword_1E68B7038);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0976B8, &qword_1E68B7040);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED0976C0, &qword_1E68B7048);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - v12;
  v14 = a1[3];
  v34 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E6776F84();
  v16 = v33;
  sub_1E68B3BC0();
  if (!v16)
  {
    v29 = v5;
    v17 = v32;
    v33 = v10;
    v18 = sub_1E68B3A10();
    v19 = (2 * *(v18 + 16)) | 1;
    v35 = v18;
    v36 = v18 + 32;
    v37 = 0;
    v38 = v19;
    v20 = sub_1E676F5C8();
    if (v20 == 2 || v37 != v38 >> 1)
    {
      v22 = sub_1E68B3870();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v24 = &type metadata for ArtworkClipShape;
      v15 = v13;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v33 + 8))(v13, v9);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      LOBYTE(v39) = 1;
      sub_1E6776FD8();
      sub_1E68B3970();
      v21 = v33;
      (*(v17 + 8))(v4, v30);
      (*(v21 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v15 = 0;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_1E677702C();
      v26 = v8;
      sub_1E68B3970();
      v27 = v33;
      sub_1E6762A60();
      v28 = v29;
      sub_1E68B3A00();
      (*(v31 + 8))(v26, v28);
      (*(v27 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v15 = v39;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v15;
}

unint64_t sub_1E67777D4()
{
  result = qword_1ED097698;
  if (!qword_1ED097698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097698);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArtworkClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E677788C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E67778A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1E677790C()
{
  result = qword_1ED0976A0;
  if (!qword_1ED0976A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0976A0);
  }

  return result;
}

unint64_t sub_1E6777964()
{
  result = qword_1ED0976A8;
  if (!qword_1ED0976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0976A8);
  }

  return result;
}

unint64_t sub_1E67779BC()
{
  result = qword_1EE2EBC30;
  if (!qword_1EE2EBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC30);
  }

  return result;
}

unint64_t sub_1E6777A14()
{
  result = qword_1EE2EBC38;
  if (!qword_1EE2EBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC38);
  }

  return result;
}

unint64_t sub_1E6777A6C()
{
  result = qword_1EE2EBC48;
  if (!qword_1EE2EBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC48);
  }

  return result;
}

unint64_t sub_1E6777AC4()
{
  result = qword_1EE2EBC50;
  if (!qword_1EE2EBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC50);
  }

  return result;
}

unint64_t sub_1E6777B1C()
{
  result = qword_1EE2EBC58;
  if (!qword_1EE2EBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC58);
  }

  return result;
}

unint64_t sub_1E6777B74()
{
  result = qword_1EE2EBC60;
  if (!qword_1EE2EBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC60);
  }

  return result;
}

uint64_t sub_1E6777BDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636974726576 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6777CB0(char a1)
{
  if (a1)
  {
    return 0x746E6F7A69726F68;
  }

  else
  {
    return 0x6C61636974726576;
  }
}

uint64_t sub_1E6777CFC(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E672A420(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6777D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6777BDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6777D84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6777DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6777E2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6777E80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6777ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6777F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasGridAxis.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v52 = type metadata accessor for CanvasGridAxis.HorizontalCodingKeys(255, v6, v7, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E68B3AC0();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v53 = v42 - v10;
  v12 = type metadata accessor for CanvasHorizontalGridLayout(0, v6, v7, v11);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = v42 - v14;
  v16 = type metadata accessor for CanvasGridAxis.VerticalCodingKeys(255, v6, v7, v15);
  v17 = swift_getWitnessTable();
  v44 = v16;
  v42[1] = v17;
  v18 = sub_1E68B3AC0();
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = v42 - v20;
  v22 = type metadata accessor for CanvasVerticalGridLayout(0, v6, v7, v21);
  v46 = *(v22 - 8);
  v47 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v43 = v42 - v24;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CanvasGridAxis.CodingKeys(255, v6, v7, v30);
  swift_getWitnessTable();
  v58 = sub_1E68B3AC0();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v31);
  v33 = v42 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v25 + 16))(v29, v59, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v54;
    v34 = v55;
    v36 = v51;
    (*(v54 + 32))(v51, v29, v55);
    v62 = 1;
    v37 = v53;
    v38 = v58;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v39 = v57;
    sub_1E68B3AB0();
    v40 = v56;
  }

  else
  {
    v35 = v46;
    v34 = v47;
    v36 = v43;
    (*(v46 + 32))(v43, v29, v47);
    v61 = 0;
    v37 = v45;
    v38 = v58;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v39 = v49;
    sub_1E68B3AB0();
    v40 = v48;
  }

  (*(v40 + 8))(v37, v39);
  (*(v35 + 8))(v36, v34);
  return (*(v60 + 8))(v33, v38);
}

uint64_t CanvasGridAxis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a5;
  v8 = type metadata accessor for CanvasGridAxis.HorizontalCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v75 = v8;
  v71 = sub_1E68B3A20();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v9);
  v76 = &v65 - v10;
  v12 = type metadata accessor for CanvasGridAxis.VerticalCodingKeys(255, a2, a3, v11);
  v13 = swift_getWitnessTable();
  v73 = v12;
  v72 = v13;
  v69 = sub_1E68B3A20();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v14);
  v78 = &v65 - v15;
  type metadata accessor for CanvasGridAxis.CodingKeys(255, a2, a3, v16);
  swift_getWitnessTable();
  v17 = sub_1E68B3A20();
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v65 - v19;
  v80 = a2;
  v82 = a3;
  v22 = type metadata accessor for CanvasGridAxis(0, a2, a3, v21);
  v79 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v65 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v65 - v32;
  v34 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v81 = v20;
  v35 = v85;
  sub_1E68B3BC0();
  if (!v35)
  {
    v85 = v25;
    v67 = v29;
    v66 = v33;
    v36 = v81;
    v37 = v82;
    v38 = v84;
    *&v86 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v88 = sub_1E68B37A0();
    *(&v88 + 1) = v39;
    *&v89 = v40;
    *(&v89 + 1) = v41;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v42 = v86;
    if (v86 == 2 || (v65 = v88, v86 = v88, v87 = v89, (sub_1E68B36E0() & 1) == 0))
    {
      v46 = sub_1E68B3870();
      swift_allocError();
      v47 = v38;
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v49 = v22;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v46 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v46);
      swift_willThrow();
      (*(v83 + 8))(v36, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v86) = 1;
        v43 = v76;
        sub_1E68B3970();
        v44 = v37;
        v45 = v79;
        type metadata accessor for CanvasHorizontalGridLayout(0, v80, v44, v51);
        swift_getWitnessTable();
        v52 = v71;
        sub_1E68B3A00();
        v53 = v83;
        (*(v70 + 8))(v43, v52);
        (*(v53 + 8))(v36, v38);
        swift_unknownObjectRelease();
        v60 = v85;
        swift_storeEnumTagMultiPayload();
        v61 = v60;
        v62 = v77;
      }

      else
      {
        LOBYTE(v86) = 0;
        sub_1E68B3970();
        v62 = v77;
        v50 = v37;
        v45 = v79;
        v54 = v36;
        type metadata accessor for CanvasVerticalGridLayout(0, v80, v50, v55);
        swift_getWitnessTable();
        v56 = v67;
        v57 = v69;
        v58 = v78;
        sub_1E68B3A00();
        (*(v68 + 8))(v58, v57);
        (*(v83 + 8))(v54, v84);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v61 = v56;
      }

      v63 = *(v45 + 32);
      v64 = v66;
      v63(v66, v61, v22);
      v63(v62, v64, v22);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t static CanvasGridAxis.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v6 = type metadata accessor for CanvasHorizontalGridLayout(0, a3, a4, a4);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v43 - v8;
  v10 = type metadata accessor for CanvasVerticalGridLayout(0, a3, a4, v9);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = &v43 - v12;
  v50 = a4;
  v14 = type metadata accessor for CanvasGridAxis(0, a3, a4, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v24);
  v27 = &v43 - v26;
  v29 = *(v28 + 48);
  v30 = *(v15 + 16);
  v30(&v43 - v26, v51, v14, v25);
  (v30)(&v27[v29], v52, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v30)(v18, v27, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v48;
      v31 = v49;
      v33 = &v27[v29];
      v34 = v44;
      (*(v48 + 32))(v44, v33, v49);
      v35 = static CanvasHorizontalGridLayout.== infix(_:_:)(v18, v34, a3);
      v36 = *(v32 + 8);
      v36(v34, v31);
      v36(v18, v31);
      goto LABEL_10;
    }

    (*(v48 + 8))(v18, v49);
LABEL_7:
    v35 = 0;
    v15 = v45;
    v14 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  (v30)(v22, v27, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v46 + 8))(v22, v47);
    goto LABEL_7;
  }

  v38 = v46;
  v37 = v47;
  v39 = &v27[v29];
  v40 = v43;
  (*(v46 + 32))(v43, v39, v47);
  v35 = static CanvasVerticalGridLayout.== infix(_:_:)(v22, v40, a3);
  v41 = *(v38 + 8);
  v41(v40, v37);
  v41(v22, v37);
LABEL_10:
  (*(v15 + 8))(v27, v14);
  return v35 & 1;
}

uint64_t CanvasGridAxis.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for CanvasHorizontalGridLayout(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - v13;
  v16 = type metadata accessor for CanvasVerticalGridLayout(0, v8, v9, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - v19;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v5, a2, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v25, v10);
    MEMORY[0x1E69523D0](1);
    CanvasHorizontalGridLayout.hash(into:)(a1, v10);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v17 + 32))(v20, v25, v16);
    MEMORY[0x1E69523D0](0);
    CanvasVerticalGridLayout.hash(into:)(a1, v16);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t CanvasGridAxis.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasGridAxis.hash(into:)(v5, a1, v2, v3);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6779510(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasGridAxis.hash(into:)(v6, a2, v3, v4);
  return sub_1E68B3BB0();
}

uint64_t sub_1E677957C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 16;
  if (v4 > 0x10)
  {
    v5 = *(v3 + 64);
  }

  v6 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = v6 + 1;
  if (v7 <= v5 + 1)
  {
    v8 = v5 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_30;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v13 < 2)
    {
LABEL_30:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_30;
  }

LABEL_19:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 255;
}

void sub_1E67796EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v8 <= 0x18)
  {
    v8 = 24;
  }

  v9 = v8 + 1;
  if (v9 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_43:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v9] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_28;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1E67799FC()
{
  v0 = type metadata accessor for StandardLockup(0);
  __swift_allocate_value_buffer(v0, qword_1EE2EBFB8);
  v1 = __swift_project_value_buffer(v0, qword_1EE2EBFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
  v2 = *(type metadata accessor for TextContent.Component(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E68B74F0;
  v5 = (v4 + v3);
  *v5 = 0x656C746954;
  v5[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E68B74F0;
  v7 = (v6 + v3);
  *v7 = 0x656C746974627553;
  v7[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *v1 = swift_getKeyPath();
  *(v1 + 40) = 0;
  v8 = v0[5];
  *(v1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  *(v1 + v0[6]) = 0;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_1E68B2B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097878, qword_1E68B7A50);
  sub_1E677AF8C();
  result = sub_1E68B2CF0();
  *(v1 + v0[7]) = result;
  *(v1 + v0[8]) = v4;
  *(v1 + v0[9]) = v6;
  v11 = (v1 + v0[10]);
  *v11 = nullsub_5;
  v11[1] = 0;
  return result;
}

uint64_t StandardLockup.init<A>(caption:artwork:title:subtitle:onSelection:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = *v9;
  v12 = *v11;
  v14 = *v13;
  *a6 = swift_getKeyPath();
  *(a6 + 40) = 0;
  v15 = type metadata accessor for StandardLockup(0);
  v16 = v15[5];
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  v17 = swift_storeEnumTagMultiPayload();
  *(a6 + v15[6]) = v10;
  a2(v17);
  *(a6 + v15[7]) = sub_1E68B2CF0();
  *(a6 + v15[8]) = v12;
  *(a6 + v15[9]) = v14;
  v18 = (a6 + v15[10]);
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  *v18 = sub_1E673F5E0;
  v18[1] = result;
  return result;
}

uint64_t static StandardLockup.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EBFB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StandardLockup(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE2EBFB8);

  return sub_1E677A19C(v3, a1);
}

uint64_t StandardLockup.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for StandardLockupConfiguration(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E677A718(v29);
  v8 = v30;
  v9 = v31;
  v27 = __swift_project_boxed_opaque_existential_1(v29, v30);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v25[1] = v25 - v11;
  v12 = type metadata accessor for StandardLockup(0);
  sub_1E677A200(v7);
  v13 = *(v1 + v12[6]);
  v14 = *(v2 + v12[7]);
  v15 = *(v2 + v12[8]);
  v16 = *(v2 + v12[9]);
  v17 = (v2 + v12[10]);
  v19 = *v17;
  v18 = v17[1];
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  *&v7[v4[7]] = v13;
  *&v7[v4[8]] = v14;
  *&v7[v4[9]] = v15;
  *&v7[v4[10]] = v16;
  v21 = &v7[v4[11]];
  *v21 = sub_1E677A910;
  v21[1] = v20;
  v22 = *(v9 + 32);

  v22(v7, v8, v9);
  sub_1E677A938(v7);
  swift_getAssociatedConformanceWitness();
  v23 = sub_1E68B2CF0();
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  *v28 = v23;
  return result;
}

uint64_t sub_1E677A0C8(uint64_t a1)
{
  sub_1E677AFF0(a1, v3);
  sub_1E677AFF0(v3, &v2);
  sub_1E677B054();
  sub_1E68B20F0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t type metadata accessor for StandardLockup(uint64_t a1)
{
  result = qword_1EE2EBFA0;
  if (!qword_1EE2EBFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E677A19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E677A200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E68B20D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_1E67612FC(v2, &v19 - v11, &qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E68B1DE0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_1E68B3730();
    v16 = sub_1E68B2490();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1E683B478(0x5463696D616E7944, 0xEF657A6953657079, &v20);
      _os_log_impl(&dword_1E6725000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E6952A70](v18, -1, -1);
      MEMORY[0x1E6952A70](v17, -1, -1);
    }

    sub_1E68B20C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E677A48C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E68B20D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_1E67612FC(v2, &v19 - v11, &qword_1ED097040, &qword_1E68B4CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E68B1E00();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_1E68B3730();
    v16 = sub_1E68B2490();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1E683B478(0x694474756F79614CLL, 0xEF6E6F6974636572, &v20);
      _os_log_impl(&dword_1E6725000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E6952A70](v18, -1, -1);
      MEMORY[0x1E6952A70](v17, -1, -1);
    }

    sub_1E68B20C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E677A718@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E68B20D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E67612FC(v2, v16, &qword_1ED097868, &unk_1E68B75E0);
  if (v17 == 1)
  {
    return sub_1E6739D3C(v16, a1);
  }

  v10 = sub_1E68B3730();
  v11 = sub_1E68B2490();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1E683B478(0xD000000000000013, 0x80000001E68E29D0, &v15);
    _os_log_impl(&dword_1E6725000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E6952A70](v13, -1, -1);
    MEMORY[0x1E6952A70](v12, -1, -1);
  }

  sub_1E68B20C0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E677A938(uint64_t a1)
{
  v2 = type metadata accessor for StandardLockupConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E677A9D8(uint64_t a1)
{
  sub_1E677AB48(319, &qword_1EE2EA8A0, &qword_1ED097850, &qword_1E68B75D0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E674828C(319);
    if (v2 <= 0x3F)
    {
      sub_1E677AAF8();
      if (v3 <= 0x3F)
      {
        sub_1E677AB48(319, &qword_1EE2EBE70, &qword_1ED097858, &unk_1E68B7A40, type metadata accessor for AssumeEquatable);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E677AAF8()
{
  if (!qword_1EE2EC388)
  {
    v0 = sub_1E68B3750();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EC388);
    }
  }
}

void sub_1E677AB48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1E677ABAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E68B20D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E67612FC(v2, v16, &qword_1ED097860, &qword_1E68B75D8);
  if (v17 == 1)
  {
    return sub_1E6739D3C(v16, a1);
  }

  v10 = sub_1E68B3730();
  v11 = sub_1E68B2490();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1E683B478(0xD000000000000019, 0x80000001E68E29B0, &v15);
    _os_log_impl(&dword_1E6725000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E6952A70](v13, -1, -1);
    MEMORY[0x1E6952A70](v12, -1, -1);
  }

  sub_1E68B20C0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

double sub_1E677ADA4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1E68B20D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    return *&a1;
  }

  v12 = sub_1E68B3730();
  v13 = sub_1E68B2490();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = *&v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E683B478(0x657A69534743, 0xE600000000000000, &v16);
    _os_log_impl(&dword_1E6725000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E6952A70](v15, -1, -1);
    MEMORY[0x1E6952A70](v14, -1, -1);
  }

  sub_1E68B20C0();
  swift_getAtKeyPath();
  sub_1E677AF80(a1, a2, 0);
  (*(v7 + 8))(v10, v6);
  return v16;
}

uint64_t sub_1E677AF80(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

unint64_t sub_1E677AF8C()
{
  result = qword_1EE2EA8A8[0];
  if (!qword_1EE2EA8A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097878, qword_1E68B7A50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EA8A8);
  }

  return result;
}

uint64_t sub_1E677AFF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E677B054()
{
  result = qword_1EE2EB1D0;
  if (!qword_1EE2EB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB1D0);
  }

  return result;
}

uint64_t DefaultVerticalStackStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_1E68B1EB0();
  v3 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0], v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StandardLockupConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097880, &qword_1E68B75F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v20 - v14;
  sub_1E677B3B8(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1E677B41C(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097888, &qword_1E68B75F8);
  sub_1E677B554();
  sub_1E68B2C20();
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E673F530(&qword_1EE2EA540, &qword_1ED097880, &qword_1E68B75F0, MEMORY[0x1E697D680]);
  sub_1E677C880(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v18 = v20[0];
  sub_1E68B2790();
  (*(v3 + 8))(v6, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1E677B3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockupConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E677B41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockupConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E677B484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E68B21D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A0, &unk_1E68B7680);
  sub_1E677B6C4(a1, a2 + *(v4 + 44));
  sub_1E68B2E60();
  sub_1E68B1C50();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097890, &qword_1E68B7600) + 36));
  *v5 = v7;
  v5[1] = v8;
  v5[2] = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097888, &qword_1E68B75F8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1E677B554()
{
  result = qword_1EE2EA708;
  if (!qword_1EE2EA708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097888, &qword_1E68B75F8);
    sub_1E677B60C();
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA708);
  }

  return result;
}

unint64_t sub_1E677B60C()
{
  result = qword_1EE2EA780;
  if (!qword_1EE2EA780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097890, &qword_1E68B7600);
    sub_1E673F530(&qword_1EE2EA4F8, &qword_1ED097898, &qword_1E68B7608, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA780);
  }

  return result;
}

uint64_t sub_1E677B6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A8, &qword_1E68C5770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v78 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978B0, &qword_1E68B7690);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v97 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978B8, &qword_1E68B7698);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v96 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v78 - v20;
  *v21 = sub_1E68B2120();
  *(v21 + 1) = 0x4024000000000000;
  v21[16] = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978C0, &qword_1E68B76A0) + 44);
  v95 = v21;
  sub_1E677BDB8(a1, &v21[v22]);
  sub_1E68B2E80();
  v23 = 1;
  sub_1E68B1C50();
  v89 = v115;
  v90 = v113;
  v87 = v118;
  v88 = v117;
  v121 = 1;
  v120 = v114;
  v119 = v116;
  v24 = type metadata accessor for StandardLockupConfiguration(0);
  v25 = *(a1 + v24[5]);
  v92 = v14;
  if (v25)
  {
    v106[0] = v25;
    v26 = sub_1E678E2C4(v106);
    v85 = v27;
    v86 = v26;
    LODWORD(v84) = v28;
    v93 = v29;
    v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D0, &unk_1E68B76F0) + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
    v32 = *MEMORY[0x1E6980FD8];
    v33 = sub_1E68B2690();
    v34 = *(v33 - 8);
    v94 = v24;
    v35 = v4;
    v36 = v3;
    v37 = a1;
    v38 = v34;
    (*(v34 + 104))(v30 + v31, v32, v33);
    (*(v38 + 56))(v30 + v31, 0, 1, v33);
    a1 = v37;
    v3 = v36;
    v4 = v35;
    v24 = v94;
    *v30 = swift_getKeyPath();
    v39 = v85;
    *v7 = v86;
    *(v7 + 1) = v39;
    v7[16] = v84 & 1;
    v14 = v92;
    *(v7 + 3) = v93;
    *(v7 + 16) = 256;
    KeyPath = swift_getKeyPath();
    v41 = &v7[*(v3 + 36)];
    *v41 = KeyPath;
    *(v41 + 1) = 2;
    v41[16] = 0;
    sub_1E6761420(v7, v14, &qword_1ED0978A8, &qword_1E68C5770);
    v23 = 0;
  }

  (*(v4 + 56))(v14, v23, 1, v3);
  v106[0] = *(a1 + v24[7]);

  v42 = sub_1E678E2C4(v106);
  v93 = v43;
  v94 = v42;
  v86 = v44;
  v46 = v45;

  v85 = swift_getKeyPath();
  v47 = v46 & 1;
  LOBYTE(v106[0]) = v46 & 1;
  LOBYTE(v104[0]) = 0;
  if (*(a1 + v24[8]))
  {
    v106[0] = *(a1 + v24[8]);
    v48 = sub_1E678E2C4(v106);
    v83 = v49;
    v84 = v48;
    v51 = v50;
    v82 = v52;
    v53 = swift_getKeyPath();
    LOBYTE(v106[0]) = v51 & 1;
    LOBYTE(v104[0]) = 0;
    v79 = v51 & 1;
    v78 = 256;
    v80 = 2;
    v81 = v53;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
  }

  v54 = v96;
  sub_1E67612FC(v95, v96, &qword_1ED0978B8, &qword_1E68B7698);
  v55 = v121;
  v56 = v120;
  v57 = v119;
  v58 = v97;
  sub_1E67612FC(v14, v97, &qword_1ED0978B0, &qword_1E68B7690);
  v59 = v91;
  sub_1E67612FC(v54, v91, &qword_1ED0978B8, &qword_1E68B7698);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978C8, &qword_1E68B76D8);
  v61 = v59 + v60[12];
  *v61 = 0;
  *(v61 + 8) = v55;
  v62 = v89;
  *(v61 + 16) = v90;
  *(v61 + 24) = v56;
  *(v61 + 32) = v62;
  *(v61 + 40) = v57;
  v63 = v87;
  *(v61 + 48) = v88;
  *(v61 + 56) = v63;
  sub_1E67612FC(v58, v59 + v60[16], &qword_1ED0978B0, &qword_1E68B7690);
  v64 = (v59 + v60[20]);
  v65 = v85;
  v66 = v86;
  *&v98 = v94;
  *(&v98 + 1) = v86;
  LOBYTE(v99) = v47;
  LODWORD(v90) = v47;
  *(&v99 + 1) = v93;
  LOWORD(v100[0]) = 256;
  *(&v100[0] + 1) = v85;
  *&v100[1] = 2;
  BYTE8(v100[1]) = 0;
  v67 = v99;
  *v64 = v98;
  v64[1] = v67;
  v64[2] = v100[0];
  *(v64 + 41) = *(v100 + 9);
  v68 = (v59 + v60[24]);
  v70 = v83;
  v69 = v84;
  *&v101 = v84;
  *(&v101 + 1) = v83;
  v72 = v78;
  v71 = v79;
  v74 = v81;
  v73 = v82;
  *&v102 = v79;
  *(&v102 + 1) = v82;
  *&v103[0] = v78;
  *(&v103[0] + 1) = v81;
  v75 = v80;
  *&v103[1] = v80;
  BYTE8(v103[1]) = 0;
  v76 = v102;
  *v68 = v101;
  v68[1] = v76;
  v68[2] = v103[0];
  *(v68 + 41) = *(v103 + 9);
  sub_1E67612FC(&v98, v106, &qword_1ED096E38, &unk_1E68B76E0);
  sub_1E67612FC(&v101, v106, &qword_1ED096E00, &unk_1E68B4730);
  sub_1E6744A10(v92, &qword_1ED0978B0, &qword_1E68B7690);
  sub_1E6744A10(v95, &qword_1ED0978B8, &qword_1E68B7698);
  v104[0] = v69;
  v104[1] = v70;
  v104[2] = v71;
  v104[3] = v73;
  v104[4] = v72;
  v104[5] = v74;
  v104[6] = v75;
  v105 = 0;
  sub_1E6744A10(v104, &qword_1ED096E00, &unk_1E68B4730);
  v106[0] = v94;
  v106[1] = v66;
  v107 = v90;
  v108 = v93;
  v109 = 256;
  v110 = v65;
  v111 = 2;
  v112 = 0;
  sub_1E6744A10(v106, &qword_1ED096E38, &unk_1E68B76E0);
  sub_1E6744A10(v97, &qword_1ED0978B0, &qword_1E68B7690);
  return sub_1E6744A10(v96, &qword_1ED0978B8, &qword_1E68B7698);
}

uint64_t sub_1E677BDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a1;
  v48 = a2;
  v3 = sub_1E68B1DE0();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978E0, &qword_1E68B7730);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978E8, &qword_1E68B7738);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v47 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v44 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v44 - v21;
  v23 = *(a1 + *(type metadata accessor for StandardLockupConfiguration(0) + 24));
  sub_1E68B1A60();
  v25 = v24;
  v26 = &v10[*(v7 + 44)];
  v27 = *(sub_1E68B1F00() + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1E68B2160();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971E0, &qword_1E68B7740) + 36)] = 256;
  *v10 = v23;
  *(v10 + 1) = 0x3FFC71C71C71C71CLL;
  *(v10 + 8) = 0;

  sub_1E68B2E80();
  sub_1E68B1F30();
  sub_1E6761420(v10, v18, &qword_1ED0978E0, &qword_1E68B7730);
  v30 = &v18[*(v12 + 44)];
  v31 = v67;
  *(v30 + 4) = v66;
  *(v30 + 5) = v31;
  *(v30 + 6) = v68;
  v32 = v63;
  *v30 = v62;
  *(v30 + 1) = v32;
  v33 = v65;
  *(v30 + 2) = v64;
  *(v30 + 3) = v33;
  sub_1E6761420(v18, v22, &qword_1ED0978E8, &qword_1E68B7738);
  v35 = v45;
  v34 = v46;
  (*(v46 + 104))(v45, *MEMORY[0x1E697E6C0], v3);
  sub_1E677C880(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  LOBYTE(v12) = sub_1E68B3160();
  (*(v34 + 8))(v35, v3);
  if (v12)
  {
    sub_1E677C8D0(&v53);
  }

  else
  {
    sub_1E68B2E80();
    sub_1E68B1F30();
    *&v51[71] = v73;
    *&v51[55] = v72;
    *&v51[103] = v75;
    *&v51[87] = v74;
    *&v51[23] = v70;
    *&v51[7] = v69;
    *&v51[39] = v71;
    *(&v49[4] + 9) = *&v51[64];
    *(&v49[5] + 9) = *&v51[80];
    *(&v49[6] + 9) = *&v51[96];
    *(v49 + 9) = *v51;
    *(&v49[1] + 9) = *&v51[16];
    *(&v49[2] + 9) = *&v51[32];
    v52 = 1;
    *&v49[0] = 0;
    BYTE8(v49[0]) = 1;
    *(&v49[7] + 1) = *(&v75 + 1);
    *(&v49[3] + 9) = *&v51[48];
    sub_1E677C8C8(v49);
    v59 = v49[6];
    v60 = v49[7];
    v61 = v50;
    v55 = v49[2];
    v56 = v49[3];
    v57 = v49[4];
    v58 = v49[5];
    v53 = v49[0];
    v54 = v49[1];
  }

  v36 = v47;
  sub_1E67612FC(v22, v47, &qword_1ED0978E8, &qword_1E68B7738);
  v49[6] = v59;
  v49[7] = v60;
  v50 = v61;
  v49[2] = v55;
  v49[3] = v56;
  v49[4] = v57;
  v49[5] = v58;
  v49[0] = v53;
  v49[1] = v54;
  v37 = v48;
  sub_1E67612FC(v36, v48, &qword_1ED0978E8, &qword_1E68B7738);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978F0, &qword_1E68B7748) + 48);
  v39 = v49[7];
  *(v38 + 96) = v49[6];
  *(v38 + 112) = v39;
  *(v38 + 128) = v50;
  v40 = v49[3];
  *(v38 + 32) = v49[2];
  *(v38 + 48) = v40;
  v41 = v49[5];
  *(v38 + 64) = v49[4];
  *(v38 + 80) = v41;
  v42 = v49[1];
  *v38 = v49[0];
  *(v38 + 16) = v42;
  sub_1E6744A10(v22, &qword_1ED0978E8, &qword_1E68B7738);
  return sub_1E6744A10(v36, &qword_1ED0978E8, &qword_1E68B7738);
}

uint64_t sub_1E677C33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_1E68B1EB0();
  v3 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0], v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StandardLockupConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097880, &qword_1E68B75F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v20 - v14;
  sub_1E677B3B8(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1E677B41C(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097888, &qword_1E68B75F8);
  sub_1E677B554();
  sub_1E68B2C20();
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E673F530(&qword_1EE2EA540, &qword_1ED097880, &qword_1E68B75F0, MEMORY[0x1E697D680]);
  sub_1E677C880(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v18 = v20[0];
  sub_1E68B2790();
  (*(v3 + 8))(v6, v18);
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_1E677C66C(uint64_t a1)
{
  result = sub_1E677C694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E677C694()
{
  result = qword_1EE2EAF58;
  if (!qword_1EE2EAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAF58);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for StandardLockupConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E68B1DE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E677C880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E677C8D0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_1E677C8F8()
{
  qword_1EE2EAC20 = &type metadata for LockupListItemStyle;
  result = sub_1E677D038();
  qword_1EE2EAC28 = result;
  qword_1EE2EAC08 = 0;
  return result;
}

uint64_t static StandardActionLockupStyleKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EAC00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1E677AFF0(&qword_1EE2EAC08, a1);
}

uint64_t static StandardActionLockupStyleKey.defaultValue.setter(uint64_t *a1)
{
  if (qword_1EE2EAC00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EE2EAC08, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t (*static StandardActionLockupStyleKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE2EAC00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E677CCEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EAC00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1E677AFF0(&qword_1EE2EAC08, a1);
}

uint64_t sub_1E677CD6C(uint64_t *a1)
{
  if (qword_1EE2EAC00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EE2EAC08, a1);
  return swift_endAccess();
}

uint64_t EnvironmentValues.standardActionLockupStyle.getter()
{
  sub_1E677CE40();

  return sub_1E68B20E0();
}

unint64_t sub_1E677CE40()
{
  result = qword_1EE2EABF8;
  if (!qword_1EE2EABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABF8);
  }

  return result;
}

uint64_t EnvironmentValues.standardActionLockupStyle.setter(void *a1)
{
  sub_1E677AFF0(a1, v3);
  sub_1E677CE40();
  sub_1E68B20F0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*EnvironmentValues.standardActionLockupStyle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_1E677CE40();
  sub_1E68B20E0();
  return sub_1E677CF78;
}

void sub_1E677CF78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1E677AFF0(*a1, (v2 + 5));
    sub_1E677AFF0((v2 + 5), (v2 + 10));
    sub_1E68B20F0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_1E677AFF0(*a1, (v2 + 5));
    sub_1E68B20F0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

unint64_t sub_1E677D038()
{
  result = qword_1EE2EB680;
  if (!qword_1EE2EB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB680);
  }

  return result;
}

uint64_t LockupListItemStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1E68B2400();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E68B1EB0();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StandardActionLockupConfiguration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978F8, &qword_1E68B77C0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097900, &qword_1E68B77C8);
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v30 - v19;
  v21 = *v2;
  sub_1E677D4F0(a1, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  sub_1E677D554(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v38 = v21;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097908, &qword_1E68B77D0);
  sub_1E673F530(&qword_1EE2EA518, &qword_1ED097908, &qword_1E68B77D0, MEMORY[0x1E6981870]);
  sub_1E68B2C20();
  v16[*(v13 + 36)] = 0;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v24 = sub_1E677D71C();
  v25 = sub_1E677D800();
  v26 = v30;
  sub_1E68B2790();
  (*(v33 + 8))(v8, v26);
  sub_1E6744A10(v16, &qword_1ED0978F8, &qword_1E68B77C0);
  v27 = v34;
  sub_1E68B23F0();
  v40 = v13;
  v41 = v26;
  v42 = v24;
  v43 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_1E68B2920();
  (*(v35 + 8))(v27, v37);
  return (*(v31 + 8))(v20, v28);
}

uint64_t sub_1E677D4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardActionLockupConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E677D554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardActionLockupConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1E677D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E68B21D0();
  v12 = 1;
  sub_1E677D858(a1, v6);
  memcpy(__dst, __src, 0x2A9uLL);
  memcpy(v14, __src, 0x2A9uLL);
  sub_1E67612FC(__dst, v9, &qword_1ED097918, &qword_1E68B7868);
  sub_1E6744A10(v14, &qword_1ED097918, &qword_1E68B7868);
  memcpy(&v11[7], __dst, 0x2A9uLL);
  v7 = v12;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  return memcpy((a2 + 17), v11, 0x2B0uLL);
}

unint64_t sub_1E677D71C()
{
  result = qword_1EE2EA7A8;
  if (!qword_1EE2EA7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978F8, &qword_1E68B77C0);
    sub_1E673F530(&qword_1EE2EA530, &qword_1ED097910, &unk_1E68B77D8, MEMORY[0x1E697D680]);
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7A8);
  }

  return result;
}

unint64_t sub_1E677D800()
{
  result = qword_1EE2EA680;
  if (!qword_1EE2EA680)
  {
    sub_1E68B1EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA680);
  }

  return result;
}

void *sub_1E677D858(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2).n128_u64[0];
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v8 = sub_1E68B1DE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + *(type metadata accessor for StandardActionLockupConfiguration(0) + 32));
  v17[2] = v4;
  (*(v9 + 104))(v12, *MEMORY[0x1E697E6C0], v8);
  LOBYTE(v4) = sub_1E68B1DD0();
  (*(v9 + 8))(v12, v8);
  if (v4)
  {
    v14 = sub_1E68B2140();
    v22[0] = 0;
    sub_1E677E4A8(v13, sub_1E677EFC8);
    memcpy(v23, v27, 0x248uLL);
    memcpy(v24, v27, 0x248uLL);
    sub_1E67612FC(v23, v26, &qword_1ED097938, &qword_1E68B7888);
    sub_1E6744A10(v24, &qword_1ED097938, &qword_1E68B7888);
    memcpy(&v26[7], v23, 0x248uLL);
    v25[0] = v14;
    v25[1] = v5;
    LOBYTE(v25[2]) = v22[0];
    memcpy(&v25[2] + 1, v26, 0x24FuLL);
    v18 = v14;
    v19 = v5;
    v20 = v22[0];
    memcpy(v21, v26, 0x24FuLL);
    sub_1E67612FC(v25, v27, &qword_1ED097930, &qword_1E68B7880);
    sub_1E6744A10(&v18, &qword_1ED097930, &qword_1E68B7880);
    memcpy(v26, v25, 0x260uLL);
    sub_1E677EFDC(v26);
  }

  else
  {
    v15 = sub_1E68B21D0();
    v22[0] = 0;
    sub_1E677E834(v13, sub_1E677EFC8);
    memcpy(v23, v27, sizeof(v23));
    memcpy(v24, v27, sizeof(v24));
    sub_1E67612FC(v23, v26, &qword_1ED097920, &qword_1E68B7870);
    sub_1E6744A10(v24, &qword_1ED097920, &qword_1E68B7870);
    memcpy(&v26[7], v23, 0x290uLL);
    v25[0] = v15;
    v25[1] = 0x4024000000000000;
    LOBYTE(v25[2]) = v22[0];
    memcpy(&v25[2] + 1, v26, 0x297uLL);
    v18 = v15;
    v19 = 0x4024000000000000;
    v20 = v22[0];
    memcpy(v21, v26, sizeof(v21));
    sub_1E67612FC(v25, v27, &qword_1ED097928, &qword_1E68B7878);
    sub_1E6744A10(&v18, &qword_1ED097928, &qword_1E68B7878);
    memcpy(v26, v25, 0x2A8uLL);
    sub_1E677EFD0(v26);
  }

  memcpy(v22, v26, 0x2A9uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097930, &qword_1E68B7880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097928, &qword_1E68B7878);
  sub_1E673F530(&qword_1EE2EA520, &qword_1ED097930, &qword_1E68B7880, MEMORY[0x1E69817F8]);
  sub_1E673F530(&qword_1EE2EA500, &qword_1ED097928, &qword_1E68B7878, MEMORY[0x1E6981870]);
  sub_1E68B2210();
  memcpy(v22, v27, 0x2A9uLL);
  memcpy(v26, v27, 0x2A9uLL);
  sub_1E67612FC(v22, &v18, &qword_1ED097918, &qword_1E68B7868);
  sub_1E6744A10(v26, &qword_1ED097918, &qword_1E68B7868);
  return memcpy(v7, v22, 0x2A9uLL);
}

uint64_t sub_1E677DDC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E68B21D0();
  v33 = 0;
  sub_1E677E140(a1, __dst);
  v43 = *&__dst[128];
  v44 = *&__dst[144];
  v39 = *&__dst[64];
  v40 = *&__dst[80];
  v42 = *&__dst[112];
  v41 = *&__dst[96];
  v35 = *__dst;
  v36 = *&__dst[16];
  v38 = *&__dst[48];
  v37 = *&__dst[32];
  v46[8] = *&__dst[128];
  v46[9] = *&__dst[144];
  v46[4] = *&__dst[64];
  v46[5] = *&__dst[80];
  v46[6] = *&__dst[96];
  v46[7] = *&__dst[112];
  v46[0] = *__dst;
  v46[1] = *&__dst[16];
  v45 = __dst[160];
  v47 = __dst[160];
  v46[2] = *&__dst[32];
  v46[3] = *&__dst[48];
  sub_1E67612FC(&v35, v11, &qword_1ED097970, &unk_1E68B78C0);
  sub_1E6744A10(v46, &qword_1ED097970, &unk_1E68B78C0);
  *&v32[119] = v42;
  *&v32[135] = v43;
  *&v32[151] = v44;
  *&v32[55] = v38;
  *&v32[71] = v39;
  *&v32[87] = v40;
  *&v32[103] = v41;
  *&v32[7] = v35;
  *&v32[23] = v36;
  v32[167] = v45;
  *&v32[39] = v37;
  v5 = v33;
  sub_1E68B2E90();
  sub_1E68B1F30();
  *(&v34[6] + 7) = *&v34[21];
  *(&v34[8] + 7) = *&v34[23];
  *(&v34[10] + 7) = *&v34[25];
  *(&v34[12] + 7) = *&v34[27];
  *(v34 + 7) = *&v34[15];
  *(&v34[2] + 7) = *&v34[17];
  *(&v34[4] + 7) = *&v34[19];
  v6 = *(type metadata accessor for StandardActionLockupConfiguration(0) + 36);
  *(&__src[6] + 1) = *&v32[32];
  *(&__src[4] + 1) = *&v32[16];
  *(&__src[14] + 1) = *&v32[96];
  *(&__src[12] + 1) = *&v32[80];
  *(&__src[10] + 1) = *&v32[64];
  *(&__src[8] + 1) = *&v32[48];
  *(&__src[20] + 1) = *&v32[144];
  *(&__src[18] + 1) = *&v32[128];
  *(&__src[16] + 1) = *&v32[112];
  *(&__src[33] + 1) = *&v34[10];
  *(&__src[35] + 1) = *&v34[12];
  *(&__src[2] + 1) = *v32;
  *(&__src[31] + 1) = *&v34[8];
  *(&__src[23] + 1) = *v34;
  *(&__src[25] + 1) = *&v34[2];
  *(&__src[27] + 1) = *&v34[4];
  v7 = *(a1 + v6);
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = v5;
  *(&__src[22] + 1) = *&v32[160];
  __src[37] = *(&v34[13] + 7);
  *(&__src[29] + 1) = *&v34[6];
  LOBYTE(__src[38]) = 0;
  memcpy(__dst, __src, 0x131uLL);
  memcpy(a2, __dst, 0x138uLL);
  a2[39] = v7;

  sub_1E67612FC(__src, v11, &qword_1ED097978, &qword_1E68B9530);
  v20 = *&v32[112];
  v21 = *&v32[128];
  v22 = *&v32[144];
  v16 = *&v32[48];
  v17 = *&v32[64];
  v18 = *&v32[80];
  v19 = *&v32[96];
  v13 = *v32;
  v14 = *&v32[16];
  v15 = *&v32[32];
  v29 = *&v34[10];
  *v30 = *&v34[12];
  v28 = *&v34[8];
  v24 = *v34;
  v25 = *&v34[2];
  v26 = *&v34[4];
  v11[0] = v4;
  v11[1] = 0;
  v12 = v5;
  v23 = *&v32[160];
  *&v30[15] = *(&v34[13] + 7);
  v27 = *&v34[6];
  v31 = 0;
  return sub_1E6744A10(v11, &qword_1ED097978, &qword_1E68B9530);
}

uint64_t sub_1E677E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardActionLockupConfiguration(0);
  if (*(a1 + v4[5]))
  {
    v44 = *(a1 + v4[5]);
    v5 = sub_1E678E2C4(&v44);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v40 = v7;
    v41 = v5;
    v39 = v9 & 1;
    sub_1E673F26C(v5, v7, v9 & 1);
    v43 = v11;

    v42 = KeyPath;

    v38 = 2;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v43 = 0;
    v42 = 0;
    v38 = 0;
  }

  v44 = *(a1 + v4[6]);

  v13 = sub_1E678E2C4(&v44);
  v31 = v14;
  v32 = v13;
  v16 = v15;
  v33 = v17;

  v30 = swift_getKeyPath();
  if (*(a1 + v4[7]))
  {
    v44 = *(a1 + v4[7]);
    v18 = sub_1E678E2C4(&v44);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = swift_getKeyPath();
    v37 = v18;
    v35 = v20;
    v29 = v22 & 1;
    sub_1E673F26C(v18, v20, v22 & 1);
    v34 = v24;

    v26 = v25;

    v36 = 2;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v29 = 0;
    v26 = 0;
  }

  LOBYTE(v44) = v16 & 1;
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v41, v40, v39, v43, v42);
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v37, v35, v29, v34, v26);
  sub_1E677F034(v41, v40, v39, v43, v42);
  sub_1E677F034(v37, v35, v29, v34, v26);
  sub_1E673F0D4(v32, v31, v16 & 1);

  v27 = v44;
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39;
  *(a2 + 24) = v43;
  *(a2 + 32) = v42;
  *(a2 + 40) = v38;
  *(a2 + 48) = 0;
  *(a2 + 56) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v27;
  *(a2 + 80) = v33;
  *(a2 + 88) = v30;
  *(a2 + 96) = 2;
  *(a2 + 104) = 0;
  *(a2 + 112) = v37;
  *(a2 + 120) = v35;
  *(a2 + 128) = v29;
  *(a2 + 136) = v34;
  *(a2 + 144) = v26;
  *(a2 + 152) = v36;
  *(a2 + 160) = 0;
  sub_1E677F034(v37, v35, v29, v34, v26);
  sub_1E673F0D4(v32, v31, v16 & 1);

  return sub_1E677F034(v41, v40, v39, v43, v42);
}

uint64_t sub_1E677E4A8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E68B1A40();
  v9 = v8;
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v35[55] = v41;
  *&v35[71] = v42;
  *&v35[87] = v43;
  *&v35[103] = v44;
  *&v35[7] = v38;
  *&v35[23] = v39;
  v37 = 0;
  v36 = 0;
  *&v35[39] = v40;

  v3(__src, v10);
  sub_1E68B2E80();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1E68B1F30();
  memcpy(v33, __dst, 0x140uLL);
  memcpy(v24, __src, sizeof(v24));
  sub_1E67612FC(__dst, v31, &qword_1ED097940, &qword_1E68B7890);
  sub_1E6744A10(v24, &qword_1ED097940, &qword_1E68B7890);
  memcpy(v25, v33, sizeof(v25));
  memcpy(v26, v33, sizeof(v26));
  sub_1E67612FC(v25, v31, &qword_1ED097948, &qword_1E68B7898);
  sub_1E6744A10(v26, &qword_1ED097948, &qword_1E68B7898);
  memcpy(v31, v25, sizeof(v31));
  *&v27 = v5;
  *(&v27 + 1) = 0x3FFC71C71C71C71CLL;
  LOWORD(v28) = 0;
  *(&v28 + 1) = v9;
  v29[0] = 0;
  *&v29[1] = *v35;
  *&v29[17] = *&v35[16];
  *&v29[65] = *&v35[64];
  *&v29[81] = *&v35[80];
  *&v29[97] = *&v35[96];
  *&v29[112] = *&v35[111];
  *&v29[33] = *&v35[32];
  *&v29[49] = *&v35[48];
  v23[6] = *&v29[64];
  v23[7] = *&v29[80];
  v23[8] = *&v29[96];
  *&v23[9] = *&v35[111];
  v23[2] = *v29;
  v23[3] = *&v29[16];
  v23[4] = *&v29[32];
  v23[5] = *&v29[48];
  v23[0] = v27;
  v23[1] = v28;
  memcpy(v30, v25, sizeof(v30));
  memcpy(&v23[9] + 8, v25, 0x1B0uLL);
  memcpy(v7, v23, 0x248uLL);
  sub_1E67612FC(&v27, v12, &qword_1ED097950, &qword_1E68B78A0);
  sub_1E67612FC(v30, v12, &qword_1ED097948, &qword_1E68B7898);
  sub_1E6744A10(v31, &qword_1ED097948, &qword_1E68B7898);
  v14 = v9;
  v20 = *&v35[64];
  v21 = *&v35[80];
  v22[0] = *&v35[96];
  v16 = *v35;
  v17 = *&v35[16];
  v18 = *&v35[32];
  v12[0] = v5;
  v12[1] = 0x3FFC71C71C71C71CLL;
  v13 = 0;
  v15 = 0;
  *(v22 + 15) = *&v35[111];
  v19 = *&v35[48];
  return sub_1E6744A10(v12, &qword_1ED097950, &qword_1E68B78A0);
}

uint64_t sub_1E677E834(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2).n128_u64[0];
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v9 = v8;
  v10 = sub_1E68B2140();
  v34[0] = 0;
  sub_1E677ED08(v6, __dst);
  v49 = __dst[10];
  v50 = __dst[11];
  v51 = __dst[12];
  v45 = __dst[6];
  v46 = __dst[7];
  v48 = __dst[9];
  v47 = __dst[8];
  v41 = __dst[2];
  v42 = __dst[3];
  v44 = __dst[5];
  v43 = __dst[4];
  v40 = __dst[1];
  v39 = __dst[0];
  v52[10] = __dst[10];
  v52[11] = __dst[11];
  v53 = __dst[12];
  v52[6] = __dst[6];
  v52[7] = __dst[7];
  v52[9] = __dst[9];
  v52[8] = __dst[8];
  v52[2] = __dst[2];
  v52[3] = __dst[3];
  v52[5] = __dst[5];
  v52[4] = __dst[4];
  v52[1] = __dst[1];
  v52[0] = __dst[0];
  sub_1E67612FC(&v39, v35, &qword_1ED097958, &qword_1E68B78A8);
  v11 = sub_1E6744A10(v52, &qword_1ED097958, &qword_1E68B78A8);
  *&v38[151] = v48;
  *&v38[167] = v49;
  *&v38[183] = v50;
  *&v38[87] = v44;
  *&v38[103] = v45;
  *&v38[119] = v46;
  *&v38[135] = v47;
  *&v38[23] = v40;
  *&v38[39] = v41;
  *&v38[55] = v42;
  *&v38[71] = v43;
  v38[199] = v51;
  *&v38[7] = v39;
  v4(__src, v11);
  sub_1E68B2E80();
  memcpy(v54, __src, 0x140uLL);
  sub_1E68B1F30();
  memcpy(__dst, v54, 0x140uLL);
  memcpy(v29, __src, sizeof(v29));
  sub_1E67612FC(v54, v35, &qword_1ED097940, &qword_1E68B7890);
  sub_1E6744A10(v29, &qword_1ED097940, &qword_1E68B7890);
  memcpy(v30, __dst, sizeof(v30));
  memcpy(v31, __dst, sizeof(v31));
  sub_1E67612FC(v30, v35, &qword_1ED097948, &qword_1E68B7898);
  sub_1E6744A10(v31, &qword_1ED097948, &qword_1E68B7898);
  memcpy(v35, v30, sizeof(v35));
  *(&v33[9] + 1) = *&v38[144];
  *(&v33[10] + 1) = *&v38[160];
  *(&v33[11] + 1) = *&v38[176];
  *(&v33[5] + 1) = *&v38[80];
  *(&v33[6] + 1) = *&v38[96];
  *(&v33[7] + 1) = *&v38[112];
  *(&v33[8] + 1) = *&v38[128];
  *(&v33[1] + 1) = *&v38[16];
  *(&v33[2] + 1) = *&v38[32];
  *(&v33[3] + 1) = *&v38[48];
  *&v32 = v10;
  *(&v32 + 1) = v7;
  LOBYTE(v33[0]) = 0;
  *(&v33[12] + 1) = *&v38[192];
  *(&v33[4] + 1) = *&v38[64];
  *(v33 + 1) = *v38;
  v28[10] = v33[9];
  v28[11] = v33[10];
  v28[12] = v33[11];
  *(&v28[12] + 9) = *(&v33[11] + 9);
  v28[6] = v33[5];
  v28[7] = v33[6];
  v28[8] = v33[7];
  v28[9] = v33[8];
  v28[2] = v33[1];
  v28[3] = v33[2];
  v28[4] = v33[3];
  v28[5] = v33[4];
  v28[0] = v32;
  v28[1] = v33[0];
  memcpy(v34, v30, sizeof(v34));
  memcpy(&v28[14], v30, 0x1B0uLL);
  memcpy(v9, v28, 0x290uLL);
  sub_1E67612FC(&v32, v13, &qword_1ED097960, &unk_1E68B78B0);
  sub_1E67612FC(v34, v13, &qword_1ED097948, &qword_1E68B7898);
  sub_1E6744A10(v35, &qword_1ED097948, &qword_1E68B7898);
  v13[1] = v7;
  v24 = *&v38[144];
  v25 = *&v38[160];
  v26 = *&v38[176];
  v20 = *&v38[80];
  v21 = *&v38[96];
  v22 = *&v38[112];
  v23 = *&v38[128];
  v16 = *&v38[16];
  v17 = *&v38[32];
  v18 = *&v38[48];
  v19 = *&v38[64];
  v13[0] = v10;
  v14 = 0;
  v27 = *&v38[192];
  v15 = *v38;
  return sub_1E6744A10(v13, &qword_1ED097960, &unk_1E68B78B0);
}

void sub_1E677ED08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E68B1A40();
  v5 = v4;
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v14[55] = v18;
  *&v14[71] = v19;
  *&v14[87] = v20;
  *&v14[103] = v21;
  *&v14[7] = v15;
  *&v14[23] = v16;
  *&v14[39] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;

  v7 = sub_1E68B2510();
  *(inited + 32) = v7;
  v8 = sub_1E68B2520();
  *(inited + 33) = v8;
  v9 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v7)
  {
    v9 = sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v8)
  {
    v9 = sub_1E68B2540();
  }

  sub_1E68B1B30();
  *(a2 + 24) = v5;
  *(a2 + 97) = *&v14[64];
  *(a2 + 113) = *&v14[80];
  *(a2 + 129) = *&v14[96];
  *(a2 + 33) = *v14;
  *(a2 + 49) = *&v14[16];
  *(a2 + 65) = *&v14[32];
  *a2 = a1;
  *(a2 + 8) = 0x3FFC71C71C71C71CLL;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 144) = *(&v21 + 1);
  *(a2 + 81) = *&v14[48];
  *(a2 + 152) = v9;
  *(a2 + 160) = v10;
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = 0;
}

unint64_t sub_1E677EF3C(uint64_t a1)
{
  result = sub_1E677EF64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E677EF64()
{
  result = qword_1EE2EB688;
  if (!qword_1EE2EB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB688);
  }

  return result;
}

uint64_t sub_1E677EFE4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E673F26C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E677F034(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E673F0D4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1E677F088()
{
  qword_1EE2EB1F8 = &type metadata for DefaultVerticalStackStyle;
  result = sub_1E677F54C();
  qword_1EE2EB200 = result;
  return result;
}

uint64_t static StandardLockupStyleKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1E677AFF0(qword_1EE2EB1E0, a1);
}

uint64_t static StandardLockupStyleKey.defaultValue.setter(uint64_t *a1)
{
  if (qword_1EE2EB1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_1EE2EB1E0, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static StandardLockupStyleKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE2EB1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E677F258@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1E677AFF0(qword_1EE2EB1E0, a1);
}

uint64_t sub_1E677F2D8(uint64_t *a1)
{
  if (qword_1EE2EB1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_1EE2EB1E0, a1);
  return swift_endAccess();
}

uint64_t EnvironmentValues.standardLockupStyle.getter()
{
  sub_1E677B054();

  return sub_1E68B20E0();
}

uint64_t EnvironmentValues.standardLockupStyle.setter(void *a1)
{
  sub_1E677AFF0(a1, v3);
  sub_1E677B054();
  sub_1E68B20F0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*EnvironmentValues.standardLockupStyle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_1E677B054();
  sub_1E68B20E0();
  return sub_1E677F48C;
}

void sub_1E677F48C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1E677AFF0(*a1, (v2 + 5));
    sub_1E677AFF0((v2 + 5), (v2 + 10));
    sub_1E68B20F0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_1E677AFF0(*a1, (v2 + 5));
    sub_1E68B20F0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

unint64_t sub_1E677F54C()
{
  result = qword_1EE2EAF50;
  if (!qword_1EE2EAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAF50);
  }

  return result;
}

uint64_t sub_1E677F5E0(uint64_t a1)
{
  sub_1E677AFF0(a1, v3);
  sub_1E677AFF0(v3, &v2);
  sub_1E677CE40();
  sub_1E68B20F0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t StandardActionLockup.init<A, B, C>(caption:title:subtitle:onSelection:artwork:primaryAction:secondaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t)@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v18, v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = *v22;
  v25 = *v24;
  v27 = *v26;
  *a8 = swift_getKeyPath();
  *(a8 + 40) = 0;
  v28 = type metadata accessor for StandardActionLockup(0);
  v29 = v28[5];
  *(a8 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  v30 = swift_storeEnumTagMultiPayload();
  *(a8 + v28[6]) = v23;
  *(a8 + v28[7]) = v25;
  *(a8 + v28[8]) = v27;
  a5(v30);
  v31 = sub_1E68B2CF0();
  *(a8 + v28[10]) = v31;
  a7(v31, v32, v33);
  v34 = sub_1E68B2CF0();
  *(a8 + v28[11]) = v34;
  a10(v34, v35, v36);
  *(a8 + v28[12]) = sub_1E68B2CF0();
  v37 = (a8 + v28[9]);
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  *v37 = sub_1E673F5E0;
  v37[1] = result;
  return result;
}

uint64_t type metadata accessor for StandardActionLockup(uint64_t a1)
{
  result = qword_1EE2EB330;
  if (!qword_1EE2EB330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E677F8FC()
{
  v0 = type metadata accessor for StandardActionLockup(0);
  __swift_allocate_value_buffer(v0, qword_1EE2EB348);
  v1 = __swift_project_value_buffer(v0, qword_1EE2EB348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
  v2 = *(type metadata accessor for TextContent.Component(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E68B74F0;
  v5 = (v4 + v3);
  *v5 = 0x656C746954;
  v5[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E68B74F0;
  v7 = (v6 + v3);
  *v7 = 0x656C746974627553;
  v7[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *v1 = swift_getKeyPath();
  *(v1 + 40) = 0;
  v8 = v0[5];
  *(v1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  *(v1 + v0[6]) = 0;
  *(v1 + v0[7]) = v4;
  *(v1 + v0[8]) = v6;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_1E68B2B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097878, qword_1E68B7A50);
  sub_1E677AF8C();
  *(v1 + v0[10]) = sub_1E68B2CF0();
  *(v1 + v0[11]) = sub_1E68B2CF0();
  result = sub_1E68B2CF0();
  *(v1 + v0[12]) = result;
  v11 = (v1 + v0[9]);
  *v11 = nullsub_5;
  v11[1] = 0;
  return result;
}

uint64_t static StandardActionLockup.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB340 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StandardActionLockup(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE2EB348);

  return sub_1E677FE84(v3, a1);
}

uint64_t StandardActionLockup.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for StandardActionLockupConfiguration(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E677ABAC(v34);
  v30 = v35;
  v28 = v36;
  v32 = __swift_project_boxed_opaque_existential_1(v34, v35);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v29 = &v27 - v9;
  v10 = type metadata accessor for StandardActionLockup(0);
  sub_1E677A200(v7);
  v11 = v10[7];
  v27 = *(v1 + v10[6]);
  v12 = v27;
  v13 = *(v1 + v11);
  v14 = v10[9];
  v15 = *(v1 + v10[8]);
  v16 = *(v1 + v10[10]);
  v17 = *(v1 + v10[11]);
  v18 = *(v2 + v10[12]);
  v19 = *(v2 + v14);
  v20 = *(v2 + v14 + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  *&v7[v4[7]] = v12;
  *&v7[v4[8]] = v13;
  *&v7[v4[9]] = v15;
  *&v7[v4[10]] = v16;
  *&v7[v4[11]] = v17;
  *&v7[v4[12]] = v18;
  v22 = &v7[v4[13]];
  *v22 = sub_1E677FEE8;
  v22[1] = v21;
  v23 = v28;
  v24 = *(v28 + 32);

  v24(v7, v30, v23);
  sub_1E677FEF0(v7);
  swift_getAssociatedConformanceWitness();
  v25 = sub_1E68B2CF0();
  result = __swift_destroy_boxed_opaque_existential_1(v34);
  *v33 = v25;
  return result;
}

uint64_t sub_1E677FE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardActionLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E677FEF0(uint64_t a1)
{
  v2 = type metadata accessor for StandardActionLockupConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E677FF90(uint64_t a1)
{
  sub_1E677AB48(319, &qword_1EE2EA898, qword_1ED097980, &qword_1E68B7A38, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E674828C(319);
    if (v2 <= 0x3F)
    {
      sub_1E677AAF8();
      if (v3 <= 0x3F)
      {
        sub_1E677AB48(319, &qword_1EE2EBE70, &qword_1ED097858, &unk_1E68B7A40, type metadata accessor for AssumeEquatable);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E67800B8(uint64_t a1)
{
  result = sub_1E68B19E0();
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

uint64_t sub_1E6780184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataItemDescriptor(255, a2, a3, a4);
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_1E68B32E0();
  return a1;
}

uint64_t sub_1E6780254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for DataItemDescriptor(0, a2, a3, a5);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    swift_getTupleTypeMetadata2();

    v14 = *(AssociatedTypeWitness - 8);
    (*(v14 + 32))(a4, v12, AssociatedTypeWitness);
    return (*(v14 + 56))(a4, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_1E6780474()
{
  sub_1E67820BC();
}

uint64_t sub_1E678049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[11];
  v14[6] = a1;
  v14[7] = v7;
  type metadata accessor for DataItemDescriptor(255, *(v6 + 80), *(v6 + 88), a4);
  sub_1E68B33B0();
  v14[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1E68B3190();
  if (v8)
  {
    v4[11] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8, v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12);
    v14[2] = v4;
    v14[3] = a1;
    sub_1E67806D0(v13, sub_1E67823F8, v14, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1E6780798(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - v7;
  v9 = *(v4 + 80);
  v29 = *(v4 + 88);
  v30 = v9;
  v11 = type metadata accessor for ResolvedDataItemInterestRegistration(0, v9, v29, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v29 - v18);
  v21 = v2[8];
  v20 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v21);
  (*(v20 + 48))(a1, v21, v20);
  v22 = v19[1];
  *&v31 = *v19;
  *(&v31 + 1) = v22;

  sub_1E6780C40(&v31);

  if (v2[4])
  {

    sub_1E68B34F0();
  }

  v23 = sub_1E68B3460();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  (*(v12 + 16))(v15, v19, v11);
  v24 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v29;
  *(v25 + 4) = v30;
  *(v25 + 5) = v26;
  (*(v12 + 32))(&v25[v24], v15, v11);
  *&v25[(v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v2;

  v27 = sub_1E67814AC(0, 0, v8, &unk_1E68B7BF0, v25);
  sub_1E67826B4(v8);
  (*(v12 + 8))(v19, v11);
  v2[4] = v27;
}

char *sub_1E6780ABC()
{
  if (*(v0 + 32))
  {

    sub_1E68B34F0();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  v1 = qword_1EE2EA930;
  v2 = sub_1E68B19E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E6780B7C()
{
  sub_1E6780ABC();

  return swift_deallocClassInstance();
}

uint64_t sub_1E6780BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E6780C40(__int128 *a1)
{
  v3 = *v1;
  v18 = sub_1E67820BC();
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  v17 = *a1;
  v5 = type metadata accessor for DataItemDescriptor(255, v15, v16, v4);
  v6 = sub_1E68B33B0();

  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E6840A10(sub_1E6782954, &v14, v6, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  return sub_1E678049C(v9, v10, v11, v12);
}

uint64_t sub_1E6780D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = *a5;
  v7 = *(*a5 + 80);
  v5[16] = v7;
  v8 = *(v6 + 88);
  v5[17] = v8;
  type metadata accessor for DataItemResolution(255, v7, v8, a4);
  v9 = sub_1E68B34D0();
  v5[18] = v9;
  v10 = sub_1E68B3900();
  v5[19] = v10;
  WitnessTable = swift_getWitnessTable();
  v5[20] = WitnessTable;
  v12 = sub_1E67828FC();
  v5[21] = v12;
  v5[2] = v9;
  v5[3] = v10;
  v5[4] = WitnessTable;
  v5[5] = v12;
  v13 = sub_1E68B1AA0();
  v5[22] = v13;
  v5[23] = *(v13 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6780EC0, 0, 0);
}

uint64_t sub_1E6780EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedDataItemInterestRegistration(0, *(v4 + 128), *(v4 + 136), a4);
  sub_1E68B3540();
  *(v4 + 96) = sub_1E68B1A80();
  v5 = swift_task_alloc();
  *(v4 + 200) = v5;
  v6 = *(v4 + 160);
  *(v4 + 48) = *(v4 + 144);
  *(v4 + 64) = v6;
  v7 = sub_1E68B1A90();
  WitnessTable = swift_getWitnessTable();
  *v5 = v4;
  v5[1] = sub_1E6781018;

  return MEMORY[0x1EEE6D8E0](v4 + 80, 0, 0, v7, WitnessTable);
}

uint64_t sub_1E6781018()
{
  *(*v1 + 208) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E678112C, 0, 0);
  }

  return result;
}

uint64_t sub_1E678112C()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[27] = v2;
  v0[28] = v1;
  if (!v2)
  {
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];

    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v3 = v0[26];
  sub_1E68B3500();
  v0[29] = v3;
  if (v3)
  {
    v5 = v0[23];
    v4 = v0[24];
    v6 = v0[22];
    sub_1E673C814(v2, v1);

    (*(v5 + 8))(v4, v6);
    MEMORY[0x1E6952810](v3);
LABEL_5:

    v10 = v0[1];

    return v10();
  }

  swift_weakInit();
  sub_1E68B3430();
  v0[30] = sub_1E68B3420();
  v13 = sub_1E68B3400();

  return MEMORY[0x1EEE6DFA0](sub_1E67812AC, v13, v12);
}

uint64_t sub_1E67812AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  sub_1E678141C(v2, v3, (v0 + 248));
  if (v1)
  {
    v6 = v0 + 216;
    v5 = *(v0 + 216);
    v4 = *(v6 + 8);
    MEMORY[0x1E6952810](v1);

    return sub_1E673C814(v5, v4);
  }

  else
  {
    sub_1E673C814(*(v0 + 216), *(v0 + 224));
    swift_weakDestroy();
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    v9 = *(v0 + 160);
    *(v0 + 48) = *(v0 + 144);
    *(v0 + 64) = v9;
    v10 = sub_1E68B1A90();
    WitnessTable = swift_getWitnessTable();
    *v8 = v0;
    v8[1] = sub_1E6781018;

    return MEMORY[0x1EEE6D8E0](v0 + 80, 0, 0, v10, WitnessTable);
  }
}

uint64_t sub_1E678141C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v8 = result;
  if (result)
  {
    *&v9 = a2;
    *(&v9 + 1) = a3;
    sub_1E6780C40(&v9);
  }

  *a4 = v8 == 0;
  return result;
}

uint64_t sub_1E67814AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1E678271C(a3, v26 - v11);
  v13 = sub_1E68B3460();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E67826B4(v12);
  }

  else
  {
    sub_1E68B3450();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E68B3400();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E68B31C0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E678174C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v50 = a3;
  v51 = a2;
  v52 = a1;
  v9 = sub_1E68B3750();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v20 = &v45 - v19;
  v22 = type metadata accessor for DataItemDescriptor(0, a4, a5, v21);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v45 - v25;
  (*(v27 + 16))(&v45 - v25, v52, v22, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = a6;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29 = *&v26[*(TupleTypeMetadata2 + 48)];
    v45 = TupleTypeMetadata2;
    v46 = v29;
    (*(v53 + 32))(v20, v26, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_1E68B3110();
    if ((*(v13 + 48))(v12, 1, a4) == 1)
    {
      v30 = v46;
      (*(v48 + 8))(v12, v49);
      v32 = v52;
      v31 = v53;
      (*(v53 + 16))(v52, v20, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A20, &qword_1E68B7C18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E68B74F0;
      v34 = sub_1E68B35E0();
      *(inited + 32) = (v34 & 1) == 0;

      if (v34)
      {
        v35 = sub_1E6792EB8(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1E6792EB8((v36 > 1), v37 + 1, 1, v35);
        }

        v39 = v30;
        *(v35 + 2) = v38;
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
        v39 = v30;
      }

      v42 = *(v45 + 48);
      v43 = sub_1E678233C(v35, v39);

      (*(v31 + 8))(v20, AssociatedTypeWitness);
      *&v32[v42] = v43;
    }

    else
    {
      (*(v53 + 8))(v20, AssociatedTypeWitness);

      v40 = *(v13 + 32);
      v41 = v47;
      v40(v47, v12, a4);
      v40(v52, v41, a4);
    }
  }

  else
  {
    (*(v13 + 32))(a6, v26, a4);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6781C68(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1E68B33B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A08, &qword_1E68B7BA8);
  swift_getWitnessTable();
  sub_1E6781E68();
  sub_1E68B3180();
  sub_1E68B3790();
  swift_getWitnessTable();
  sub_1E68B36D0();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v2 = sub_1E68B3640();
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  (*(v4 + 24))(v2, v3, v4);
}

unint64_t sub_1E6781E68()
{
  result = qword_1EE2EA420;
  if (!qword_1EE2EA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A08, &qword_1E68B7BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA420);
  }

  return result;
}

uint64_t sub_1E6781ECC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6781FC4;

  return v6(a1);
}

uint64_t sub_1E6781FC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E67820BC()
{
  KeyPath = swift_getKeyPath();
  sub_1E6780640(KeyPath);

  return *(v0 + 88);
}

uint64_t *sub_1E6782130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v5[4] = 0;
  sub_1E68B19D0();
  v5[9] = a5;
  v5[10] = a2;
  v5[8] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 5);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v5[11] = a1;
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);

  v5[2] = sub_1E6780184(v15, v13, v14, v16);
  v5[3] = v17;
  swift_getAssociatedTypeWitness();
  sub_1E68B33B0();
  swift_getAssociatedConformanceWitness();

  swift_getWitnessTable();
  v18 = sub_1E68B3640();
  sub_1E6780798(v18);

  return v5;
}

uint64_t sub_1E678233C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i; --i)
  {
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](0);
    v4 = sub_1E68B3BB0() & ~(-1 << *(a2 + 32));
    if (((*(a2 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1E687662C(v4, isUniquelyReferenced_nonNull_native);
    }
  }

  return a2;
}

uint64_t sub_1E67823F8()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
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

uint64_t sub_1E6782498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for ResolvedDataItemInterestRegistration(0, v4[4], v4[5], a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E67825C0;

  return sub_1E6780D5C(a1, v10, v11, v4 + v9, v12);
}

uint64_t sub_1E67825C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E67826B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E678271C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E678278C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return sub_1E6781ECC(a1, v4);
}

uint64_t sub_1E6782844(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E67825C0;

  return sub_1E6781ECC(a1, v4);
}

unint64_t sub_1E67828FC()
{
  result = qword_1EE2EA428;
  if (!qword_1EE2EA428)
  {
    sub_1E68B3900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA428);
  }

  return result;
}

uint64_t DataItemError.hashValue.getter()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6782A10()
{
  result = qword_1ED097A28;
  if (!qword_1ED097A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097A28);
  }

  return result;
}

uint64_t View.standardActionLockupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1E68B27B0();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1E6782B50()
{
  result = qword_1EE2EA5C0;
  if (!qword_1EE2EA5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED097A30, &qword_1E68B7D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5C0);
  }

  return result;
}

uint64_t sub_1E6782BB4@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_1E68B3490();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t NullDataItemResolver.registerResolvedItemInterest(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v20 = a3;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for DataItemResolution(255, v3, v4, a2);
  v19 = sub_1E68B3490();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v6);
  v8 = &v19 - v7;
  v9 = sub_1E68B34D0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v14 = sub_1E68B3350();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1E678307C(v14, AssociatedTypeWitness, v3, AssociatedConformanceWitness);

  v17 = sub_1E68B3020();
  DataItemResolution.init(resolved:failed:)(v16, v17, &v24);
  v23 = v24;
  v21 = v3;
  v22 = v4;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v19);
  sub_1E68B34E0();
  return sub_1E67FCC14(&v23, v12, v3, v4, v20);
}

unint64_t sub_1E6782E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B3130();

  return sub_1E6782EF4(a1, v6, a2, a3);
}

unint64_t sub_1E6782EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1E68B3190();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1E678307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_1E68B3380())
  {
    sub_1E68B3950();
    v14 = sub_1E68B3940();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E68B3380();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1E68B3370())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E68B3840();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E6782E98(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1E67833D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a1;
  v94 = a2;
  v92 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v82 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v80 - v9;
  v88 = sub_1E68B1950();
  v91 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v10);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v86 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v80 - v17;
  v89 = a3;
  v85 = a4;
  State = type metadata accessor for DataItemResolver.FetchState(0, a3, a4, v18);
  v20 = *(State - 8);
  MEMORY[0x1EEE9AC00](State, v21);
  v23 = (&v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v80 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v80 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = *(TupleTypeMetadata2 - 8);
  v38 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v37);
  v40 = &v80 - v39;
  v42 = (&v80 + *(v41 + 48) - v39);
  v87 = v20;
  v43 = *(v20 + 16);
  v43(&v80 - v39, v93, State, v38);
  (v43)(v42, v94, State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (v43)(v35, v40, State);
      v45 = swift_getEnumCaseMultiPayload();
      v46 = v88;
      if (!v45)
      {
        v76 = v91;
        v77 = v81;
        (*(v91 + 32))(v81, v42, v88);
        v50 = sub_1E68B1930();
        v78 = *(v76 + 8);
        v78(v77, v46);
        v78(v35, v46);
        v65 = v87;
        goto LABEL_18;
      }

      (*(v91 + 8))(v35, v88);
      goto LABEL_17;
    }

    (v43)(v31, v40, State);
    v55 = v88;
    v54 = v89;
    v56 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v84;
      (*(v92 + 32))(v84, v42, v54);
      v58 = *(v91 + 32);
      v58(v86, &v31[v56], v55);
      v59 = v42 + v56;
      v60 = v57;
      v61 = v83;
      v58(v83, v59, v55);
      v62 = v92;
      v63 = sub_1E68B3190();
      v51 = *(v62 + 8);
      v51(v31, v54);
      if ((v63 & 1) == 0)
      {
        v79 = *(v91 + 8);
        v79(v61, v55);
        v79(v86, v55);
        v51(v60, v54);
        v50 = 0;
        v65 = v87;
        goto LABEL_18;
      }

      v50 = sub_1E68B1930();
      v64 = *(v91 + 8);
      v64(v61, v55);
      v64(v86, v55);
      v52 = v84;
      v53 = v54;
      goto LABEL_11;
    }

    (*(v91 + 8))(&v31[v56], v55);
    (*(v92 + 8))(v31, v54);
LABEL_17:
    v50 = 0;
    v65 = v90;
    State = TupleTypeMetadata2;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 2)
  {
    (v43)(v23, v40, State);
    v66 = *v23;
    v67 = v23[1];
    v69 = v23[2];
    v68 = v23[3];
    v70 = v23[4];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v72 = *v42;
      v71 = v42[1];
      v73 = v42[3];
      v93 = v42[2];
      v94 = v71;
      v92 = v73;
      v74 = v42[4];
      v96[0] = v66;
      v96[1] = v67;
      v96[2] = v69;
      v96[3] = v68;
      v96[4] = v70;
      v95[0] = v72;
      v95[1] = v71;
      v95[2] = v93;
      v95[3] = v73;
      v95[4] = v74;
      v50 = _s15FitnessCanvasUI23DataItemResolutionErrorO2eeoiySbAC_ACtFZ_0(v96, v95);
      sub_1E678A228(v72, v94, v93, v92, v74);
      sub_1E678A228(v66, v67, v69, v68, v70);
      v65 = v87;
      goto LABEL_18;
    }

    sub_1E678A228(v66, v67, v69, v68, v70);
    goto LABEL_17;
  }

  (v43)(v27, v40, State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v92 + 8))(v27, v89);
    goto LABEL_17;
  }

  v47 = v92;
  v48 = v82;
  v49 = v89;
  (*(v92 + 32))(v82, v42, v89);
  v50 = sub_1E68B3190();
  v51 = *(v47 + 8);
  v51(v48, v49);
  v52 = v27;
  v53 = v49;
LABEL_11:
  v51(v52, v53);
  v65 = v87;
LABEL_18:
  (*(v65 + 8))(v40, State);
  return v50 & 1;
}

uint64_t DataItemResolver.__allocating_init(batchFetch:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DataItemResolver.init(batchFetch:)(a1, a2);
  return v4;
}

void *DataItemResolver.init(batchFetch:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_defaultActor_initialize();
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  State = type metadata accessor for DataItemResolver.FetchState(255, v8, v7, v10);
  swift_getTupleTypeMetadata2();
  v12 = sub_1E68B3350();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_1E678307C(v12, AssociatedTypeWitness, State, AssociatedConformanceWitness);

  v3[14] = v14;
  type metadata accessor for DataItemResolutionPublisher(0, v8, v7, v15);
  v17[0] = 0;
  v17[1] = 0;
  v3[15] = sub_1E673AAA0(v17);
  v3[16] = a1;
  v3[17] = a2;
  return v3;
}

uint64_t sub_1E6783D58(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v3 = sub_1E68B1AE0();
  __swift_project_value_buffer(v3, qword_1EE2F8440);

  v4 = sub_1E68B1AC0();
  v5 = sub_1E68B3740();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2080;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v8 = sub_1E68B3550();
    v10 = v9;

    v11 = sub_1E683B478(v8, v10, v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1E6725000, v4, v5, "Invalidating %{mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6952A70](v7, -1, -1);
    MEMORY[0x1E6952A70](v6, -1, -1);
  }

  else
  {
  }

  v12 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for DataItemResolver.FetchState(0, v14, v15, v16);
  swift_getAssociatedConformanceWitness();

  v17 = sub_1E68B30A0();
  sub_1E6784248(v17);
}

BOOL sub_1E6784060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  State = type metadata accessor for DataItemResolver.FetchState(255, a4, a5, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v14);
  v17 = v19 - v16;
  (*(*(AssociatedTypeWitness - 8) + 16))(v19 - v16, a1, AssociatedTypeWitness, v15);
  (*(*(State - 8) + 16))(&v17[*(TupleTypeMetadata2 + 48)], a2, State);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = sub_1E68B35E0();
  (*(v13 + 8))(v17, TupleTypeMetadata2);
  return (a2 & 1) == 0;
}

uint64_t sub_1E6784248(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v1[14] = a1;

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for DataItemResolver.FetchState(0, v4, v5, v6);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1E68B3030();
  sub_1E68B30E0();
  swift_getWitnessTable();
  *&v14 = sub_1E68B32E0();
  sub_1E68B33B0();
  swift_getWitnessTable();
  v8 = sub_1E68B3640();
  DataItemResolution.init(resolved:failed:)(v7, v8, &v14);
  v13 = v14;
  sub_1E673AC38(&v13, v9, v10, v11);
}

uint64_t sub_1E6784478(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v3[24] = *v2;
  v4 = sub_1E68B1950();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E678457C, v2, 0);
}

uint64_t sub_1E678457C()
{
  v26 = v0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[22];
  v5 = sub_1E68B1AE0();
  v0[30] = __swift_project_value_buffer(v5, qword_1EE2F8440);
  v6 = *(v3 + 16);
  v0[31] = v6;
  v0[32] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  swift_bridgeObjectRetain_n();
  v7 = sub_1E68B1AC0();
  v8 = sub_1E68B3740();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v12 = v0[25];
  v11 = v0[26];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 136315394;
    sub_1E678A670();
    v14 = sub_1E68B3AD0();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1E683B478(v14, v16, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v19 = sub_1E68B35B0();

    *(v13 + 14) = v19;

    _os_log_impl(&dword_1E6725000, v7, v8, "Batch fetching (%s for %ld identifiers", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E6952A70](v23, -1, -1);
    MEMORY[0x1E6952A70](v13, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[33] = v17;
  v24 = (*(v0[23] + 128) + **(v0[23] + 128));
  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_1E67848E0;
  v21 = v0[21];

  return v24(v21);
}

uint64_t sub_1E67848E0(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[23];
  if (v1)
  {
    v6 = sub_1E67850F8;
  }

  else
  {
    v4[36] = a1;
    v6 = sub_1E6784A1C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6784A1C()
{
  v44 = v0;
  v39 = v0[31];
  v1 = v0[24];
  v37 = v0[28];
  v38 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v0[14] = v0[36];
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for DataItemResolver.FetchState(0, v4, v5, v6);
  swift_getAssociatedConformanceWitness();
  v0[15] = sub_1E68B3010();
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v41 = v5;
  v40 = v4;
  sub_1E68B3630();
  sub_1E68B30E0();
  swift_getWitnessTable();
  sub_1E68B32F0();

  v8 = v0[13];
  nullsub_5();
  v0[17] = v9;
  sub_1E68B3050();

  swift_getWitnessTable();
  sub_1E68B3640();
  v10 = sub_1E68B3560();

  v0[18] = v10;
  v0[19] = v8;
  v11 = swift_task_alloc();
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  sub_1E68B3630();

  swift_getWitnessTable();
  sub_1E68B32F0();

  v39(v37, v3, v38);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v12 = sub_1E68B1AC0();
  v13 = sub_1E68B3720();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[33];
    v15 = v0[28];
    v16 = v0[25];
    v17 = v0[23];
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43[0] = v42;
    *v18 = 136316162;
    v0[20] = v17;
    v19 = sub_1E68B31B0();
    v21 = sub_1E683B478(v19, v20, v43);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_1E678A670();
    v22 = sub_1E68B3AD0();
    v24 = v23;
    v14(v15, v16);
    v25 = sub_1E683B478(v22, v24, v43);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2048;
    v26 = sub_1E68B3060();

    *(v18 + 24) = v26;

    *(v18 + 32) = 2048;
    v27 = sub_1E68B3060();

    *(v18 + 34) = v27;

    *(v18 + 42) = 2048;
    v28 = sub_1E68B35B0();

    *(v18 + 44) = v28;

    _os_log_impl(&dword_1E6725000, v12, v13, "%s Batch fetched (%s) %ld + %ld / %ld", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E6952A70](v42, -1, -1);
    MEMORY[0x1E6952A70](v18, -1, -1);
  }

  else
  {
    v29 = v0[33];
    v30 = v0[28];
    v31 = v0[25];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v29(v30, v31);
  }

  swift_beginAccess();
  v32 = swift_task_alloc();
  *(v32 + 16) = v40;
  *(v32 + 24) = v41;

  sub_1E68B30C0();

  v33 = swift_task_alloc();
  *(v33 + 16) = v40;
  *(v33 + 24) = v41;
  v34 = sub_1E68B30C0();

  v35 = v0[1];

  return v35(v34);
}

uint64_t sub_1E67850F8()
{
  v45 = v0;
  v1 = *(v0 + 280);
  (*(v0 + 248))(*(v0 + 216), *(v0 + 176), *(v0 + 200));
  swift_bridgeObjectRetain_n();

  MEMORY[0x1E6952820](v1);
  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3720();

  MEMORY[0x1E6952810](v1);
  if (os_log_type_enabled(v2, v3))
  {
    log = *(v0 + 264);
    v43 = v3;
    v4 = *(v0 + 216);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    v41 = *(v0 + 280);
    v8 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44[0] = v42;
    *v8 = 136316162;
    *(v0 + 88) = v7;
    v9 = sub_1E68B31B0();
    v11 = sub_1E683B478(v9, v10, v44);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_1E678A670();
    v12 = sub_1E68B3AD0();
    v14 = v13;
    (log)(v4, v5);
    v15 = sub_1E683B478(v12, v14, v44);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2080;
    loga = v2;
    v16 = *(v6 + 80);
    v17 = *(v6 + 88);
    swift_getAssociatedTypeWitness();
    v18 = v16;
    swift_getAssociatedConformanceWitness();
    v19 = sub_1E68B3550();
    v21 = v20;
    swift_bridgeObjectRelease_n();
    v22 = sub_1E683B478(v19, v21, v44);

    *(v8 + 34) = v22;
    *(v8 + 42) = 2082;
    *(v0 + 96) = v41;
    MEMORY[0x1E6952820]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0, &unk_1E68B7F50);
    v23 = sub_1E68B31B0();
    v25 = sub_1E683B478(v23, v24, v44);

    *(v8 + 44) = v25;
    _os_log_impl(&dword_1E6725000, loga, v43, "%s Failed batch fetch (%s) for %{mask.hash}s: %{public}s", v8, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E6952A70](v42, -1, -1);
    MEMORY[0x1E6952A70](v8, -1, -1);
  }

  else
  {
    v27 = *(v0 + 264);
    v28 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    swift_bridgeObjectRelease_n();

    v27(v28, v29);
    v17 = *(v30 + 88);
    v18 = *(v30 + 80);
    swift_getAssociatedTypeWitness();
  }

  v31 = *(v0 + 280);
  v32 = *(v0 + 176);
  v33 = *(v0 + 184);
  *(v0 + 72) = *(v0 + 168);
  type metadata accessor for DataItemResolver.FetchState(0, v18, v17, v26);
  swift_getAssociatedConformanceWitness();
  *(v0 + 80) = sub_1E68B3010();
  v34 = swift_task_alloc();
  v34[2] = v33;
  v34[3] = v32;
  v34[4] = v31;
  sub_1E68B3630();
  sub_1E68B30E0();
  swift_getWitnessTable();
  sub_1E68B32F0();

  swift_beginAccess();
  v35 = swift_task_alloc();
  *(v35 + 16) = v18;
  *(v35 + 24) = v17;

  v36 = sub_1E68B30C0();
  MEMORY[0x1E6952810](v31);

  v37 = *(v0 + 8);

  return v37(v36);
}

uint64_t sub_1E678565C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v41 = a1;
  v5 = *(*a3 + 80);
  State = type metadata accessor for DataItemResolver.FetchState(255, v5, *(*a3 + 88), a4);
  v7 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v38 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v38[1] = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v38 - v20;
  v22 = sub_1E68B1950();
  v43 = *(v22 - 8);
  v44 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v42 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_1E68B3830();
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B3110();
  swift_endAccess();
  (*(v15 + 8))(v21, AssociatedTypeWitness);
  v26 = *(State - 8);
  result = (*(v26 + 48))(v13, 1, State);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      return (*(v26 + 8))(v13, State);
    }

    else
    {
      v38[0] = AssociatedConformanceWitness;
      if (EnumCaseMultiPayload)
      {
        v31 = v44;
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v30 = v42;
        v29 = v43;
        (*(v43 + 32))(v42, &v13[*(TupleTypeMetadata2 + 48)], v31);
        (*(*(v5 - 8) + 8))(v13, v5);
      }

      else
      {
        v30 = v42;
        v29 = v43;
        v31 = v44;
        (*(v43 + 32))(v42, v13, v44);
      }

      v33 = sub_1E68B1930();
      v34 = v30;
      v35 = v33;
      result = (*(v29 + 8))(v34, v31);
      if (v35)
      {
        v36 = v40;
        sub_1E68B3830();
        v37 = v39;
        (*(*(v5 - 8) + 16))(v39, v36, v5);
        swift_storeEnumTagMultiPayload();
        (*(v26 + 56))(v37, 0, 1, State);
        sub_1E68B30E0();
        return sub_1E68B3120();
      }
    }
  }

  return result;
}

uint64_t sub_1E6785B2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v43 = a1;
  v5 = *(*a3 + 80);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v39 - v6;
  v8 = *(v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v44 = &v39 - v11;
  v47 = sub_1E68B1950();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  State = type metadata accessor for DataItemResolver.FetchState(255, v5, v8, v18);
  v20 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v42 = a2;
  sub_1E68B3110();
  swift_endAccess();
  v28 = *(State - 8);
  result = (*(v28 + 48))(v27, 1, State);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      return (*(v28 + 8))(v27, State);
    }

    else if (EnumCaseMultiPayload)
    {
      v33 = v47;
      v34 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v46 + 32))(v48, v27, v5);
      v35 = &v27[v34];
      v36 = v33;
      v37 = v40;
      (*(v49 + 32))(v40, v35, v36);
      if (sub_1E68B1930())
      {
        (*(v41 + 16))(v44, v42, AssociatedTypeWitness);
        v38 = v46;
        (*(v46 + 16))(v23, v48, v5);
        swift_storeEnumTagMultiPayload();
        (*(v28 + 56))(v23, 0, 1, State);
        sub_1E68B30E0();
        sub_1E68B3120();
        (*(v49 + 8))(v37, v36);
        return (*(v38 + 8))(v48, v5);
      }

      else
      {
        (*(v49 + 8))(v37, v36);
        return (*(v46 + 8))(v48, v5);
      }
    }

    else
    {
      v31 = v49;
      v32 = v47;
      (*(v49 + 32))(v17, v27, v47);
      if (sub_1E68B1930())
      {
        (*(v41 + 16))(v44, v42, AssociatedTypeWitness);
        *v23 = 0u;
        *(v23 + 1) = 0u;
        *(v23 + 4) = 0;
        swift_storeEnumTagMultiPayload();
        (*(v28 + 56))(v23, 0, 1, State);
        sub_1E68B30E0();
        sub_1E68B3120();
      }

      return (*(v31 + 8))(v17, v32);
    }
  }

  return result;
}

uint64_t sub_1E6786100(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v55 = a5;
  v62 = a4;
  v59 = a1;
  v6 = *(*a3 + 80);
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v63 = &v55 - v7;
  v9 = *(v8 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v61 = &v55 - v12;
  v13 = sub_1E68B1950();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v55 - v20;
  State = type metadata accessor for DataItemResolver.FetchState(255, v6, v9, v21);
  v23 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v57 = (&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = a2;
  sub_1E68B3110();
  swift_endAccess();
  v32 = *(State - 8);
  result = (*(v32 + 48))(v29, 1, State);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      return (*(v32 + 8))(v29, State);
    }

    else if (EnumCaseMultiPayload)
    {
      v55 = AssociatedConformanceWitness;
      v52 = v64;
      v60 = *(swift_getTupleTypeMetadata2() + 48);
      v53 = v58;
      (*(v58 + 32))(v63, v29, v6);
      (*(v65 + 32))(v17, &v60[v29], v52);
      if (sub_1E68B1930())
      {
        (*(v56 + 16))(v61, v31, AssociatedTypeWitness);
        v54 = v57;
        (*(v53 + 16))(v57, v63, v6);
        swift_storeEnumTagMultiPayload();
        (*(v32 + 56))(v54, 0, 1, State);
        sub_1E68B30E0();
        sub_1E68B3120();
      }

      (*(v65 + 8))(v17, v52);
      return (*(v53 + 8))(v63, v6);
    }

    else
    {
      v35 = v65;
      v36 = v60;
      v37 = v29;
      v38 = v64;
      (*(v65 + 32))(v60, v37, v64);
      if (sub_1E68B1930())
      {
        (*(v56 + 16))(v61, a2, AssociatedTypeWitness);
        v39 = sub_1E68B18E0();
        v40 = [v39 domain];

        v41 = sub_1E68B31A0();
        v62 = v42;
        v63 = v41;

        v43 = sub_1E68B18E0();
        v44 = [v43 code];

        v45 = sub_1E68B18E0();
        v46 = [v45 localizedDescription];

        v47 = sub_1E68B31A0();
        v49 = v48;

        v50 = v57;
        v51 = v62;
        *v57 = v63;
        v50[1] = v51;
        v50[2] = v44;
        v50[3] = v47;
        v50[4] = v49;
        swift_storeEnumTagMultiPayload();
        (*(v32 + 56))(v50, 0, 1, State);
        sub_1E68B30E0();
        sub_1E68B3120();
        return (*(v65 + 8))(v60, v64);
      }

      else
      {
        return (*(v35 + 8))(v36, v38);
      }
    }
  }

  return result;
}

uint64_t sub_1E67867A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v48 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = v43 - v6;
  v45 = sub_1E68B1950();
  v50 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v46 = v8;
  v47 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v43 - v11;
  v51 = *(v3 + 88);
  v12 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v44 = v12;
  swift_getAssociatedConformanceWitness();

  v13 = sub_1E68B35C0();
  v43[1] = 0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v14 = sub_1E68B1AE0();
  __swift_project_value_buffer(v14, qword_1EE2F8440);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v15 = sub_1E68B1AC0();
  v16 = sub_1E68B3740();

  v17 = v13;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v54[0] = v43[0];
    *v18 = 136315650;
    v55 = v2;
    v19 = sub_1E68B31B0();
    v21 = sub_1E683B478(v19, v20, v54);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    v22 = sub_1E68B35B0();

    *(v18 + 14) = v22;

    *(v18 + 22) = 2048;
    v23 = sub_1E68B35B0();

    *(v18 + 24) = v23;

    _os_log_impl(&dword_1E6725000, v15, v16, "%s Refreshable: %ld/%ld", v18, 0x20u);
    v24 = v43[0];
    __swift_destroy_boxed_opaque_existential_1(v43[0]);
    MEMORY[0x1E6952A70](v24, -1, -1);
    MEMORY[0x1E6952A70](v18, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  if (sub_1E68B35D0())
  {
  }

  v26 = v52;
  sub_1E68B1940();
  v54[3] = v17;
  v27 = swift_beginAccess();
  v53 = v2[14];
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = v44;
  v30 = v51;
  v43[-4] = v44;
  v43[-3] = v30;
  v43[-2] = v26;
  sub_1E68B3630();
  type metadata accessor for DataItemResolver.FetchState(255, v29, v30, v31);
  sub_1E68B30E0();

  swift_getWitnessTable();
  v43[0] = v17;
  sub_1E68B32F0();
  v2[14] = v55;

  v32 = sub_1E68B3460();
  v33 = v49;
  (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  v34 = v50;
  v35 = v47;
  v36 = v52;
  v37 = v45;
  (*(v50 + 16))(v47, v52, v45);
  WitnessTable = swift_getWitnessTable();
  v39 = (*(v34 + 80) + 64) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v2;
  *(v40 + 3) = WitnessTable;
  v41 = v51;
  *(v40 + 4) = v29;
  *(v40 + 5) = v41;
  v42 = v43[0];
  *(v40 + 6) = v2;
  *(v40 + 7) = v42;
  (*(v34 + 32))(&v40[v39], v35, v37);
  swift_retain_n();
  sub_1E67877E0(0, 0, v33, &unk_1E68B7F40, v40);

  return (*(v34 + 8))(v36, v37);
}

BOOL sub_1E6786DFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 80);
  State = type metadata accessor for DataItemResolver.FetchState(255, v4, *(*a2 + 88), a4);
  v6 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3110();
  swift_endAccess();
  v10 = *(State - 8);
  v11 = (*(v10 + 48))(v9, 1, State);
  if (v11 != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      (*(v10 + 8))(v9, State);
    }

    else if (EnumCaseMultiPayload)
    {
      v14 = sub_1E68B1950();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v14 - 8) + 8))(&v9[*(TupleTypeMetadata2 + 48)], v14);
      (*(*(v4 - 8) + 8))(v9, v4);
    }

    else
    {
      v13 = sub_1E68B1950();
      (*(*(v13 - 8) + 8))(v9, v13);
    }
  }

  return v11 != 1;
}

uint64_t sub_1E67870A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v38 - v11;
  State = type metadata accessor for DataItemResolver.FetchState(255, a4, a5, v13);
  v15 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v41 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v45;
  v42 = AssociatedConformanceWitness;
  sub_1E68B3110();
  v28 = *(State - 8);
  if ((*(v28 + 48))(v22, 1, State) == 1)
  {
    goto LABEL_11;
  }

  v39 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v28 + 8))(v22, State);
      goto LABEL_10;
    }

    v31 = *(v40 + 32);
    v40 = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v31(v41, v22, a4);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = sub_1E68B1950();
      (*(*(v30 - 8) + 8))(v22, v30);
LABEL_10:
      v27 = v45;
      v18 = v39;
LABEL_11:
      (*(v9 + 16))(v12, v27, AssociatedTypeWitness);
      v36 = sub_1E68B1950();
      (*(*(v36 - 8) + 16))(v18, v43, v36);
      v35 = v18;
      goto LABEL_12;
    }

    v32 = sub_1E68B1950();
    v38 = *(swift_getTupleTypeMetadata2() + 48);
    v31 = *(v40 + 32);
    v40 = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v31(v41, v22, a4);
    (*(*(v32 - 8) + 8))(&v22[v38], v32);
  }

  (*(v9 + 16))(v12, v45, AssociatedTypeWitness);
  v33 = sub_1E68B1950();
  v34 = *(swift_getTupleTypeMetadata2() + 48);
  v35 = v39;
  v31(v39, v41, a4);
  (*(*(v33 - 8) + 16))(&v35[v34], v43, v33);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  (*(v28 + 56))(v35, 0, 1, State);
  sub_1E68B30E0();
  return sub_1E68B3120();
}