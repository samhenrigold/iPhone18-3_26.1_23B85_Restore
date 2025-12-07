uint64_t sub_20D7CB098(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_20D974268();

    return sub_20D973DA8();
  }

  else
  {
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    sub_20D975508();
    swift_getWitnessTable();
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    return sub_20D973DA8();
  }
}

uint64_t sub_20D7CB1FC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_20D974268();
    sub_20D973DA8();
  }

  else
  {
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    sub_20D975508();
    swift_getWitnessTable();
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20D7CB408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20D7CB428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_20D7CB498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridForecastSnapshotType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D9729D8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7CB5A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GridForecastSnapshotType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D9729D8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7CB810(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7CB940(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7CBAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20D972628();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CBB50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_20D972628();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CBBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A50, &qword_20D976DE8);
  sub_20D7E6DDC();
  sub_20D7E702C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CBC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B30, &qword_20D977058);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7CBD14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B30, &qword_20D977058);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7CBDE8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  if (*(v0 + 88))
  {
  }

  MEMORY[0x20F324310](v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20D7CBE44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D7CBE7C()
{
  v1 = *(type metadata accessor for TapToRadarButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B20, &qword_20D976FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20D973CA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7CBF7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B48, &qword_20D977120);
  sub_20D7EB36C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CC02C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BD0, &qword_20D977230);
  sub_20D973CD8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230, MEMORY[0x277CDE5A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CC0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7CC154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7CC28C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973FB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20D7CC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7CC40C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7CC57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20D7CC6C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7CC80C()
{
  v1 = type metadata accessor for InlineEducationTip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 24)))
  {
  }

  v7 = *(v1 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7CC9A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7CCAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7CCB6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20D9749F8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_20D7CCC24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_20D9749F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CCCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390F8, &qword_20D977BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7CCD78()
{
  v1 = type metadata accessor for GridForecastIndicator(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 24)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_20D7CCF14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshot(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20D7CD08C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for HistoricalUsageSnapshot(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7CD2D0()
{
  v1 = sub_20D9729D8();
  v2 = *(v1 - 8);
  v32 = *(v2 + 80);
  v3 = (v32 + 16) & ~v32;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GridForecastSnapshot(0);
  v31 = *(*(v5 - 8) + 80);
  v6 = (v4 + v31 + v3 + 1) & ~v31;
  v30 = *(*(v5 - 8) + 64);
  v7 = (v30 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for GridForecastAppView(0);
  v29 = *(*(v8 - 1) + 80);
  v9 = (v7 + v29 + 40) & ~v29;
  v10 = *(*(v8 - 1) + 64) + v9;
  v33 = v1;
  v34 = *(v2 + 8);
  v34(v0 + v3, v1);
  v11 = (v0 + v6);
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v14 = sub_20D972698();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v16 = v10 + 7;
  v34(v11 + *(v5 + 20), v33);

  __swift_destroy_boxed_opaque_existential_0((v0 + v7));
  v17 = v0 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_20D973AF8();
    (*(*(v18 - 8) + 8))(v0 + v9, v18);
  }

  else
  {
  }

  v19 = v16 & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x20F324310](v17 + v8[5]);

  if (*(v17 + v8[9]))
  {
  }

  if (*(v17 + v8[10]))
  {
  }

  if (*(v17 + v8[11]))
  {
  }

  v20 = (v31 + v19 + 16) & ~v31;
  if (*(v17 + v8[12]))
  {
  }

  v21 = v8[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v22 - 8) + 8))(v17 + v21, v22);

  v23 = (v0 + v20);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 == 1)
  {

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v26 = sub_20D972698();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v23 + v25, 1, v26))
    {
      (*(v27 + 8))(v23 + v25, v26);
    }
  }

  else if (!v24)
  {
  }

  v34(v23 + *(v5 + 20), v33);

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v20 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return MEMORY[0x2821FE8E8](v0, ((v20 + v30 + 55) & 0xFFFFFFFFFFFFFFF8) + 16, v32 | v31 | v29 | 7);
}

uint64_t sub_20D7CD848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CD880()
{
  v1 = type metadata accessor for GridForecastAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for GridForecastSnapshot(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20D973AF8();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  MEMORY[0x20F324310](v8 + v1[5]);

  if (*(v8 + v1[9]))
  {
  }

  v10 = v4 + v6;
  if (*(v8 + v1[10]))
  {
  }

  v11 = v3 + v10;
  if (*(v8 + v1[11]))
  {
  }

  v12 = v11 & ~v6;
  if (*(v8 + v1[12]))
  {
  }

  v13 = v1[14];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  v15 = (v0 + v12);
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v18 = sub_20D972698();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v20 = v2 | v6;
  v21 = *(v5 + 20);
  v22 = sub_20D9729D8();
  (*(*(v22 - 8) + 8))(v15 + v21, v22);

  return MEMORY[0x2821FE8E8](v0, v7 + v12 + 1, v20 | 7);
}

uint64_t sub_20D7CDBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839280, &qword_20D9780B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7CDD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392C8, &qword_20D9782D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7CDE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392C8, &qword_20D9782D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7CDFBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839288, &qword_20D9780B8);
  sub_20D973AF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839280, &qword_20D9780B0);
  sub_20D804950();
  swift_getOpaqueTypeConformance2();
  sub_20D8050A4(&qword_281125028, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CE0AC()
{
  v1 = type metadata accessor for GridForecastAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973AF8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x20F324310](v5 + v1[5]);

  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  if (*(v5 + v1[12]))
  {
  }

  v7 = v1[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20D7CE2A0(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x20F3221C0]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_20D7CE2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CE38C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CE440(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839390, &unk_20D978590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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
    v14 = *(a1 + a3[7] + 24);
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
    v16 = sub_20D972628();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_20D7CE5DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839390, &unk_20D978590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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
    *(a1 + a4[7] + 24) = a2;
  }

  else
  {
    v15 = sub_20D972628();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7CE774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B8, &unk_20D978628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7CE864(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_20D7CE9E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20D7CEB7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CEBB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D7CEFE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20D7CF060()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CF098()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7CF0E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CF224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CF304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972698();
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7CF3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7CF480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageEntryCommon(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_20D7CF59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7CF6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for HistoricalUsageSnapshot(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20D7CF7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageSnapshot(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7CF8D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D7CF918(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_20D971D98();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = sub_20D972E88();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_20D7CFACC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_20D971D98();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = sub_20D972E88();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20D7CFC84()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v8 = sub_20D972698();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v10 = v4 + v3;
  v11 = *(v1 + 20);
  v12 = sub_20D9729D8();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v10 + 1, v2 | 7);
}

uint64_t sub_20D7CFE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_20D972698();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7CFFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_20D972698();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20D7D019C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D0264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UtilityRateEntryCommon(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_20D7D0380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UtilityRateEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20D7D05A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972628();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D06C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GridForecastEntryCommon(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_20D7D07E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GridForecastEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridForecastSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D0A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GridForecastSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D0BC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D7D0C20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

id sub_20D7D0C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D7D0CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_20D7D0D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

id sub_20D7D0D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D7D0DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_20D7D0E18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = *(v3 + 136);
  a2[1] = v4;
}

uint64_t sub_20D7D0E68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_20D7D0EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  return sub_20D7EB7E8(v3 + v4, a2, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D7D0F28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20D7D0F88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_20D7D0FE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D1024()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7D1060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FeaturedHoursInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_20D7D11DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FeaturedHoursInfo(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_20D973D58();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D1488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_20D973D58();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D15B8()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_20D972408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = sub_20D972628();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  type metadata accessor for FeaturedHoursInfo(0);

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v2 | v7;
  v13 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 136) & ~v7;
  v14 = *(v1 + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v15 - 8) + 8))(v8 + v14, v15);

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v17, v12 | 7);
}

uint64_t sub_20D7D18E4()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for FeaturedHoursInfo(0);

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20D973D58();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_20D7D1B44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A008, &qword_20D97B0F0);
  sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7D1C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7D1D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7D1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20D7D1EA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_20D7D1F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7D2028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D20F4()
{
  v1 = type metadata accessor for HistoricalUsageSummaryView(0);
  v45 = *(*(v1 - 8) + 80);
  v43 = *(*(v1 - 8) + 64);
  v46 = v0;
  v44 = (v45 + 16) & ~v45;
  v2 = v0 + v44;
  v3 = sub_20D972628();
  v47 = *(v3 - 8);
  v4 = *(v47 + 8);
  v4(v2, v3);

  v41 = v2;
  v42 = v1;
  v5 = v2 + *(v1 + 24);

  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v4(v5 + v6[5], v3);
  v4(v5 + v6[6], v3);
  v4(v5 + v6[7], v3);
  v4(v5 + v6[8], v3);
  v7 = v6[9];
  v8 = sub_20D971D98();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v6[10], v8);
  v10 = v6[12];
  v11 = sub_20D972E88();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v6[13];
  v13 = sub_20D972AF8();
  v39 = *(*(v13 - 8) + 8);
  v40 = v13;
  v39(v12);
  v14 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v15 = v14[5];
  v16 = sub_20D9727B8();
  v37 = *(*(v16 - 8) + 8);
  v38 = v16;
  v37(v12 + v15);
  v17 = v12 + v14[7];
  v4(v17, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v4(v17 + *(v18 + 36), v3);
  v19 = v12 + v14[8];
  v4(v19, v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v4(v19 + *(v35 + 36), v3);

  v20 = v14[11];
  v36 = *(v47 + 48);
  if (!v36(v12 + v20, 1, v3))
  {
    v4(v12 + v20, v3);
  }

  v21 = v12 + v14[13];
  v4(v21, v3);
  v4(v21 + *(v18 + 36), v3);

  v22 = v18;
  v23 = v14[16];
  v32 = sub_20D9727D8();
  v33 = (*(v32 - 8) + 8);
  v34 = *v33;
  (*v33)(v12 + v23);
  v4(v5 + v6[14], v3);

  v24 = v41 + *(v42 + 28);
  (v39)(v24, v40);
  (v37)(v24 + v14[5], v38);
  v25 = v24 + v14[7];
  v4(v25, v3);
  v4(v25 + *(v22 + 36), v3);
  v26 = v24 + v14[8];
  v4(v26, v3);
  v4(v26 + *(v35 + 36), v3);

  v27 = v14[11];
  if (!v36(v24 + v27, 1, v3))
  {
    v4(v24 + v27, v3);
  }

  v28 = v24 + v14[13];
  v4(v28, v3);
  v4(v28 + *(v22 + 36), v3);

  (v34)(v24 + v14[16], v32);

  v29 = *(v42 + 36);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v30 - 8) + 8))(v41 + v29, v30);

  return MEMORY[0x2821FE8E8](v46, v44 + v43, v45 | 7);
}

uint64_t sub_20D7D278C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for HistoricalUsageSnapshot(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_20D7D2954(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20D972628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for HistoricalUsageSnapshot(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_20D7D2B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20D7D2C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972628();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D2D44@<X0>(uint64_t a1@<X8>)
{
  result = sub_20D974018();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20D7D2E74(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7D2FB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D3150(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UtilityRateInfoSnapshot(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_20D7D325C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UtilityRateInfoSnapshot(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_20D7D3370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973F28();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D33C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10] + 16);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_20D972628();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[15];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[16];
      goto LABEL_7;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB98, &unk_20D97C970);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[17];
      goto LABEL_7;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v22 = *(*(v21 - 8) + 48);
    v23 = a1 + a3[18];

    return v22(v23, a2, v21);
  }
}

uint64_t sub_20D7D36EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 16) = (a2 - 1);
    return result;
  }

  v17 = sub_20D972628();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[15];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[16];
    goto LABEL_7;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB98, &unk_20D97C970);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[18];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_20D7D3A18()
{
  v1 = sub_20D973548();
  v2 = *(v1 - 8);
  v56 = *(v2 + 80);
  v3 = (v56 + 16) & ~v56;
  v4 = *(v2 + 64);
  v46 = type metadata accessor for HistoricalUsageChart(0);
  v53 = *(*(v46 - 1) + 80);
  v5 = (v3 + v4 + v53) & ~v53;
  v51 = *(*(v46 - 1) + 64);
  v6 = sub_20D972C58();
  v54 = *(v6 - 8);
  v55 = v6;
  v50 = *(v54 + 80);
  v49 = *(v54 + 64);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v48 = *(v8 + 80);
  v47 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v57 = v0;
  v52 = v5;
  v9 = v0 + v5;

  v10 = type metadata accessor for HistoricalUsageSnapshot(0);
  v11 = *(v8 + 8);
  v11(v9 + v10[5], v7);
  v11(v9 + v10[6], v7);
  v11(v9 + v10[7], v7);
  v11(v9 + v10[8], v7);
  v12 = v10[9];
  v13 = sub_20D971D98();
  v14 = *(*(v13 - 8) + 8);
  v14(v9 + v12, v13);
  v14(v9 + v10[10], v13);
  v15 = v10[12];
  v16 = sub_20D972E88();
  (*(*(v16 - 8) + 8))(v9 + v15, v16);
  v17 = v9 + v10[13];
  v18 = sub_20D972AF8();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v20 = v19[5];
  v21 = sub_20D9727B8();
  (*(*(v21 - 8) + 8))(v17 + v20, v21);
  v22 = v17 + v19[7];
  v11(v22, v7);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v11(v22 + *(v23 + 36), v7);
  v24 = v17 + v19[8];
  v11(v24, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v11(v24 + *(v25 + 36), v7);

  v26 = v19[11];
  v45 = *(v8 + 48);
  if (!v45(v17 + v26, 1, v7))
  {
    v11(v17 + v26, v7);
  }

  v27 = v17 + v19[13];
  v11(v27, v7);
  v11(v27 + *(v23 + 36), v7);

  v28 = v19[16];
  v29 = sub_20D9727D8();
  (*(*(v29 - 8) + 8))(v17 + v28, v29);
  v11(v9 + v10[14], v7);

  v30 = v9 + v46[8];

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v11(v30 + *(v31 + 32), v7);
  v32 = v9 + v46[9];

  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v45(v32 + v33, 1, v7))
  {
    v11(v32 + v33, v7);
  }

  v11(v9 + v46[12], v7);

  v34 = v46[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_20D973D58();
    (*(*(v35 - 8) + 8))(v9 + v34, v35);
  }

  else
  {
  }

  v36 = v46[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_20D973B18();
    (*(*(v37 - 8) + 8))(v9 + v36, v37);
  }

  else
  {
  }

  v38 = v46[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_20D973D78();
    (*(*(v39 - 8) + 8))(v9 + v38, v39);
  }

  else
  {
  }

  v40 = (v52 + v51 + v50) & ~v50;
  v41 = (v40 + v49 + v48) & ~v48;
  v42 = v46[18];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v43 - 8) + 8))(v9 + v42, v43);
  (*(v54 + 8))(v57 + v40, v55);
  v11(v57 + v41, v7);

  return MEMORY[0x2821FE8E8](v57, v47 + v41 + 1, v56 | v53 | v50 | v48 | 7);
}

uint64_t sub_20D7D4284()
{
  v41 = type metadata accessor for HistoricalUsageChart(0);
  v45 = *(*(v41 - 1) + 80);
  v43 = *(*(v41 - 1) + 64);
  v1 = sub_20D973548();
  v47 = *(v1 - 8);
  v48 = v1;
  v42 = *(v47 + 80);
  v46 = *(v47 + 64);
  v49 = v0;
  v44 = (v45 + 16) & ~v45;
  v2 = v0 + v44;

  v3 = type metadata accessor for HistoricalUsageSnapshot(0);
  v4 = v3[5];
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v7(v2 + v3[6], v5);
  v7(v2 + v3[7], v5);
  v7(v2 + v3[8], v5);
  v8 = v3[9];
  v9 = sub_20D971D98();
  v10 = *(*(v9 - 8) + 8);
  v10(v2 + v8, v9);
  v10(v2 + v3[10], v9);
  v11 = v3[12];
  v12 = sub_20D972E88();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);
  v13 = v2 + v3[13];
  v14 = sub_20D972AF8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = v15[5];
  v17 = sub_20D9727B8();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  v18 = v13 + v15[7];
  v7(v18, v5);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7(v18 + *(v19 + 36), v5);
  v20 = v13 + v15[8];
  v7(v20, v5);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v20 + *(v21 + 36), v5);

  v22 = v15[11];
  v40 = *(v6 + 48);
  if (!v40(v13 + v22, 1, v5))
  {
    v7(v13 + v22, v5);
  }

  v23 = v13 + v15[13];
  v7(v23, v5);
  v7(v23 + *(v19 + 36), v5);

  v24 = v15[16];
  v25 = sub_20D9727D8();
  (*(*(v25 - 8) + 8))(v13 + v24, v25);
  v7(v2 + v3[14], v5);

  v26 = v2 + v41[8];

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v7(v26 + *(v27 + 32), v5);
  v28 = v2 + v41[9];

  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v40(v28 + v29, 1, v5))
  {
    v7(v28 + v29, v5);
  }

  v7(v2 + v41[12], v5);

  v30 = v41[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_20D973D58();
    (*(*(v31 - 8) + 8))(v2 + v30, v31);
  }

  else
  {
  }

  v32 = v41[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_20D973B18();
    (*(*(v33 - 8) + 8))(v2 + v32, v33);
  }

  else
  {
  }

  v34 = v41[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_20D973D78();
    (*(*(v35 - 8) + 8))(v2 + v34, v35);
  }

  else
  {
  }

  v36 = (v44 + v43 + v42) & ~v42;
  v37 = v41[18];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v38 - 8) + 8))(v2 + v37, v38);
  (*(v47 + 8))(v49 + v36, v48);

  return MEMORY[0x2821FE8E8](v49, v36 + v46, v45 | v42 | 7);
}

uint64_t sub_20D7D4A20()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7D4A60()
{
  v1 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v22 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v20 = *(v3 + 64);

  v5 = v0 + ((v22 + 24) & ~v22);
  v6 = sub_20D972AF8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[5];
  v8 = sub_20D9727B8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v5 + v1[7];
  v10 = *(v3 + 8);
  v10(v9, v2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v10(v9 + *(v11 + 36), v2);
  v12 = v5 + v1[8];
  v10(v12, v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v10(v12 + *(v13 + 36), v2);

  v14 = v1[11];
  if (!(*(v3 + 48))(v5 + v14, 1, v2))
  {
    v10(v5 + v14, v2);
  }

  v15 = (((v21 + ((v22 + 24) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + v4 + 209) & ~v4;

  v16 = v5 + v1[13];
  v10(v16, v2);
  v10(v16 + *(v11 + 36), v2);

  v17 = v1[16];
  v18 = sub_20D9727D8();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);

  v10(v0 + v15, v2);

  return MEMORY[0x2821FE8E8](v0, ((v20 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v22 | v4 | 7);
}

uint64_t sub_20D7D4E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B78();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4E64@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 8 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D7D4ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B58();
  *a1 = result;
  return result;
}

double sub_20D7D4F6C@<D0>(double *a1@<X8>)
{
  sub_20D972BE8();
  result = -v2;
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4F9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B38();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D5010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B28();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D5150()
{
  v1 = (type metadata accessor for DynamicEnergyUsagesCalculations(0) - 8);
  v39 = *(*v1 + 80);
  v2 = (v39 + 16) & ~v39;
  v3 = *(*v1 + 64);
  v37 = type metadata accessor for HistoricalUsageIntervalView(0);
  v38 = *(*(v37 - 1) + 80);
  v4 = (v2 + v3 + v38) & ~v38;
  v40 = *(*(v37 - 1) + 64);
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7(v0 + v2 + *(v36 + 36), v5);
  type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);

  v8 = v0 + v2 + v1[7];
  v7(v8, v5);
  v7(v8 + *(v36 + 36), v5);

  v41 = v4;
  v42 = v0;
  v9 = v0 + v4;
  v10 = v6;

  v11 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7(v9 + v11[5], v5);
  v7(v9 + v11[6], v5);
  v7(v9 + v11[7], v5);
  v7(v9 + v11[8], v5);
  v12 = v11[9];
  v13 = sub_20D971D98();
  v14 = *(*(v13 - 8) + 8);
  v14(v9 + v12, v13);
  v14(v9 + v11[10], v13);
  v15 = v11[12];
  v16 = sub_20D972E88();
  (*(*(v16 - 8) + 8))(v9 + v15, v16);
  v17 = v9 + v11[13];
  v18 = sub_20D972AF8();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v20 = v19[5];
  v21 = sub_20D9727B8();
  (*(*(v21 - 8) + 8))(v17 + v20, v21);
  v22 = v17 + v19[7];
  v7(v22, v5);
  v7(v22 + *(v36 + 36), v5);
  v23 = v17 + v19[8];
  v7(v23, v5);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v23 + *(v24 + 36), v5);

  v25 = v19[11];
  v35 = *(v10 + 48);
  if (!v35(v17 + v25, 1, v5))
  {
    v7(v17 + v25, v5);
  }

  v26 = v17 + v19[13];
  v7(v26, v5);
  v7(v26 + *(v36 + 36), v5);

  v27 = v19[16];
  v28 = sub_20D9727D8();
  (*(*(v28 - 8) + 8))(v17 + v27, v28);
  v7(v9 + v11[14], v5);

  v29 = v37[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_20D973D58();
    (*(*(v30 - 8) + 8))(v9 + v29, v30);
  }

  else
  {
  }

  v31 = v9 + v37[7];
  if (!v35(v31, 1, v5))
  {
    v7(v31, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);

  v32 = v37[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v33 - 8) + 8))(v9 + v32, v33);

  return MEMORY[0x2821FE8E8](v42, v41 + v40, v39 | v38 | 7);
}

uint64_t sub_20D7D586C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B178, &qword_20D97D290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7D58DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B178, &qword_20D97D290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7D5948(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_20D7D5B28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_20D7D5D4C()
{
  v34 = type metadata accessor for HistoricalUsageIntervalView(0);
  v38 = *(*(v34 - 1) + 80);
  v36 = *(*(v34 - 1) + 64);
  v1 = sub_20D973C48();
  v40 = *(v1 - 8);
  v41 = v1;
  v35 = *(v40 + 80);
  v39 = *(v40 + 64);
  v37 = (v38 + 16) & ~v38;
  v2 = v0 + v37;

  v3 = type metadata accessor for HistoricalUsageSnapshot(0);
  v4 = v3[5];
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v7(v0 + v37 + v3[6], v5);
  v7(v0 + v37 + v3[7], v5);
  v7(v0 + v37 + v3[8], v5);
  v8 = v3[9];
  v9 = sub_20D971D98();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v37 + v8, v9);
  v10(v0 + v37 + v3[10], v9);
  v11 = v3[12];
  v12 = sub_20D972E88();
  (*(*(v12 - 8) + 8))(v0 + v37 + v11, v12);
  v13 = v0 + v37 + v3[13];
  v14 = sub_20D972AF8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = v15[5];
  v17 = sub_20D9727B8();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  v18 = v13 + v15[7];
  v7(v18, v5);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7(v18 + *(v19 + 36), v5);
  v20 = v13 + v15[8];
  v7(v20, v5);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v20 + *(v21 + 36), v5);

  v22 = v15[11];
  v33 = *(v6 + 48);
  if (!v33(v13 + v22, 1, v5))
  {
    v7(v13 + v22, v5);
  }

  v23 = v13 + v15[13];
  v7(v23, v5);
  v7(v23 + *(v19 + 36), v5);

  v24 = v15[16];
  v25 = sub_20D9727D8();
  (*(*(v25 - 8) + 8))(v13 + v24, v25);
  v7(v2 + v3[14], v5);

  v26 = v34[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_20D973D58();
    (*(*(v27 - 8) + 8))(v2 + v26, v27);
  }

  else
  {
  }

  v28 = v2 + v34[7];
  if (!v33(v28, 1, v5))
  {
    v7(v28, v5);
  }

  v29 = (v37 + v36 + v35) & ~v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);

  v30 = v34[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v31 - 8) + 8))(v2 + v30, v31);

  (*(v40 + 8))(v0 + v29, v41);

  return MEMORY[0x2821FE8E8](v0, v29 + v39, v38 | v35 | 7);
}

uint64_t sub_20D7D63E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_20D7D656C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20D7D66E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D67D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20D7D69F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D6BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972628();
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

  v14 = type metadata accessor for HistoricalUsageSnapshot(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_20D7D6D8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D972628();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshot(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20D7D6F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D7020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for HistoricalUsageSnapshot(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D711C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973F48();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D7174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973E88();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D725C()
{
  v1 = (type metadata accessor for UtilityRateInfoSummaryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[7];

  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v7 = v6[5];
  v8 = sub_20D972628();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v6[6], v8);
  v9(v5 + v6[7], v8);

  v10 = v6[9];
  v11 = sub_20D972838();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  return MEMORY[0x2821FE8E8](v16, v3 + v15, v2 | 7);
}

uint64_t sub_20D7D746C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7D759C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20D7D7868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20D7D79C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D7AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D7C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7D7D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D7E60()
{
  v47 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v45 = *(*(v47 - 8) + 80);
  v43 = *(*(v47 - 8) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v42 = *(*(v1 - 8) + 80);
  v41 = *(*(v1 - 8) + 64);
  v46 = v0;
  v44 = (v45 + 16) & ~v45;
  v2 = v0 + v44;

  v3 = type metadata accessor for HistoricalUsageSnapshot(0);
  v4 = v3[5];
  v5 = sub_20D972628();
  v48 = *(v5 - 8);
  v6 = *(v48 + 8);
  v6(v0 + v44 + v4, v5);
  v6(v0 + v44 + v3[6], v5);
  v6(v0 + v44 + v3[7], v5);
  v6(v0 + v44 + v3[8], v5);
  v7 = v3[9];
  v8 = sub_20D971D98();
  v9 = *(*(v8 - 8) + 8);
  v9(v2 + v7, v8);
  v9(v2 + v3[10], v8);
  v10 = v1;
  v11 = v3[12];
  v12 = sub_20D972E88();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);
  v13 = v2 + v3[13];
  v14 = sub_20D972AF8();
  v39 = *(*(v14 - 8) + 8);
  v40 = v14;
  v39(v13);
  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = v15[5];
  v17 = sub_20D9727B8();
  v37 = *(*(v17 - 8) + 8);
  v38 = v17;
  v37(v13 + v16);
  v18 = v13 + v15[7];
  v6(v18, v5);
  v6(v18 + *(v10 + 36), v5);
  v19 = v13 + v15[8];
  v6(v19, v5);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v6(v19 + *(v35 + 36), v5);

  v20 = v15[11];
  v36 = *(v48 + 48);
  if (!v36(v13 + v20, 1, v5))
  {
    v6(v13 + v20, v5);
  }

  v21 = v13 + v15[13];
  v6(v21, v5);
  v6(v21 + *(v10 + 36), v5);

  v22 = v10;
  v23 = v15[16];
  v24 = sub_20D9727D8();
  v34 = *(*(v24 - 8) + 8);
  v34(v13 + v23, v24);
  v6(v2 + v3[14], v5);

  v25 = v2 + *(v47 + 20);
  (v39)(v25, v40);
  (v37)(v25 + v15[5], v38);
  v26 = v25 + v15[7];
  v6(v26, v5);
  v27 = v22;
  v6(v26 + *(v22 + 36), v5);
  v28 = v25 + v15[8];
  v6(v28, v5);
  v6(v28 + *(v35 + 36), v5);

  v29 = v15[11];
  if (!v36(v25 + v29, 1, v5))
  {
    v6(v25 + v29, v5);
  }

  v30 = (v43 + v44 + v42 + 1) & ~v42;
  v49 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;

  v31 = v25 + v15[13];
  v6(v31, v5);
  v6(v31 + *(v27 + 36), v5);

  v34(v25 + v15[16], v24);

  v32 = v46 + v30;
  v6(v32, v5);
  v6(v32 + *(v27 + 36), v5);

  return MEMORY[0x2821FE8E8](v46, v49 + 8, v45 | v42 | 7);
}

uint64_t sub_20D7D8584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E8, &unk_20D97E0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7D863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageChart(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972C58();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7D874C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageChart(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972C58();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972C58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20D7D891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972C58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D89D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972C58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20D7D8A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972C58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D8B64()
{
  v1 = type metadata accessor for LollipopSelectionView(0);
  v47 = *(*(v1 - 8) + 80);
  v48 = v1;
  v45 = *(*(v1 - 8) + 64);
  v2 = sub_20D973C48();
  v50 = *(v2 - 8);
  v51 = v2;
  v44 = *(v50 + 80);
  v49 = *(v50 + 64);
  v52 = v0;
  v46 = (v47 + 16) & ~v47;
  v3 = v0 + v46;

  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  v5 = v4[5];
  v6 = sub_20D972628();
  v53 = *(v6 - 8);
  v7 = *(v53 + 8);
  v7(v0 + v46 + v5, v6);
  v7(v0 + v46 + v4[6], v6);
  v7(v0 + v46 + v4[7], v6);
  v7(v0 + v46 + v4[8], v6);
  v8 = v4[9];
  v9 = sub_20D971D98();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v46 + v8, v9);
  v10(v0 + v46 + v4[10], v9);
  v11 = v4[12];
  v12 = sub_20D972E88();
  (*(*(v12 - 8) + 8))(v0 + v46 + v11, v12);
  v13 = v0 + v46 + v4[13];
  v14 = sub_20D972AF8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = v15[5];
  v17 = sub_20D9727B8();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  v18 = v13 + v15[7];
  v7(v18, v6);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7(v18 + *(v19 + 36), v6);
  v20 = v13 + v15[8];
  v7(v20, v6);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v20 + *(v21 + 36), v6);

  v22 = v15[11];
  v23 = *(v53 + 48);
  if (!v23(v13 + v22, 1, v6))
  {
    v7(v13 + v22, v6);
  }

  v24 = v13 + v15[13];
  v7(v24, v6);
  v7(v24 + *(v19 + 36), v6);

  v25 = v15[16];
  v26 = sub_20D9727D8();
  (*(*(v26 - 8) + 8))(v13 + v25, v26);
  v7(v3 + v4[14], v6);

  v27 = type metadata accessor for HistoricalUsageChart(0);
  v28 = v3 + v27[8];

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v7(v28 + *(v29 + 32), v6);
  v30 = v3 + v27[9];

  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v23(v30 + v31, 1, v6))
  {
    v7(v30 + v31, v6);
  }

  v7(v3 + v27[12], v6);

  v32 = v27[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_20D973D58();
    (*(*(v33 - 8) + 8))(v3 + v32, v33);
  }

  else
  {
  }

  v34 = v27[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_20D973B18();
    (*(*(v35 - 8) + 8))(v3 + v34, v35);
  }

  else
  {
  }

  v36 = v27[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_20D973D78();
    (*(*(v37 - 8) + 8))(v3 + v36, v37);
  }

  else
  {
  }

  v38 = (v46 + v45 + v44) & ~v44;
  v39 = v27[18];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v40 - 8) + 8))(v3 + v39, v40);
  v41 = *(v48 + 20);
  v42 = sub_20D972C58();
  (*(*(v42 - 8) + 8))(v3 + v41, v42);

  (*(v50 + 8))(v52 + v38, v51);

  return MEMORY[0x2821FE8E8](v52, v38 + v49, v47 | v44 | 7);
}

uint64_t sub_20D7D946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D95AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D9730()
{
  v1 = type metadata accessor for UtilityRemoveBanner(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  MEMORY[0x20F324310](v5 + v1[11]);
  v7 = v1[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20D7D9938()
{
  v1 = type metadata accessor for UtilityRemoveBanner(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  MEMORY[0x20F324310](v5 + v1[11]);
  v7 = v1[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7D9AF8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D9B38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D9B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7D9CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D9E1C()
{
  v1 = type metadata accessor for HistoricalUsageEnergyTip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20D973D58();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7D9FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7DA098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7DA158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DA204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UtilityRateInfoSnapshot(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DA394(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20D7DA440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DA4F4()
{
  v1 = (type metadata accessor for FilterButtonsAndPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(*v1 + 64);

  v4 = v0 + v3 + v1[7];
  v5 = sub_20D972628();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v6(v4 + *(v7 + 36), v5);
  type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);

  v8 = v4 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 20);
  v6(v8, v5);
  v6(v8 + *(v7 + 36), v5);

  return MEMORY[0x2821FE8E8](v11, v3 + v10, v2 | 7);
}

uint64_t sub_20D7DA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7DA898(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7DA9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DAA80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v13 = (v6 + 32) & ~v6;
  v14 = *(*v5 + 64);

  v7 = v4 + v13 + v5[11];
  v8 = sub_20D972628();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v9(v7 + *(v10 + 36), v8);
  type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);

  v11 = v7 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 20);
  v9(v11, v8);
  v9(v11 + *(v10 + 36), v8);

  return MEMORY[0x2821FE8E8](v4, v13 + v14, v6 | 7);
}

uint64_t sub_20D7DAE00()
{
  v1 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20D973D58();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20D973B18();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DAFF0()
{

  return MEMORY[0x2821FE8E8](v0, 288, 7);
}

uint64_t sub_20D7DB078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BEE0, &qword_20D97F420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7DB1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BEE0, &qword_20D97F420);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7DB2C4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
  sub_20D7EBC4C(&qword_27C83BEC8, &qword_27C83A590, &qword_20D97B800, MEMORY[0x277D83980]);
  sub_20D974BB8();
  sub_20D973DA8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20D7DB3E0()
{
  type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(255);
  sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView, &unk_20D97F440);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7DB478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE8, &qword_20D97F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7DB4EC()
{
  swift_unknownObjectRelease();

  MEMORY[0x20F324310](v0 + 56);

  sub_20D809438(*(v0 + 264), *(v0 + 272));

  return MEMORY[0x2821FE8E8](v0, 273, 7);
}

uint64_t sub_20D7DB620()
{
  v1 = (type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DB730()
{
  v1 = (type metadata accessor for UtilityRateInfoSnapshot(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_20D972628();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);
  v7(v0 + v3 + v1[9], v6);

  v8 = v1[11];
  v9 = sub_20D972838();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DB8CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20D7DB988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DBA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7DBB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7DBC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7DBD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UtilityRateInfoSnapshot(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7DBEB4()
{
  v1 = type metadata accessor for UtilityPeaksGrid(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v5 = v4[5];
  v6 = sub_20D972628();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v4[6], v6);
  v7(v0 + v3 + v4[7], v6);

  v8 = v4[9];
  v9 = sub_20D972838();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_20D7DC128()
{
  v1 = type metadata accessor for RatePlanTitle(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_20D973D58();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  else
  {
  }

  v5 = v0 + v3 + *(v1 + 20);

  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v7 = v6[5];
  v8 = sub_20D972628();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v6[6], v8);
  v9(v5 + v6[7], v8);

  v10 = v6[9];
  v11 = sub_20D972838();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v14, v3 + v13, v2 | 7);
}

uint64_t sub_20D7DC374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7DC3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7DC44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DC508(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DC5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7DC678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7DC750()
{
  v1 = *(type metadata accessor for UtilityPeakSquare(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(v1 + 64);

  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v5 = v4[5];
  v6 = sub_20D972628();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v4[6], v6);
  v7(v0 + v3 + v4[7], v6);

  v8 = v4[9];
  v9 = sub_20D972838();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v11, v2 | 7);
}

uint64_t sub_20D7DC938(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D9727B8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v18 = *(a1 + a3[12]);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_20D9727D8();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[16];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_20D7DCBA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D9727B8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
  }

  else
  {
    v19 = sub_20D9727D8();
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + a4[16];

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_20D7DCE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7DCE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7DCEF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshot(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20D7DD06C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for HistoricalUsageSnapshot(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7DD2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C8D0, &qword_20D980640);
  sub_20D7EBC4C(&qword_281124D30, &qword_27C83C8D0, &qword_20D980640, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7DD478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C9A0, &qword_20D980A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7DD4E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_20D972838();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_20D7DD60C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20D972628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_20D972838();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_20D7DD75C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20D7DD774(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_20D7DD7B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20D7DD7D0(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_20D7DD83C(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_20D7DD8A8(void *a1, uint64_t a2)
{
  v4 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_20D7DD95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_20D7DD9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20D975888();
  sub_20D974F88();
  return sub_20D9758A8();
}

uint64_t sub_20D7DDA38(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C98, type metadata accessor for CLError, &unk_20D9764DC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_20D7DDAA4(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C98, type metadata accessor for CLError, &unk_20D9764DC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_20D7DDB14(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_20D7DDB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
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

uint64_t sub_20D7DDC4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20D7DDCA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20D7DDCC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_20D7DDD48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D7DDF10()
{
  result = qword_281124CA0;
  if (!qword_281124CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124CA0);
  }

  return result;
}

void sub_20D7DE008(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_20D7DE094()
{
  v0 = [objc_opt_self() systemDarkOrangeColor];
  result = sub_20D974888();
  qword_27C840BC8 = result;
  return result;
}

uint64_t sub_20D7DE0F4(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_20D974898();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_20D974978();
  *a5 = result;
  return result;
}

uint64_t GridForecastStrings.StringStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7DE284()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7DE2F8()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t static GridForecastStrings.cleanerString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.lessCleanString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.gridForecastString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t sub_20D7DE518()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "Text to show with a strained Energy Window", 42, 2);
  qword_27C8389D0 = result;
  *algn_27C8389D8 = v9;
  return result;
}

uint64_t static GridForecastStrings.strainedString.getter()
{
  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8389D0;

  return v0;
}

uint64_t static GridForecastStrings.noCleanEnergyWindowsString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.noCleanerEnergyForecastedString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.lessCleanUsage.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Text to describe energy consumption during a less clean period", 62, 2);
}

uint64_t static GridForecastStrings.energyInfomationViewPrefaceTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationViewPrefaceBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationAboutTheForecastTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationAboutTheForecastBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationCleanerTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationCleanerBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationLessCleanTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationLessCleanBody.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Less Clean body in the About the Forecast section", 49, 2);
}

uint64_t sub_20D7DEF58(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20D975058();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v12 = qword_28112ABE8;
  v13 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v11, 0, 0, v12, v8, a3, a4, 2);
}

uint64_t static GridForecastStrings.energyInformationStrainedBody.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Less Clean body in the About the Forecast section", 49, 2);
}

uint64_t static GridForecastStrings.energyInformationRooftopSolarTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationRooftopSolarBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.inlineEducationViewTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.educationTipNoPunctuationTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.inlineEducationViewBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t _s12HomeEnergyUI19GridForecastStringsV09localizedB12RatingString3for5styleSS0A8Services0B6WindowV_AC0I5StyleOtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_20D972978();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20D7DFFB8(v5);
    if (EnergyWindow.isCleanEnergy.getter())
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    swift_once();
    return sub_20D971FF8();
  }

  (*(v7 + 32))(v9, v5, v6);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if ((EnergyWindow.isCleanEnergy.getter() & 1) == 0)
      {
        if (EnergyWindow.isStrainedEnergy.getter())
        {
          v11 = "Less clean until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v12 = qword_28112ABE8;
          v13 = 0xD000000000000012;
        }

        else
        {
          v11 = "Cleaner until %@";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v12 = qword_28112ABE8;
          v13 = 0xD000000000000014;
        }

        goto LABEL_52;
      }

      v15 = "Strained until %@.";
      if (qword_281126E98 != -1)
      {
LABEL_38:
        swift_once();
      }
    }

    else
    {
      if (v10 == 3)
      {
        if (EnergyWindow.isCleanEnergy.getter())
        {
          v11 = "e is strained until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v12 = qword_28112ABE8;
          v13 = 0xD000000000000020;
        }

        else if (EnergyWindow.isStrainedEnergy.getter())
        {
          v11 = "ess clean until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v12 = qword_28112ABE8;
          v13 = 0xD000000000000027;
        }

        else
        {
          v11 = "h a strained Energy Window";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v12 = qword_28112ABE8;
          v13 = 0xD000000000000023;
        }

LABEL_52:
        v16 = v11 | 0x8000000000000000;
        goto LABEL_53;
      }

      if (EnergyWindow.isCleanEnergy.getter())
      {
        v11 = "Strained until %@";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v12 = qword_28112ABE8;
        v13 = 0xD000000000000010;
        goto LABEL_52;
      }

      if ((EnergyWindow.isStrainedEnergy.getter() & 1) == 0)
      {
        v11 = "leaner until %@.";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v12 = qword_28112ABE8;
        v13 = 0xD000000000000013;
        goto LABEL_52;
      }

      v15 = "Less clean until %@";
      if (qword_281126E98 != -1)
      {
        goto LABEL_38;
      }
    }

    v12 = qword_28112ABE8;
    v16 = v15 | 0x8000000000000000;
    v13 = 0xD000000000000011;
LABEL_53:
    v19 = sub_20D88D048(v13, v16, v9, 0x617A696C61636F4CLL, 0xEB00000000656C62, v12);
LABEL_54:
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    return v20;
  }

  if (v10)
  {
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v12 = qword_28112ABE8;
    v13 = 0x4025206C69746E55;
    v16 = 0xE800000000000000;
    goto LABEL_53;
  }

  if (EnergyWindow.isCleanEnergy.getter())
  {
    if (qword_281126E98 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  if ((EnergyWindow.isStrainedEnergy.getter() & 1) == 0)
  {
    if (qword_281126E98 == -1)
    {
LABEL_56:
      v19 = sub_20D971FF8();
      goto LABEL_54;
    }

LABEL_59:
    swift_once();
    goto LABEL_56;
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v17 = qword_27C8389D0;
  v18 = *(v7 + 8);

  v18(v9, v6);
  return v17;
}

unint64_t sub_20D7DFD24()
{
  result = qword_27C8389E0;
  if (!qword_27C8389E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8389E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridForecastStrings(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GridForecastStrings(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GridForecastStrings.StringStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridForecastStrings.StringStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D7DFFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7E002C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshotType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GridForecastSnapshot.energyWindows.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastSnapshot(0) + 20);
  v4 = sub_20D9729D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20D7E014C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GridForecastSnapshot.gridID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 24));

  return v1;
}

uint64_t GridForecastSnapshot.locationCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 28));

  return v1;
}

uint64_t GridForecastSnapshot.featuredIntervals.getter()
{
  type metadata accessor for GridForecastSnapshot(0);
}

uint64_t sub_20D7E0238()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v3;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E3944(&v3[*(v6 + 64)], &qword_27C8389F8, &qword_20D978460);
    return v5;
  }

  else
  {
    if (qword_281127390 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for GridForecastSnapshot(0);
    __swift_project_value_buffer(v8, qword_28112AC50);
    return sub_20D7E0238();
  }
}

uint64_t GridForecastSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GridForecastSnapshot(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t GridForecastSnapshot.locationName.getter()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = *(v3 + 1);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E3944(&v3[*(v5 + 64)], &qword_27C8389F8, &qword_20D978460);
  }

  else
  {
    sub_20D7E0488(v3);
    return 0;
  }

  return v4;
}

uint64_t sub_20D7E0488(uint64_t a1)
{
  v2 = type metadata accessor for GridForecastSnapshotType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GridForecastSnapshot.description.getter()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  if (*(v0 + v1[9]) == 12)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    GridForecastError.description.getter();
    sub_20D7E1EF8();
    v4 = sub_20D975538();
    v6 = v5;

    MEMORY[0x20F323340](v4, v6);

    MEMORY[0x20F323340](41, 0xE100000000000000);

    v2 = 40;
    v3 = 0xE100000000000000;
  }

  sub_20D975678();
  MEMORY[0x20F323340](978536007, 0xE400000000000000);
  MEMORY[0x20F323340](v2, v3);

  MEMORY[0x20F323340](0x20726F6620, 0xE500000000000000);
  v7 = GridForecastSnapshotType.description.getter();
  MEMORY[0x20F323340](v7);

  MEMORY[0x20F323340](0x64697267206E6920, 0xE900000000000020);
  MEMORY[0x20F323340](*(v0 + v1[6]), *(v0 + v1[6] + 8));
  MEMORY[0x20F323340](8236, 0xE200000000000000);
  MEMORY[0x20F323340](*(v0 + v1[7]), *(v0 + v1[7] + 8));
  MEMORY[0x20F323340](8250, 0xE200000000000000);
  sub_20D9729D8();
  sub_20D975728();
  return 0;
}

uint64_t static GridForecastSnapshot.staticSnapshotWithWindowsType(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v4;
  v5 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9729D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *a1;
  v16 = &v39 - v13;
  if (v15 > 3)
  {
    if (*a1 > 5u)
    {
      if (v15 == 6)
      {
        static EnergyWindows.mockNowReduceEnergyWindows()(v16);
      }

      else
      {
        static EnergyWindows.mockCleanOverlappingEnergyWindows()(v16);
      }
    }

    else if (v15 == 4)
    {
      static EnergyWindows.mockPastCleanEnergyWindows()(v16);
    }

    else
    {
      static EnergyWindows.mockWidgetSnapshotEnergyWindows()(v16);
    }
  }

  else if (*a1 > 1u)
  {
    if (v15 == 2)
    {
      static EnergyWindows.mockSoonCleanEnergyWindows()(v16);
    }

    else
    {
      static EnergyWindows.mockFutureCleanEnergyWindows()(v16);
    }
  }

  else if (*a1)
  {
    static EnergyWindows.mockNowCleanEnergyWindows()(v16);
  }

  else
  {
    static EnergyWindows.mockNoCleanEnergyWindows()(v16);
  }

  v17 = &byte_282496C68;
  v18 = qword_282496C58;
  do
  {
    if (!v18)
    {
      v26 = 0xE200000000000000;
      v39 = 11565;
      v24 = 0xE200000000000000;
      v25 = 11565;
      goto LABEL_23;
    }

    v19 = *v17++;
    --v18;
  }

  while (v19 != v15);
  if (qword_281127390 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for GridForecastSnapshot(0);
  v21 = __swift_project_value_buffer(v20, qword_28112AC50);
  v22 = *(v20 + 28);
  v23 = (v21 + *(v20 + 24));
  v24 = v23[1];
  v39 = *v23;
  v25 = *(v21 + v22);
  v26 = *(v21 + v22 + 8);

LABEL_23:
  *v7 = v15;
  swift_storeEnumTagMultiPayload();
  v27 = v7;
  v40 = v7;
  v28 = *(v9 + 16);
  v28(v12, v14, v8);
  v41 = v14;
  v29 = v43;
  sub_20D7E002C(v27, v43);
  v30 = type metadata accessor for GridForecastSnapshot(0);
  v28((v29 + v30[5]), v12, v8);
  v31 = (v29 + v30[6]);
  *v31 = v39;
  v31[1] = v24;
  v32 = (v29 + v30[7]);
  *v32 = v25;
  v32[1] = v26;
  *(v29 + v30[9]) = 12;
  v33 = v42;
  v28(v42, v12, v8);
  (*(v9 + 56))(v33, 0, 1, v8);
  sub_20D87934C(v33);
  v35 = v34;
  sub_20D7E3944(v33, &qword_27C838A00, &qword_20D976750);
  v44 = v35;
  v36 = sub_20D8797EC(&v44);
  v37 = *(v9 + 8);

  v37(v12, v8);
  sub_20D7E0488(v40);
  v37(v41, v8);

  *(v29 + v30[8]) = v36;
  return result;
}

BOOL sub_20D7E0AEC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t static GridForecastSnapshot.staticSnapshotWithError(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20D9729D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-v15];
  v27 = *a1;
  static EnergyWindows.mockNoCleanEnergyWindows()(&v26[-v15]);
  *v9 = 0;
  swift_storeEnumTagMultiPayload();
  v17 = *(v11 + 16);
  v17(v14, v16, v10);
  sub_20D7E002C(v9, a2);
  v18 = type metadata accessor for GridForecastSnapshot(0);
  v17((a2 + v18[5]), v14, v10);
  v19 = (a2 + v18[6]);
  *v19 = 11565;
  v19[1] = 0xE200000000000000;
  v20 = (a2 + v18[7]);
  *v20 = 11565;
  v20[1] = 0xE200000000000000;
  *(a2 + v18[9]) = v27;
  v17(v6, v14, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20D87934C(v6);
  v22 = v21;
  sub_20D7E3944(v6, &qword_27C838A00, &qword_20D976750);
  v28 = v22;
  v23 = sub_20D8797EC(&v28);
  v24 = *(v11 + 8);

  v24(v14, v10);
  sub_20D7E0488(v9);
  v24(v16, v10);

  *(a2 + v18[8]) = v23;
  return result;
}

uint64_t sub_20D7E0DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v33 - v1;
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9729D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v15, qword_28112AC50);
  v16 = __swift_project_value_buffer(v15, qword_28112AC50);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v14 = sub_20D972F58();
  v18 = sub_20D972698();
  v14[1] = 0;
  v14[2] = 0;
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockWidgetSnapshotEnergyWindows()(v11);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v19 = qword_28112ABE8;
  v20 = qword_28112ABE8;
  sub_20D9726B8();
  v21 = sub_20D975108(v7, 0, 0, v19, v4, "Location name for Add Widget UI", 31, 2);
  v23 = v22;
  sub_20D7E002C(v14, v16);
  v24 = *(v9 + 16);
  v24(v16 + v15[5], v11, v8);
  v25 = (v16 + v15[6]);
  *v25 = 0x4F4E5F4F53494143;
  v25[1] = 0xEB00000000485452;
  v26 = (v16 + v15[7]);
  *v26 = v21;
  v26[1] = v23;
  *(v16 + v15[9]) = 12;
  v27 = v34;
  v24(v34, v11, v8);
  (*(v9 + 56))(v27, 0, 1, v8);
  sub_20D87934C(v27);
  v29 = v28;
  sub_20D7E3944(v27, &qword_27C838A00, &qword_20D976750);
  v35 = v29;
  v30 = sub_20D8797EC(&v35);
  v31 = *(v9 + 8);

  v31(v11, v8);
  sub_20D7E0488(v14);

  *(v16 + v15[8]) = v30;
  return result;
}

uint64_t sub_20D7E1230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_20D9729D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v10, qword_27C840BD0);
  v11 = __swift_project_value_buffer(v10, qword_27C840BD0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v9 = sub_20D972F18();
  v13 = sub_20D972698();
  v9[1] = 0;
  v9[2] = 0;
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockNowCleanEnergyWindows()(v6);
  sub_20D7E002C(v9, v11);
  v14 = *(v4 + 16);
  v14(v11 + v10[5], v6, v3);
  v15 = (v11 + v10[6]);
  *v15 = 0x4F4E5F4F53494143;
  v15[1] = 0xEB00000000485452;
  v16 = v11 + v10[7];
  strcpy(v16, "San Francisco");
  *(v16 + 14) = -4864;
  *(v11 + v10[9]) = 12;
  v14(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20D87934C(v2);
  v18 = v17;
  sub_20D7E3944(v2, &qword_27C838A00, &qword_20D976750);
  v23 = v18;
  v19 = sub_20D8797EC(&v23);
  v20 = *(v4 + 8);

  v20(v6, v3);
  sub_20D7E0488(v9);

  *(v11 + v10[8]) = v19;
  return result;
}

uint64_t sub_20D7E1560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_20D9729D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v10, qword_27C840BE8);
  v11 = __swift_project_value_buffer(v10, qword_27C840BE8);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v9 = sub_20D972F38();
  v13 = sub_20D972698();
  v9[1] = 0;
  v9[2] = 0;
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockPastCleanEnergyWindows()(v6);
  sub_20D7E002C(v9, v11);
  v14 = *(v4 + 16);
  v14(v11 + v10[5], v6, v3);
  v15 = (v11 + v10[6]);
  *v15 = 1397315918;
  v15[1] = 0xE400000000000000;
  v16 = (v11 + v10[7]);
  *v16 = 0x6B726F592077654ELL;
  v16[1] = 0xE800000000000000;
  *(v11 + v10[9]) = 12;
  v14(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20D87934C(v2);
  v18 = v17;
  sub_20D7E3944(v2, &qword_27C838A00, &qword_20D976750);
  v23 = v18;
  v19 = sub_20D8797EC(&v23);
  v20 = *(v4 + 8);

  v20(v6, v3);
  sub_20D7E0488(v9);

  *(v11 + v10[8]) = v19;
  return result;
}

uint64_t sub_20D7E1874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_20D9729D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(a1, v13);
  static EnergyWindows.mockNoCleanEnergyWindows()(v10);
  sub_20D7E002C(v13, a2);
  v14 = type metadata accessor for GridForecastSnapshot(0);
  v15 = *(v8 + 16);
  v15(a2 + v14[5], v10, v7);
  v16 = (a2 + v14[6]);
  *v16 = 11565;
  v16[1] = 0xE200000000000000;
  v17 = (a2 + v14[7]);
  *v17 = 11565;
  v17[1] = 0xE200000000000000;
  *(a2 + v14[9]) = 0;
  v15(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_20D87934C(v6);
  v19 = v18;
  sub_20D7E3944(v6, &qword_27C838A00, &qword_20D976750);
  v24 = v19;
  v20 = sub_20D8797EC(&v24);
  v21 = *(v8 + 8);

  v21(v10, v7);
  sub_20D7E0488(v13);

  *(a2 + v14[8]) = v20;
  return result;
}

unint64_t GridForecastSnapshotType.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = 0x3E4C494E3CLL;

      v13 = *(v10 + 1);
      v14 = *(v10 + 2);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(&v10[*(v15 + 64)], v7);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_20D975678();

      v27 = 0xD000000000000012;
      v28 = 0x800000020D9823C0;
      if (v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0x3E4C494E3CLL;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      MEMORY[0x20F323340](v16, v17);

      MEMORY[0x20F323340](0x3A6469202F772820, 0xE900000000000020);
      sub_20D7E2AC4(v7, v5);
      v18 = sub_20D972698();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v5, 1, v18) == 1)
      {
        sub_20D7E3944(v5, &qword_27C8389F8, &qword_20D978460);
        v20 = 0xE500000000000000;
      }

      else
      {
        v12 = sub_20D972648();
        v20 = v25;
        (*(v19 + 8))(v5, v18);
      }

      MEMORY[0x20F323340](v12, v20);

      v26 = v27;
      sub_20D7E3944(v7, &qword_27C8389F8, &qword_20D978460);
      return v26;
    }

    else
    {
      v22 = 0xD00000000000001ELL;
      v23 = *v10;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_20D975678();

      v27 = 0xD00000000000001ELL;
      v28 = 0x800000020D982400;
      if (v23 > 3)
      {
        if (v23 > 5)
        {
          if (v23 == 6)
          {
            v24 = " the next 4 hours";
            v22 = 0xD000000000000026;
          }

          else
          {
            v24 = "Apple Park mock location with ";
            v22 = 0xD000000000000031;
          }
        }

        else if (v23 == 4)
        {
          v24 = "urs that started at 10 am";
        }

        else
        {
          v24 = "w for the next 4 hours";
          v22 = 0xD000000000000039;
        }
      }

      else if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = "a clean window in 2 hours";
          v22 = 0xD00000000000001CLL;
        }

        else
        {
          v24 = "a clean window that has passed";
          v22 = 0xD000000000000019;
        }
      }

      else if (v23)
      {
        v24 = "a clean window in 19 minutes";
        v22 = 0xD000000000000023;
      }

      else
      {
        v22 = 0xD000000000000010;
        v24 = "or the next 4 hours";
      }

      MEMORY[0x20F323340](v22, v24 | 0x8000000000000000);

      return v27;
    }
  }

  else
  {
    sub_20D7E0488(v10);
    return 0xD000000000000017;
  }
}

unint64_t sub_20D7E1EF8()
{
  result = qword_281126EF0;
  if (!qword_281126EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EF0);
  }

  return result;
}

uint64_t CleanNotificationSnapshot.description.getter()
{
  if (*v0)
  {
    return 0x44454C42414E45;
  }

  else
  {
    return 0x44454C4241534944;
  }
}

uint64_t sub_20D7E1FBC()
{
  if (*v0)
  {
    return 0x44454C42414E45;
  }

  else
  {
    return 0x44454C4241534944;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *_s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v76 - v6;
  v8 = sub_20D972A08();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  v15 = sub_20D972998();
  MEMORY[0x28223BE20](v15);
  v94 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = *(v16 + 16);
  v19 = v16 + 16;
  v88 = v20;
  v21 = (a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64)));
  v86 = (v9 + 8);
  v87 = (v9 + 104);
  v85 = *MEMORY[0x277D17F20];
  v83 = (v19 - 8);
  v89 = 0x800000020D9825E0;
  v90 = 0x800000020D9825B0;
  v82 = *(v19 + 56);
  v22 = MEMORY[0x277D84F90];
  v77 = v7;
  v81 = v15;
  v78 = v12;
  v79 = v14;
  v84 = v19;
  v80 = v5;
  while (1)
  {
    v92 = v18;
    v93 = v22;
    v88(v94, v21, v15);
    sub_20D972968();
    (*v87)(v12, v85, v8);
    sub_20D7E38FC(&qword_281127118, MEMORY[0x277D17F30], MEMORY[0x277D17F38]);
    sub_20D975208();
    sub_20D975208();
    if (v97 == *&v96[0] && *(&v97 + 1) == *(&v96[0] + 1))
    {
      v26 = *v86;
      (*v86)(v12, v8);
      v26(v14, v8);
    }

    else
    {
      v24 = sub_20D9757C8();
      v25 = *v86;
      (*v86)(v12, v8);
      v25(v14, v8);
      v15 = v81;

      if ((v24 & 1) == 0)
      {
        (*v83)(v94, v15);
        v22 = v93;
        goto LABEL_4;
      }
    }

    sub_20D972988();
    v27 = sub_20D972628();
    v28 = *(v27 - 8);
    v91 = *(v28 + 48);
    if (v91(v7, 1, v27) == 1)
    {
      sub_20D7E3944(v7, &qword_27C8389E8, &qword_20D9768D0);
      v29 = MEMORY[0x277D84F98];
      v30 = sub_20D8D4A48(0xD000000000000025, v90);
      if (v31)
      {
        v32 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v96[0] = v29;
        v34 = v29;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D5DA4();
          v34 = *&v96[0];
        }

        sub_20D7E39A4((v34[7] + 32 * v32), &v97);
        sub_20D8D4C90(v32, v34);
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
        v34 = v29;
      }

      v22 = v93;
      sub_20D7E3944(&v97, &qword_27C838A18, &qword_20D9768D8);
      v53 = v80;
      goto LABEL_29;
    }

    v35 = v8;
    v36 = v80;
    sub_20D972588();
    *(&v98 + 1) = MEMORY[0x277D839F8];
    *&v97 = v37;
    (*(v28 + 8))(v7, v27);
    sub_20D7E39A4(&v97, v96);
    v38 = MEMORY[0x277D84F98];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v38;
    v41 = sub_20D8D4A48(0xD000000000000025, v90);
    v42 = v38[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      break;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      if (v39)
      {
        v34 = v95;
        if ((v40 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_20D8D5DA4();
        v34 = v95;
        if ((v45 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_20D90856C(v44, v39);
      v46 = sub_20D8D4A48(0xD000000000000025, v90);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_60;
      }

      v41 = v46;
      v34 = v95;
      if ((v45 & 1) == 0)
      {
LABEL_21:
        v34[(v41 >> 6) + 8] |= 1 << v41;
        v48 = (v34[6] + 16 * v41);
        v49 = v90;
        *v48 = 0xD000000000000025;
        v48[1] = v49;
        sub_20D7E39A4(v96, (v34[7] + 32 * v41));
        v50 = v34[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_58;
        }

        v34[2] = v52;
        goto LABEL_28;
      }
    }

    v54 = (v34[7] + 32 * v41);
    __swift_destroy_boxed_opaque_existential_0(v54);
    sub_20D7E39A4(v96, v54);
LABEL_28:
    v53 = v36;
    v8 = v35;
    v15 = v81;
    v22 = v93;
LABEL_29:
    sub_20D972978();
    if (v91(v53, 1, v27) == 1)
    {
      sub_20D7E3944(v53, &qword_27C8389E8, &qword_20D9768D0);
      v55 = sub_20D8D4A48(0xD000000000000023, v89);
      v14 = v79;
      if (v56)
      {
        v57 = v55;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&v96[0] = v34;
        v12 = v78;
        if (!v58)
        {
          sub_20D8D5DA4();
          v34 = *&v96[0];
        }

        sub_20D7E39A4((v34[7] + 32 * v57), &v97);
        sub_20D8D4C90(v57, v34);
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
        v12 = v78;
      }

      sub_20D7E3944(&v97, &qword_27C838A18, &qword_20D9768D8);
    }

    else
    {
      v91 = v21;
      sub_20D972588();
      *(&v98 + 1) = MEMORY[0x277D839F8];
      *&v97 = v59;
      (*(v28 + 8))(v53, v27);
      sub_20D7E39A4(&v97, v96);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v34;
      v61 = sub_20D8D4A48(0xD000000000000023, v89);
      v63 = v34[2];
      v64 = (v62 & 1) == 0;
      v51 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      v14 = v79;
      if (v51)
      {
        goto LABEL_57;
      }

      v66 = v62;
      if (v34[3] >= v65)
      {
        v12 = v78;
        if ((v60 & 1) == 0)
        {
          v74 = v61;
          sub_20D8D5DA4();
          v61 = v74;
        }
      }

      else
      {
        sub_20D90856C(v65, v60);
        v61 = sub_20D8D4A48(0xD000000000000023, v89);
        v12 = v78;
        if ((v66 & 1) != (v67 & 1))
        {
          goto LABEL_60;
        }
      }

      v34 = v95;
      if (v66)
      {
        v68 = (v95[7] + 32 * v61);
        __swift_destroy_boxed_opaque_existential_0(v68);
        sub_20D7E39A4(v96, v68);
      }

      else
      {
        v95[(v61 >> 6) + 8] |= 1 << v61;
        v69 = (v34[6] + 16 * v61);
        *v69 = 0xD000000000000023;
        v69[1] = v89;
        sub_20D7E39A4(v96, (v34[7] + 32 * v61));
        v70 = v34[2];
        v51 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v51)
        {
          goto LABEL_59;
        }

        v34[2] = v71;
      }

      v21 = v91;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_20D8D3FFC(0, v22[2] + 1, 1, v22);
    }

    v73 = v22[2];
    v72 = v22[3];
    if (v73 >= v72 >> 1)
    {
      v22 = sub_20D8D3FFC((v72 > 1), v73 + 1, 1, v22);
    }

    (*v83)(v94, v15);
    v22[2] = v73 + 1;
    v22[v73 + 4] = v34;
    v7 = v77;
LABEL_4:
    v21 += v82;
    v18 = v92 - 1;
    if (v92 == 1)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

uint64_t sub_20D7E2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7E2AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s12HomeEnergyUI24GridForecastSnapshotTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v65 = sub_20D972698();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A08, &qword_20D9768C0);
  MEMORY[0x28223BE20](v5);
  v64 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v59 - v13;
  v14 = type metadata accessor for GridForecastSnapshotType(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v59 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v59 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A10, &qword_20D9768C8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v59 - v25;
  v27 = (&v59 + *(v24 + 56) - v25);
  sub_20D7E002C(a1, &v59 - v25);
  sub_20D7E002C(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D7E002C(v26, v22);
    v38 = *v22;
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = *v27;
      if (v38)
      {
        if (v41)
        {
          sub_20D7E38B4(0, &qword_281126EB0, 0x277CE41F8);
          v42 = v38;
          v43 = sub_20D9754C8();

          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_30;
        }

        v41 = v38;
      }

      else if (!v41)
      {
        goto LABEL_40;
      }

LABEL_30:
      sub_20D7E0488(v26);
      return 0;
    }

LABEL_15:
    sub_20D7E3944(v26, &qword_27C838A10, &qword_20D9768C8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20D7E002C(v26, v17);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = *v17 == *v27;
      sub_20D7E0488(v26);
      return v39;
    }

    goto LABEL_15;
  }

  sub_20D7E002C(v26, v20);
  v30 = *v20;
  v29 = v20[1];
  v31 = v20[2];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20D7E3944(v20 + v32, &qword_27C8389F8, &qword_20D978460);

    goto LABEL_15;
  }

  v60 = v29;
  v33 = *v27;
  v59 = v27[1];
  v34 = v27[2];
  v35 = v20 + v32;
  v36 = v66;
  sub_20D7E2A54(v35, v66);
  sub_20D7E2A54(v27 + v32, v12);
  sub_20D7E38B4(0, &qword_281124B88, 0x277D82BB8);
  v37 = sub_20D9754C8();

  if ((v37 & 1) == 0)
  {

    goto LABEL_21;
  }

  if (!v31)
  {
    if (!v34)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  if (!v34)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v60 == v59 && v31 == v34)
  {

    goto LABEL_33;
  }

  v47 = sub_20D9757C8();

  if ((v47 & 1) == 0)
  {
LABEL_22:
    sub_20D7E3944(v12, &qword_27C8389F8, &qword_20D978460);
    v44 = v36;
    v45 = &qword_27C8389F8;
    v46 = &qword_20D978460;
LABEL_23:
    sub_20D7E3944(v44, v45, v46);
    goto LABEL_30;
  }

LABEL_33:
  v48 = *(v5 + 48);
  v49 = v64;
  sub_20D7E2AC4(v36, v64);
  sub_20D7E2AC4(v12, v49 + v48);
  v50 = v63;
  v51 = v36;
  v52 = *(v63 + 48);
  v53 = v65;
  if (v52(v49, 1, v65) != 1)
  {
    v54 = v62;
    sub_20D7E2AC4(v49, v62);
    if (v52(v49 + v48, 1, v53) != 1)
    {
      v55 = v61;
      (*(v50 + 32))(v61, v49 + v48, v53);
      sub_20D7E38FC(&unk_281126E10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v56 = v54;
      v57 = sub_20D974FD8();
      v58 = *(v50 + 8);
      v58(v55, v53);
      sub_20D7E3944(v12, &qword_27C8389F8, &qword_20D978460);
      sub_20D7E3944(v66, &qword_27C8389F8, &qword_20D978460);
      v58(v56, v53);
      sub_20D7E3944(v49, &qword_27C8389F8, &qword_20D978460);
      if (v57)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    sub_20D7E3944(v12, &qword_27C8389F8, &qword_20D978460);
    sub_20D7E3944(v66, &qword_27C8389F8, &qword_20D978460);
    (*(v50 + 8))(v54, v53);
    goto LABEL_38;
  }

  sub_20D7E3944(v12, &qword_27C8389F8, &qword_20D978460);
  sub_20D7E3944(v51, &qword_27C8389F8, &qword_20D978460);
  if (v52(v49 + v48, 1, v53) != 1)
  {
LABEL_38:
    v45 = &qword_27C838A08;
    v46 = &qword_20D9768C0;
    v44 = v49;
    goto LABEL_23;
  }

  sub_20D7E3944(v49, &qword_27C8389F8, &qword_20D978460);
LABEL_40:
  sub_20D7E0488(v26);
  return 1;
}

void sub_20D7E32D0(uint64_t a1)
{
  type metadata accessor for GridForecastSnapshotType(319);
  if (v1 <= 0x3F)
  {
    sub_20D9729D8();
    if (v2 <= 0x3F)
    {
      sub_20D7E3394(319);
      if (v3 <= 0x3F)
      {
        sub_20D7E33EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7E3394(uint64_t a1)
{
  if (!qword_281126EC8)
  {
    type metadata accessor for FeaturedInterval(255);
    v1 = sub_20D975288();
    if (!v2)
    {
      atomic_store(v1, &qword_281126EC8);
    }
  }
}

void sub_20D7E33EC()
{
  if (!qword_2811274E0[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811274E0);
    }
  }
}

void sub_20D7E348C(uint64_t a1)
{
  sub_20D7E3514();
  if (v1 <= 0x3F)
  {
    sub_20D7E35C4(319);
    if (v2 <= 0x3F)
    {
      sub_20D7E36C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_20D7E3514()
{
  if (!qword_281126EA8)
  {
    sub_20D7E355C(0);
    if (!v1)
    {
      atomic_store(v0, &qword_281126EA8);
    }
  }
}

void sub_20D7E355C(uint64_t a1)
{
  if (!qword_281126EA0)
  {
    sub_20D7E38B4(255, &qword_281126EB0, 0x277CE41F8);
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281126EA0);
    }
  }
}

void sub_20D7E35C4(uint64_t a1)
{
  if (!qword_281126EB8)
  {
    sub_20D7E38B4(255, &qword_281126EB0, 0x277CE41F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83CA30, &qword_20D976870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389F8, &qword_20D978460);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281126EB8);
    }
  }
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

ValueMetadata *sub_20D7E36C0()
{
  result = qword_281127128;
  if (!qword_281127128)
  {
    result = &type metadata for EnergyWindows.MockType;
    atomic_store(&type metadata for EnergyWindows.MockType, &qword_281127128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CleanNotificationSnapshot(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CleanNotificationSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20D7E38B4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_20D7E38FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D7E3944(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_20D7E39A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
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

uint64_t HEUIFAnalyticsEvent.__allocating_init(type:data:)(_BYTE *a1, const void *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_20D7E3AF0(v6);
  *(v4 + 16) = a1;
  memcpy(__dst, v6, 0x129uLL);
  memcpy((v4 + 24), a2, 0x129uLL);
  sub_20D7E3B2C(__dst);
  return v4;
}

uint64_t HEUIFAnalyticsEvent.init(type:data:)(char *a1, const void *a2)
{
  v4 = *a1;
  sub_20D7E3AF0(v6);
  *(v2 + 16) = v4;
  memcpy(__dst, v6, 0x129uLL);
  memcpy((v2 + 24), a2, 0x129uLL);
  sub_20D7E3B2C(__dst);
  return v2;
}

uint64_t sub_20D7E3AF0(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 64) = 0u;
  result = a1 + 64;
  *(result + 217) = 0u;
  return result;
}

uint64_t sub_20D7E3B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A20, &qword_20D9768E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7E3B94()
{
  v1 = v0;
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972618();
  sub_20D972588();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v9;
  sub_20D8D52B0(v8, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v11 = v76[0];
  memcpy(v76, (v1 + 24), 0x129uLL);
  memcpy(v77, (v1 + 24), 0x129uLL);
  if (sub_20D7E6050(v77) == 1)
  {
    return v11;
  }

  if (v77[1])
  {
    memcpy(v75, v76, 0x129uLL);
    sub_20D7E6074(v75, &v74);
  }

  else
  {
    v12 = *v77;
    v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    sub_20D7E60AC(v76, v75);
    v14 = [v13 initWithDouble_];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v14, 0x6172754477656976, 0xEC0000006E6F6974, v15);
    v11 = v75[0];
  }

  v16 = BYTE1(v77[1]);
  if (BYTE1(v77[1]) != 2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v17, 0xD000000000000012, 0x800000020D9827F0, v18);
    v11 = v75[0];
  }

  if ((v77[3] & 1) == 0)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v19, 0xD000000000000014, 0x800000020D9828B0, v20);
    v11 = v75[0];
  }

  if ((v77[5] & 1) == 0)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v21, 0xD000000000000018, 0x800000020D982890, v22);
    v11 = v75[0];
  }

  if (v77[7])
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v24 = sub_20D975078();

    v25 = [v23 initWithString_];

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v25, 0xD000000000000014, 0x800000020D982870, v26);
    v11 = v75[0];
    if (v77[9])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v77[9] & 1) == 0)
  {
LABEL_13:
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v27, 0xD000000000000019, 0x800000020D982850, v28);
    v11 = v75[0];
  }

LABEL_14:
  if (v77[11])
  {
    v29 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v30 = sub_20D975078();

    v31 = [v29 &off_277DEE578];

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v31, 0xD000000000000016, 0x800000020D982830, v32);
    v11 = v75[0];
  }

  if ((v77[13] & 1) == 0)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v33, 0xD000000000000017, 0x800000020D982810, v34);
    v11 = v75[0];
  }

  if (v16 != 2)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v35, 0xD000000000000012, 0x800000020D9827F0, v36);
    v11 = v75[0];
  }

  if (v77[15])
  {
    v37 = 0x277CCA000;
  }

  else
  {
    v37 = 0x277CCA000uLL;
    v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v38, 0xD000000000000015, 0x800000020D9827D0, v39);
    v11 = v75[0];
  }

  if (BYTE1(v77[15]) != 2)
  {
    v40 = [objc_allocWithZone(*(v37 + 2992)) initWithBool_];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v40, 0xD000000000000020, 0x800000020D9827A0, v41);
    v11 = v75[0];
  }

  if ((v77[17] & 1) == 0)
  {
    v42 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v42, 0xD000000000000015, 0x800000020D982780, v43);
    v11 = v75[0];
  }

  if (BYTE1(v77[17]) != 2)
  {
    v44 = [objc_allocWithZone(*(v37 + 2992)) initWithBool_];
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v44, 0xD000000000000024, 0x800000020D982750, v45);
    v11 = v75[0];
  }

  if (v77[19])
  {
    v46 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v47 = sub_20D975078();

    v48 = [v46 &off_277DEE578];

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v48, 0x497974696C697475, 0xE900000000000064, v49);
    v11 = v75[0];
  }

  if ((v77[21] & 1) == 0)
  {
    v50 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v50, 0xD000000000000016, 0x800000020D982730, v51);
    v11 = v75[0];
  }

  if (v77[23])
  {
    if (v77[25])
    {
      goto LABEL_35;
    }
  }

  else
  {
    v60 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v60, 0x697455664F6D756ELL, 0xEE0073656974696CLL, v61);
    v11 = v75[0];
    if (v77[25])
    {
LABEL_35:
      if (v77[27])
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  v62 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v11;
  sub_20D8D52B0(v62, 0x70744F664F6D756ELL, 0xEF73646F6874654DLL, v63);
  v11 = v75[0];
  if ((v77[27] & 1) == 0)
  {
LABEL_36:
    v52 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v52, 0xD000000000000010, 0x800000020D982710, v53);
    v11 = v75[0];
  }

LABEL_37:
  if (BYTE1(v77[27]) != 2)
  {
    v54 = [objc_allocWithZone(*(v37 + 2992)) initWithBool_];
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v54, 0x6C61766E49736168, 0xED00004C52556469, v55);
    v11 = v75[0];
  }

  if ((v77[29] & 1) == 0)
  {
    v56 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v56, 0xD000000000000017, 0x800000020D9826F0, v57);
    v11 = v75[0];
  }

  if (BYTE1(v77[29]) != 2)
  {
    v58 = [objc_allocWithZone(*(v37 + 2992)) initWithBool_];
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v58, 0xD00000000000001CLL, 0x800000020D9826D0, v59);
    v11 = v75[0];
  }

  if (v77[31])
  {
    if (v77[33])
    {
      goto LABEL_45;
    }

LABEL_52:
    v66 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v66, 0xD000000000000019, 0x800000020D982690, v67);
    v11 = v75[0];
    if (v77[35])
    {
LABEL_46:
      sub_20D7E3B2C(v76);
      if (v77[37])
      {
        return v11;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v64 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v11;
  sub_20D8D52B0(v64, 0xD00000000000001BLL, 0x800000020D9826B0, v65);
  v11 = v75[0];
  if ((v77[33] & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v77[35])
  {
    goto LABEL_46;
  }

LABEL_53:
  v68 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v11;
  sub_20D8D52B0(v68, 0xD000000000000015, 0x800000020D982670, v69);
  sub_20D7E3B2C(v76);
  v11 = v75[0];
  if ((v77[37] & 1) == 0)
  {
LABEL_54:
    v70 = [objc_allocWithZone(*(v37 + 2992)) initWithInteger_];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v11;
    sub_20D8D52B0(v70, 0x527974696C697475, 0xEF6E616C50657461, v71);
    return v75[0];
  }

  return v11;
}

uint64_t HEUIFAnalyticsEvent.deinit()
{
  memcpy(v2, (v0 + 24), 0x129uLL);
  sub_20D7E3B2C(v2);
  return v0;
}

uint64_t HEUIFAnalyticsEvent.__deallocating_deinit()
{
  memcpy(v2, (v0 + 24), 0x129uLL);
  sub_20D7E3B2C(v2);
  return swift_deallocClassInstance();
}

uint64_t HEUIFAnalyticsEventType.description.getter()
{
  v0 = HEUIFAnalyticsEventType.rawValue.getter();
  v2 = sub_20D7E5BB0(4, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x20F323300](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x20F323340](v9, v11);

  return 0x6C7070612E6D6F63;
}

unint64_t HEUIFAnalyticsEventType.rawValue.getter()
{
  result = 0xD000000000000023;
  switch(*v0)
  {
    case 1:
    case 6:
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 2:
    case 0x15:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 0x17:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
    case 0x12:
    case 0x20:
    case 0x23:
      result = 0xD000000000000024;
      break;
    case 0xA:
    case 0xB:
    case 0xE:
    case 0x16:
    case 0x19:
      result = 0xD00000000000002BLL;
      break;
    case 0xC:
      result = 0xD000000000000034;
      break;
    case 0xD:
      result = 0xD00000000000002ELL;
      break;
    case 0xF:
      result = 0xD000000000000032;
      break;
    case 0x10:
      result = 0xD00000000000002FLL;
      break;
    case 0x11:
      result = 0xD00000000000002ALL;
      break;
    case 0x13:
    case 0x1A:
    case 0x1D:
    case 0x21:
    case 0x24:
      result = 0xD000000000000027;
      break;
    case 0x18:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

HomeEnergyUI::HEUIFAnalyticsEventType_optional __swiftcall HEUIFAnalyticsEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D9757D8();

  v5 = 0;
  v6 = 19;
  switch(v3)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v5 = 1;
      goto LABEL_33;
    case 2:
      v5 = 2;
      goto LABEL_33;
    case 3:
      v5 = 3;
      goto LABEL_33;
    case 4:
      v5 = 4;
      goto LABEL_33;
    case 5:
      v5 = 5;
      goto LABEL_33;
    case 6:
      v5 = 6;
      goto LABEL_33;
    case 7:
      v5 = 7;
      goto LABEL_33;
    case 8:
      v5 = 8;
      goto LABEL_33;
    case 9:
      v5 = 9;
      goto LABEL_33;
    case 10:
      v5 = 10;
      goto LABEL_33;
    case 11:
      v5 = 11;
      goto LABEL_33;
    case 12:
      v5 = 12;
      goto LABEL_33;
    case 13:
      v5 = 13;
      goto LABEL_33;
    case 14:
      v5 = 14;
      goto LABEL_33;
    case 15:
      v5 = 15;
      goto LABEL_33;
    case 16:
      v5 = 16;
      goto LABEL_33;
    case 17:
      v5 = 17;
      goto LABEL_33;
    case 18:
      v5 = 18;
LABEL_33:
      v6 = v5;
      break;
    case 19:
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    default:
      v6 = 37;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D7E4D58()
{
  v0 = HEUIFAnalyticsEventType.rawValue.getter();
  v2 = v1;
  if (v0 == HEUIFAnalyticsEventType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20D9757C8();
  }

  return v5 & 1;
}

uint64_t sub_20D7E4DF4()
{
  sub_20D975888();
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D7E4E5C(uint64_t a1)
{
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();
}

uint64_t sub_20D7E4EC0()
{
  sub_20D975888();
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();

  return sub_20D9758A8();
}

unint64_t sub_20D7E4F30@<X0>(unint64_t *a1@<X8>)
{
  result = HEUIFAnalyticsEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20D7E4F58()
{
  v0 = HEUIFAnalyticsEventType.rawValue.getter();
  v2 = sub_20D7E5BB0(4, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x20F323300](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x20F323340](v9, v11);

  return 0x6C7070612E6D6F63;
}

uint64_t HEUIFAnalyticsEventData.viewDuration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.sourceViewController.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.presentingViewController.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.gridID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.adviceText.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.energyViewEntryPoint.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.energyViewEntryPoint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastGeneratedAt.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastState.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastEducationTipViewState.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityId.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.utilityId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingError.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfUtilities.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfOtpMethods.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.otpMethod.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingMethod.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageInterval.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageTOUPricing.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageStatus.setter(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityRatePlan.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

void __swiftcall HEUIFAnalyticsEventData.init(viewDuration:userHasAccessories:sourceViewController:presentingViewController:gridID:adviceText:energyViewEntryPoint:gridForecastGeneratedAt:gridForecastState:gridForecastDoublePaneEnabled:gridForecastEducationTipViewState:utilityId:utilityOnboardingError:numOfUtilities:numOfOtpMethods:otpMethod:hasInvalidURL:historicalUsageInterval:historicalUsageTOUPricing:historicalUsageStatus:utilityRatePlan:)(HomeEnergyUI::HEUIFAnalyticsEventData *__return_ptr retstr, Swift::Double_optional viewDuration, Swift::Bool_optional userHasAccessories, Swift::Int_optional sourceViewController, Swift::Int_optional presentingViewController, Swift::String_optional gridID, Swift::Int_optional adviceText, Swift::String_optional energyViewEntryPoint, Swift::Int_optional gridForecastGeneratedAt, Swift::Int_optional gridForecastState, Swift::Bool_optional gridForecastDoublePaneEnabled, Swift::Int_optional gridForecastEducationTipViewState, Swift::String_optional utilityId, Swift::Int_optional utilityOnboardingError, Swift::Int_optional numOfUtilities, Swift::Int_optional numOfOtpMethods, Swift::Int_optional otpMethod, Swift::Bool_optional hasInvalidURL, Swift::Int_optional historicalUsageInterval, Swift::Int_optional historicalUsageTOUPricing, Swift::Int_optional historicalUsageStatus, Swift::Int_optional utilityRatePlan)
{
  LOBYTE(retstr->numOfUtilities.value) = 2;
  HIWORD(retstr[1].sourceViewController.value) = 513;
  retstr->viewDuration.value = *&viewDuration.is_nil;
  retstr->viewDuration.is_nil = userHasAccessories.value;
  retstr->userHasAccessories.value = sourceViewController.value;
  *(&retstr->sourceViewController.value + 6) = *&sourceViewController.is_nil;
  BYTE5(retstr->presentingViewController.value) = presentingViewController.value & 1;
  retstr->gridID.value._countAndFlagsBits = *&presentingViewController.is_nil;
  LOBYTE(retstr->gridID.value._object) = gridID.value._countAndFlagsBits & 1;
  retstr->adviceText.value = gridID.value._object;
  *&retstr->adviceText.is_nil = adviceText.value;
  retstr->energyViewEntryPoint.value._countAndFlagsBits = *&adviceText.is_nil;
  LOBYTE(retstr->energyViewEntryPoint.value._object) = energyViewEntryPoint.value._countAndFlagsBits & 1;
  *(&retstr->gridForecastState.value + 7) = *&gridForecastGeneratedAt.is_nil;
  BYTE5(retstr->gridForecastEducationTipViewState.value) = gridForecastState.value & 1;
  retstr->utilityId.value._countAndFlagsBits = *&gridForecastState.is_nil;
  LOBYTE(retstr->utilityId.value._object) = gridForecastEducationTipViewState.value & 1;
  BYTE1(retstr->utilityId.value._object) = BYTE1(gridForecastEducationTipViewState.value);
  retstr->utilityOnboardingError.value = *&gridForecastEducationTipViewState.is_nil;
  retstr->utilityOnboardingError.is_nil = utilityId.value._countAndFlagsBits & 1;
  *(&retstr->otpMethod.value + 5) = *&utilityOnboardingError.is_nil;
  BYTE3(retstr->utilityOnboardingMethod.value) = numOfUtilities.value & 1;
  *(&retstr->historicalUsageInterval.value + 1) = *&numOfUtilities.is_nil;
  LOBYTE(retstr->historicalUsageTOUPricing.value) = numOfOtpMethods.value & 1;
  *&retstr->historicalUsageTOUPricing.is_nil = *&numOfOtpMethods.is_nil;
  HIBYTE(retstr->historicalUsageStatus.value) = otpMethod.value & 1;
  *(&retstr->utilityRatePlan.value + 6) = *&otpMethod.is_nil;
  LOBYTE(retstr[1].viewDuration.value) = historicalUsageInterval.value & 1;
  BYTE1(retstr[1].viewDuration.value) = BYTE1(historicalUsageInterval.value);
  *(&retstr[1].presentingViewController.value + 5) = *&historicalUsageInterval.is_nil;
  LOBYTE(retstr[1].gridID.value._countAndFlagsBits) = historicalUsageTOUPricing.value & 1;
  retstr[1].gridID.value._object = *&historicalUsageTOUPricing.is_nil;
  LOBYTE(retstr[1].adviceText.value) = historicalUsageStatus.value & 1;
  *&retstr[1].adviceText.is_nil = *&historicalUsageStatus.is_nil;
  LOBYTE(retstr[1].energyViewEntryPoint.value._countAndFlagsBits) = utilityRatePlan.value & 1;
  retstr[1].energyViewEntryPoint.value._object = *&utilityRatePlan.is_nil;
  LOBYTE(retstr[1].gridForecastGeneratedAt.value) = v22 & 1;
  *&retstr[1].viewDuration.is_nil = 0;
  *&retstr->gridForecastGeneratedAt.value = *&energyViewEntryPoint.value._object;
  *(&retstr->numOfUtilities.value + 7) = *&utilityId.value._object;
}

void __swiftcall HEUIFAnalyticsEventData.init(viewDuration:userHasAccessories:sourceViewController:presentingViewController:gridID:adviceText:energyViewEntryPoint:gridForecastGeneratedAt:gridForecastState:gridForecastDoublePaneEnabled:gridForecastEducationTipViewState:utilityId:utilityOnboardingError:numOfUtilities:numOfOtpMethods:otpMethod:hasInvalidURL:utilityOnboardingMethod:didAttemptPasswordlessMethod:historicalUsageInterval:historicalUsageTOUPricing:historicalUsageStatus:utilityRatePlan:)(HomeEnergyUI::HEUIFAnalyticsEventData *__return_ptr retstr, Swift::Double_optional viewDuration, Swift::Bool_optional userHasAccessories, Swift::Int_optional sourceViewController, Swift::Int_optional presentingViewController, Swift::String_optional gridID, Swift::Int_optional adviceText, Swift::String_optional energyViewEntryPoint, Swift::Int_optional gridForecastGeneratedAt, Swift::Int_optional gridForecastState, Swift::Bool_optional gridForecastDoublePaneEnabled, Swift::Int_optional gridForecastEducationTipViewState, Swift::String_optional utilityId, Swift::Int_optional utilityOnboardingError, Swift::Int_optional numOfUtilities, Swift::Int_optional numOfOtpMethods, Swift::Int_optional otpMethod, Swift::Bool_optional hasInvalidURL, Swift::Int_optional utilityOnboardingMethod, Swift::Bool_optional didAttemptPasswordlessMethod, Swift::Int_optional historicalUsageInterval, Swift::Int_optional historicalUsageTOUPricing, Swift::Int_optional historicalUsageStatus, Swift::Int_optional utilityRatePlan)
{
  LOBYTE(retstr->numOfUtilities.value) = 2;
  retstr->viewDuration.value = *&viewDuration.is_nil;
  retstr->viewDuration.is_nil = userHasAccessories.value;
  retstr->userHasAccessories.value = sourceViewController.value;
  *(&retstr->sourceViewController.value + 6) = *&sourceViewController.is_nil;
  BYTE5(retstr->presentingViewController.value) = presentingViewController.value & 1;
  retstr->gridID.value._countAndFlagsBits = *&presentingViewController.is_nil;
  LOBYTE(retstr->gridID.value._object) = gridID.value._countAndFlagsBits & 1;
  retstr->adviceText.value = gridID.value._object;
  *&retstr->adviceText.is_nil = adviceText.value;
  retstr->energyViewEntryPoint.value._countAndFlagsBits = *&adviceText.is_nil;
  LOBYTE(retstr->energyViewEntryPoint.value._object) = energyViewEntryPoint.value._countAndFlagsBits & 1;
  *(&retstr->gridForecastState.value + 7) = *&gridForecastGeneratedAt.is_nil;
  BYTE5(retstr->gridForecastEducationTipViewState.value) = gridForecastState.value & 1;
  retstr->utilityId.value._countAndFlagsBits = *&gridForecastState.is_nil;
  LOBYTE(retstr->utilityId.value._object) = gridForecastEducationTipViewState.value & 1;
  BYTE1(retstr->utilityId.value._object) = BYTE1(gridForecastEducationTipViewState.value);
  retstr->utilityOnboardingError.value = *&gridForecastEducationTipViewState.is_nil;
  retstr->utilityOnboardingError.is_nil = utilityId.value._countAndFlagsBits & 1;
  *(&retstr->otpMethod.value + 5) = *&utilityOnboardingError.is_nil;
  BYTE3(retstr->utilityOnboardingMethod.value) = numOfUtilities.value & 1;
  *(&retstr->historicalUsageInterval.value + 1) = *&numOfUtilities.is_nil;
  LOBYTE(retstr->historicalUsageTOUPricing.value) = numOfOtpMethods.value & 1;
  *&retstr->historicalUsageTOUPricing.is_nil = *&numOfOtpMethods.is_nil;
  HIBYTE(retstr->historicalUsageStatus.value) = otpMethod.value & 1;
  *(&retstr->utilityRatePlan.value + 6) = *&otpMethod.is_nil;
  LOBYTE(retstr[1].viewDuration.value) = utilityOnboardingMethod.value & 1;
  BYTE1(retstr[1].viewDuration.value) = BYTE1(utilityOnboardingMethod.value);
  *&retstr[1].viewDuration.is_nil = *&utilityOnboardingMethod.is_nil;
  BYTE6(retstr[1].sourceViewController.value) = historicalUsageInterval.value & 1;
  HIBYTE(retstr[1].sourceViewController.value) = BYTE1(historicalUsageInterval.value);
  *(&retstr[1].presentingViewController.value + 5) = *&historicalUsageInterval.is_nil;
  LOBYTE(retstr[1].gridID.value._countAndFlagsBits) = historicalUsageTOUPricing.value & 1;
  retstr[1].gridID.value._object = *&historicalUsageTOUPricing.is_nil;
  LOBYTE(retstr[1].adviceText.value) = historicalUsageStatus.value & 1;
  *&retstr[1].adviceText.is_nil = *&historicalUsageStatus.is_nil;
  LOBYTE(retstr[1].energyViewEntryPoint.value._countAndFlagsBits) = utilityRatePlan.value & 1;
  retstr[1].energyViewEntryPoint.value._object = *&utilityRatePlan.is_nil;
  LOBYTE(retstr[1].gridForecastGeneratedAt.value) = v24 & 1;
  *&retstr->gridForecastGeneratedAt.value = *&energyViewEntryPoint.value._object;
  *(&retstr->numOfUtilities.value + 7) = *&utilityId.value._object;
}

void __swiftcall HEUIFAnalyticsEventData.init(viewDuration:userHasAccessories:sourceViewController:presentingViewController:gridID:adviceText:energyViewEntryPoint:gridForecastGeneratedAt:gridForecastState:gridForecastDoublePaneEnabled:gridForecastEducationTipViewState:isNextCleanEnergyNotificationEnabled:utilityId:utilityOnboardingError:numOfUtilities:numOfOtpMethods:otpMethod:hasInvalidURL:utilityOnboardingMethod:didAttemptPasswordlessMethod:historicalUsageInterval:historicalUsageTOUPricing:historicalUsageStatus:utilityRatePlan:)(HomeEnergyUI::HEUIFAnalyticsEventData *__return_ptr retstr, Swift::Double_optional viewDuration, Swift::Bool_optional userHasAccessories, Swift::Int_optional sourceViewController, Swift::Int_optional presentingViewController, Swift::String_optional gridID, Swift::Int_optional adviceText, Swift::String_optional energyViewEntryPoint, Swift::Int_optional gridForecastGeneratedAt, Swift::Int_optional gridForecastState, Swift::Bool_optional gridForecastDoublePaneEnabled, Swift::Int_optional gridForecastEducationTipViewState, Swift::Bool_optional isNextCleanEnergyNotificationEnabled, Swift::String_optional utilityId, Swift::Int_optional utilityOnboardingError, Swift::Int_optional numOfUtilities, Swift::Int_optional numOfOtpMethods, Swift::Int_optional otpMethod, Swift::Bool_optional hasInvalidURL, Swift::Int_optional utilityOnboardingMethod, Swift::Bool_optional didAttemptPasswordlessMethod, Swift::Int_optional historicalUsageInterval, Swift::Int_optional historicalUsageTOUPricing, Swift::Int_optional historicalUsageStatus, Swift::Int_optional utilityRatePlan)
{
  retstr->viewDuration.value = *&viewDuration.is_nil;
  retstr->viewDuration.is_nil = userHasAccessories.value;
  retstr->userHasAccessories.value = sourceViewController.value;
  *(&retstr->sourceViewController.value + 6) = *&sourceViewController.is_nil;
  BYTE5(retstr->presentingViewController.value) = presentingViewController.value & 1;
  retstr->gridID.value._countAndFlagsBits = *&presentingViewController.is_nil;
  LOBYTE(retstr->gridID.value._object) = gridID.value._countAndFlagsBits & 1;
  retstr->adviceText.value = gridID.value._object;
  *&retstr->adviceText.is_nil = adviceText.value;
  retstr->energyViewEntryPoint.value._countAndFlagsBits = *&adviceText.is_nil;
  LOBYTE(retstr->energyViewEntryPoint.value._object) = energyViewEntryPoint.value._countAndFlagsBits & 1;
  *(&retstr->gridForecastState.value + 7) = *&gridForecastGeneratedAt.is_nil;
  BYTE5(retstr->gridForecastEducationTipViewState.value) = gridForecastState.value & 1;
  retstr->utilityId.value._countAndFlagsBits = *&gridForecastState.is_nil;
  LOBYTE(retstr->utilityId.value._object) = gridForecastEducationTipViewState.value & 1;
  BYTE1(retstr->utilityId.value._object) = BYTE1(gridForecastEducationTipViewState.value);
  retstr->utilityOnboardingError.value = *&gridForecastEducationTipViewState.is_nil;
  retstr->utilityOnboardingError.is_nil = utilityId.value._countAndFlagsBits & 1;
  LOBYTE(retstr->numOfUtilities.value) = BYTE1(utilityId.value._countAndFlagsBits);
  *(&retstr->otpMethod.value + 5) = *&utilityOnboardingError.is_nil;
  BYTE3(retstr->utilityOnboardingMethod.value) = numOfUtilities.value & 1;
  *(&retstr->historicalUsageInterval.value + 1) = *&numOfUtilities.is_nil;
  LOBYTE(retstr->historicalUsageTOUPricing.value) = numOfOtpMethods.value & 1;
  *&retstr->historicalUsageTOUPricing.is_nil = *&numOfOtpMethods.is_nil;
  HIBYTE(retstr->historicalUsageStatus.value) = otpMethod.value & 1;
  *(&retstr->utilityRatePlan.value + 6) = *&otpMethod.is_nil;
  LOBYTE(retstr[1].viewDuration.value) = utilityOnboardingMethod.value & 1;
  BYTE1(retstr[1].viewDuration.value) = BYTE1(utilityOnboardingMethod.value);
  *&retstr[1].viewDuration.is_nil = *&utilityOnboardingMethod.is_nil;
  BYTE6(retstr[1].sourceViewController.value) = historicalUsageInterval.value & 1;
  HIBYTE(retstr[1].sourceViewController.value) = BYTE1(historicalUsageInterval.value);
  *(&retstr[1].presentingViewController.value + 5) = *&historicalUsageInterval.is_nil;
  LOBYTE(retstr[1].gridID.value._countAndFlagsBits) = historicalUsageTOUPricing.value & 1;
  retstr[1].gridID.value._object = *&historicalUsageTOUPricing.is_nil;
  LOBYTE(retstr[1].adviceText.value) = historicalUsageStatus.value & 1;
  *&retstr[1].adviceText.is_nil = *&historicalUsageStatus.is_nil;
  LOBYTE(retstr[1].energyViewEntryPoint.value._countAndFlagsBits) = utilityRatePlan.value & 1;
  retstr[1].energyViewEntryPoint.value._object = *&utilityRatePlan.is_nil;
  LOBYTE(retstr[1].gridForecastGeneratedAt.value) = v25 & 1;
  *&retstr->gridForecastGeneratedAt.value = *&energyViewEntryPoint.value._object;
  *(&retstr->numOfUtilities.value + 7) = *&utilityId.value._object;
}