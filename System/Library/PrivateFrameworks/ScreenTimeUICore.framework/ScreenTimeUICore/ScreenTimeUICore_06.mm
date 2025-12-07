void *sub_264E198A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E238E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264E1994C(uint64_t a1)
{
  result = sub_264E238E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

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

uint64_t sub_264E199E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_264E19A2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 48));
  v5 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0) + 24);
  v6 = sub_264E238E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E19C00@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ScreenTimeNotificationsAppIntentView(0);

  return sub_264E18A84(a1, a2);
}

uint64_t sub_264E19CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E19DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsageHeaderView.body.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  sub_264E19FE4(v1, &v14 - v3);
  v5 = type metadata accessor for UsageHeaderView(0);
  v6 = v5[6];
  v7 = *(v1 + v5[5]);
  v8 = v2[10];
  v9 = sub_264E238E8();
  (*(*(v9 - 8) + 16))(&v4[v8], v1 + v6, v9);
  v10 = *(v1 + v5[7]);
  *&v4[v2[9]] = v7;
  v11 = &v4[v2[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[v2[12]] = v10;
  v12 = &v4[v2[13]];
  *v12 = sub_264DF82C0;
  *(v12 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264E1A074(v4);
}

uint64_t sub_264E19FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E1A074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E1A0F8(int *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_264E19FE4(v3, &v15 - v5);
  v7 = a1[6];
  v8 = *(v3 + a1[5]);
  v9 = v4[10];
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 16))(&v6[v9], v3 + v7, v10);
  v11 = *(v3 + a1[7]);
  *&v6[v4[9]] = v8;
  v12 = &v6[v4[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v6[v4[12]] = v11;
  v13 = &v6[v4[13]];
  *v13 = sub_264DF82C0;
  *(v13 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264E1A074(v6);
}

uint64_t sub_264E1A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264E1A3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264E1A4D8(uint64_t a1)
{
  type metadata accessor for UsageHeaderView.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v2 <= 0x3F)
    {
      sub_264E238E8();
      if (v3 <= 0x3F)
      {
        sub_264DDB468(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264E1A5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23C38();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E1A6B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23C38();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E1A7B8(uint64_t a1)
{
  sub_264E114FC(319);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E1A840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_264E1A89C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_264E1A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x26674ED70](v4, a3, &type metadata for AccessibilityLabelIfNotNil);
}

uint64_t sub_264E1A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3650, &qword_264E2A9B0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  if (a3)
  {
    v14[0] = a2;
    v14[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3660, &qword_264E2A9C0);
    sub_264E1ABF0();
    sub_264D89EB8();
    sub_264E24BE8();
    sub_264E1AC54(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_264E1AB64();
    sub_264E24858();
    return sub_264E1ACC4(v11);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3660, &qword_264E2A9C0);
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_264E1AB64();
    sub_264E1ABF0();
    return sub_264E24858();
  }
}

unint64_t sub_264E1AB64()
{
  result = qword_27FFB3668;
  if (!qword_27FFB3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3658, &qword_264E2A9B8);
    sub_264E1ABF0();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3668);
  }

  return result;
}

unint64_t sub_264E1ABF0()
{
  result = qword_27FFB3670;
  if (!qword_27FFB3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3660, &qword_264E2A9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3670);
  }

  return result;
}

uint64_t sub_264E1AC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E1ACC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3658, &qword_264E2A9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264E1AD30()
{
  result = qword_27FFB3678;
  if (!qword_27FFB3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3680, &qword_264E2A9C8);
    sub_264E1AB64();
    sub_264E1ABF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3678);
  }

  return result;
}

uint64_t PickupsOverviewChart.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for OverviewChart(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF2948(v0, v9);
  v10 = type metadata accessor for PickupsOverviewChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  sub_264E24E78();
  v11 = *(v0 + *(v10 + 24));
  v12 = sub_264E23AA8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_264D93A14(v6, v3);

  sub_264E24D78();
  sub_264DF29CC(v6);
  v13 = v7[7];
  v14 = &v9[v7[8]];
  v20 = 0x4024000000000000;
  sub_264E24D78();
  v15 = v22;
  *v14 = v21;
  *(v14 + 1) = v15;
  v16 = &v9[v7[9]];
  v20 = 0;
  sub_264E24D78();
  v17 = v22;
  *v16 = v21;
  *(v16 + 1) = v17;
  v9[v7[10]] = 1;
  *&v9[v13] = v11;
  sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart, &protocol conformance descriptor for OverviewChart);
  sub_264E24C08();
  return sub_264DF2A34(v9);
}

uint64_t sub_264E1B0B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PickupsOverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
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
    v14 = *(a1 + a3[6]);
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
    v16 = type metadata accessor for OverviewChart.Model(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_264E1B278(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PickupsOverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
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
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for OverviewChart.Model(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_264E1B3F8(uint64_t a1)
{
  type metadata accessor for PickupsOverviewChart.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DF2F10(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_264DF2F10(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OverviewChart.Model(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264E1B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23AA8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E1B620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23AA8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264E1B71C(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Model(0);
  if ((sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_264E24C48() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  type metadata accessor for PickupsOverviewChart.Model(0);

  return sub_264E23A78();
}

unint64_t sub_264E1B7F8()
{
  result = qword_27FFB36A8;
  if (!qword_27FFB36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB36A8);
  }

  return result;
}

uint64_t sub_264E1B84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_264E1B894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264E1B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36C0, &qword_264E2AC68);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36C8, &qword_264E2AC70);
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36D0, &qword_264E2AC78);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  *v17 = sub_264E24768();
  *(v17 + 1) = 0x4030000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36D8, &qword_264E2AC80);
  sub_264E1BC8C(a1, &v17[*(v18 + 44)]);
  *v5 = sub_264E24778();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36E0, &qword_264E2AC88);
  sub_264E1CBB8(a1, &v5[*(v19 + 44)]);
  sub_264E24A28();
  sub_264D81DCC(&qword_27FFB36E8, &qword_27FFB36C0, &qword_264E2AC68, MEMORY[0x277CE1138]);
  sub_264E24B98();
  sub_264D817BC(v5, &qword_27FFB36C0, &qword_264E2AC68);
  v20 = v14;
  v30 = v14;
  sub_264D81744(v17, v14, &qword_27FFB36D0, &qword_264E2AC78);
  v21 = *(v6 + 16);
  v22 = v31;
  v21(v8, v11, v31);
  v23 = v20;
  v24 = v32;
  sub_264D81744(v23, v32, &qword_27FFB36D0, &qword_264E2AC78);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36F0, &qword_264E2AC90);
  v26 = v24 + *(v25 + 48);
  *v26 = 0x4030000000000000;
  *(v26 + 8) = 0;
  v21((v24 + *(v25 + 64)), v8, v22);
  v27 = *(v6 + 8);
  v27(v11, v22);
  sub_264D817BC(v17, &qword_27FFB36D0, &qword_264E2AC78);
  v27(v8, v22);
  return sub_264D817BC(v30, &qword_27FFB36D0, &qword_264E2AC78);
}

uint64_t sub_264E1BC8C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3778, &qword_264E2AD20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  v10 = sub_264E24818();
  v20 = 1;
  sub_264E1BF4C(&v31);
  v23 = *&v32[16];
  v24 = *&v32[32];
  v25 = *&v32[48];
  v26 = v32[64];
  v21 = v31;
  v22 = *v32;
  v28 = v32[64];
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v27[4] = *&v32[48];
  v27[0] = v31;
  v27[1] = *v32;
  sub_264D81744(&v21, v29, &qword_27FFB3780, &qword_264E2AD28);
  sub_264D817BC(v27, &qword_27FFB3780, &qword_264E2AD28);
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  v19[87] = v26;
  *&v19[7] = v21;
  *&v19[23] = v22;
  v11 = v20;
  *v9 = sub_264E24818();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3788, &qword_264E2AD30);
  sub_264E1C0E4(a1, &v9[*(v12 + 44)]);
  sub_264D81744(v9, v6, &qword_27FFB3778, &qword_264E2AD20);
  v29[0] = v10;
  v29[1] = 0;
  LOBYTE(v30[0]) = v11;
  *(v30 + 1) = *v19;
  *(&v30[1] + 1) = *&v19[16];
  *(&v30[5] + 1) = *&v19[80];
  *(&v30[4] + 1) = *&v19[64];
  *(&v30[3] + 1) = *&v19[48];
  *(&v30[2] + 1) = *&v19[32];
  v13 = v30[0];
  *a2 = v10;
  a2[1] = v13;
  v14 = v30[1];
  v15 = v30[2];
  *(a2 + 89) = *(&v30[4] + 9);
  v16 = v30[4];
  a2[4] = v30[3];
  a2[5] = v16;
  a2[2] = v14;
  a2[3] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3790, &qword_264E2AD38);
  sub_264D81744(v6, a2 + *(v17 + 48), &qword_27FFB3778, &qword_264E2AD20);
  sub_264D81744(v29, &v31, &qword_27FFB3798, &qword_264E2AD40);
  sub_264D817BC(v9, &qword_27FFB3778, &qword_264E2AD20);
  sub_264D817BC(v6, &qword_27FFB3778, &qword_264E2AD20);
  *&v32[33] = *&v19[32];
  *&v32[49] = *&v19[48];
  v33 = *&v19[64];
  *&v32[1] = *v19;
  v31 = v10;
  v32[0] = v11;
  v34 = *&v19[80];
  *&v32[17] = *&v19[16];
  return sub_264D817BC(&v31, &qword_27FFB3798, &qword_264E2AD40);
}

void sub_264E1BF4C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_264E24D18();
  v6 = [objc_opt_self() systemBlueColor];
  v7 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v9 = sub_264E249F8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_264E24A38();
  sub_264D817BC(v4, &qword_27FFB17B8, &qword_264E279E0);
  v11 = swift_getKeyPath();
  v12 = sub_264E249A8();
  sub_264E243D8();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  *(a1 + 80) = 0;
}

uint64_t sub_264E1C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37A0, &qword_264E2AD48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  *v9 = sub_264E24778();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37A8, &qword_264E2AD50);
  sub_264E1C2D0(a1, &v9[*(v10 + 44)]);
  v20 = sub_264E24768();
  sub_264E1C938(v21);
  v11 = v21[0];
  v12 = v21[1];
  v13 = v22;
  v14 = v23;
  v19 = v24;
  v15 = v25;
  LOBYTE(v21[0]) = 1;
  v27 = v22;
  v26 = v25;
  sub_264D81744(v9, v6, &qword_27FFB37A0, &qword_264E2AD48);
  sub_264D81744(v6, a2, &qword_27FFB37A0, &qword_264E2AD48);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37B0, &qword_264E2AD58) + 48);
  *v16 = v20;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v16 + 24) = v11;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  v17 = v19;
  *(v16 + 48) = v14;
  *(v16 + 56) = v17;
  *(v16 + 64) = v15;
  sub_264D80F20(v11, v12, v13);

  sub_264D817BC(v9, &qword_27FFB37A0, &qword_264E2AD48);
  sub_264D817AC(v11, v12, v13);

  return sub_264D817BC(v6, &qword_27FFB37A0, &qword_264E2AD48);
}

uint64_t sub_264E1C2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37B8, &qword_264E2AD60) - 8;
  MEMORY[0x28223BE20](v34);
  v35 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-v6];
  v8 = sub_264E247C8();
  MEMORY[0x28223BE20](v8 - 8);
  sub_264E247B8();
  sub_264E247A8();
  sub_264E24798();
  sub_264E247A8();
  v36[0] = *(a1 + 32);
  sub_264E24788();
  sub_264E247A8();
  sub_264E247E8();
  v9 = [objc_opt_self() bundle];
  v10 = sub_264E24AE8();
  v12 = v11;
  v14 = v13;
  sub_264E24A28();
  v15 = sub_264E24AA8();
  v17 = v16;
  v33 = v18;
  v20 = v19;
  sub_264D817AC(v10, v12, v14 & 1);

  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  sub_264DBD744(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37C0, &qword_264E2AD68);
  sub_264E1DCAC();
  sub_264E24DD8();
  v24 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37D0, &qword_264E2AD70) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37D8, &qword_264E2AD78);
  sub_264E24598();
  *v24 = swift_getKeyPath();
  v25 = &v7[*(v34 + 44)];
  v26 = *(sub_264E24568() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_264E247F8();
  (*(*(v28 - 8) + 104))(&v25->i8[v26], v27, v28);
  *v25 = vdupq_n_s64(0x4059000000000000uLL);
  *(v25->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  v29 = v35;
  sub_264D81744(v7, v35, &qword_27FFB37B8, &qword_264E2AD60);
  *a2 = v15;
  *(a2 + 8) = v17;
  LOBYTE(v27) = v33 & 1;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB37E0, &unk_264E2ADB0);
  sub_264D81744(v29, a2 + *(v30 + 64), &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D80F20(v15, v17, v27);

  sub_264D817BC(v7, &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D817BC(v29, &qword_27FFB37B8, &qword_264E2AD60);
  sub_264D817AC(v15, v17, v27);
}

uint64_t sub_264E1C760@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_264E24D18();
  v6 = sub_264E249F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_264E24A38();
  sub_264D817BC(v4, &qword_27FFB17B8, &qword_264E279E0);
  sub_264E24A08();
  v7 = sub_264E24A58();

  KeyPath = swift_getKeyPath();
  v9 = sub_264E24C68();
  v10 = swift_getKeyPath();
  v11 = sub_264E24998();
  sub_264E243D8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23[8] = 0;
  v20 = [objc_opt_self() quaternarySystemFillColor];
  v21 = sub_264E24C38();
  result = sub_264E24998();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + 88) = v21;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_264E1C938@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_264E247C8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_264E247B8();
  sub_264E247A8();
  sub_264E24798();
  sub_264E247A8();
  sub_264E24798();
  sub_264E247A8();
  sub_264E247E8();
  v5 = [objc_opt_self() bundle];
  v6 = sub_264E24AE8();
  v8 = v7;
  v10 = v9;
  sub_264E24CD8();
  v11 = sub_264E24AB8();
  v13 = v12;
  v15 = v14;

  sub_264D817AC(v6, v8, v10 & 1);

  sub_264E249D8();
  v16 = sub_264E24AD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_264D817AC(v11, v13, v15 & 1);

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = 0x4030000000000000;
  *(a2 + 40) = 0;
  sub_264D80F20(v16, v18, v20 & 1);

  sub_264D817AC(v16, v18, v20 & 1);
}

uint64_t sub_264E1CBB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36F8, &qword_264E2AC98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3700, &qword_264E2ACA0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  sub_264E243A8();
  v16 = sub_264E243C8();
  v33 = *(*(v16 - 8) + 56);
  v33(v5, 0, 1, v16);
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  sub_264DBD744(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8);
  sub_264E1D970();
  sub_264E24DC8();
  sub_264E243B8();
  v33(v5, 0, 1, v16);
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  sub_264DBD744(a1, v38);
  v23 = v34;
  sub_264E24DC8();
  v24 = *(v7 + 16);
  v25 = v35;
  v26 = v15;
  v24(v35, v15, v6);
  v27 = v36;
  v28 = v23;
  v24(v36, v23, v6);
  v29 = v37;
  v24(v37, v25, v6);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3768, &qword_264E2ACE0);
  v24(&v29[*(v30 + 48)], v27, v6);
  v31 = *(v7 + 8);
  v31(v28, v6);
  v31(v26, v6);
  v31(v27, v6);
  return (v31)(v25, v6);
}

uint64_t sub_264E1CFD4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3770, &qword_264E2AD18);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_264E23978();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23968();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_264D817BC(v3, &qword_27FFB3770, &qword_264E2AD18);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = sub_264E23958();
    [v10 openSensitiveURL:v11 withOptions:0];
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_264E1D1A4@<Q0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v26 = v4;
  v27 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_264E24818();
  v25 = sub_264E24778();
  LOBYTE(v24) = 1;
  LOWORD(v23) = 1;
  sub_264E24588();
  v10 = v6 & 1;
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v15 = [v11 quaternarySystemFillColor];
  v16 = sub_264E24C38();
  v17 = sub_264E24998();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8) + 36));
  v19 = *(sub_264E24568() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264E247F8();
  (*(*(v21 - 8) + 104))(&v18->i8[v19], v20, v21);
  *v18 = vdupq_n_s64(0x4059000000000000uLL);
  *(v18->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 96) = v32;
  *(a1 + 112) = v33;
  *(a1 + 128) = v34;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  result = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  return result;
}

uint64_t sub_264E1D41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3770, &qword_264E2AD18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_264E23978();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23968();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_264D817BC(v4, &qword_27FFB3770, &qword_264E2AD18);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_opt_self() defaultWorkspace];
    if (v10)
    {
      v11 = v10;
      v12 = sub_264E23958();
      [v11 openSensitiveURL:v12 withOptions:0];
    }

    v9 = (*(v6 + 8))(v8, v5);
  }

  return (*(a1 + 56))(v9);
}

__n128 sub_264E1D5F8@<Q0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v26 = v4;
  v27 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_264E24818();
  v25 = sub_264E24778();
  LOBYTE(v24) = 1;
  LOWORD(v23) = 1;
  sub_264E24588();
  v10 = v6 & 1;
  v11 = objc_opt_self();
  v12 = [v11 systemBlueColor];
  v13 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  v15 = [v11 systemBlueColor];
  sub_264E24C38();
  v16 = sub_264E24CC8();

  v17 = sub_264E24998();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3708, &qword_264E2ACA8) + 36));
  v19 = *(sub_264E24568() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_264E247F8();
  (*(*(v21 - 8) + 104))(&v18->i8[v19], v20, v21);
  *v18 = vdupq_n_s64(0x4059000000000000uLL);
  *(v18->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3760, &qword_264E2ACD8) + 36)) = 256;
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 96) = v32;
  *(a1 + 112) = v33;
  *(a1 + 128) = v34;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  result = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  return result;
}

uint64_t sub_264E1D88C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v18[2] = *(v2 + 32);
  v18[3] = v4;
  v18[4] = *(v2 + 64);
  v19 = *(v2 + 80);
  v5 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v5;
  *a2 = sub_264E24818();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36B0, &qword_264E2AC58);
  sub_264E1B914(v18, a2 + *(v6 + 44));
  v7 = sub_264E24998();
  sub_264E243D8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB36B8, &qword_264E2AC60);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_264E1D970()
{
  result = qword_27FFB3710;
  if (!qword_27FFB3710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3708, &qword_264E2ACA8);
    sub_264E1DA28();
    sub_264D81DCC(&qword_27FFB3758, &qword_27FFB3760, &qword_264E2ACD8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3710);
  }

  return result;
}

unint64_t sub_264E1DA28()
{
  result = qword_27FFB3718;
  if (!qword_27FFB3718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3720, &qword_264E2ACB0);
    sub_264E1DAE0();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3718);
  }

  return result;
}

unint64_t sub_264E1DAE0()
{
  result = qword_27FFB3728;
  if (!qword_27FFB3728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3730, &qword_264E2ACB8);
    sub_264E1DB98();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3728);
  }

  return result;
}

unint64_t sub_264E1DB98()
{
  result = qword_27FFB3738;
  if (!qword_27FFB3738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3740, &unk_264E2ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3738);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_264E1DCAC()
{
  result = qword_27FFB37C8;
  if (!qword_27FFB37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB37C0, &qword_264E2AD68);
    sub_264D819BC();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB37C8);
  }

  return result;
}

uint64_t sub_264E1DD88(uint64_t a1)
{
  v2 = sub_264E245A8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264E246A8();
}

unint64_t sub_264E1DE60()
{
  result = qword_27FFB37E8;
  if (!qword_27FFB37E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB36B8, &qword_264E2AC60);
    sub_264D81DCC(&qword_27FFB37F0, &qword_27FFB37F8, &unk_264E2ADF0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB37E8);
  }

  return result;
}

uint64_t SummaryView.Model.init(dateState:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v77 = a1;
  v98 = sub_264E23AA8();
  v80 = *(v98 - 8);
  v4 = v80;
  MEMORY[0x28223BE20](v98);
  v94 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for OverviewChart.Model(0);
  MEMORY[0x28223BE20](v76);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v72 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) - 8;
  MEMORY[0x28223BE20](v92);
  v10 = &v72 - v9;
  v97 = sub_264E23C38();
  v11 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v19 - 8);
  v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v91 = &v72 - v22;
  MEMORY[0x28223BE20](v23);
  v81 = &v72 - v24;
  MEMORY[0x28223BE20](v25);
  v87 = &v72 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v72 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - v31;
  v73 = type metadata accessor for SummaryView.Model(0);
  v33 = *(v73 + 20);
  v78 = a3;
  v34 = a3 + v33;
  v35 = *(v4 + 56);
  v35(v32, 1, 1, v98);
  v84 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v36 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v96 = v11;
  v37 = *(v11 + 16);
  v88 = v34;
  v38 = v34 + v36;
  v39 = v97;
  v37(v38, v18, v97);
  v90 = v18;
  v37(v15, v18, v39);
  v83 = v32;
  sub_264D81744(v32, v29, &qword_27FFB1860, &qword_264E267E0);
  v89 = v15;
  v40 = v15;
  v41 = v39;
  v37(v10, v40, v39);
  v42 = v92;
  v43 = *(v92 + 44);
  v44 = v98;
  v45 = v81;
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v82 = *(v42 + 52);
  v85 = v35;
  v86 = v4 + 56;
  v35(&v10[v82], 1, 1, v44);

  v10[*(v42 + 48)] = 0;
  v92 = v10;
  *&v10[v43] = v84;
  sub_264D81744(v29, v45, &qword_27FFB1860, &qword_264E267E0);
  v46 = v80;
  v47 = *(v80 + 48);
  v48 = v47(v45, 1, v44);
  v84 = v47;
  if (v48 == 1)
  {
    v49 = v87;
    sub_264E23A98();
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    v50 = *(v96 + 8);
    v50(v89, v41);
    v50(v90, v41);
    sub_264D817BC(v83, &qword_27FFB1860, &qword_264E267E0);
    v51 = v46;
    if (v47(v45, 1, v44) != 1)
    {
      sub_264D817BC(v45, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    v52 = *(v96 + 8);
    v52(v89, v41);
    v52(v90, v41);
    sub_264D817BC(v83, &qword_27FFB1860, &qword_264E267E0);
    v49 = v87;
    (*(v46 + 32))(v87, v45, v44);
    v51 = v46;
  }

  v85(v49, 0, 1, v44);
  v53 = v92;
  sub_264DEB634(v49, v92 + v82);
  sub_264D90E64(v53, v88, &qword_27FFB1D90, &unk_264E268E0);
  v54 = v94;
  sub_264E23A98();
  v55 = v91;
  v56 = v44;
  Calendar.startOfWeek(containing:)(v54, v91);
  v57 = *(v51 + 8);
  v57(v54, v44);
  v58 = v84;
  result = v84(v55, 1, v44);
  v60 = v93;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v94 = sub_264E24C78();
    sub_264E23BF8();
    v61 = v79;
    Calendar.startOfWeek(containing:)(v55, v79);
    v62 = v61;
    result = v58(v61, 1, v56);
    v64 = v96;
    v63 = v97;
    if (result != 1)
    {
      v57(v55, v56);
      v65 = v75;
      (*(v51 + 32))(v75, v62, v56);
      v66 = v76;
      *(v65 + *(v76 + 20)) = MEMORY[0x277D84F90];
      v67 = *(v64 + 32);
      v67(v65 + v66[6], v60, v63);
      *(v65 + v66[7]) = v94;
      *(v65 + v66[8]) = 0;
      v68 = v74;
      sub_264E214F8(v65, v74, type metadata accessor for OverviewChart.Model);
      v69 = v68;
      v70 = v78;
      sub_264E214F8(v69, v78, type metadata accessor for OverviewChart.Model);
      v71 = v73;
      sub_264E214F8(v77, v70 + *(v73 + 24), type metadata accessor for ActivityNavigationState);
      return (v67)(v70 + *(v71 + 28), v95, v63);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264E1E78C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E24748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_264D81744(v2, &v14 - v9, &qword_27FFB3808, &qword_264E2AE38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264E243F8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_264E252B8();
    v13 = sub_264E24978();
    sub_264E23F98();

    sub_264E24738();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t SummaryView.Model.init(usageThisWeek:headerModel:totalUsageLastWeek:dateState:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) - 8;
  MEMORY[0x28223BE20](v53);
  v67 = &v48 - v6;
  v65 = sub_264E23C38();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v59 = type metadata accessor for SummaryView.Model(0);
  v23 = *(v59 + 20);
  v63 = a5;
  v24 = a5 + v23;
  v25 = sub_264E23AA8();
  v50 = *(v25 - 8);
  v26 = v50 + 56;
  v66 = *(v50 + 56);
  v66(v22, 1, 1, v25);
  v49 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v27 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v68 = v7;
  v28 = *(v7 + 16);
  v58 = v24;
  v29 = v65;
  (v28)(v24 + v27, v11, v65);
  v56 = v11;
  v30 = v51;
  v28();
  v54 = v22;
  v31 = v22;
  v32 = v25;
  sub_264D81744(v31, v19, &qword_27FFB1860, &qword_264E267E0);
  v33 = v67;
  (v28)(v67, v30, v29);
  v34 = v53;
  v35 = *(v53 + 44);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v52 = *(v34 + 52);
  v55 = v26;
  v66(&v33[v52], 1, 1, v32);
  v36 = v50;

  v33[*(v34 + 48)] = 0;
  *&v33[v35] = v49;
  sub_264D81744(v19, v14, &qword_27FFB1860, &qword_264E267E0);
  v37 = *(v36 + 48);
  v38 = v14;
  if (v37(v14, 1, v32) == 1)
  {
    v39 = v57;
    sub_264E23A98();
    sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
    v40 = *(v68 + 8);
    v41 = v65;
    v40(v30, v65);
    v40(v56, v41);
    sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
    if (v37(v38, 1, v32) != 1)
    {
      sub_264D817BC(v38, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
    v42 = *(v68 + 8);
    v41 = v65;
    v42(v30, v65);
    v42(v56, v41);
    sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
    v39 = v57;
    (*(v36 + 32))(v57, v38, v32);
  }

  v66(v39, 0, 1, v32);
  v43 = v67;
  sub_264DEB634(v39, &v67[v52]);
  v44 = v58;
  sub_264D90E64(v43, v58, &qword_27FFB1D90, &unk_264E268E0);
  v45 = v63;
  sub_264E214F8(v60, v63, type metadata accessor for OverviewChart.Model);
  sub_264E21560(v61, v44);
  v46 = v59;
  sub_264E214F8(v62, v45 + *(v59 + 24), type metadata accessor for ActivityNavigationState);
  return (*(v68 + 32))(v45 + *(v46 + 28), v64, v41);
}

uint64_t SummaryView.init(bridge:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for SummaryView(0);
  v15 = a2 + v14[5];
  v24 = 0;
  sub_264E24D78();
  v16 = v26;
  *v15 = v25;
  *(v15 + 1) = v16;
  v17 = type metadata accessor for SummaryView.Model(0);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  sub_264D81744(v13, v10, &qword_27FFB3800, &qword_264E2AE00);
  sub_264E24D78();
  sub_264D817BC(v13, &qword_27FFB3800, &qword_264E2AE00);
  v18 = sub_264E23AA8();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_264D81744(v7, v4, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
  *(a2 + v14[6]) = v23;
  v19 = (a2 + v14[7]);
  v19[3] = type metadata accessor for ModelProvider(0);
  v19[4] = &protocol witness table for ModelProvider;
  __swift_allocate_boxed_opaque_existential_1(v19);
  return _s16ScreenTimeUICore13ModelProviderVACycfC_0();
}

uint64_t SummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = type metadata accessor for SummaryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3810, &qword_264E2AE40);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_264E1F4A0(&v12 - v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  sub_264E22764(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SummaryView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_264E214F8(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SummaryView);
  v10 = &v7[*(v5 + 56)];
  *v10 = sub_264E21610;
  *(v10 + 1) = v9;
  sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40, MEMORY[0x277CDDB50]);
  sub_264E24C08();
  return sub_264D817BC(v7, &qword_27FFB3810, &qword_264E2AE40);
}

uint64_t sub_264E1F4A0@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v73 = type metadata accessor for NoActivityView(0);
  MEMORY[0x28223BE20](v73);
  v3 = (&v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38A8, &qword_264E2AF68);
  MEMORY[0x28223BE20](v70);
  v71 = &v59 - v4;
  v5 = sub_264E243F8();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38B0, &qword_264E2AF70);
  MEMORY[0x28223BE20](v59);
  v11 = &v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38B8, &qword_264E2AF78);
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38C0, &qword_264E2AF80);
  MEMORY[0x28223BE20](v62);
  v63 = &v59 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB38C8, &qword_264E2AF88);
  MEMORY[0x28223BE20](v69);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for SummaryView.Model(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SummaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  sub_264E24D88();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_264D817BC(v19, &qword_27FFB3800, &qword_264E2AE00);
    v24 = sub_264E249D8();
    v25 = [objc_opt_self() systemBackgroundColor];
    v26 = v73;
    v27 = *(v73 + 24);
    v28 = sub_264E23E98();
    (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
    v29 = v3 + *(v26 + 28);
    v74 = 1;
    sub_264E24D78();
    v30 = v76;
    *v29 = v75;
    *(v29 + 1) = v30;
    *(v3 + *(v26 + 32)) = 0x4000000000000000;
    *v3 = v24;
    v3[1] = v25;
    sub_264E22764(v3, v71, type metadata accessor for NoActivityView);
    swift_storeEnumTagMultiPayload();
    sub_264E227FC(&qword_27FFB38D0, &qword_27FFB38C8, &qword_264E2AF88, sub_264E227CC);
    sub_264E229F0(&qword_27FFB3900, type metadata accessor for NoActivityView, &protocol conformance descriptor for NoActivityView);
    sub_264E24858();
    v31 = type metadata accessor for NoActivityView;
    v32 = v3;
  }

  else
  {
    sub_264E214F8(v19, v23, type metadata accessor for SummaryView.Model);
    *v11 = sub_264E24828();
    *(v11 + 1) = 0x4024000000000000;
    v11[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3908, &qword_264E2AFA0);
    sub_264E20234(v23, v1, &v11[*(v33 + 44)]);
    v34 = sub_264E24988();
    sub_264E243D8();
    v35 = &v11[*(v59 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_264E1E78C(v9);
    v41 = v66;
    v40 = v67;
    v42 = v60;
    (*(v66 + 104))(v60, *MEMORY[0x277CDF3C0], v67);
    v43 = sub_264E243E8();
    v44 = *(v41 + 8);
    v44(v42, v40);
    v44(v9, v40);
    v45 = objc_opt_self();
    v46 = &selRef_secondarySystemBackgroundColor;
    if ((v43 & 1) == 0)
    {
      v46 = &selRef_clearColor;
    }

    v47 = [v45 *v46];
    v48 = sub_264E24C38();
    v49 = sub_264E24998();
    v50 = v64;
    sub_264D90E64(v11, v64, &qword_27FFB38B0, &qword_264E2AF70);
    v51 = v50 + *(v65 + 36);
    *v51 = v48;
    *(v51 + 8) = v49;
    v52 = v50;
    v53 = v63;
    sub_264D90E64(v52, v63, &qword_27FFB38B8, &qword_264E2AF78);
    v54 = v61;
    v55 = (v53 + *(v62 + 36));
    *v55 = nullsub_1;
    v55[1] = 0;
    v55[2] = 0;
    v55[3] = 0;
    sub_264D90E64(v53, v54, &qword_27FFB38C0, &qword_264E2AF80);
    v56 = v68;
    v57 = (v54 + *(v69 + 36));
    *v57 = 0;
    v57[1] = 0;
    v57[2] = nullsub_1;
    v57[3] = 0;
    sub_264D90E64(v54, v56, &qword_27FFB38C8, &qword_264E2AF88);
    sub_264D81744(v56, v71, &qword_27FFB38C8, &qword_264E2AF88);
    swift_storeEnumTagMultiPayload();
    sub_264E227FC(&qword_27FFB38D0, &qword_27FFB38C8, &qword_264E2AF88, sub_264E227CC);
    sub_264E229F0(&qword_27FFB3900, type metadata accessor for NoActivityView, &protocol conformance descriptor for NoActivityView);
    sub_264E24858();
    sub_264D817BC(v56, &qword_27FFB38C8, &qword_264E2AF88);
    v31 = type metadata accessor for SummaryView.Model;
    v32 = v23;
  }

  return sub_264E22A38(v32, v31);
}

uint64_t sub_264E1FD54(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3800, &qword_264E2AE00);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v13 = *a1;
  v12 = a1[1];
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v14 = sub_264E23FC8();
  v15 = __swift_project_value_buffer(v14, qword_27FFB6C08);

  v34 = v15;
  v16 = sub_264E23FA8();
  v17 = sub_264E25298();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    if (v12)
    {
      v20 = v13;
    }

    else
    {
      v20 = 7104878;
    }

    v33 = v11;
    v21 = v13;
    v22 = v8;
    v23 = a2;
    if (v12)
    {
      v24 = v12;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_264DEA000(v20, v24, &v36);
    a2 = v23;
    v8 = v22;
    v13 = v21;
    v11 = v33;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_264D7D000, v16, v17, "SummaryView received userAltDSID %s; fetching model", v18, 0xCu);
    v26 = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26674FCD0](v19, -1, -1, v26);
    MEMORY[0x26674FCD0](v18, -1, -1);
  }

  v27 = (a2 + *(type metadata accessor for SummaryView(0) + 28));
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v29 + 24))(v13, v12, v28, v29);
  v30 = type metadata accessor for SummaryView.Model(0);
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  sub_264D81744(v11, v8, &qword_27FFB3800, &qword_264E2AE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  sub_264E24D98();
  return sub_264D817BC(v11, &qword_27FFB3800, &qword_264E2AE00);
}

uint64_t sub_264E20234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[1] = a2;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v35);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for OverviewChart(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  v15 = type metadata accessor for UsageHeaderView(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v34 - v20;
  v22 = type metadata accessor for SummaryView.Model(0);
  sub_264E22764(a1 + *(v22 + 20), v21, type metadata accessor for UsageHeaderView.Model);
  v23 = *(a1 + *(v22 + 24));
  sub_264D91F38(&v21[v16[8]]);
  *&v21[v16[7]] = v23;
  *&v21[v16[9]] = 0;
  sub_264E22764(a1, v14, type metadata accessor for OverviewChart.Model);
  type metadata accessor for SummaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  sub_264E24DA8();
  v24 = sub_264E23AA8();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_264D81744(v8, v5, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v8, &qword_27FFB1860, &qword_264E267E0);
  v25 = v10[9];
  v26 = &v14[v10[10]];
  v38 = 0x4024000000000000;
  sub_264E24D78();
  v27 = v40;
  *v26 = v39;
  *(v26 + 1) = v27;
  v28 = &v14[v10[11]];
  v38 = 0;
  sub_264E24D78();
  v29 = v40;
  *v28 = v39;
  *(v28 + 1) = v29;
  v14[v10[12]] = 0;
  *&v14[v25] = 0;
  sub_264E22764(v21, v18, type metadata accessor for UsageHeaderView);
  v30 = v36;
  sub_264E22764(v14, v36, type metadata accessor for OverviewChart);
  v31 = v37;
  sub_264E22764(v18, v37, type metadata accessor for UsageHeaderView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3910, &unk_264E2AFA8);
  sub_264E22764(v30, v31 + *(v32 + 48), type metadata accessor for OverviewChart);
  sub_264E22A38(v14, type metadata accessor for OverviewChart);
  sub_264E22A38(v21, type metadata accessor for UsageHeaderView);
  sub_264E22A38(v30, type metadata accessor for OverviewChart);
  return sub_264E22A38(v18, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264E20654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3810, &qword_264E2AE40);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_264E1F4A0(&v12 - v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  sub_264E22764(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SummaryView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_264E214F8(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SummaryView);
  v10 = &v7[*(v5 + 56)];
  *v10 = sub_264E22A9C;
  *(v10 + 1) = v9;
  sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40, MEMORY[0x277CDDB50]);
  sub_264E24C08();
  return sub_264D817BC(v7, &qword_27FFB3810, &qword_264E2AE40);
}

double sub_264E208AC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_264E2092C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264E24348();
}

uint64_t sub_264E209B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  return v1;
}

uint64_t sub_264E20A24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264E24348();
}

void (*sub_264E20AA0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264E24328();
  return sub_264DE5A40;
}

uint64_t sub_264E20B44(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264E20BBC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24318();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_264E20D40()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264E20DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24318();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264E20EEC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3838, &qword_264E2AEA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  sub_264E24308();
  swift_endAccess();
  return sub_264DE5FC0;
}

uint64_t SummaryView.Bridge.__allocating_init(userAltDSID:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v11 = 0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3840, &qword_264E2AEB0);
  sub_264E242F8();
  (*(v5 + 32))(v8 + v9, v7, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;
  v12 = a2;

  sub_264E24348();
  return v8;
}

uint64_t SummaryView.Bridge.init(userAltDSID:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v11 = 0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3840, &qword_264E2AEB0);
  sub_264E242F8();
  (*(v6 + 32))(v2 + v9, v8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;
  v12 = a2;

  sub_264E24348();
  return v2;
}

uint64_t SummaryView.Bridge.deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SummaryView.Bridge.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore11SummaryView6Bridge__userAltDSID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3820, &qword_264E2AE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_264E21430(uint64_t a1)
{
  v2 = sub_264E243F8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264E24608();
}

uint64_t sub_264E214F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E21560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageHeaderView.Model(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E21654(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3848, qword_264E2AF10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_264E21800(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3848, qword_264E2AF10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_264E21998(uint64_t a1)
{
  sub_264E21AD4(319);
  if (v1 <= 0x3F)
  {
    sub_264DDD520();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SummaryView.Bridge(319);
      if (v3 <= 0x3F)
      {
        sub_264DED6E4();
        if (v4 <= 0x3F)
        {
          sub_264E2210C(319, &qword_27FFB3868, &qword_27FFB3800, &qword_264E2AE00, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_264E2210C(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
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

void sub_264E21AD4(uint64_t a1)
{
  if (!qword_27FFB3860)
  {
    sub_264E243F8();
    v1 = sub_264E24438();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB3860);
    }
  }
}

uint64_t sub_264E21B60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageHeaderView.Model(0);
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

  v14 = type metadata accessor for ActivityNavigationState(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_264E23C38();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_264E21CFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
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

  v16 = type metadata accessor for ActivityNavigationState(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_264E23C38();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_264E21E90(uint64_t a1)
{
  result = type metadata accessor for OverviewChart.Model(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UsageHeaderView.Model(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ActivityNavigationState(319);
      if (v4 <= 0x3F)
      {
        result = sub_264E23C38();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_264E21F4C(uint64_t a1)
{
  sub_264E2210C(319, &qword_27FFB3890, &qword_27FFB3840, &qword_264E2AEB0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264E2210C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_264E22174()
{
  result = qword_27FFB3898;
  if (!qword_27FFB3898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38A0, &qword_264E2AF60);
    sub_264D81DCC(&qword_27FFB3830, &qword_27FFB3810, &qword_264E2AE40, MEMORY[0x277CDDB50]);
    sub_264E229F0(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3898);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3808, &qword_264E2AE38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_264E243F8();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v6 + v2[7]));
  v8 = v6 + v2[8];
  v9 = type metadata accessor for SummaryView.Model(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v30 = v5;
    v31 = (v3 + 16) & ~v3;
    v32 = v3;
    v33 = v0;
    v10 = sub_264E23AA8();
    v34 = *(v10 - 8);
    v35 = *(v34 + 8);
    v35(v8, v10);
    v11 = type metadata accessor for OverviewChart.Model(0);

    v12 = *(v11 + 24);
    v13 = sub_264E23C38();
    v14 = *(*(v13 - 8) + 8);
    v14(v8 + v12, v13);

    v15 = v8 + v9[5];
    v29 = v14;
    v14(v15, v13);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);

    v17 = *(v16 + 44);
    if (!(*(v34 + 48))(v15 + v17, 1, v10))
    {
      v35(v15 + v17, v10);
    }

    v18 = type metadata accessor for UsageHeaderView.Model(0);
    v14(v15 + *(v18 + 20), v13);
    v19 = v8 + v9[6];
    v28 = v19;
    v20 = type metadata accessor for ActivityNavigationState(0);
    v21 = v19 + *(v20 + 20);
    v35(v21, v10);
    v22 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
    v23 = sub_264E238E8();
    (*(*(v23 - 8) + 8))(v21 + v22, v23);
    v29(v28 + *(v20 + 24), v13);
    v29(v8 + v9[7], v13);
    v3 = v32;
    v1 = v33;
    v5 = v30;
    v4 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3828, &unk_264E2AE50);

  v24 = v6 + v2[9];
  v25 = sub_264E23AA8();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v24, 1, v25))
  {
    (*(v26 + 8))(v24, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_264E226F4(uint64_t *a1)
{
  v3 = *(type metadata accessor for SummaryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_264E1FD54(a1, v4);
}

uint64_t sub_264E22764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E227FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264E22880()
{
  result = qword_27FFB38E0;
  if (!qword_27FFB38E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38B8, &qword_264E2AF78);
    sub_264E22938();
    sub_264D81DCC(&qword_27FFB3748, &qword_27FFB3750, &qword_264E2ACD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB38E0);
  }

  return result;
}

unint64_t sub_264E22938()
{
  result = qword_27FFB38E8;
  if (!qword_27FFB38E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB38B0, &qword_264E2AF70);
    sub_264D81DCC(&qword_27FFB38F0, &qword_27FFB38F8, &unk_264E2AF90, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB38E8);
  }

  return result;
}

uint64_t sub_264E229F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E22A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264E22AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LastUpdatedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_264E22B70();
  sub_264D89EB8();
  result = sub_264E24AF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_264E22B70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3928, qword_264E2B038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D93A14(v1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
    v12 = [objc_opt_self() bundle];
    v13 = sub_264E23938();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v14 setTimeStyle_];
    [v14 setDateStyle_];
    [v14 setDoesRelativeDateFormatting_];
    [v14 setFormattingContext_];
    v15 = [objc_opt_self() bundle];
    v26[1] = sub_264E23938();

    v16 = [objc_opt_self() currentLocale];
    sub_264E23AB8();

    v17 = sub_264E23AD8();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_264E261E0;
    v19 = v4;
    v20 = sub_264E23A38();
    v21 = [v14 stringFromDate_];

    v22 = sub_264E25108();
    v24 = v23;

    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_264DDBB6C();
    *(v18 + 32) = v22;
    *(v18 + 40) = v24;
    v13 = sub_264E25118();

    sub_264D817BC(v19, &qword_27FFB3928, qword_264E2B038);
    (*(v9 + 8))(v11, v8);
  }

  return v13;
}

uint64_t sub_264E23024@<X0>(uint64_t a1@<X8>)
{
  sub_264E22B70();
  sub_264D89EB8();
  result = sub_264E24AF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_264E23090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264E2311C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LastUpdatedView(uint64_t a1)
{
  result = qword_27FFB3918;
  if (!qword_27FFB3918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264E231E4(uint64_t a1)
{
  sub_264DDB89C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27FFB6BF0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27FFB6BE4 > a2)
  {
    return 1;
  }

  if (dword_27FFB6BE4 < a2)
  {
    return 0;
  }

  return dword_27FFB6BE8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27FFB6BF8 == -1)
  {
    if (qword_27FFB6C00)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27FFB6C00)
    {
      return _availability_version_check();
    }
  }

  if (qword_27FFB6BF0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27FFB6BE4 > a3)
      {
        return 1;
      }

      if (dword_27FFB6BE4 >= a3)
      {
        return dword_27FFB6BE8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27FFB6C00;
  if (qword_27FFB6C00)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27FFB6C00 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26674F720](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27FFB6BE4, &dword_27FFB6BE8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}