uint64_t sub_227EB3618(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227F2B114();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_227EB36C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_227F2B114();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227EB3768@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_227EB37E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Schedule(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_227EB392C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v13 = type metadata accessor for Schedule(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_227EB3A64()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E3D0, &unk_227F2DDD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB3A94()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E3D8, &qword_227F2DDE8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB3AC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227EB3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DownloadOutcome(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_227EB3BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DownloadOutcome(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_227EB3C5C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_227EB3D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227F2B574();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB3E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227F2B574();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB3F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227EB3FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227F2B114();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227EB4098(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227EB4104(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227EB4174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ContainerizableURL(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_227EB4304(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for ContainerizableURL(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_227EB4488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ResourceInfo(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB4584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ResourceInfo(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB46AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 32);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  v18 = v17 <= 0;
  if (v17 < 0)
  {
    v17 = -1;
  }

  if (v18)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_227EB4834(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 32) = (a2 + 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_227EB49AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227F2B234();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB4A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227F2B234();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB4BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227EB4C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227EB4C94()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4CC4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4CF4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4D34()
{
  v1 = (type metadata accessor for Configuration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_227F2B114();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_227F2B574();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227EB4E54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227EB4E8C()
{
  v1 = *(type metadata accessor for DirectoryCleaner(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  swift_unknownObjectRelease();
  v6 = sub_227F2B114();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v2 | 7);
}

uint64_t sub_227EB4F94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery22SanitizedStateSnapshotV8FileInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_227EB5018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB5050()
{
  v1 = sub_227F2B274();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 32) & ~v23;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for RRDRequest(0) - 8);
  v21 = *(v5 + 80);
  v6 = (v4 + v21 + 8) & ~v21;
  v20 = *(v5 + 64);
  v22 = sub_227F2B4C4();
  v7 = *(v22 - 8);
  v18 = *(v7 + 80);
  v17 = *(v7 + 64);
  v19 = sub_227F2B334();
  v8 = *(v19 - 8);
  v9 = *(v8 + 80);
  v16 = *(v8 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_227F2B114();
    (*(*(v12 - 8) + 8))(v0 + v6, v12);
    if (*(v0 + v6 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20) + 8))
    {
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = sub_227F2B114();
    (*(*(v11 - 8) + 8))(v0 + v6, v11);
  }

  v13 = (v6 + v20 + v18) & ~v18;
  v14 = (v13 + v17 + v9) & ~v9;
  (*(v7 + 8))(v0 + v13, v22);
  (*(v8 + 8))(v0 + v14, v19);

  return MEMORY[0x2821FE8E8](v0, ((v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v21 | v18 | v9 | 7);
}

uint64_t sub_227EB5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_227EB5464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227F2B114();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_227EB5520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227EB5598(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_227EB564C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F188, &qword_227F329A8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB5680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB56B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB56F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227EB5728()
{
  v1 = sub_227F2B114();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for Manifest(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v11(v0 + v8 + v6[8], v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_227EB58D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227EB593C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_227F2B234();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_227EB5A34(void *a1)
{
  v2 = sub_227F2B644();
  v3 = sub_227F2B644();
  [a1 setObject:v2 forKey:v3];

  v4 = sub_227F2B644();
  v5 = sub_227F2B644();
  [a1 setObject:v4 forKey:v5];

  v6 = sub_227F2B644();
  v7 = sub_227F2B644();
  [a1 setObject:v6 forKey:v7];
}

id sub_227EB5B58(uint64_t a1, void *a2)
{
  v23 = a2;
  v20[2] = a1;
  v3 = sub_227F2AFF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B114();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v25 = v2[1];
  v26 = v25;
  v13 = *(v4 + 104);
  v13(v6, *MEMORY[0x277CC91C0], v3);
  v20[1] = sub_227EB84D8();

  sub_227F2B0F4();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_227EB80AC(&v26);
  v24 = *v2;
  v25 = v24;
  v13(v6, *MEMORY[0x277CC91D8], v3);

  sub_227F2B0F4();
  v14(v6, v3);
  sub_227EB80AC(&v25);
  v15 = v22;
  v16 = *(v21 + 8);
  v16(v10, v22);
  sub_227F2B0A4();
  v16(v12, v15);
  v17 = sub_227F2B644();

  v18 = [v23 fileExistsAtPath_];

  return v18;
}

uint64_t sub_227EB5E30()
{
  v1 = v0;
  sub_227F2B9A4();

  MEMORY[0x22AAAC3E0](*v1, v1[1]);
  MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F337C0);
  MEMORY[0x22AAAC3E0](v1[2], v1[3]);
  MEMORY[0x22AAAC3E0](0x747365676964202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AAAC3E0](v1[4], v1[5]);
  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return 0x6D614E656C696628;
}

void sub_227EB5F0C(void *a1@<X8>)
{
  sub_227EB820C(*v1, &v22);
  v4 = *(&v22 + 1);
  v3 = v22;
  v6 = *(&v23 + 1);
  v5 = v23;
  v8 = *(&v24 + 1);
  v7 = v24;
  if (*(&v22 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v9 = *(type metadata accessor for ClientCache(0) + 24);
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_227EB5B58(v1 + v9, v10);

    if ((v11 & 1) == 0)
    {
      if (qword_27D80DF38 != -1)
      {
        swift_once();
      }

      v12 = sub_227F2B334();
      __swift_project_value_buffer(v12, qword_27D81B1F8);
      v28 = v25;
      v29 = v26;
      v30[0] = v27;
      sub_227EB8050(&v28, v21);
      sub_227EB8050(&v29, v21);
      sub_227EB8050(v30, v21);
      v13 = sub_227F2B304();
      v14 = sub_227F2B8E4();
      sub_227EB80AC(&v28);
      sub_227EB80AC(&v29);
      sub_227EB80AC(v30);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21[0] = v16;
        *v15 = 136315138;
        v17 = sub_227EB5E30();
        v19 = v18;
        sub_227EB80AC(&v28);
        sub_227EB80AC(&v29);
        sub_227EB80AC(v30);
        v20 = sub_227ECAC40(v17, v19, v21);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_227EB2000, v13, v14, "Cache coherence error: %s not found", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AAAD240](v16, -1, -1);
        MEMORY[0x22AAAD240](v15, -1, -1);
      }

      else
      {
        sub_227EB80AC(&v28);
        sub_227EB80AC(&v29);
        sub_227EB80AC(v30);
      }

      sub_227EB6198();
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

void sub_227EB6198()
{
  v1 = *v0;
  v2 = sub_227F2B644();
  [v1 removeObjectForKey_];

  v3 = sub_227F2B644();
  [v1 removeObjectForKey_];

  v4 = sub_227F2B644();
  [v1 removeObjectForKey_];
}

void sub_227EB6278(__int128 *a1)
{
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v3 = sub_227F2B334();
  __swift_project_value_buffer(v3, qword_27D81B1F8);
  v4 = *a1;
  v14 = a1[1];
  v15 = v4;
  v13 = a1[2];
  sub_227EB8050(&v15, v12);
  sub_227EB8050(&v14, v12);
  sub_227EB8050(&v13, v12);
  v5 = sub_227F2B304();
  v6 = sub_227F2B8D4();
  sub_227EB80AC(&v15);
  sub_227EB80AC(&v14);
  sub_227EB80AC(&v13);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = sub_227EB5E30();
    v11 = sub_227ECAC40(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_227EB2000, v5, v6, "Caching new entry: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAAD240](v8, -1, -1);
    MEMORY[0x22AAAD240](v7, -1, -1);
  }

  sub_227EB5A34(*v1);
}

void sub_227EB6420()
{
  v200[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for ClientCache(0);
  MEMORY[0x28223BE20](v0);
  v197 = (&v159 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v2 - 8);
  v173 = &v159 - v3;
  v4 = sub_227F2B234();
  v199 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v159 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v159 - v11;
  v182 = sub_227F2AFA4();
  v198 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v174 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v159 - v15;
  v17 = sub_227F2B114();
  v196 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v159 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v184 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v159 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v167 = &v159 - v29;
  MEMORY[0x28223BE20](v28);
  v191 = &v159 - v30;
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v178 = v23;
  v188 = v20;
  v181 = v12;
  v175 = v4;
  v31 = sub_227F2B334();
  v195 = __swift_project_value_buffer(v31, qword_27D81B1F8);
  v32 = sub_227F2B304();
  v33 = sub_227F2B8D4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_227EB2000, v32, v33, "Pruning client cache", v34, 2u);
    MEMORY[0x22AAAD240](v34, -1, -1);
  }

  v35 = v189[1];
  v36 = sub_227F2B044();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  v37 = swift_allocObject();
  v179 = xmmword_227F2C980;
  *(v37 + 16) = xmmword_227F2C980;
  v38 = *MEMORY[0x277CBE7C0];
  *(v37 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v39 = v38;
  v40 = sub_227F2B794();

  v200[0] = 0;
  v166 = v35;
  v41 = [v35 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:v40 options:0 error:v200];

  v42 = v200[0];
  if (v41)
  {
    v172 = v9;
    v164 = v7;
    v43 = sub_227F2B7A4();
    v44 = v42;

    v46 = v43;
    v47 = *(v43 + 16);
    if (v47)
    {
      v187 = 0;
      v48 = *(v196 + 16);
      v49 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v163 = v46;
      v50 = (v46 + v49);
      v192 = *(v196 + 72);
      v186 = "apidResourceDelivery.digest";
      v194 = (v196 + 8);
      v177 = *MEMORY[0x277CBE7A8];
      v176 = (v198 + 56);
      v171 = (v198 + 32);
      v170 = (v199 + 6);
      v165 = (v199 + 4);
      v168 = (v199 + 1);
      v169 = (v198 + 8);
      v162 = (v199 + 2);
      *&v45 = 136315138;
      v185 = v45;
      *&v45 = 136315394;
      v161 = v45;
      v193 = v17;
      v190 = v16;
      v196 += 16;
      v197 = v48;
      v51 = v191;
      (v48)(v191, v46 + v49, v17);
      while (1)
      {
        v53 = sub_227F2B024();
        v55 = v54;
        sub_227F2B244();
        v56 = sub_227F2B274();
        if ((*(*(v56 - 8) + 48))(v16, 1, v56) == 1)
        {
          v199 = v50;

          sub_227EB8430(v16, &qword_27D80DFF8, &qword_227F31260);
          v57 = v51;
          v58 = v188;
          (v48)(v188, v57, v17);
          v59 = sub_227F2B304();
          v60 = sub_227F2B8D4();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v200[0] = v62;
            *v61 = v185;
            sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v63 = sub_227F2BC24();
            v65 = v64;
            v198 = v47;
            v66 = *v194;
            (*v194)(v58, v193);
            v67 = sub_227ECAC40(v63, v65, v200);
            v17 = v193;

            *(v61 + 4) = v67;
            _os_log_impl(&dword_227EB2000, v59, v60, "Skipping %s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v62);
            MEMORY[0x22AAAD240](v62, -1, -1);
            v68 = v61;
            v16 = v190;
            MEMORY[0x22AAAD240](v68, -1, -1);

            v66(v57, v17);
            v48 = v197;
            v47 = v198;
          }

          else
          {

            v52 = *v194;
            (*v194)(v58, v17);
            v52(v57, v17);
          }

          v51 = v57;
          v50 = v199;
        }

        else
        {
          sub_227EB8430(v16, &qword_27D80DFF8, &qword_227F31260);
          v69 = *v189;
          v70 = sub_227F2B644();
          v71 = [v69 stringForKey_];

          v198 = v47;
          if (v71)
          {
            v72 = sub_227F2B674();
            v74 = v73;

            if (v53 == v72 && v55 == v74)
            {

LABEL_26:
              v77 = v178;
              v85 = v191;
              (v197)(v178, v191, v17);
              v86 = sub_227F2B304();
              v87 = sub_227F2B8E4();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v200[0] = v89;
                *v88 = v185;
                sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v90 = sub_227F2BC24();
                v92 = v91;
                v199 = v50;
                v93 = *v194;
                (*v194)(v77, v193);
                v94 = sub_227ECAC40(v90, v92, v200);
                v17 = v193;

                *(v88 + 4) = v94;
                v95 = v87;
                v96 = v86;
                v97 = "Skip pruning current cached subfolder %s";
                goto LABEL_32;
              }

LABEL_33:

              v106 = *v194;
              (*v194)(v77, v17);
              v106(v85, v17);
LABEL_34:
              v16 = v190;
              v51 = v85;
              v48 = v197;
              v47 = v198;
              goto LABEL_10;
            }

            v76 = sub_227F2BC64();

            v77 = v184;
            v78 = v183;
            if (v76)
            {
              goto LABEL_26;
            }
          }

          else
          {

            v77 = v184;
            v78 = v183;
          }

          inited = swift_initStackObject();
          *(inited + 16) = v179;
          v80 = v177;
          *(inited + 32) = v177;
          v81 = v80;
          sub_227F2AA7C(inited);
          swift_setDeallocating();
          sub_227EB83D0(inited + 32, type metadata accessor for URLResourceKey);
          v82 = v181;
          v83 = v187;
          sub_227F2B014();
          v84 = v182;
          if (v83)
          {

            (*v176)(v82, 1, 1, v84);
            sub_227EB8430(v82, &qword_27D80DFF0, &unk_227F2C9C0);
            v187 = 0;
LABEL_30:
            v85 = v191;
            (v197)(v77, v191, v17);
            v86 = sub_227F2B304();
            v101 = sub_227F2B8E4();
            if (!os_log_type_enabled(v86, v101))
            {
              goto LABEL_33;
            }

            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v200[0] = v89;
            *v88 = v185;
            sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v102 = sub_227F2BC24();
            v104 = v103;
            v199 = v50;
            v93 = *v194;
            (*v194)(v77, v193);
            v105 = sub_227ECAC40(v102, v104, v200);
            v17 = v193;

            *(v88 + 4) = v105;
            v95 = v101;
            v96 = v86;
            v97 = "Couldn't determine creation date of %s";
LABEL_32:
            _os_log_impl(&dword_227EB2000, v96, v95, v97, v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x22AAAD240](v89, -1, -1);
            MEMORY[0x22AAAD240](v88, -1, -1);

            v93(v85, v17);
            v50 = v199;
            goto LABEL_34;
          }

          v187 = 0;

          (*v176)(v82, 0, 1, v84);
          v98 = v174;
          (*v171)(v174, v82, v84);
          v99 = v173;
          sub_227F2AF54();
          v100 = v175;
          if ((*v170)(v99, 1, v175) == 1)
          {
            (*v169)(v98, v84);
            sub_227EB8430(v99, &unk_27D80E3B0, &unk_227F2DB00);
            goto LABEL_30;
          }

          v107 = v172;
          (*v165)(v172, v99, v100);
          sub_227F2B1E4();
          if (v108 >= -86400.0)
          {
            v51 = v191;
            v48 = v197;
            (v197)(v78, v191, v17);
            v128 = sub_227F2B304();
            v129 = sub_227F2B8D4();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v160 = v130;
              v199 = swift_slowAlloc();
              v200[0] = v199;
              *v130 = v185;
              sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v131 = sub_227F2BC24();
              v133 = v132;
              v134 = *v194;
              v51 = v191;
              (*v194)(v78, v193);
              v135 = sub_227ECAC40(v131, v133, v200);

              v136 = v160;
              *(v160 + 1) = v135;
              v137 = v129;
              v138 = v136;
              _os_log_impl(&dword_227EB2000, v128, v137, "Leaving %s in place in case it's being used", v136, 0xCu);
              v139 = v199;
              __swift_destroy_boxed_opaque_existential_0(v199);
              MEMORY[0x22AAAD240](v139, -1, -1);
              MEMORY[0x22AAAD240](v138, -1, -1);

              (*v168)(v172, v175);
              (*v169)(v174, v182);
              v134(v51, v193);
              v17 = v193;
            }

            else
            {

              v144 = *v194;
              (*v194)(v78, v17);
              (*v168)(v172, v175);
              (*v169)(v174, v84);
              v144(v51, v17);
            }

            v16 = v190;
          }

          else
          {
            v109 = v167;
            v48 = v197;
            (v197)(v167, v191, v17);
            v110 = v164;
            (*v162)(v164, v107, v100);
            v111 = sub_227F2B304();
            v112 = sub_227F2B8D4();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              v200[0] = v199;
              *v113 = v161;
              sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              LODWORD(v160) = v112;
              v114 = sub_227F2BC24();
              v159 = v111;
              v115 = v114;
              v117 = v116;
              v118 = *v194;
              (*v194)(v109, v17);
              v119 = sub_227ECAC40(v115, v117, v200);

              *(v113 + 4) = v119;
              *(v113 + 12) = 2080;
              sub_227EB8490(&unk_27D80E010, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v120 = sub_227F2BC24();
              v122 = v121;
              v123 = *v168;
              (*v168)(v110, v175);
              v124 = sub_227ECAC40(v120, v122, v200);

              *(v113 + 14) = v124;
              v125 = v159;
              _os_log_impl(&dword_227EB2000, v159, v160, "Removing %s, last accessed %s", v113, 0x16u);
              v126 = v199;
              swift_arrayDestroy();
              MEMORY[0x22AAAD240](v126, -1, -1);
              v127 = v113;
              v100 = v175;
              MEMORY[0x22AAAD240](v127, -1, -1);
            }

            else
            {

              v140 = v17;
              v123 = *v168;
              (*v168)(v110, v100);
              v118 = *v194;
              (*v194)(v109, v140);
            }

            v51 = v191;
            v141 = sub_227F2B044();
            v200[0] = 0;
            v142 = [v166 removeItemAtURL:v141 error:v200];

            v16 = v190;
            if (v142)
            {
              v143 = v200[0];
            }

            else
            {
              v145 = v200[0];
              v146 = sub_227F2AFC4();

              swift_willThrow();
              v48 = v197;

              v187 = 0;
            }

            v147 = v174;
            v123(v172, v100);
            (*v169)(v147, v182);
            v17 = v193;
            v118(v51, v193);
          }
        }

LABEL_10:
        v50 = (v50 + v192);
        if (!--v47)
        {
          break;
        }

        (v48)(v51, v50, v17);
      }
    }
  }

  else
  {
    v148 = v200[0];
    v149 = sub_227F2AFC4();

    swift_willThrow();
    v150 = v197;
    sub_227EB81A8(v189, v197);
    v151 = sub_227F2B304();
    v152 = sub_227F2B8E4();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v200[0] = v154;
      *v153 = 136315138;
      sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v155 = sub_227F2BC24();
      v157 = v156;
      sub_227EB83D0(v150, type metadata accessor for ClientCache);
      v158 = sub_227ECAC40(v155, v157, v200);

      *(v153 + 4) = v158;
      _os_log_impl(&dword_227EB2000, v151, v152, "Couldn't list subfolders of %s", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v154);
      MEMORY[0x22AAAD240](v154, -1, -1);
      MEMORY[0x22AAAD240](v153, -1, -1);
    }

    else
    {

      sub_227EB83D0(v150, type metadata accessor for ClientCache);
    }
  }
}

uint64_t type metadata accessor for ClientCache(uint64_t a1)
{
  result = qword_27D80DFC8;
  if (!qword_27D80DFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EB7B14(uint64_t a1)
{
  result = sub_227EB7BD0(319, &qword_27D80DFD8, 0x277CBEBD0);
  if (v2 <= 0x3F)
  {
    result = sub_227EB7BD0(319, &unk_27D80DFE0, 0x277CCAA00);
    if (v3 <= 0x3F)
    {
      result = sub_227F2B114();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_227EB7BD0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_227EB7C20(uint64_t a1, id *a2)
{
  result = sub_227F2B654();
  *a2 = 0;
  return result;
}

uint64_t sub_227EB7C98(uint64_t a1, id *a2)
{
  v3 = sub_227F2B664();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227EB7D18@<X0>(uint64_t *a2@<X8>)
{
  sub_227F2B674();
  v3 = sub_227F2B644();

  *a2 = v3;
  return result;
}

uint64_t sub_227EB7D5C()
{
  v0 = sub_227F2B674();
  v1 = MEMORY[0x22AAAC420](v0);

  return v1;
}

uint64_t sub_227EB7D98(uint64_t a1)
{
  sub_227F2B674();
  sub_227F2B704();
}

uint64_t sub_227EB7DEC(uint64_t a1)
{
  sub_227F2B674();
  sub_227F2BD14();
  sub_227F2B704();
  v1 = sub_227F2BD44();

  return v1;
}

uint64_t sub_227EB7E60(void *a1, uint64_t *a2)
{
  v2 = sub_227F2B674();
  v4 = v3;
  if (v2 == sub_227F2B674() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_227F2BC64();
  }

  return v7 & 1;
}

uint64_t sub_227EB7EE8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_227F2B644();

  *a2 = v3;
  return result;
}

uint64_t sub_227EB7F30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227F2B674();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227EB7F5C(uint64_t a1)
{
  v2 = sub_227EB8490(&qword_27D80E048, type metadata accessor for URLResourceKey, &unk_227F2CB38);
  v3 = sub_227EB8490(&unk_27D80E050, type metadata accessor for URLResourceKey, &unk_227F2CAD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_227EB81A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_227EB820C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227F2B644();
  v5 = [a1 stringForKey_];

  if (!v5)
  {

    v6 = 0;
    v8 = 0;
    v10 = 0;
    v16 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v6 = sub_227F2B674();
  v8 = v7;

  v9 = sub_227F2B644();
  v10 = [a1 stringForKey_];

  if (!v10)
  {

    v6 = 0;
    v8 = 0;
LABEL_8:
    v16 = 0;
    v11 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v11 = sub_227F2B674();
  v5 = v12;

  v13 = sub_227F2B644();
  v14 = [a1 stringForKey_];

  if (!v14)
  {

    v6 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v10 = sub_227F2B674();
  v16 = v15;

LABEL_9:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v16;
  a2[4] = v11;
  a2[5] = v5;
}

uint64_t sub_227EB83D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EB8430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227EB8490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227EB84D8()
{
  result = qword_2813CD560;
  if (!qword_2813CD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CD560);
  }

  return result;
}

uint64_t sub_227EB853C(uint64_t a1, int a2)
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

uint64_t sub_227EB855C(uint64_t result, int a2, int a3)
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

void sub_227EB8598(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_227EB86D8(uint64_t a1)
{
  v2 = sub_227EBFB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8714(uint64_t a1)
{
  v2 = sub_227EBFB58();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227EB8750(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x4F49656C6966;
    v7 = 0x676E69646F63;
    if (a1 != 10)
    {
      v7 = 0x45786F62646E6173;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4D676E697373696DLL;
    v9 = 0x44676E697373696DLL;
    if (a1 != 7)
    {
      v9 = 0x4E73657461647075;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69796C7265646E75;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C616E7265746E69;
    if (a1 != 1)
    {
      v4 = 0x5264696C61766E69;
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
}

uint64_t sub_227EB891C()
{
  v1 = *v0;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v1);
  return sub_227F2BD44();
}

uint64_t sub_227EB8964(uint64_t a1)
{
  v2 = *v1;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v2);
  return sub_227F2BD44();
}

uint64_t sub_227EB89B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EC0E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EB89E4(uint64_t a1)
{
  v2 = sub_227EBFAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8A20(uint64_t a1)
{
  v2 = sub_227EBFAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8A5C(uint64_t a1)
{
  v2 = sub_227EBFBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8A98(uint64_t a1)
{
  v2 = sub_227EBFBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8AD4(uint64_t a1)
{
  v2 = sub_227EBFE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8B10(uint64_t a1)
{
  v2 = sub_227EBFE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8B4C(uint64_t a1)
{
  v2 = sub_227EBFDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8B88(uint64_t a1)
{
  v2 = sub_227EBFDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8BC4(uint64_t a1)
{
  v2 = sub_227EBFC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8C00(uint64_t a1)
{
  v2 = sub_227EBFC54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8C3C(uint64_t a1)
{
  v2 = sub_227EBFCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8C78(uint64_t a1)
{
  v2 = sub_227EBFCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8CC8(uint64_t a1)
{
  v2 = sub_227EBFD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8D04(uint64_t a1)
{
  v2 = sub_227EBFD50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8D40(uint64_t a1)
{
  v2 = sub_227EBFDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8D7C(uint64_t a1)
{
  v2 = sub_227EBFDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8DB8(uint64_t a1)
{
  v2 = sub_227EBFB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8DF4(uint64_t a1)
{
  v2 = sub_227EBFB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_227F2BC64();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_227EB8EB0(uint64_t a1)
{
  v2 = sub_227EBFEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8EEC(uint64_t a1)
{
  v2 = sub_227EBFEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8F28(uint64_t a1)
{
  v2 = sub_227EBFCFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8F64(uint64_t a1)
{
  v2 = sub_227EBFCFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8FA0(uint64_t a1)
{
  v2 = sub_227EBFC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8FDC(uint64_t a1)
{
  v2 = sub_227EBFC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRDServiceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0C0, &qword_227F2CC20);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0C8, &qword_227F2CC28);
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0D0, &qword_227F2CC30);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0D8, &qword_227F2CC38);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v50 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0E0, &qword_227F2CC40);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v50 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0E8, &qword_227F2CC48);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0F0, &qword_227F2CC50);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0F8, &qword_227F2CC58);
  v82 = *(v14 - 8);
  v83 = v14;
  MEMORY[0x28223BE20](v14);
  v81 = &v50 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E100, &qword_227F2CC60);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v50 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E108, &qword_227F2CC68);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E110, &qword_227F2CC70);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E118, &qword_227F2CC78);
  v80 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E120, &qword_227F2CC80);
  v23 = *(v22 - 8);
  v85 = v22;
  v86 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EBFAB0();
  v84 = v25;
  sub_227F2BD94();
  if (v28)
  {
    if (v28 == 1)
    {
      v93 = 4;
      sub_227EBFD50();
      v29 = v81;
      v31 = v84;
      v30 = v85;
      sub_227F2BB84();
      v32 = v83;
      sub_227F2BBD4();
      (*(v82 + 8))(v29, v32);
      return (*(v86 + 8))(v31, v30);
    }

    if (v26 <= 4)
    {
      if (v26 <= 1)
      {
        if (v26 | v27)
        {
          v90 = 2;
          sub_227EBFDF8();
          v49 = v53;
          v38 = v84;
          v37 = v85;
          sub_227F2BB84();
          v39 = *(v54 + 8);
          v40 = v49;
          v41 = &v87;
        }

        else
        {
          v89 = 1;
          sub_227EBFE4C();
          v45 = v50;
          v38 = v84;
          v37 = v85;
          sub_227F2BB84();
          v39 = *(v51 + 8);
          v40 = v45;
          v41 = &v84;
        }
      }

      else if (v26 ^ 2 | v27)
      {
        if (v26 ^ 3 | v27)
        {
          v95 = 6;
          sub_227EBFCA8();
          v48 = v62;
          v38 = v84;
          v37 = v85;
          sub_227F2BB84();
          v39 = *(v63 + 8);
          v40 = v48;
          v41 = &v102;
        }

        else
        {
          v94 = 5;
          sub_227EBFCFC();
          v36 = v59;
          v38 = v84;
          v37 = v85;
          sub_227F2BB84();
          v39 = *(v60 + 8);
          v40 = v36;
          v41 = &v101;
        }
      }

      else
      {
        v91 = 3;
        sub_227EBFDA4();
        v47 = v56;
        v38 = v84;
        v37 = v85;
        sub_227F2BB84();
        v39 = *(v57 + 8);
        v40 = v47;
        v41 = &v92;
      }

      goto LABEL_24;
    }

    if (v26 <= 6)
    {
      if (!(v26 ^ 5 | v27))
      {
        v96 = 7;
        sub_227EBFC54();
        v46 = v65;
        v38 = v84;
        v37 = v85;
        sub_227F2BB84();
        v39 = *(v66 + 8);
        v40 = v46;
        v41 = &v103;
LABEL_24:
        v43 = *(v41 - 32);
LABEL_27:
        v39(v40, v43);
        return (*(v86 + 8))(v38, v37);
      }

      v97 = 8;
      sub_227EBFC00();
      v42 = v68;
      v38 = v84;
      v37 = v85;
      sub_227F2BB84();
      v44 = v69;
      v43 = v70;
    }

    else if (v26 ^ 7 | v27)
    {
      if (v26 ^ 8 | v27)
      {
        v100 = 11;
        sub_227EBFB04();
        v42 = v77;
        v38 = v84;
        v37 = v85;
        sub_227F2BB84();
        v44 = v78;
        v43 = v79;
      }

      else
      {
        v99 = 10;
        sub_227EBFB58();
        v42 = v74;
        v38 = v84;
        v37 = v85;
        sub_227F2BB84();
        v44 = v75;
        v43 = v76;
      }
    }

    else
    {
      v98 = 9;
      sub_227EBFBAC();
      v42 = v71;
      v38 = v84;
      v37 = v85;
      sub_227F2BB84();
      v44 = v72;
      v43 = v73;
    }

    v39 = *(v44 + 8);
    v40 = v42;
    goto LABEL_27;
  }

  v88 = 0;
  sub_227EBFEA0();
  v34 = v84;
  v35 = v85;
  sub_227F2BB84();
  sub_227F2BBD4();
  (*(v80 + 8))(v21, v19);
  return (*(v86 + 8))(v34, v35);
}

uint64_t RRDServiceError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E190, &qword_227F2CC88);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E198, &qword_227F2CC90);
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v101 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1A0, &qword_227F2CC98);
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x28223BE20](v7);
  v98 = &v69 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1A8, &qword_227F2CCA0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v100 = &v69 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1B0, &qword_227F2CCA8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v99 = &v69 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1B8, &qword_227F2CCB0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v105 = &v69 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1C0, &qword_227F2CCB8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v97 = &v69 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1C8, &qword_227F2CCC0);
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v104 = &v69 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1D0, &qword_227F2CCC8);
  v80 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v103 = &v69 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1D8, &qword_227F2CCD0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v96 = &v69 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1E0, &qword_227F2CCD8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1E8, &qword_227F2CCE0);
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F0, &qword_227F2CCE8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  v25 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_227EBFAB0();
  v26 = v107;
  sub_227F2BD74();
  if (!v26)
  {
    v71 = v17;
    v70 = v18;
    v27 = v103;
    v28 = v104;
    v29 = v105;
    v72 = 0;
    v107 = v22;
    v30 = v106;
    v31 = v21;
    v32 = sub_227F2BB74();
    if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 12))
    {
      v40 = sub_227F2B9E4();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
      *v42 = &type metadata for RRDServiceError;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v107 + 8))(v24, v21);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v108);
    }

    if (*(v32 + 32) > 5u)
    {
      v44 = v107;
      if (*(v32 + 32) > 8u)
      {
        v45 = v31;
        if (v33 == 9)
        {
          v118 = 9;
          sub_227EBFBAC();
          v57 = v98;
          v58 = v72;
          sub_227F2BAE4();
          if (!v58)
          {
            (*(v90 + 8))(v57, v91);
            (*(v44 + 8))(v24, v31);
            swift_unknownObjectRelease();
            v38 = 0;
            v39 = 2;
            v37 = 7;
            goto LABEL_48;
          }
        }

        else
        {
          v50 = v72;
          if (v33 == 10)
          {
            v119 = 10;
            sub_227EBFB58();
            v51 = v101;
            sub_227F2BAE4();
            if (!v50)
            {
              (*(v92 + 8))(v51, v93);
              (*(v44 + 8))(v24, v45);
              swift_unknownObjectRelease();
              v38 = 0;
              v39 = 2;
              v37 = 8;
              goto LABEL_48;
            }
          }

          else
          {
            v120 = 11;
            sub_227EBFB04();
            v64 = v102;
            sub_227F2BAE4();
            if (!v50)
            {
              (*(v94 + 8))(v64, v95);
              (*(v44 + 8))(v24, v45);
              swift_unknownObjectRelease();
              v38 = 0;
              v39 = 2;
              v37 = 9;
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        v45 = v31;
        if (v33 == 6)
        {
          v115 = 6;
          sub_227EBFCA8();
          v55 = v72;
          sub_227F2BAE4();
          if (!v55)
          {
            (*(v84 + 8))(v29, v85);
            (*(v44 + 8))(v24, v31);
            swift_unknownObjectRelease();
            v38 = 0;
            v39 = 2;
            v37 = 4;
            goto LABEL_48;
          }
        }

        else
        {
          v46 = v72;
          if (v33 == 7)
          {
            v116 = 7;
            sub_227EBFC54();
            v47 = v99;
            sub_227F2BAE4();
            if (!v46)
            {
              (*(v86 + 8))(v47, v87);
              (*(v44 + 8))(v24, v45);
              swift_unknownObjectRelease();
              v38 = 0;
              v39 = 2;
              v37 = 5;
              goto LABEL_48;
            }
          }

          else
          {
            v117 = 8;
            sub_227EBFC00();
            v61 = v100;
            sub_227F2BAE4();
            if (!v46)
            {
              (*(v88 + 8))(v61, v89);
              (*(v44 + 8))(v24, v45);
              swift_unknownObjectRelease();
              v38 = 0;
              v39 = 2;
              v37 = 6;
              goto LABEL_48;
            }
          }
        }
      }

      (*(v44 + 8))(v24, v45);
      goto LABEL_11;
    }

    if (*(v32 + 32) <= 2u)
    {
      if (!*(v32 + 32))
      {
        v105 = v32;
        v109 = 0;
        sub_227EBFEA0();
        v52 = v24;
        v53 = v21;
        v54 = v72;
        sub_227F2BAE4();
        if (!v54)
        {
          v65 = v52;
          v66 = v70;
          v37 = sub_227F2BB44();
          v38 = v67;
          (*(v74 + 8))(v20, v66);
          (*(v107 + 8))(v65, v53);
          swift_unknownObjectRelease();
          v39 = 0;
          goto LABEL_48;
        }

        (*(v107 + 8))(v52, v21);
        goto LABEL_11;
      }

      if (v33 == 1)
      {
        v110 = 1;
        sub_227EBFE4C();
        v34 = v71;
        v35 = v31;
        v36 = v72;
        sub_227F2BAE4();
        if (!v36)
        {
          (*(v75 + 8))(v34, v76);
          (*(v107 + 8))(v24, v31);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = 2;
LABEL_48:
          *v30 = v37;
          *(v30 + 8) = v38;
          *(v30 + 16) = v39;
          return __swift_destroy_boxed_opaque_existential_0(v108);
        }
      }

      else
      {
        v111 = 2;
        sub_227EBFDF8();
        v59 = v96;
        v35 = v31;
        v60 = v72;
        sub_227F2BAE4();
        if (!v60)
        {
          (*(v77 + 8))(v59, v78);
          (*(v107 + 8))(v24, v31);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 2;
          v37 = 1;
          goto LABEL_48;
        }
      }

      goto LABEL_35;
    }

    if (v33 == 3)
    {
      v112 = 3;
      sub_227EBFDA4();
      v56 = v72;
      sub_227F2BAE4();
      if (!v56)
      {
        (*(v80 + 8))(v27, v73);
        (*(v107 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v38 = 0;
        v37 = 2;
        v39 = 2;
        goto LABEL_48;
      }

      (*(v107 + 8))(v24, v21);
      goto LABEL_11;
    }

    v105 = v32;
    v35 = v21;
    if (v33 == 4)
    {
      v113 = 4;
      sub_227EBFD50();
      v48 = v72;
      sub_227F2BAE4();
      if (!v48)
      {
        v49 = v79;
        v37 = sub_227F2BB44();
        v38 = v68;
        (*(v81 + 8))(v28, v49);
        (*(v107 + 8))(v24, v35);
        swift_unknownObjectRelease();
        v39 = 1;
LABEL_47:
        v30 = v106;
        goto LABEL_48;
      }
    }

    else
    {
      v114 = 5;
      sub_227EBFCFC();
      v62 = v97;
      v63 = v72;
      sub_227F2BAE4();
      if (!v63)
      {
        (*(v82 + 8))(v62, v83);
        (*(v107 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v38 = 0;
        v39 = 2;
        v37 = 3;
        goto LABEL_47;
      }
    }

LABEL_35:
    (*(v107 + 8))(v24, v35);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v108);
}

uint64_t sub_227EBAD8C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227EBADC0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227EBADF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227EBAE28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227EBAEA0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = *(v7 + 16);
  v16(v30 - v14, v3, a1);
  if (swift_dynamicCast())
  {
    v17 = v32;
    *a3 = v31;
    *(a3 + 16) = v17;
  }

  else
  {
    v30[0] = a3;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    v16(v13, v3, a1);
    v18 = sub_227F2BC44();
    if (v18)
    {
      v19 = v18;
      (*(v7 + 8))(v13, a1);
    }

    else
    {
      v19 = swift_allocError();
      (*(v7 + 32))(v20, v13, a1);
    }

    v21 = sub_227F2AFB4();

    v22 = [v21 code];
    v30[1] = v22;
    v23 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v23);

    v24 = v31;
    *&v31 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    *&v31 = sub_227F2B6D4();
    *(&v31 + 1) = v25;
    MEMORY[0x22AAAC3E0](46, 0xE100000000000000);
    v16(v10, v4, a1);
    v26 = sub_227F2B6C4();
    MEMORY[0x22AAAC3E0](v26);

    MEMORY[0x22AAAC3E0](0x2065646F632820, 0xE700000000000000);
    MEMORY[0x22AAAC3E0](v24, *(&v24 + 1));

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v27 = *(&v31 + 1);
    v28 = v30[0];
    *v30[0] = v31;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
  }

  return (*(v7 + 8))(v15, a1);
}

uint64_t RRDClient.__allocating_init()()
{
  v1 = sub_227F2B374();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_227F2B3A4();
  sub_227F2B364();
  v3 = v2;
  v4 = sub_227F2B354();
  if (!v0)
  {
    v5 = v4;
    v6 = [objc_opt_self() standardUserDefaults];
    v3 = swift_allocObject();
    sub_227EBCE48(v5, v6);
  }

  return v3;
}

uint64_t RRDClient.resourceUpdatesFolder()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for RRDResponse(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for RRDRequest(0);
  v2[8] = swift_task_alloc();
  v3 = sub_227F2B4C4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EBB40C, 0, 0);
}

uint64_t sub_227EBB40C()
{
  v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest, &unk_227F317D0);
  sub_227F2B394();
  sub_227EBFF7C(v1, type metadata accessor for RRDRequest);
  sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse, &unk_227F317A8);
  sub_227F2B4B4();
  sub_227EC13A4(v0[6], v0[5], type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = v0[10];
      v21 = v0[11];
      v23 = v0[9];
      v25 = v0[5];
      v24 = v0[6];
      sub_227EBFEF4();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 2;
      swift_willThrow();
      sub_227EBFF7C(v24, type metadata accessor for RRDResponse);
      (*(v22 + 8))(v21, v23);
      sub_227EBFF7C(v25, type metadata accessor for RRDResponse);
    }

    else
    {
      v6 = v0[10];
      v5 = v0[11];
      v7 = v0[9];
      v8 = v0[5];
      v9 = v0[6];
      v10 = *v8;
      v11 = v8[1];
      v12 = *(v8 + 16);
      sub_227EBFEF4();
      swift_allocError();
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v12;
      swift_willThrow();
      sub_227EBFF7C(v9, type metadata accessor for RRDResponse);
      (*(v6 + 8))(v5, v7);
    }

    goto LABEL_2;
  }

  v14 = *v0[5];
  v15 = [v14 url];
  sub_227F2B084();

  v16 = sub_227F2B094();
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[9];
  if ((v16 & 1) == 0)
  {
    v27 = v0[6];
    v28 = v0[2];
    sub_227EBFEF4();
    swift_allocError();
    *v29 = xmmword_227F2CBD0;
    *(v29 + 16) = 2;
    swift_willThrow();

    v30 = sub_227F2B114();
    (*(*(v30 - 8) + 8))(v28, v30);
    sub_227EBFF7C(v27, type metadata accessor for RRDResponse);
    (*(v18 + 8))(v17, v19);
LABEL_2:

    v2 = v0[1];
    goto LABEL_3;
  }

  v20 = v0[6];

  sub_227EBFF7C(v20, type metadata accessor for RRDResponse);
  (*(v18 + 8))(v17, v19);

  v2 = v0[1];
LABEL_3:

  return v2();
}

uint64_t RRDClient.resourceUpdatesFolder(forAssetFolder:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for ResourceUpdatesResponse(0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for RRDResponse(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for RRDRequest(0);
  v3[10] = swift_task_alloc();
  v4 = sub_227F2B4C4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_227F2B114();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for ResourceUpdatesRequest(0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EBBA58, 0, 0);
}

uint64_t sub_227EBBA58()
{
  v49 = v0;
  (*(v0[15] + 16))(v0[17], v0[3], v0[14]);
  if (qword_27D80DEF0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = qword_27D81B140;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_227EBFF48;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_227EBFF64(&v46);
  os_unfair_lock_unlock(v2 + 4);
  v5 = *(&v46 + 1);
  v4 = v46;
  v6 = v47;
  v7 = v48;

  if (v5)
  {

    v42 = v7;
    v43 = v6;
  }

  else
  {
    v4 = 0;
    v42 = 0;
    v43 = 0;
  }

  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[10];
  v11 = *(v0[15] + 32);
  v11(v9, v0[17], v0[14]);
  v12 = (v9 + *(v8 + 20));
  *v12 = v4;
  v12[1] = v5;
  v12[2] = v43;
  v12[3] = v42;
  sub_227EC13A4(v9, v10, type metadata accessor for ResourceUpdatesRequest);
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest, &unk_227F317D0);
  sub_227F2B394();
  sub_227EBFF7C(v10, type metadata accessor for RRDRequest);
  v13 = v11;
  sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse, &unk_227F317A8);
  sub_227F2B4B4();
  sub_227EC13A4(v0[8], v0[7], type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_227EBFF7C(v0[7], type metadata accessor for RRDResponse);
      sub_227EBFEF4();
      swift_allocError();
      *v37 = 0;
      *(v37 + 8) = 0;
      *(v37 + 16) = 2;
      goto LABEL_15;
    }

    v20 = v0[19];
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[2];
    sub_227EC16AC(v0[7], v25, type metadata accessor for ResourceUpdatesResponse);
    sub_227EBC0C0(v25, v26);
    sub_227EBFF7C(v25, type metadata accessor for ResourceUpdatesResponse);
    sub_227EBFF7C(v24, type metadata accessor for RRDResponse);
    (*(v22 + 8))(v21, v23);
    sub_227EBFF7C(v20, type metadata accessor for ResourceUpdatesRequest);
LABEL_13:

    v36 = v0[1];
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = *v0[7];
    v28 = [v27 url];
    sub_227F2B084();

    v29 = sub_227F2B094();
    v30 = v0[14];
    if ((v29 & 1) == 0)
    {
      v40 = v0[15];
      v39 = v0[16];
      sub_227EBFEF4();
      swift_allocError();
      *v41 = xmmword_227F2CBD0;
      *(v41 + 16) = 2;
      swift_willThrow();

      (*(v40 + 8))(v39, v30);
      goto LABEL_16;
    }

    v44 = v0[19];
    v45 = v0[16];
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    v34 = v0[8];
    v35 = v0[2];

    sub_227EBFF7C(v34, type metadata accessor for RRDResponse);
    (*(v32 + 8))(v31, v33);
    sub_227EBFF7C(v44, type metadata accessor for ResourceUpdatesRequest);
    v13(v35, v45, v30);
    goto LABEL_13;
  }

  v15 = v0[7];
  v17 = *v15;
  v16 = v15[1];
  v18 = *(v15 + 16);
  sub_227EBFEF4();
  swift_allocError();
  *v19 = v17;
  *(v19 + 8) = v16;
  *(v19 + 16) = v18;
LABEL_15:
  swift_willThrow();
LABEL_16:
  sub_227EBFF7C(v0[8], type metadata accessor for RRDResponse);
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_227EBFF7C(v0[19], type metadata accessor for ResourceUpdatesRequest);

  v36 = v0[1];
LABEL_17:

  return v36();
}

void sub_227EBC0C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v76 = *MEMORY[0x277D85DE8];
  v5 = sub_227F2AFF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227F2B454();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227EC13A4(a1, v17, type metadata accessor for ResourceUpdatesResponse);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v19 = (*(*(v18 - 8) + 48))(v17, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v74;
      v21 = sub_227F2B304();
      v22 = sub_227F2B8D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "Cached update resource is still up to date.";
LABEL_11:
        _os_log_impl(&dword_227EB2000, v21, v22, v24, v23, 2u);
        MEMORY[0x22AAAD240](v23, -1, -1);
      }
    }

    else
    {
      v20 = v74;
      v21 = sub_227F2B304();
      v22 = sub_227F2B8D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "Cached update resource is within the grace period window.";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v66 = v2;
    v25 = v8;
    v26 = v9;
    v28 = *v17;
    v27 = v17[1];
    v29 = (v17 + *(v18 + 64));
    v30 = v14;
    v31 = *v29;
    v32 = v29[1];
    v70 = v30;
    v71 = v26;
    v33 = *(v26 + 32);
    v67 = v25;
    v33();

    v34 = sub_227F2B304();
    v35 = sub_227F2B8F4();

    v36 = os_log_type_enabled(v34, v35);
    v62 = v6;
    v63 = v5;
    v68 = v32;
    v69 = v27;
    v64 = v31;
    v65 = v28;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v75[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_227ECAC40(v28, v27, v75);
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_227ECAC40(v31, v32, v75);
      _os_log_impl(&dword_227EB2000, v34, v35, "Received new update resource %s digest %{public}s. Caching.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v38, -1, -1);
      MEMORY[0x22AAAD240](v37, -1, -1);
    }

    v40 = v70;
    v39 = v71;
    v41 = v67;
    (*(v71 + 16))(v12, v70, v67);
    v42 = sub_227F2B434();
    v43 = sub_227F2B344();
    v3 = v66;
    if (v42 != v43)
    {

      sub_227EBFEF4();
      swift_allocError();
      *v44 = xmmword_227F2CBE0;
      *(v44 + 16) = 2;
      swift_willThrow();
      v45 = *(v39 + 8);
      v45(v12, v41);
      v45(v40, v41);
      return;
    }

    v50 = sub_227F2B414();
    v21 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
    swift_unknownObjectRelease();
    v51 = *(v39 + 8);
    v71 = v39 + 8;
    v52 = v51(v12, v41);
    if (qword_27D80DEF0 != -1)
    {
      v52 = swift_once();
    }

    v53 = qword_27D81B140;
    v54 = MEMORY[0x28223BE20](v52);
    v56 = v64;
    v55 = v65;
    *(&v62 - 6) = v74;
    *(&v62 - 5) = v56;
    v57 = v69;
    *(&v62 - 4) = v68;
    *(&v62 - 3) = v55;
    *(&v62 - 2) = v57;
    *(&v62 - 1) = v21;
    MEMORY[0x28223BE20](v54);
    *(&v62 - 2) = sub_227EC14AC;
    *(&v62 - 1) = v58;
    os_unfair_lock_lock(v53 + 4);
    sub_227EC14D0();
    v59 = v53 + 4;
    if (v3)
    {
      os_unfair_lock_unlock(v59);
      v51(v70, v41);

      return;
    }

    os_unfair_lock_unlock(v59);

    *&v75[0] = 0;
    if (([v21 closeAndReturnError:v75]& 1) == 0)
    {
      v61 = *&v75[0];
      sub_227F2AFC4();

      swift_willThrow();
      v51(v70, v41);
      return;
    }

    v60 = *&v75[0];
    v51(v70, v41);
    v6 = v62;
    v5 = v63;
    v20 = v74;
  }

  if (qword_27D80DEF0 != -1)
  {
    v46 = swift_once();
  }

  v47 = qword_27D81B140;
  MEMORY[0x28223BE20](v46);
  *(&v62 - 2) = sub_227EC19B8;
  *(&v62 - 1) = v20;
  os_unfair_lock_lock(v47 + 4);
  sub_227EC198C(v75);
  if (v3)
  {
    os_unfair_lock_unlock(v47 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v47 + 4);
    if (*(&v75[0] + 1))
    {
      v75[0] = v75[1];
      v48 = v72;
      (*(v6 + 104))(v72, *MEMORY[0x277CC91C0], v5);
      sub_227EB84D8();

      sub_227F2B0F4();

      (*(v6 + 8))(v48, v5);
    }

    else
    {
      sub_227EC1458();
      swift_allocError();
      *v49 = xmmword_227F2CBF0;
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      swift_willThrow();
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RRDClient.readSanitizedConfig()()
{
  v25 = type metadata accessor for RRDResponse(0);
  v1 = MEMORY[0x28223BE20](v25);
  v3 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v6 = type metadata accessor for RRDRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227F2B4C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest, &unk_227F317D0);
  sub_227F2B394();
  v13 = sub_227EBFF7C(v8, type metadata accessor for RRDRequest);
  if (!v0)
  {
    v15 = v9;
    sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse, &unk_227F317A8);
    sub_227F2B4B4();
    v16 = v3;
    sub_227EC13A4(v5, v3, type metadata accessor for RRDResponse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      sub_227EBFF7C(v5, type metadata accessor for RRDResponse);
      (*(v10 + 8))(v12, v15);
      v13 = *v3;
      v14 = v3[1];
    }

    else if (EnumCaseMultiPayload)
    {
      sub_227EBFEF4();
      swift_allocError();
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 16) = 2;
      swift_willThrow();
      sub_227EBFF7C(v5, type metadata accessor for RRDResponse);
      (*(v10 + 8))(v12, v15);
      v13 = sub_227EBFF7C(v3, type metadata accessor for RRDResponse);
    }

    else
    {
      v18 = *v3;
      v19 = v3[1];
      v20 = *(v16 + 16);
      sub_227EBFEF4();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
      swift_willThrow();
      sub_227EBFF7C(v5, type metadata accessor for RRDResponse);
      v13 = (*(v10 + 8))(v12, v15);
    }
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_227EBCD58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E350, &qword_227F2D9A8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27D81B140 = result;
  return result;
}

double sub_227EBCD98@<D0>(_OWORD *a1@<X8>)
{
  sub_227EB5F0C(&v4);
  if (*(&v4 + 1))
  {
    v7 = v4;

    sub_227EB80AC(&v7);
    v8 = v5;
    sub_227EB80AC(&v8);
    v9 = v6;
    sub_227EB80AC(&v9);
  }

  v2 = v5;
  *a1 = v4;
  a1[1] = v2;
  result = *&v6;
  a1[2] = v6;
  return result;
}

char *sub_227EBCE48(uint64_t a1, void *a2)
{
  v3 = v2;
  v62[2] = *MEMORY[0x277D85DE8];
  v60 = *v2;
  v45 = type metadata accessor for ClientCache(0);
  MEMORY[0x28223BE20](v45);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_227F2AFF4();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_227F2B114();
  v54 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v44 - v12;
  v13 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v14 = sub_227F2B334();
  v15 = __swift_project_value_buffer(v14, qword_27D81B1F8);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v59 = v13;
  v17(&v2[v13], v15, v14);
  v18 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_fileManager;
  v19 = objc_opt_self();
  *&v2[v18] = [v19 defaultManager];
  *(v2 + 2) = a1;
  v57 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_defaults;
  v58 = v18;
  *&v2[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_defaults] = a2;

  v20 = a2;
  v44 = v19;
  v21 = a1;
  v22 = [v19 defaultManager];
  v62[0] = 0;
  v23 = [v22 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v62];

  v24 = v62[0];
  if (v23)
  {
    v47 = v20;
    v48 = v21;
    v25 = v61;
    sub_227F2B084();
    v26 = v24;

    v62[0] = 0xD000000000000024;
    v62[1] = 0x8000000227F339A0;
    v27 = v49;
    v28 = v51;
    v29 = v53;
    (*(v49 + 104))(v51, *MEMORY[0x277CC91C0], v53);
    sub_227EB84D8();
    v30 = v50;
    sub_227F2B0F4();
    (*(v27 + 8))(v28, v29);
    v31 = v30;
    v32 = v52;
    v33 = v55;
    sub_227F2A3D0(v52);
    if (!v33)
    {
      v37 = v54;
      v38 = *(v54 + 8);
      v39 = v56;
      v38(v30, v56);
      v40 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder;
      (*(v37 + 32))(&v3[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder], v32, v39);
      v41 = v46;
      (*(v37 + 16))(&v46[*(v45 + 24)], &v3[v40], v39);
      v42 = [v44 defaultManager];

      v38(v61, v39);
      *v41 = v47;
      v41[1] = v42;
      sub_227EC16AC(v41, &v3[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache], type metadata accessor for ClientCache);
      return v3;
    }

    v34 = *(v54 + 8);
    v35 = v56;
    v34(v31, v56);
    v34(v25, v35);
  }

  else
  {
    v36 = v62[0];
    sub_227F2AFC4();

    swift_willThrow();
  }

  (*(v16 + 8))(&v3[v59], v14);

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t RRDClient.deinit()
{
  v1 = v0;

  sub_227F2B384();

  v2 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  v3 = sub_227F2B334();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_227EBFF7C(v1 + OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache, type metadata accessor for ClientCache);
  v4 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder;
  v5 = sub_227F2B114();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return v1;
}

uint64_t RRDClient.__deallocating_deinit()
{
  RRDClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_227EBD5E4(void *a1, unint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v141 = a6;
  v149 = a5;
  v148 = a4;
  v152 = a3;
  v178 = *MEMORY[0x277D85DE8];
  v139 = sub_227F2B504();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_227F2B5A4();
  v140 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_227F2AFF4();
  v157 = *(v156 - 1);
  MEMORY[0x28223BE20](v156);
  v155 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227F2B114();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v125 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v125 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v147 = &v125 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v125 - v22;
  v24 = sub_227F2B274();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a1;
  v151 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache;
  sub_227EB5F0C(&v174);
  v154 = v12;
  if (v175)
  {
    v146 = v19;
    v159 = v177;
    v28 = v177;
    v160[0] = v174;
    v160[1] = v175;

    sub_227EB80AC(v160);
    v161 = v176;
    sub_227EB80AC(&v161);
    sub_227EB80AC(&v159);
    if (v28 == __PAIR128__(v152, a2))
    {
      sub_227EB80AC(&v159);
LABEL_5:
      v30 = sub_227F2B304();
      v31 = sub_227F2B8F4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_227EB2000, v30, v31, "Received updates that have already been cached.", v32, 2u);
        MEMORY[0x22AAAD240](v32, -1, -1);
      }

      return;
    }

    v29 = sub_227F2BC64();
    sub_227EB80AC(&v159);
    v19 = v146;
    if (v29)
    {
      goto LABEL_5;
    }
  }

  v150 = v11;
  v132 = a2;
  v33 = v158;
  sub_227EB6198();
  sub_227EB6420();
  sub_227F2B264();
  v34 = sub_227F2B254();
  v36 = v35;
  (*(v25 + 8))(v27, v24);
  v131 = v34;
  v169 = v34;
  v170 = v36;
  v37 = *MEMORY[0x277CC91C0];
  v38 = v157;
  v39 = v155;
  v40 = v156;
  v146 = *(v157 + 13);
  (v146)(v155, v37, v156);
  v136 = sub_227EB84D8();
  sub_227F2B0F4();
  v42 = *(v38 + 1);
  v41 = (v38 + 8);
  v135 = v42;
  v42(v39, v40);
  v43 = *(v33 + OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_fileManager);
  v44 = sub_227F2B044();
  v169 = 0;
  LODWORD(v39) = [v43 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v169];

  v45 = v169;
  if (!v39)
  {
    v62 = v169;

    sub_227F2AFC4();

    swift_willThrow();
    v63 = *(v154 + 8);
    v64 = v23;
    v65 = &v177;
    goto LABEL_12;
  }

  v130 = v43;
  v157 = v41;
  v133 = v36;
  v46 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  v47 = v154;
  v48 = *(v154 + 16);
  v49 = v147;
  v134 = v23;
  v50 = v150;
  v129 = v154 + 16;
  v128 = v48;
  v48(v147, v23, v150);
  v51 = v45;
  v127 = v46;
  v52 = sub_227F2B304();
  v53 = sub_227F2B8D4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v169 = v126;
    *v54 = 136315138;
    sub_227EC1664(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v55 = sub_227F2BC24();
    v56 = v49;
    v58 = v57;
    v59 = *(v47 + 8);
    v59(v56, v50);
    v60 = sub_227ECAC40(v55, v58, &v169);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_227EB2000, v52, v53, "Created new cache subfolder %s", v54, 0xCu);
    v61 = v126;
    __swift_destroy_boxed_opaque_existential_0(v126);
    MEMORY[0x22AAAD240](v61, -1, -1);
    MEMORY[0x22AAAD240](v54, -1, -1);
  }

  else
  {

    v59 = *(v47 + 8);
    v59(v49, v50);
  }

  v66 = v153;
  v169 = v148;
  v170 = v149;
  v67 = v155;
  v68 = v156;
  (v146)(v155, *MEMORY[0x277CC91D8], v156);
  v69 = v134;
  sub_227F2B0F4();
  v135(v67, v68);
  sub_227F2B0A4();
  v70 = sub_227F2B644();

  LODWORD(v68) = [v130 createFileAtPath:v70 contents:0 attributes:0];

  if (v68)
  {
    v157 = v59;
    sub_227EC14F8();
    v71 = v144;
    v128(v144, v19, v150);
    v72 = sub_227EBEC94(v71);
    v73 = v19;
    if (v66)
    {

LABEL_17:

      sub_227EC1458();
      swift_allocError();
      *v74 = xmmword_227F2CC00;
      *(v74 + 16) = 0;
      *(v74 + 24) = 0;
      swift_willThrow();
      v75 = v150;
      v76 = v157;
      v157(v19, v150);
      v76(v69, v75);
      return;
    }

    if (!v72)
    {
      goto LABEL_17;
    }

    v156 = v72;
    v88 = v142;
    sub_227F2B594();
    while (1)
    {
      v90 = sub_227F2B8A4();
      v91 = v89;
      if (v89 >> 60 == 15)
      {
LABEL_46:
        v169 = 0;
        v97 = v156;
        if ([v156 closeAndReturnError_])
        {
          v98 = v169;
          v155 = sub_227F2B024();
          v100 = v99;
          v101 = v137;
          sub_227F2B584();
          v102 = v139;
          v172 = v139;
          v173 = sub_227EC1664(&qword_27D80E338, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v169);
          v104 = v138;
          (*(v138 + 16))(boxed_opaque_existential_1, v101, v102);
          __swift_project_boxed_opaque_existential_1(&v169, v172);
          sub_227F2AF34();
          (*(v104 + 8))(v101, v102);
          v106 = v167;
          v105 = v168;
          __swift_destroy_boxed_opaque_existential_0(&v169);
          v108 = sub_227F2B154();
          v109 = v107;
          v110 = v152;
          if (v108 == v132 && v107 == v152 || (sub_227F2BC64() & 1) != 0)
          {

            *&v162 = v155;
            *(&v162 + 1) = v100;
            v163 = v131;
            v164 = v133;
            v165 = v132;
            v166 = v110;

            sub_227EB6278(&v162);

            sub_227EC15A8(v106, v105);

            v111 = v150;
            v112 = v157;
            v157(v73, v150);
            v112(v134, v111);
            (*(v140 + 8))(v142, v143);
            return;
          }

          v155 = v106;

          v116 = sub_227F2B304();
          v117 = sub_227F2B8E4();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v169 = v119;
            *v118 = 136315394;
            *(v118 + 4) = sub_227ECAC40(v108, v109, &v169);
            *(v118 + 12) = 2080;
            v120 = v132;
            *(v118 + 14) = sub_227ECAC40(v132, v152, &v169);
            _os_log_impl(&dword_227EB2000, v116, v117, "Digest of received data did not agree with expected value. Computed digest %s, input digest %s", v118, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAAD240](v119, -1, -1);
            v110 = v152;
            MEMORY[0x22AAAD240](v118, -1, -1);

            v121 = v150;
            v122 = v142;
          }

          else
          {

            v121 = v150;
            v122 = v142;
            v120 = v132;
          }

          sub_227EC1458();
          swift_allocError();
          *v123 = v120;
          v123[1] = v110;
          v123[2] = v108;
          v123[3] = v109;
          swift_willThrow();

          sub_227EC15A8(v155, v105);
          v124 = v157;
          v157(v73, v121);
          v124(v134, v121);
          v63 = *(v140 + 8);
          v64 = v122;
        }

        else
        {
          v113 = v169;

          sub_227F2AFC4();

          swift_willThrow();
          v114 = v150;
          v115 = v157;
          v157(v19, v150);
          v115(v134, v114);
          v63 = *(v140 + 8);
          v64 = v88;
        }

        v65 = &v171;
LABEL_12:
        v63(v64, *(v65 - 32));
        return;
      }

      v92 = v89 >> 62;
      if ((v89 >> 62) > 1)
      {
        if (v92 != 2)
        {
          goto LABEL_45;
        }

        v93 = *(v90 + 16);
        v94 = *(v90 + 24);
      }

      else
      {
        if (!v92)
        {
          if ((v89 & 0xFF000000000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_35;
        }

        v93 = v90;
        v94 = v90 >> 32;
      }

      if (v93 == v94)
      {
LABEL_45:
        sub_227EC1650(v90, v89);
        goto LABEL_46;
      }

LABEL_35:
      v169 = v90;
      v170 = v89;
      sub_227EC15FC();
      sub_227F2B8B4();
      if (v92 == 2)
      {
        v95 = *(v90 + 16);
        v96 = *(v90 + 24);

        if (sub_227F2AEF4() && __OFSUB__(v95, sub_227F2AF14()))
        {
          goto LABEL_58;
        }

        if (__OFSUB__(v96, v95))
        {
          goto LABEL_57;
        }

        goto LABEL_40;
      }

      if (v92 == 1)
      {
        if (v90 >> 32 < v90)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        if (sub_227F2AEF4() && __OFSUB__(v90, sub_227F2AF14()))
        {
          goto LABEL_59;
        }

LABEL_40:
        sub_227F2AF04();
        sub_227EC1664(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        v88 = v142;
        sub_227F2B4D4();
        sub_227EC1650(v90, v91);
        sub_227EC1650(v90, v91);
      }

      else
      {
        v169 = v90;
        LOWORD(v170) = v91;
        BYTE2(v170) = BYTE2(v91);
        BYTE3(v170) = BYTE3(v91);
        BYTE4(v170) = BYTE4(v91);
        BYTE5(v170) = BYTE5(v91);
        sub_227EC1664(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        sub_227F2B4D4();
        sub_227EC1650(v90, v91);
        sub_227EC1650(v90, v91);
      }
    }
  }

  v77 = v145;
  v146 = v19;
  v78 = v150;
  v128(v145, v19, v150);
  v79 = sub_227F2B304();
  v80 = sub_227F2B8E4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v169 = v158;
    *v81 = 136446210;
    sub_227EC1664(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v82 = sub_227F2BC24();
    v84 = v83;
    v59(v77, v78);
    v85 = sub_227ECAC40(v82, v84, &v169);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_227EB2000, v79, v80, "Couldn't write updates to %{public}s.", v81, 0xCu);
    v86 = v158;
    __swift_destroy_boxed_opaque_existential_0(v158);
    MEMORY[0x22AAAD240](v86, -1, -1);
    MEMORY[0x22AAAD240](v81, -1, -1);
  }

  else
  {

    v59(v77, v78);
  }

  sub_227EC1458();
  swift_allocError();
  *v87 = xmmword_227F2CC00;
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  swift_willThrow();
  v59(v146, v78);
  v59(v134, v78);
}

id sub_227EBEC94(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B044();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_227F2B114();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_227F2AFC4();

    swift_willThrow();
    v9 = sub_227F2B114();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void rrd_store_config_sysdiagnose(void *a1, void *a2)
{
  v3 = a1;
  rrd_store_config_sysdiagnose(directory:error:)(v3, a2);
}

void rrd_store_config_sysdiagnose(directory:error:)(void *a1, void *a2)
{
  v7 = 0;
  v4 = MEMORY[0x22AAACB70]();
  sub_227EBEEB4(a1, &v7);
  objc_autoreleasePoolPop(v4);
  v5 = v7;
  if (a2)
  {
    v6 = v7;
    *a2 = v6;
    v5 = v6;
  }
}

uint64_t sub_227EBEEB4(void *a1, void **a2)
{
  v48 = a2;
  v52 = sub_227F2B334();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227F2B6B4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227F2B374();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_227F2B114();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = sub_227F2B644();
  v21 = [a1 URLByAppendingPathComponent:v20 isDirectory:0];

  if (v21)
  {
    sub_227F2B084();

    (*(v8 + 56))(v17, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v17, 1, 1, v7);
  }

  sub_227EC1270(v17, v19);
  sub_227EC12E0(v19, v14);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_227EB8430(v14, &qword_27D80E310, &unk_227F2D990);
    sub_227EC1350();
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v19;
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    sub_227F2B3A4();
    sub_227F2B364();
    v24 = v47;
    v25 = sub_227F2B354();
    v22 = v24;
    if (!v24)
    {
      v26 = v25;
      v27 = [objc_opt_self() standardUserDefaults];
      type metadata accessor for RRDClient(0);
      v28 = swift_allocObject();
      sub_227EBCE48(v26, v27);
      v29 = RRDClient.readSanitizedConfig()();
      v22 = v30;
      if (!v30)
      {
        v47 = v28;
        v51 = v29;
        v42 = v44;
        sub_227F2B6A4();
        sub_227EB84D8();
        sub_227F2B944();

        (*(v45 + 8))(v42, v46);
        (*(v8 + 8))(v10, v7);
        sub_227EB8430(v19, &qword_27D80E310, &unk_227F2D990);
      }
    }

    (*(v8 + 8))(v10, v7);
    v23 = v19;
  }

  sub_227EB8430(v23, &qword_27D80E310, &unk_227F2D990);
  v31 = sub_227F2AFB4();
  v32 = *v48;
  *v48 = v31;

  v33 = v49;
  sub_227F2B324();
  v34 = v22;
  v35 = sub_227F2B304();
  v36 = sub_227F2B8E4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v22;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_227EB2000, v35, v36, "sysdiagnose shim failed: %@", v37, 0xCu);
    sub_227EB8430(v38, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v38, -1, -1);
    MEMORY[0x22AAAD240](v37, -1, -1);
  }

  else
  {
  }

  return (*(v50 + 8))(v33, v52);
}

uint64_t sub_227EBF5B8()
{
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](0);
  return sub_227F2BD44();
}

uint64_t sub_227EBF5FC(uint64_t a1)
{
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](0);
  return sub_227F2BD44();
}

uint64_t _s21RapidResourceDelivery15RRDServiceErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_227F2BC64();
      sub_227EC1714(v6, v5, 0);
      sub_227EC1714(v3, v2, 0);
      sub_227EC172C(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_32;
    }

    sub_227EC1714(v16, v2, 0);
    sub_227EC1714(v3, v2, 0);
    sub_227EC172C(v3, v2, 0);
    v15 = v3;
    v18 = v2;
    v19 = 0;
    goto LABEL_69;
  }

  if (v4 != 1)
  {
    if (v3 > 4)
    {
      if (v3 <= 6)
      {
        if (v3 ^ 5 | v2)
        {
          if (v7 != 2 || v6 != 6 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v15 = 6;
        }

        else
        {
          if (v7 != 2 || v6 != 5 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v15 = 5;
        }
      }

      else if (v3 ^ 7 | v2)
      {
        if (v3 ^ 8 | v2)
        {
          if (v7 != 2 || v6 != 9 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v15 = 9;
        }

        else
        {
          if (v7 != 2 || v6 != 8 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v15 = 8;
        }
      }

      else
      {
        if (v7 != 2 || v6 != 7 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v15 = 7;
      }
    }

    else if (v3 <= 1)
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_227EC172C(*a1, v2, 2u);
          v13 = 1;
          sub_227EC172C(1, 0, 2u);
          return v13;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_227EC1714(*a2, a2[1], v7);
        sub_227EC1714(v3, v2, v4);
        sub_227EC172C(v3, v2, v4);
        sub_227EC172C(v6, v5, v7);
        return 0;
      }

      sub_227EC172C(*a1, v2, 2u);
      v15 = 0;
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 2 || v6 != 4 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v15 = 4;
      }

      else
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v15 = 3;
      }
    }

    else
    {
      if (v7 != 2 || v6 != 2 || v5)
      {
        goto LABEL_10;
      }

      sub_227EC172C(*a1, v2, 2u);
      v15 = 2;
    }

    v18 = 0;
    v19 = 2;
LABEL_69:
    sub_227EC172C(v15, v18, v19);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_227EC1714(*a1, v2, 1u);
    sub_227EC1714(v3, v2, 1u);
    sub_227EC172C(v3, v2, 1u);
    sub_227EC172C(v3, v2, 1u);
    return v13;
  }

  v9 = sub_227F2BC64();
  sub_227EC1714(v6, v5, 1u);
  sub_227EC1714(v3, v2, 1u);
  sub_227EC172C(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_32:
  sub_227EC172C(v10, v11, v12);
  return v9 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_227EBFAB0()
{
  result = qword_27D80E128;
  if (!qword_27D80E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E128);
  }

  return result;
}

unint64_t sub_227EBFB04()
{
  result = qword_27D80E130;
  if (!qword_27D80E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E130);
  }

  return result;
}

unint64_t sub_227EBFB58()
{
  result = qword_27D80E138;
  if (!qword_27D80E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E138);
  }

  return result;
}

unint64_t sub_227EBFBAC()
{
  result = qword_27D80E140;
  if (!qword_27D80E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E140);
  }

  return result;
}

unint64_t sub_227EBFC00()
{
  result = qword_27D80E148;
  if (!qword_27D80E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E148);
  }

  return result;
}

unint64_t sub_227EBFC54()
{
  result = qword_27D80E150;
  if (!qword_27D80E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E150);
  }

  return result;
}

unint64_t sub_227EBFCA8()
{
  result = qword_27D80E158;
  if (!qword_27D80E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E158);
  }

  return result;
}

unint64_t sub_227EBFCFC()
{
  result = qword_27D80E160;
  if (!qword_27D80E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E160);
  }

  return result;
}

unint64_t sub_227EBFD50()
{
  result = qword_27D80E168;
  if (!qword_27D80E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E168);
  }

  return result;
}

unint64_t sub_227EBFDA4()
{
  result = qword_27D80E170;
  if (!qword_27D80E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E170);
  }

  return result;
}

unint64_t sub_227EBFDF8()
{
  result = qword_27D80E178;
  if (!qword_27D80E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E178);
  }

  return result;
}

unint64_t sub_227EBFE4C()
{
  result = qword_27D80E180;
  if (!qword_27D80E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E180);
  }

  return result;
}

unint64_t sub_227EBFEA0()
{
  result = qword_27D80E188;
  if (!qword_27D80E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E188);
  }

  return result;
}

unint64_t sub_227EBFEF4()
{
  result = qword_27D80E210;
  if (!qword_27D80E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E210);
  }

  return result;
}

uint64_t sub_227EBFF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery15RRDServiceErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_227EC000C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227EC0054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_227EC009C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for RRDClient(uint64_t a1)
{
  result = qword_27D80E218;
  if (!qword_27D80E218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EC0118(uint64_t a1)
{
  result = sub_227F2B334();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ClientCache(319);
    if (v3 <= 0x3F)
    {
      result = sub_227F2B114();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RRDServiceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RRDServiceError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227EC0480()
{
  result = qword_27D80E228;
  if (!qword_27D80E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E228);
  }

  return result;
}

unint64_t sub_227EC04D8()
{
  result = qword_27D80E230;
  if (!qword_27D80E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E230);
  }

  return result;
}

unint64_t sub_227EC0530()
{
  result = qword_27D80E238;
  if (!qword_27D80E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E238);
  }

  return result;
}

unint64_t sub_227EC0588()
{
  result = qword_27D80E240;
  if (!qword_27D80E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E240);
  }

  return result;
}

unint64_t sub_227EC05E0()
{
  result = qword_27D80E248;
  if (!qword_27D80E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E248);
  }

  return result;
}

unint64_t sub_227EC0638()
{
  result = qword_27D80E250;
  if (!qword_27D80E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E250);
  }

  return result;
}

unint64_t sub_227EC0690()
{
  result = qword_27D80E258;
  if (!qword_27D80E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E258);
  }

  return result;
}

unint64_t sub_227EC06E8()
{
  result = qword_27D80E260;
  if (!qword_27D80E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E260);
  }

  return result;
}

unint64_t sub_227EC0740()
{
  result = qword_27D80E268;
  if (!qword_27D80E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E268);
  }

  return result;
}

unint64_t sub_227EC0798()
{
  result = qword_27D80E270;
  if (!qword_27D80E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E270);
  }

  return result;
}

unint64_t sub_227EC07F0()
{
  result = qword_27D80E278;
  if (!qword_27D80E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E278);
  }

  return result;
}

unint64_t sub_227EC0848()
{
  result = qword_27D80E280;
  if (!qword_27D80E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E280);
  }

  return result;
}

unint64_t sub_227EC08A0()
{
  result = qword_27D80E288;
  if (!qword_27D80E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E288);
  }

  return result;
}

unint64_t sub_227EC08F8()
{
  result = qword_27D80E290;
  if (!qword_27D80E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E290);
  }

  return result;
}

unint64_t sub_227EC0950()
{
  result = qword_27D80E298;
  if (!qword_27D80E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E298);
  }

  return result;
}

unint64_t sub_227EC09A8()
{
  result = qword_27D80E2A0;
  if (!qword_27D80E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2A0);
  }

  return result;
}

unint64_t sub_227EC0A00()
{
  result = qword_27D80E2A8;
  if (!qword_27D80E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2A8);
  }

  return result;
}

unint64_t sub_227EC0A58()
{
  result = qword_27D80E2B0;
  if (!qword_27D80E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2B0);
  }

  return result;
}

unint64_t sub_227EC0AB0()
{
  result = qword_27D80E2B8;
  if (!qword_27D80E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2B8);
  }

  return result;
}

unint64_t sub_227EC0B08()
{
  result = qword_27D80E2C0;
  if (!qword_27D80E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2C0);
  }

  return result;
}

unint64_t sub_227EC0B60()
{
  result = qword_27D80E2C8;
  if (!qword_27D80E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2C8);
  }

  return result;
}

unint64_t sub_227EC0BB8()
{
  result = qword_27D80E2D0;
  if (!qword_27D80E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2D0);
  }

  return result;
}

unint64_t sub_227EC0C10()
{
  result = qword_27D80E2D8;
  if (!qword_27D80E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2D8);
  }

  return result;
}

unint64_t sub_227EC0C68()
{
  result = qword_27D80E2E0;
  if (!qword_27D80E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2E0);
  }

  return result;
}

unint64_t sub_227EC0CC0()
{
  result = qword_27D80E2E8;
  if (!qword_27D80E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2E8);
  }

  return result;
}

unint64_t sub_227EC0D18()
{
  result = qword_27D80E2F0;
  if (!qword_27D80E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2F0);
  }

  return result;
}

unint64_t sub_227EC0D70()
{
  result = qword_27D80E2F8;
  if (!qword_27D80E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2F8);
  }

  return result;
}

unint64_t sub_227EC0DC8()
{
  result = qword_27D80E300;
  if (!qword_27D80E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E300);
  }

  return result;
}

unint64_t sub_227EC0E20()
{
  result = qword_27D80E308;
  if (!qword_27D80E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E308);
  }

  return result;
}

uint64_t sub_227EC0E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F33940 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000227F33960 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F33980 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF74736566696E61 || (sub_227F2BC64() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44676E697373696DLL && a2 == 0xED00007473656769 || (sub_227F2BC64() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E73657461647075 && a2 == 0xEF646E756F46746FLL || (sub_227F2BC64() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4F49656C6966 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E69646F63 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x45786F62646E6173 && a2 == 0xEC000000726F7272)
  {

    return 11;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_227EC1270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EC12E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227EC1350()
{
  result = qword_27D80E318;
  if (!qword_27D80E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E318);
  }

  return result;
}

uint64_t sub_227EC13A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_227EC140C@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v7);
  if (!v2)
  {
    result = *v7;
    v5 = v7[1];
    v6 = v7[2];
    *a1 = v7[0];
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_227EC1458()
{
  result = qword_27D80E328;
  if (!qword_27D80E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E328);
  }

  return result;
}

unint64_t sub_227EC14F8()
{
  result = qword_27D80E330;
  if (!qword_27D80E330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E330);
  }

  return result;
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

uint64_t sub_227EC15A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_227EC15FC()
{
  result = qword_27D80E340;
  if (!qword_27D80E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E340);
  }

  return result;
}

uint64_t sub_227EC1650(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_227EC15A8(result, a2);
  }

  return result;
}

uint64_t sub_227EC1664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227EC16AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EC1714(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_227EC172C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery9RRDClientC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_227EC1768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227EC17C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_227EC1818(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTaskStateError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DownloadTaskStateError(_WORD *result, int a2, int a3)
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

unint64_t sub_227EC192C()
{
  result = qword_27D80E358;
  if (!qword_27D80E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E358);
  }

  return result;
}

uint64_t type metadata accessor for DownloadConfiguration(uint64_t a1)
{
  result = qword_27D80E368;
  if (!qword_27D80E368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadConfiguration.etag.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadConfiguration(0) + 32));

  return v1;
}

void DownloadConfiguration.assetValidationFailureInfo.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DownloadConfiguration(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_227EC1BF4(v4, v5, v6, v7, v8);
}

void sub_227EC1BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_227EC1C38(a1, a2, a3);
  }
}

uint64_t sub_227EC1C38(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_227EC227C(result, a2, a3, sub_227EC1C88, sub_227EC1CA0);
  }

  return result;
}

uint64_t sub_227EC1C88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_227EC1CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t DownloadConfiguration.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DownloadConfiguration(0) + 48);

  return sub_227EC1CF8(v3, a1);
}

uint64_t sub_227EC1CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DownloadConfiguration.init(gracePeriod:lastAttempt:lastSuccess:fileLastSuccess:etag:expectedFileSize:consecutiveFailures:assetValidationFailureInfo:overrideSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, unsigned __int8 a11, uint64_t *a12, uint64_t a13)
{
  v50 = a8;
  v51 = a4;
  LODWORD(v58) = a7;
  v52 = a5;
  v53 = a6;
  v60 = a11;
  v62 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - v19;
  v61 = type metadata accessor for Schedule(0);
  v49 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a12[1];
  v59 = *a12;
  v23 = a12[3];
  v47 = a12[2];
  v48 = v23;
  v24 = a12[4];
  *a9 = a10;
  v25 = type metadata accessor for DownloadConfiguration(0);
  v26 = a9 + v25[5];
  v57 = a1;
  sub_227EC2180(a1, v26, &unk_27D80E3B0, &unk_227F2DB00);
  v27 = a9 + v25[6];
  v56 = a2;
  sub_227EC2180(a2, v27, &unk_27D80E3B0, &unk_227F2DB00);
  v28 = a9 + v25[7];
  v54 = a3;
  v29 = v50;
  sub_227EC2180(a3, v28, &unk_27D80E3B0, &unk_227F2DB00);
  v30 = (a9 + v25[8]);
  v31 = v52;
  *v30 = v51;
  v30[1] = v31;
  v32 = a9 + v25[9];
  *v32 = v53;
  v32[8] = v58 & 1;
  v33 = a9 + v25[10];
  *v33 = v29;
  v34 = v47;
  v33[8] = v60 & 1;
  v35 = v25[11];
  v53 = a9;
  v36 = (a9 + v35);
  *v36 = v59;
  v36[1] = v22;
  v37 = v48;
  v36[2] = v34;
  v36[3] = v37;
  v36[4] = v24;
  sub_227EC2180(v62, v20, &qword_27D80E360, &unk_227F32A90);
  v38 = *(v49 + 48);
  v58 = v20;
  if (v38(v20, 1, v61) == 1)
  {
    if (v60)
    {
      v29 = 0;
    }

    v63 = v59;
    v64 = v22;
    v65 = v34;
    v66 = v37;
    v67 = v24;
    sub_227EC1BF4(v59, v22, v34, v37, v24);
    v40 = v55;
    v39 = v56;
    v41 = v57;
    sub_227F26898(v56, v57, v29, v55, a10);
    sub_227EB8430(v62, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v54, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v39, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v41, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(v63, v64, v65, v66, v67);
    v42 = v58;
    v43 = v38(v58, 1, v61) == 1;
    v44 = v40;
    if (!v43)
    {
      sub_227EB8430(v42, &qword_27D80E360, &unk_227F32A90);
      v44 = v40;
    }
  }

  else
  {
    sub_227EB8430(v62, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v54, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v56, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v57, &unk_27D80E3B0, &unk_227F2DB00);
    v45 = v55;
    sub_227EC22CC(v58, v55);
    v44 = v45;
  }

  return sub_227EC22CC(v44, v53 + v25[12]);
}

uint64_t sub_227EC2180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_227EC21E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_227EC222C(a1, a2, a3);
  }
}

uint64_t sub_227EC222C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_227EC227C(result, a2, a3, sub_227EC22A0, sub_227EC22B8);
  }

  return result;
}

uint64_t sub_227EC227C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3 >> 6 == 1)
  {
    return a5(a1, a2);
  }

  if (!(a3 >> 6))
  {
    return a4(a1, a2);
  }

  return a1;
}

uint64_t sub_227EC22A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_227EC22B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_227EC22CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schedule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_227EC2358(uint64_t a1)
{
  sub_227EC246C(319);
  if (v1 <= 0x3F)
  {
    sub_227EC24C4(319, &qword_2813CD550, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_227EC24C4(319, &qword_2813CE010, &type metadata for ResourceInfo.AssetValidationFailureInfo);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Schedule(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_227EC246C(uint64_t a1)
{
  if (!qword_2813CE030)
  {
    sub_227F2B234();
    v1 = sub_227F2B924();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CE030);
    }
  }
}

void sub_227EC24C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_227F2B924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id DownloadErrorInfo.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DownloadErrorInfo.etag.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DownloadErrorInfo.init(error:statusCode:etag:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t _s21RapidResourceDelivery17DownloadErrorInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = *(a2 + 32);
  if (v4)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1[1] == *(a2 + 8))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_18;
    }
  }

  if (v6)
  {
    if (!v8 || (v5 != *(a2 + 24) || v6 != v8) && (sub_227F2BC64() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v8)
  {
LABEL_18:
    v12 = 0;
    return v12 & 1;
  }

  v10 = sub_227F2AFB4();
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  sub_227EC276C();
  if (!swift_dynamicCast())
  {

    goto LABEL_18;
  }

  v12 = sub_227F2B914();

  return v12 & 1;
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

uint64_t sub_227EC26CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_227EC2714(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227EC276C()
{
  result = qword_27D80E380;
  if (!qword_27D80E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E380);
  }

  return result;
}

uint64_t NSURLSession.download(request:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_227F2ADA4();
  v5 = [v2 downloadTaskWithRequest_];

  result = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  a1[3] = result;
  a1[4] = &protocol witness table for NSURLSessionDownloadTask;
  *a1 = v5;
  return result;
}

uint64_t NSURLSession.downloadTasks.getter()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E398, &qword_227F2DC58);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC2908, 0, 0);
}

uint64_t sub_227EC2908()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_227EC2ABC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3A0, &unk_227F2DC60);
  sub_227F2B7C4();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_227EC2C34;
  v1[13] = &block_descriptor;
  [v9 getTasksWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_227EC2ABC()
{

  return MEMORY[0x2822009F8](sub_227EC2B9C, 0, 0);
}

uint64_t sub_227EC2B9C()
{

  v1 = sub_227EC2DA0(*(v0 + 160));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227EC2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_227EB7BD0(0, &qword_27D80E520, 0x277CCAD40);
  sub_227F2B7A4();
  sub_227EB7BD0(0, &qword_27D80E528, 0x277CCAD68);
  sub_227F2B7A4();
  sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  sub_227F2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E398, &qword_227F2DC58);
  return sub_227F2B7E4();
}

uint64_t sub_227EC2D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_227EC2DA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_227F2BA84();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_227ECB1E8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAAC680](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_227ECB1E8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
        v16 = &protocol witness table for NSURLSessionDownloadTask;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_227EB3AC4(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_227ECB1E8((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
        v16 = &protocol witness table for NSURLSessionDownloadTask;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_227EB3AC4(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_227EC2F80@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_227F2ADA4();
  v5 = [v3 downloadTaskWithRequest_];

  result = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  a1[3] = result;
  a1[4] = &protocol witness table for NSURLSessionDownloadTask;
  *a1 = v5;
  return result;
}

uint64_t sub_227EC3004()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E450, &qword_227F2DE08);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v1[19] = v4;
  v5 = *v0;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_227EC3220;
  swift_continuation_init();
  v1[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E458, &qword_227F2DE10);
  sub_227F2B7C4();
  (*(v3 + 32))(boxed_opaque_existential_1, v4, v2);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_227EC3330;
  v1[13] = &block_descriptor_12;
  [v5 getAllTasksWithCompletionHandler_];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_227EC3220()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_227EC3330(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_227EB7BD0(0, &qword_27D80E460, 0x277CCAD50);
  sub_227F2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E450, &qword_227F2DE08);
  return sub_227F2B7E4();
}

uint64_t sub_227EC33B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227EC3440;

  return NSURLSession.downloadTasks.getter();
}

uint64_t sub_227EC3440(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_227EC3590()
{
  v1 = [*v0 progress];

  return v1;
}

uint64_t sub_227EC35FC@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_227EC36B4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_227F2B1B4();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v3 setEarliestBeginDate_];
}

uint64_t (*sub_227EC37B8(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_227EC3874(v2);
  return sub_227EC382C;
}

void sub_227EC382C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_227EC3874(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 earliestBeginDate];
  if (v8)
  {
    v9 = v8;
    sub_227F2B204();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_227F2B234();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_227ECD80C(v5, v7);
  return sub_227EC39D4;
}

void sub_227EC39D4(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  if (a2)
  {
    v4 = *(a1 + 8);
    sub_227EC2180(*(a1 + 24), v4, &unk_27D80E3B0, &unk_227F2DB00);
    v5 = sub_227F2B234();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_227F2B1B4();
      (*(v6 + 8))(v4, v5);
      v3 = *(a1 + 24);
      v4 = *(a1 + 8);
    }

    v11 = *(a1 + 16);
    [*a1 setEarliestBeginDate_];

    sub_227EB8430(v3, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    v8 = sub_227F2B234();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_227F2B1B4();
      (*(v9 + 8))(v3, v8);
      v3 = *(a1 + 24);
    }

    v4 = *(a1 + 8);
    v11 = *(a1 + 16);
    [*a1 setEarliestBeginDate_];
  }

  free(v3);
  free(v11);

  free(v4);
}

id sub_227EC3BD4()
{
  v1 = [*v0 error];

  return v1;
}

id (*sub_227EC3C30(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 countOfBytesClientExpectsToReceive];
  return sub_227EC3C84;
}

id (*sub_227EC3CB8(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 _timeoutIntervalForResource];
  *a1 = v4;
  return sub_227EC3D0C;
}

uint64_t sub_227EC3D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_227EC2180(a1, &v10, &qword_27D80E440, &qword_227F2DDF8);
  if (v11)
  {
    return sub_227EB3AC4(&v10, a3);
  }

  sub_227EB8430(a1, &qword_27D80E440, &qword_227F2DDF8);
  sub_227EB8430(&v10, &qword_27D80E440, &qword_227F2DDF8);
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_227EB2000, v7, v8, "constructing url session", v9, 2u);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  (*(a2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor))(a2);
  return sub_227ECDA1C(a3, a1);
}

char *DownloadManager.__allocating_init(downloadToFolder:sessionConstructor:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_227F2B114();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v9);
  (*(v10 + 56))(v8, 1, 1, v9);
  type metadata accessor for Settings(0);
  v14 = swift_allocObject();
  sub_227EC2180(v8, v14 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, &qword_27D80E310, &unk_227F2D990);
  v14[3] = 0xD000000000000024;
  v14[4] = 0x8000000227F339A0;
  v14[5] = 0x408C200000000000;
  v14[6] = 1024;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_227F2B644();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    sub_227EB8430(v8, &qword_27D80E310, &unk_227F2D990);
    v14[2] = v17;
    v38[3] = &type metadata for Clock;
    v38[4] = &protocol witness table for Clock;
    v18 = objc_allocWithZone(v4);
    v19 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
    if (qword_2813CD568 != -1)
    {
      swift_once();
    }

    v20 = sub_227F2B334();
    v21 = __swift_project_value_buffer(v20, qword_2813CE040);
    (*(*(v20 - 8) + 16))(&v18[v19], v21, v20);
    v22 = &v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates];
    *v22 = 0;
    *(v22 + 1) = MEMORY[0x277D84F98];
    v23 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket;
    type metadata accessor for TokenBucket();
    v24 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v24 + 112) = 0;
    *&v18[v23] = v24;
    v25 = &v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession];
    *v25 = 0;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    *(v25 + 5) = 0;
    v33(&v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadToFolder], v12, v9);
    *&v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings] = v14;
    v26 = &v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor];
    v28 = v35;
    *v27 = v34;
    v27[1] = v28;
    sub_227ECDA1C(v38, &v18[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock]);
    v37.receiver = v18;
    v37.super_class = v4;
    v29 = objc_msgSendSuper2(&v37, sel_init);
    v30 = *(v10 + 8);
    v30(v36, v9);
    v30(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return v29;
  }

  else
  {
    result = sub_227F2BA74();
    __break(1u);
  }

  return result;
}

uint64_t sub_227EC4308(uint64_t a1)
{
  v2 = sub_227F2B304();
  v3 = sub_227F2B8F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227EB2000, v2, v3, "Cancelling all downloads", v4, 2u);
    MEMORY[0x22AAAD240](v4, -1, -1);
  }

  v5 = v1[7];

  v6 = (v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
  sub_227EC3D44(&v6[2], v5, (v1 + 2));
  os_unfair_lock_unlock(v6);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  v11 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  v1[8] = v9;
  *v9 = v1;
  v9[1] = sub_227EC44F4;

  return v11(v7, v8);
}

uint64_t sub_227EC44F4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_227EC45F4, 0, 0);
}

uint64_t sub_227EC45F4()
{
  v1 = v0[9];
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 62)
  {
    result = sub_227F2BA84();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v0[9] + 32;
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x22AAAC680](v4, v0[9]);
    }

    else
    {
      v7 = *(v6 + 8 * v4);
    }

    v8 = v7;
    ++v4;
    [v7 cancel];
  }

  while (v3 != v4);
LABEL_10:

  v9 = v0[1];

  return v9();
}

uint64_t sub_227EC46FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 344) = a4;
  *(v5 + 192) = a3;
  *(v5 + 200) = v4;
  *(v5 + 176) = a1;
  *(v5 + 184) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  *(v5 + 208) = swift_task_alloc();
  v6 = sub_227F2B234();
  *(v5 + 216) = v6;
  *(v5 + 224) = *(v6 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  type metadata accessor for Schedule(0);
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  *(v5 + 256) = swift_task_alloc();
  v7 = sub_227F2B114();
  *(v5 + 264) = v7;
  *(v5 + 272) = *(v7 - 8);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC48D4, 0, 0);
}

uint64_t sub_227EC48D4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  sub_227F2ADD4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227EB8430(v0[32], &qword_27D80E310, &unk_227F2D990);
    sub_227F2B9A4();

    sub_227F2ADF4();
    sub_227ECDAD0(&unk_27D80E3C0, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v4 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v4);

    return sub_227F2BA74();
  }

  else
  {
    v6 = v0[25];
    (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
    v7 = (v6 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
    os_unfair_lock_lock((v6 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
    sub_227EC3D44(&v7[2], v6, (v0 + 2));
    v0[37] = 0;
    os_unfair_lock_unlock(v7);
    v0[38] = *(v0[25] + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket);
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_227EC4B1C;

    return sub_227F29790();
  }
}

uint64_t sub_227EC4B1C()
{

  return MEMORY[0x2822009F8](sub_227EC4C18, 0, 0);
}

uint64_t sub_227EC4C18()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_227EC4D3C;

  return v5(v1, v2);
}

uint64_t sub_227EC4D3C(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return MEMORY[0x2822009F8](sub_227EC4E3C, 0, 0);
}

uint64_t sub_227EC4E3C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_227EC64DC(sub_227ECD9FC, v1, v0 + 96);

  if (*(v0 + 120))
  {
    sub_227EB3AC4((v0 + 96), v0 + 56);
  }

  else
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    (*(v7 + 8))(v5, v6, v7);
    if (*(v0 + 120))
    {
      sub_227EB8430(v0 + 96, &qword_27D80E4F0, &qword_227F2DE78);
    }
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
  if ((*(v9 + 24))(v8, v9) == 1)
  {
    v10 = *(v0 + 248);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    sub_227EC1CF8(*(v0 + 184), v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v13 = *(*(*(v0 + 200) + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings) + 16);
      v14 = sub_227F2B644();
      [v13 doubleForKey_];
      v16 = v15;

      if (v16 <= 0.0)
      {
        v16 = 1500.0;
      }
    }

    else
    {
      v17 = *(v0 + 240);
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);
      v20 = *(v0 + 208);
      v21 = *(v0 + 216);
      v22 = *(v0 + 200);
      (*(v19 + 32))(v17, *(v0 + 248), v21);
      (*(v19 + 16))(v20, v17, v21);
      (*(v19 + 56))(v20, 0, 1, v21);
      v23 = *(v0 + 80);
      v24 = *(v0 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v23);
      (*(v24 + 48))(v20, v23, v24);
      v25 = *(v22 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings);
      v26 = *(v25 + 16);
      v27 = sub_227F2B644();
      [v26 doubleForKey_];

      sub_227F2B1A4();
      sub_227F2B1E4();
      v16 = v28;
      v29 = *(v25 + 16);
      v30 = sub_227F2B644();
      [v29 doubleForKey_];
      v32 = v31;

      v33 = *(v19 + 8);
      v33(v18, v21);
      v33(v17, v21);
      if (v32 <= 0.0)
      {
        v34 = 1500.0;
      }

      else
      {
        v34 = v32;
      }

      if (v16 <= v34)
      {
        v16 = v34;
      }
    }

    v35 = *(v0 + 80);
    v36 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v35);
    (*(v36 + 104))(v35, v36, v16);
  }

  if ((*(v0 + 344) & 1) == 0)
  {
    v37 = *(v0 + 192);
    v38 = *(v0 + 80);
    v39 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v38);
    (*(v39 + 80))(v37, v38, v39);
  }

  v40 = *(v0 + 304);
  v41 = *(v0 + 280);
  v42 = *(v0 + 200);
  (*(*(v0 + 272) + 16))(v41, *(v0 + 288), *(v0 + 264));
  sub_227ECDA1C(v0 + 56, v0 + 136);
  type metadata accessor for DownloadTask(0);
  swift_allocObject();
  *(v0 + 336) = sub_227ECF864(v41, (v0 + 136), v42);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2822009F8](sub_227EC52E0, v40, 0);
}

uint64_t sub_227EC52E0()
{
  sub_227F29CA8();

  return MEMORY[0x2822009F8](sub_227EC5348, 0, 0);
}

uint64_t sub_227EC5348()
{
  (*(v0[34] + 8))(v0[36], v0[33]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];
  v2 = v0[42];

  return v1(v2);
}

uint64_t sub_227EC5424(void *a1, uint64_t a2, uint64_t a3)
{
  v140 = a3;
  v143 = sub_227F2B114();
  v6 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v135 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  MEMORY[0x28223BE20](v139);
  v146 = &v127 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = MEMORY[0x28223BE20](v138);
  v133 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E500, &qword_227F2DE88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v127 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v136 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v127 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v145 = &v127 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v127 - v26;
  v28 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  sub_227ECDA1C(a1, &v159);
  sub_227ECDA1C(a1, &v156);
  sub_227ECDA1C(a1, v153);
  sub_227ECDA1C(a1, v150);
  sub_227ECDA1C(a1, v147);
  v134 = a2;
  v132 = v28;
  v29 = sub_227F2B304();
  v30 = sub_227F2B8D4();
  v31 = os_log_type_enabled(v29, v30);
  v142 = v6;
  v141 = v3;
  v144 = v23;
  if (!v31)
  {
    __swift_destroy_boxed_opaque_existential_0(v150);
    __swift_destroy_boxed_opaque_existential_0(&v159);

    __swift_destroy_boxed_opaque_existential_0(&v156);
    __swift_destroy_boxed_opaque_existential_0(v153);
    __swift_destroy_boxed_opaque_existential_0(v147);
    v43 = v143;
    goto LABEL_13;
  }

  v130 = v30;
  v131 = v29;
  v32 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v162 = v129;
  *v32 = 134219010;
  v34 = v160;
  v33 = v161;
  __swift_project_boxed_opaque_existential_1(&v159, v160);
  v35 = (*(v33 + 8))(v34, v33);
  __swift_destroy_boxed_opaque_existential_0(&v159);
  *(v32 + 4) = v35;
  *(v32 + 12) = 2080;
  v36 = v157;
  v37 = v158;
  __swift_project_boxed_opaque_existential_1(&v156, v157);
  (*(v37 + 16))(v36, v37);
  v38 = sub_227F2ADF4();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v17, 1, v38) == 1)
  {
    v40 = &qword_27D80E500;
    v41 = &qword_227F2DE88;
    v42 = v17;
  }

  else
  {
    sub_227F2ADD4();
    (*(v39 + 8))(v17, v38);
    v44 = v142;
    v45 = v143;
    if ((*(v142 + 48))(v27, 1, v143) != 1)
    {
      v46 = sub_227F2B004();
      v47 = v48;
      (*(v44 + 8))(v27, v45);
      goto LABEL_9;
    }

    v40 = &qword_27D80E310;
    v41 = &unk_227F2D990;
    v42 = v27;
  }

  sub_227EB8430(v42, v40, v41);
  v46 = 0;
  v47 = 0xE000000000000000;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(&v156);
  v49 = sub_227ECAC40(v46, v47, &v162);

  *(v32 + 14) = v49;
  *(v32 + 22) = 2080;
  v50 = v154;
  v51 = v155;
  __swift_project_boxed_opaque_existential_1(v153, v154);
  (*(v51 + 40))(v50, v51);
  v52 = sub_227F2B6C4();
  v54 = v53;
  __swift_destroy_boxed_opaque_existential_0(v153);
  v55 = sub_227ECAC40(v52, v54, &v162);

  *(v32 + 24) = v55;
  *(v32 + 32) = 2048;
  v56 = v151;
  v57 = v152;
  __swift_project_boxed_opaque_existential_1(v150, v151);
  v58 = (*(v57 + 24))(v56, v57);
  __swift_destroy_boxed_opaque_existential_0(v150);
  *(v32 + 34) = v58;
  *(v32 + 42) = 2112;
  v59 = v148;
  v60 = v149;
  __swift_project_boxed_opaque_existential_1(v147, v148);
  if ((*(v60 + 64))(v59, v60))
  {
    v61 = _swift_stdlib_bridgeErrorToNSError();
    v62 = v61;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v43 = v143;
  v6 = v142;
  __swift_destroy_boxed_opaque_existential_0(v147);
  *(v32 + 44) = v61;
  v63 = v128;
  *v128 = v62;
  v64 = v131;
  _os_log_impl(&dword_227EB2000, v131, v130, "found existing task:%ld\n url: %s \n beginning: %s\n state: %ld\n error: %@", v32, 0x34u);
  sub_227EB8430(v63, &qword_27D80E4A0, &qword_227F2DE40);
  MEMORY[0x22AAAD240](v63, -1, -1);
  v65 = v129;
  swift_arrayDestroy();
  MEMORY[0x22AAAD240](v65, -1, -1);
  MEMORY[0x22AAAD240](v32, -1, -1);

LABEL_13:
  v66 = a1[3];
  v67 = a1[4];
  v143 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v66);
  (*(v67 + 16))(v66, v67);
  v68 = sub_227F2ADF4();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v15, 1, v68) == 1)
  {
    sub_227EB8430(v15, &qword_27D80E500, &qword_227F2DE88);
    v70 = v145;
    (*(v6 + 56))(v145, 1, 1, v43);
  }

  else
  {
    v71 = v145;
    sub_227F2ADD4();
    (*(v69 + 8))(v15, v68);
    v70 = v71;
  }

  v72 = v144;
  sub_227F2ADD4();
  v73 = *(v139 + 48);
  v74 = v146;
  sub_227EC2180(v70, v146, &qword_27D80E310, &unk_227F2D990);
  v75 = v74;
  sub_227EC2180(v72, v74 + v73, &qword_27D80E310, &unk_227F2D990);
  v76 = *(v6 + 48);
  if (v76(v74, 1, v43) == 1)
  {
    sub_227EB8430(v72, &qword_27D80E310, &unk_227F2D990);
    v77 = v146;
    sub_227EB8430(v70, &qword_27D80E310, &unk_227F2D990);
    if (v76(v77 + v73, 1, v43) == 1)
    {
      sub_227EB8430(v77, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_24;
    }

LABEL_21:
    sub_227EB8430(v77, &qword_27D80E4F8, &qword_227F2DE80);
    return 0;
  }

  v78 = v136;
  sub_227EC2180(v74, v136, &qword_27D80E310, &unk_227F2D990);
  if (v76(v74 + v73, 1, v43) == 1)
  {
    sub_227EB8430(v144, &qword_27D80E310, &unk_227F2D990);
    v77 = v146;
    sub_227EB8430(v145, &qword_27D80E310, &unk_227F2D990);
    (*(v142 + 8))(v78, v43);
    goto LABEL_21;
  }

  v80 = v142;
  v81 = v74 + v73;
  v82 = v135;
  (*(v142 + 32))(v135, v81, v43);
  sub_227ECDAD0(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v83 = sub_227F2B634();
  v84 = *(v80 + 8);
  v84(v82, v43);
  sub_227EB8430(v144, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v145, &qword_27D80E310, &unk_227F2D990);
  v84(v78, v43);
  sub_227EB8430(v75, &qword_27D80E310, &unk_227F2D990);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v85 = v143;
  v86 = v143[3];
  v87 = v143[4];
  __swift_project_boxed_opaque_existential_1(v143, v86);
  if ((*(v87 + 24))(v86, v87) == 2)
  {
    return 0;
  }

  v88 = v85[3];
  v89 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v88);
  v90 = (*(v89 + 64))(v88, v89);
  if (v90)
  {

    return 0;
  }

  v91 = v85[3];
  v92 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v91);
  v93 = v133;
  (*(v92 + 40))(v91, v92);
  v94 = sub_227F2B234();
  v95 = *(v94 - 8);
  if ((*(v95 + 48))(v93, 1, v94) == 1)
  {
    sub_227EB8430(v93, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    sub_227F2B1E4();
    v97 = v96;
    (*(v95 + 8))(v93, v94);
    v98 = *(v134 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings);
    v99 = *(v98 + 16);
    v100 = sub_227F2B644();
    [v99 doubleForKey_];
    v102 = v101;

    if (v102 <= 0.0)
    {
      v102 = *(v98 + 40);
    }

    if (v102 < v97)
    {
      sub_227ECDA1C(v85, &v159);
      v103 = sub_227F2B304();
      v104 = sub_227F2B8E4();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 134218240;
        v106 = v160;
        v107 = v161;
        __swift_project_boxed_opaque_existential_1(&v159, v160);
        v108 = (*(v107 + 8))(v106, v107);
        __swift_destroy_boxed_opaque_existential_0(&v159);
        *(v105 + 4) = v108;
        *(v105 + 12) = 2048;
        *(v105 + 14) = v97;
        _os_log_impl(&dword_227EB2000, v103, v104, "cancelling task %ld scheduled too far in future: %f seconds", v105, 0x16u);
        MEMORY[0x22AAAD240](v105, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v159);
      }

      v125 = v85[3];
      v126 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v125);
      (*(v126 + 120))(v125, v126);
      return 0;
    }
  }

  sub_227ECDA1C(v85, &v159);
  sub_227ECDA1C(v85, &v156);
  sub_227ECDA1C(v85, v153);
  v109 = sub_227F2B304();
  v110 = sub_227F2B8D4();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v150[0] = v112;
    *v111 = 134218498;
    v113 = v160;
    v114 = v161;
    __swift_project_boxed_opaque_existential_1(&v159, v160);
    v115 = (*(v114 + 8))(v113, v114);
    __swift_destroy_boxed_opaque_existential_0(&v159);
    *(v111 + 4) = v115;
    *(v111 + 12) = 2080;
    v116 = v157;
    v117 = v158;
    __swift_project_boxed_opaque_existential_1(&v156, v157);
    (*(v117 + 40))(v116, v117);
    v118 = sub_227F2B6C4();
    v120 = v119;
    __swift_destroy_boxed_opaque_existential_0(&v156);
    v121 = sub_227ECAC40(v118, v120, v150);

    *(v111 + 14) = v121;
    *(v111 + 22) = 2048;
    v122 = v154;
    v123 = v155;
    __swift_project_boxed_opaque_existential_1(v153, v154);
    v124 = (*(v123 + 24))(v122, v123);
    __swift_destroy_boxed_opaque_existential_0(v153);
    *(v111 + 24) = v124;
    _os_log_impl(&dword_227EB2000, v109, v110, "found matching existing task %ld beginning: %s state: %ld", v111, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x22AAAD240](v112, -1, -1);
    MEMORY[0x22AAAD240](v111, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v153);
    __swift_destroy_boxed_opaque_existential_0(&v159);

    __swift_destroy_boxed_opaque_existential_0(&v156);
  }

  return 1;
}

uint64_t (*sub_227EC64DC@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_227ECDA1C(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_227EB3AC4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t DownloadManager.download(_:config:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v3[14] = swift_task_alloc();
  v4 = sub_227F2B234();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_227F2B114();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_227F2ADF4();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC6754, 0, 0);
}

uint64_t sub_227EC6754()
{
  v36 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[11];
  v5 = v0[12];
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  sub_227F2ADC4();
  v7 = type metadata accessor for DownloadConfiguration(0);
  v8 = v7;
  if (*(v5 + *(v7 + 32) + 8))
  {
    sub_227F2ADE4();
  }

  else
  {
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[14];
    sub_227EC2180(v0[12] + *(v7 + 28), v11, &unk_27D80E3B0, &unk_227F2DB00);
    if ((*(v10 + 48))(v11, 1, v9) == 1)
    {
      sub_227EB8430(v0[14], &unk_27D80E3B0, &unk_227F2DB00);
    }

    else
    {
      v13 = v0[16];
      v12 = v0[17];
      v14 = v0[15];
      (*(v13 + 32))(v12, v0[14], v14);
      sub_227F134EC();
      sub_227F2ADE4();

      (*(v13 + 8))(v12, v14);
    }
  }

  v0[27] = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v15 = sub_227F2B304();
  v16 = sub_227F2B8D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315394;
    swift_beginAccess();
    sub_227ECDAD0(&unk_27D80E3C0, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v19 = sub_227F2BC24();
    v21 = sub_227ECAC40(v19, v20, &v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v22 = sub_227F2ADB4();
    swift_endAccess();
    if (!v22)
    {
      sub_227ECC90C(MEMORY[0x277D84F90]);
    }

    v23 = sub_227F2B5E4();
    v25 = v24;

    v26 = sub_227ECAC40(v23, v25, &v35);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_227EB2000, v15, v16, "httpRequest: %s header: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v18, -1, -1);
    MEMORY[0x22AAAD240](v17, -1, -1);
  }

  v27 = v0[12];
  swift_beginAccess();
  v28 = *(v8 + 48);
  v29 = v27 + *(v8 + 36);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = swift_task_alloc();
  v0[28] = v32;
  *v32 = v0;
  v32[1] = sub_227EC6B80;
  v33 = v0[24];

  return sub_227EC46FC(v33, v27 + v28, v30, v31);
}

uint64_t sub_227EC6B80(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_227EC6C80, 0, 0);
}

uint64_t sub_227EC6C80()
{
  v38 = v0;
  v1 = *(v0 + 104);
  v2 = (*(v0 + 232) + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  if (*(*(v6 + 8) + 16) && (sub_227ECA918(v5), (v7 & 1) != 0))
  {
    (*(v0 + 200))(*(v0 + 160), *(v0 + 88), *(v0 + 144));
    v8 = sub_227F2B304();
    v9 = sub_227F2B8D4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    if (v10)
    {
      v36 = v9;
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v14 = 136315394;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v15 = sub_227F2BC24();
      log = v8;
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_227ECAC40(v15, v17, &v37);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v5;
      _os_log_impl(&dword_227EB2000, log, v36, "Download for %s was already requested by client. Running task with %ld ID.", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAAD240](v35, -1, -1);
      MEMORY[0x22AAAD240](v14, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    (*(v0 + 200))(v19, *(v0 + 88), v20);
    type metadata accessor for DownloadTaskState(0);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v23 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v24 = type metadata accessor for DownloadOutcome(0);
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    *(v22 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v22 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v21 + 32))(v22 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v6 + 8);
    sub_227ECBD14(v22, v5, isUniquelyReferenced_nonNull_native);
    *(v6 + 8) = v37;
  }

  os_unfair_lock_unlock(v6);

  v26 = sub_227F2B304();
  v27 = sub_227F2B8D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    v29 = v2[3];
    v30 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v29);
    *(v28 + 4) = (*(v30 + 24))(v29, v30);

    _os_log_impl(&dword_227EB2000, v26, v27, "downloadTask state: %ld", v28, 0xCu);
    MEMORY[0x22AAAD240](v28, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v31 = *(v0 + 8);
  v32 = *(v0 + 232);

  return v31(v32);
}

void sub_227EC712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  if (*(*(v7 + 8) + 16) && (sub_227ECA918(a2), (v8 & 1) != 0))
  {

    if ((sub_227ED0E08(a1, a3) & 1) == 0)
    {
      sub_227ED22D8(a2);
    }

    os_unfair_lock_unlock(v7);
  }

  else
  {
    sub_227F2BA74();
    __break(1u);
  }
}

void sub_227EC724C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  if (*(*(v5 + 8) + 16) && (sub_227ECA918(a1), (v6 & 1) != 0))
  {

    sub_227ED131C(a2);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    sub_227F2BA74();
    __break(1u);
  }
}

void sub_227EC732C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_227F2B114();
  v57 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v52 - v13;
  v14 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v15 = a4;
  v58 = v14;
  v16 = sub_227F2B304();
  v17 = sub_227F2B8D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v54 = v10;
    v19 = v18;
    v53 = swift_slowAlloc();
    v59 = a4;
    v60 = v53;
    *v19 = 134218498;
    *(v19 + 4) = a1;
    *(v19 + 12) = 2080;
    v20 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4C8, &qword_227F2DE50);
    v21 = sub_227F2B6C4();
    v23 = a2;
    v24 = a3;
    v25 = v5;
    v26 = a1;
    v27 = sub_227ECAC40(v21, v22, &v60);

    *(v19 + 14) = v27;
    a1 = v26;
    v5 = v25;
    a3 = v24;
    a2 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v23;
    _os_log_impl(&dword_227EB2000, v16, v17, "task %ld didCompleteWithError %s state: %ld", v19, 0x20u);
    v28 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x22AAAD240](v28, -1, -1);
    v29 = v19;
    v10 = v54;
    MEMORY[0x22AAAD240](v29, -1, -1);
  }

  v30 = a4;
  if (a4)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v32 = a3;
    if ([v32 statusCode] - 600 >= 0xFFFFFFFFFFFFFF38)
    {
      v44 = [v32 statusCode];
      sub_227ECD8EC();
      v30 = swift_allocError();
      *v45 = v44;

LABEL_4:
      v31 = a4;
      sub_227EC77FC(a1, v30, a3);

      return;
    }

    v33 = v32;
    v34 = [v33 URL];
    if (v34)
    {
      v35 = v55;
      v36 = v34;
      sub_227F2B084();

      v38 = v56;
      v37 = v57;
      (*(v57 + 32))(v56, v35, v10);
      v39 = [v33 allHeaderFields];
      v40 = sub_227F2B5D4();

      v41 = a2;
      v42 = sub_227EC7B60(v40);

      v43 = v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
      sub_227EC7E40((v43 + 8), a1, v5, v38, v42, v33, v41);

      os_unfair_lock_unlock(v43);

      (*(v37 + 8))(v38, v10);
      return;
    }
  }

  v46 = a3;
  v47 = sub_227F2B304();
  v48 = sub_227F2B8E4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = a3;
    v51 = v46;
    _os_log_impl(&dword_227EB2000, v47, v48, "response has no url: %@", v49, 0xCu);
    sub_227EB8430(v50, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v50, -1, -1);
    MEMORY[0x22AAAD240](v49, -1, -1);
  }
}

void sub_227EC77FC(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v11 = *(v10 + 8);
  if (*(v11 + 16) && (v12 = sub_227ECA918(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    if (a3)
    {
      v15 = [a3 statusCode];
    }

    else
    {
      v15 = 0;
    }

    *v9 = a2;
    *(v9 + 1) = v15;
    v9[16] = a3 == 0;
    v19 = type metadata accessor for DownloadOutcome(0);
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    v20 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    swift_beginAccess();
    v21 = a2;
    sub_227ECD87C(v9, v14 + v20);
    swift_endAccess();
    if (a3)
    {
      v22 = [a3 allHeaderFields];
      v23 = sub_227F2B5D4();

      v24 = sub_227EC7B60(v23);
    }

    else
    {
      v24 = 0;
    }

    *(v14 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = v24;

    sub_227EC88BC(v14);
    sub_227ED153C();
    v25 = sub_227F2B304();
    v26 = sub_227F2B8F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = a1;
      _os_log_impl(&dword_227EB2000, v25, v26, "%ld failed & handled, removing from taskStates", v27, 0xCu);
      MEMORY[0x22AAAD240](v27, -1, -1);
    }

    sub_227ED22D8(a1);
  }

  else
  {
    v16 = sub_227F2B304();
    v17 = sub_227F2B8E4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_227EB2000, v16, v17, "taskState missing at error handling time for taskId: %ld", v18, 0xCu);
      MEMORY[0x22AAAD240](v18, -1, -1);
    }
  }

  os_unfair_lock_unlock(v10);
}

unint64_t sub_227EC7B60(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4D0, &qword_227F2DE58);
    v2 = sub_227F2BAB4();
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
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_227ECD99C(*(v1 + 48) + 40 * v15, v28);
    sub_227EC2D28(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_227ECD99C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_227EB8430(v25, &qword_27D80E4D8, &qword_227F2DE60);

      goto LABEL_22;
    }

    sub_227EC2D28(v26 + 8, v24);
    sub_227EB8430(v25, &qword_27D80E4D8, &qword_227F2DE60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_227ECA808(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

void sub_227EC7E40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v83 = a5;
  v84 = a6;
  v93 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v79 - v12;
  v13 = sub_227F2B114();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  v21 = *a1;
  v22 = *(*a1 + 16);
  v90 = v7;
  if (!v22 || (sub_227ECA918(a2), (v23 & 1) == 0))
  {
    v86 = *(v14 + 16);
    v86(v20, v93, v13);
    v89 = a3;
    v24 = v14;
    v25 = sub_227F2B304();
    v26 = sub_227F2B8E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v85 = a1;
      v28 = v27;
      v80 = swift_slowAlloc();
      v92[0] = v80;
      *v28 = 136315394;
      *(v28 + 4) = sub_227ECAC40(0xD000000000000030, 0x8000000227F33D10, v92);
      *(v28 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = sub_227F2BC24();
      v30 = v24;
      v79 = v24;
      v31 = a2;
      v33 = v32;
      (*(v30 + 8))(v20, v13);
      v34 = sub_227ECAC40(v29, v33, v92);
      a2 = v31;

      *(v28 + 14) = v34;
      _os_log_impl(&dword_227EB2000, v25, v26, "%s for %s without task object. Previous run crashed?", v28, 0x16u);
      v35 = v80;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v35, -1, -1);
      v36 = v28;
      a1 = v85;
      MEMORY[0x22AAAD240](v36, -1, -1);

      v14 = v79;
    }

    else
    {

      (*(v24 + 8))(v20, v13);
      v14 = v24;
    }

    v37 = v87;
    v86(v87, v93, v13);
    type metadata accessor for DownloadTaskState(0);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v39 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v40 = type metadata accessor for DownloadOutcome(0);
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *(v38 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v38 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v14 + 32))(v38 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v37, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92[0] = *a1;
    sub_227ECBD14(v38, a2, isUniquelyReferenced_nonNull_native);
    v21 = v92[0];
    *a1 = v92[0];
    a3 = v89;
  }

  if (*(v21 + 16) && (v42 = sub_227ECA918(a2), (v43 & 1) != 0))
  {
    v85 = a1;
    v44 = *(*(v21 + 56) + 8 * v42);
    v45 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    swift_beginAccess();
    v46 = v82;
    sub_227EC2180(v44 + v45, v82, &unk_27D80E4A8, &qword_227F2DE48);
    v47 = type metadata accessor for DownloadOutcome(0);
    LODWORD(v45) = (*(*(v47 - 8) + 48))(v46, 1, v47);

    sub_227EB8430(v46, &unk_27D80E4A8, &qword_227F2DE48);
    v48 = sub_227F2B304();
    if (v45 == 1)
    {
      v49 = sub_227F2B8E4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v48, v49, "Task %ld is not completed", v50, 0xCu);
        MEMORY[0x22AAAD240](v50, -1, -1);
      }

      v51 = sub_227F2B304();
      v52 = sub_227F2B8E4();
    }

    else
    {
      v63 = sub_227F2B8D4();
      if (os_log_type_enabled(v48, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        *(v64 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v48, v63, "Task %ld is completed", v64, 0xCu);
        MEMORY[0x22AAAD240](v64, -1, -1);
      }

      v51 = sub_227F2B304();
      v52 = sub_227F2B8D4();
    }

    v65 = v52;

    if (os_log_type_enabled(v51, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v91[0] = v67;
      *v66 = 136315138;

      v68 = sub_227ED1BF8();
      v89 = a3;
      v69 = a2;
      v71 = v70;

      v72 = sub_227ECAC40(v68, v71, v91);
      a2 = v69;
      a3 = v89;

      *(v66 + 4) = v72;
      _os_log_impl(&dword_227EB2000, v51, v65, "%s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x22AAAD240](v67, -1, -1);
      MEMORY[0x22AAAD240](v66, -1, -1);
    }

    *(v44 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = v83;

    sub_227EC88BC(v44);
    sub_227ED153C();
    swift_beginAccess();
    if (*(*(v44 + 16) + 16) || v81 == 2 || *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion))
    {
      v73 = sub_227F2B304();
      v74 = sub_227F2B8F4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v73, v74, "%ld finished & consumed, removing from taskStates", v75, 0xCu);
        MEMORY[0x22AAAD240](v75, -1, -1);
      }

      sub_227ED22D8(a2);
    }

    else
    {
      v76 = sub_227F2B304();
      v77 = sub_227F2B8E4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        *(v78 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v76, v77, "task %ld finished, but not yet consumed", v78, 0xCu);
        MEMORY[0x22AAAD240](v78, -1, -1);
      }
    }
  }

  else
  {
    v53 = v88;
    (*(v14 + 16))(v88, v93, v13);
    v54 = sub_227F2B304();
    v55 = sub_227F2B8E4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v14;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92[0] = v58;
      *v57 = 134218242;
      *(v57 + 4) = a2;
      *(v57 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v59 = sub_227F2BC24();
      v61 = v60;
      (*(v56 + 8))(v53, v13);
      v62 = sub_227ECAC40(v59, v61, v92);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_227EB2000, v54, v55, "taskState missing for taskId: %ld url: %s", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AAAD240](v58, -1, -1);
      MEMORY[0x22AAAD240](v57, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v53, v13);
    }
  }
}

uint64_t sub_227EC88BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for DownloadResponse(0);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion);
  if (v8)
  {
    sub_227ED19C4(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8(v1, a1, v7);
    return sub_227ECD940(v7);
  }

  return result;
}

void sub_227EC8BFC(uint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v6 = *(v5 + 8);
  if (*(v6 + 16))
  {
    v7 = sub_227ECA918(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = *(v9 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
      *(v9 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = a2;

      v11 = a2;
    }
  }

  os_unfair_lock_unlock(v5);
}

void sub_227EC8C98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v17 = *(v9 + 16);
  v50 = a2;
  v17(&v43 - v14, a2, v8);
  v46 = v16;
  v18 = sub_227F2B304();
  v19 = sub_227F2B8D4();
  v20 = os_log_type_enabled(v18, v19);
  v49 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = a3;
    v24 = v23;
    v51 = v23;
    *v22 = 134218242;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2080;
    sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = sub_227F2BC24();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v15, v8);
    v29 = sub_227ECAC40(v25, v27, &v51);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_227EB2000, v18, v19, "downloadTask %ld didFinishDownloadingTo %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v30 = v24;
    a3 = v44;
    MEMORY[0x22AAAD240](v30, -1, -1);
    v31 = v22;
    v4 = v45;
    MEMORY[0x22AAAD240](v31, -1, -1);
  }

  else
  {

    v28 = *(v9 + 8);
    v28(v15, v8);
  }

  v32 = [a3 URL];
  if (v32)
  {
    v33 = v47;
    v34 = v32;
    sub_227F2B084();

    v35 = v48;
    (*(v9 + 32))(v48, v33, v8);
    v36 = v4 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
    os_unfair_lock_lock((v4 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
    sub_227EC90BC((v36 + 8), v49, v4, v35, a3, v50);
    os_unfair_lock_unlock(v36);
    v28(v35, v8);
  }

  else
  {
    v37 = a3;
    v38 = sub_227F2B304();
    v39 = sub_227F2B8E4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_227EB2000, v38, v39, "response has no url: %@", v40, 0xCu);
      sub_227EB8430(v41, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v41, -1, -1);
      MEMORY[0x22AAAD240](v40, -1, -1);
    }
  }
}

void sub_227EC90BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v131 = a6;
  v133 = a5;
  v142 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v119 - v12;
  v14 = sub_227F2B234();
  v123 = *(v14 - 8);
  v124 = v14;
  MEMORY[0x28223BE20](v14);
  v122 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227F2AFF4();
  v129 = *(v16 - 8);
  v130 = v16;
  MEMORY[0x28223BE20](v16);
  v128 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227F2B274();
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x28223BE20](v18);
  v125 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227F2B114();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v132 = &v119 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v119 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v119 - v28;
  v30 = *a1;
  if (!*(*a1 + 16) || (sub_227ECA918(a2), (v31 & 1) == 0))
  {
    v135 = a1;
    v137 = a2;
    v138 = v6;
    v134 = *(v21 + 16);
    v134(v29, v142, v20);
    v136 = a3;
    v32 = sub_227F2B304();
    v33 = sub_227F2B8E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v121 = v13;
      v120 = v35;
      v141[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_227ECAC40(0xD00000000000002CLL, 0x8000000227F33CE0, v141);
      *(v34 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_227F2BC24();
      v37 = v21;
      v38 = v20;
      v40 = v39;
      (*(v37 + 8))(v29, v38);
      v41 = sub_227ECAC40(v36, v40, v141);
      v20 = v38;
      v21 = v37;

      *(v34 + 14) = v41;
      _os_log_impl(&dword_227EB2000, v32, v33, "%s for %s without task state. Previous run crashed?", v34, 0x16u);
      v42 = v120;
      swift_arrayDestroy();
      v13 = v121;
      MEMORY[0x22AAAD240](v42, -1, -1);
      MEMORY[0x22AAAD240](v34, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v29, v20);
    }

    v43 = v139;
    v134(v139, v142, v20);
    type metadata accessor for DownloadTaskState(0);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v45 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v46 = type metadata accessor for DownloadOutcome(0);
    (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
    *(v44 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v44 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v21 + 32))(v44 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v43, v20);
    v47 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141[0] = *v47;
    a2 = v137;
    sub_227ECBD14(v44, v137, isUniquelyReferenced_nonNull_native);
    v30 = v141[0];
    *v47 = v141[0];
    v7 = v138;
    a3 = v136;
  }

  if (*(v30 + 16) && (v49 = sub_227ECA918(a2), (v50 & 1) != 0))
  {
    v51 = *(*(v30 + 56) + 8 * v49);
    v52 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
    v139 = v20;
    v140 = v51;

    v53 = v133;
    v54 = a3;
    v136 = v52;
    v55 = sub_227F2B304();
    v56 = sub_227F2B8D4();
    v57 = os_log_type_enabled(v55, v56);
    v119 = v21;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 134218240;
      *(v58 + 4) = a2;
      *(v58 + 12) = 2048;
      *(v58 + 14) = [v53 statusCode];

      _os_log_impl(&dword_227EB2000, v55, v56, "downloadTask %ld statusCode %ld", v58, 0x16u);
      MEMORY[0x22AAAD240](v58, -1, -1);
    }

    else
    {

      v55 = v53;
    }

    if ([v53 statusCode]== 304)
    {
      v72 = type metadata accessor for DownloadOutcome(0);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      (*(*(v72 - 8) + 56))(v13, 0, 1, v72);
      v73 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
      v74 = v140;
      swift_beginAccess();
      sub_227ECD87C(v13, &v74[v73]);
      swift_endAccess();

      return;
    }

    v75 = sub_227F2B644();
    v76 = [v53 valueForHTTPHeaderField:v75];

    if (v76)
    {
      v77 = sub_227F2B674();
      v79 = v78;
    }

    else
    {
      v77 = 0;
      v79 = 0;
    }

    v80 = [v53 statusCode];
    if (v80 == 206 || v80 == 200)
    {
      v133 = v77;
      v134 = v79;
      v137 = a2;
      v121 = v13;
      v135 = [objc_opt_self() defaultManager];
      v138 = v7;
      v81 = v125;
      sub_227F2B264();
      v82 = sub_227F2B254();
      v84 = v83;
      (*(v126 + 8))(v81, v127);
      v141[0] = v82;
      v141[1] = v84;
      v85 = v128;
      v86 = v129;
      v87 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x277CC91D8], v130);
      sub_227EB84D8();
      v88 = v132;
      sub_227F2B104();
      v89 = v87;
      v90 = v135;
      (*(v86 + 8))(v85, v89);

      v91 = v138;
      sub_227F13B0C(v131);
      if (!v91)
      {
        v103 = sub_227F2B304();
        v104 = sub_227F2B8D4();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 134217984;
          *(v105 + 4) = v137;
          _os_log_impl(&dword_227EB2000, v103, v104, "setting state to downloadComplete: %ld", v105, 0xCu);
          MEMORY[0x22AAAD240](v105, -1, -1);
        }

        v106 = [v53 statusCode];
        v107 = *(v54 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock + 24);
        v108 = *(v54 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock + 32);
        __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock), v107);
        v109 = v122;
        (*(v108 + 8))(v107, v108);

        v110 = v119;
        v13 = v121;
        v111 = v139;
        (*(v119 + 16))(v121, v142, v139);
        v112 = type metadata accessor for FileInfo(0);
        (*(v110 + 32))(&v13[v112[5]], v132, v111);
        v113 = v112[9];
        v115 = v123;
        v114 = v124;
        (*(v123 + 32))(&v13[v113], v109, v124);
        (*(v115 + 56))(&v13[v113], 0, 1, v114);
        v116 = &v13[v112[6]];
        v117 = v134;
        *v116 = v133;
        *(v116 + 1) = v117;
        *&v13[v112[7]] = v106;
        v118 = &v13[v112[8]];
        v72 = type metadata accessor for DownloadOutcome(0);
        *v118 = 0;
        *(v118 + 1) = 0;
        goto LABEL_17;
      }

      (*(v119 + 8))(v88, v139);

      v92 = v91;
      v93 = sub_227F2B304();
      v94 = sub_227F2B8E4();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v95 = 138412290;
        v97 = v91;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 4) = v98;
        *v96 = v98;
        _os_log_impl(&dword_227EB2000, v93, v94, "Error writing file: %@", v95, 0xCu);
        sub_227EB8430(v96, &qword_27D80E4A0, &qword_227F2DE40);
        MEMORY[0x22AAAD240](v96, -1, -1);
        MEMORY[0x22AAAD240](v95, -1, -1);
      }

      v99 = v121;
      *v121 = v91;
      *(v99 + 8) = 0;
      *(v99 + 16) = 1;
      v100 = type metadata accessor for DownloadOutcome(0);
      *(v99 + 24) = 0;
      *(v99 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
      v101 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
      v102 = v140;
      swift_beginAccess();
      sub_227ECD87C(v99, &v102[v101]);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    v59 = v140;
    (*(v21 + 16))(v140, v142, v20);
    v60 = sub_227F2B304();
    v61 = sub_227F2B8E4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = a2;
      v63 = v21;
      v64 = swift_slowAlloc();
      v65 = v59;
      v66 = swift_slowAlloc();
      v141[0] = v66;
      *v64 = 134218242;
      *(v64 + 4) = v62;
      *(v64 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v67 = sub_227F2BC24();
      v68 = v20;
      v70 = v69;
      (*(v63 + 8))(v65, v68);
      v71 = sub_227ECAC40(v67, v70, v141);

      *(v64 + 14) = v71;
      _os_log_impl(&dword_227EB2000, v60, v61, "taskState missing for taskId: %ld url: %s", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x22AAAD240](v66, -1, -1);
      MEMORY[0x22AAAD240](v64, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v59, v20);
    }
  }
}

id DownloadManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DownloadManager.urlSession(_:task:didCompleteWithError:)(int a1, id a2, void *a3)
{
  v5 = [a2 taskIdentifier];
  v6 = [a2 state];
  v7 = [a2 response];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  sub_227EC732C(v5, v6, v10, a3);
}

void DownloadManager.urlSession(_:downloadTask:didFinishDownloadingTo:)(int a1, id a2, uint64_t a3)
{
  v6 = [a2 response];
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_7:
    sub_227F2BA74();
    __break(1u);
    return;
  }

  sub_227EC8C98([a2 taskIdentifier], a3, v5);
}

unint64_t sub_227ECA808(uint64_t a1, uint64_t a2)
{
  sub_227F2BD14();
  sub_227F2B704();
  v4 = sub_227F2BD44();

  return sub_227ECA95C(a1, a2, v4);
}

unint64_t sub_227ECA880(uint64_t a1)
{
  sub_227F2B274();
  sub_227ECDAD0(&qword_27D80E488, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_227F2B5F4();

  return sub_227ECAA14(a1, v2);
}

unint64_t sub_227ECA918(uint64_t a1)
{
  v2 = sub_227F2BD04();

  return sub_227ECABD4(a1, v2);
}

unint64_t sub_227ECA95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_227F2BC64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_227ECAA14(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_227F2B274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_227ECDAD0(&qword_27D80E490, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_227F2B634();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_227ECABD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_227ECAC40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227ECAD0C(v11, 0, 0, 1, a1, a2);
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
    sub_227EC2D28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_227ECAD0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_227ECAE18(a5, a6);
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
    result = sub_227F2B9F4();
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

void *sub_227ECAE18(uint64_t a1, unint64_t a2)
{
  v3 = sub_227ECAE64(a1, a2);
  sub_227ECAF94(&unk_283B4ED40);
  return v3;
}

void *sub_227ECAE64(uint64_t a1, unint64_t a2)
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

  v6 = sub_227ECB080(v5, 0);
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

  result = sub_227F2B9F4();
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
        v10 = sub_227F2B744();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_227ECB080(v10, 0);
        result = sub_227F2B994();
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

uint64_t sub_227ECAF94(uint64_t result)
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

  result = sub_227ECB0F4(result, v11, 1, v3);
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

void *sub_227ECB080(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E0, &qword_227F2DE68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_227ECB0F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E0, &qword_227F2DE68);
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

void *sub_227ECB1E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227ECB208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227ECB208(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E510, &qword_227F2DE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E518, &qword_227F2DE98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_227ECB350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E498, &qword_227F2DE38);
  result = sub_227F2BAA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_227F2BD04();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_227ECB5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_227F2B274();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
  v47 = v4;
  result = sub_227F2BAA4();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_227ECDAD0(&qword_27D80E488, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_227F2B5F4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}