unint64_t sub_20D7E5AC0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20D7E5C60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t UtilityOnboardingMethodAnalyticKey.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20D7E5B08()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7E5B50()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

unint64_t *sub_20D7E5B94@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_20D7E5BB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_20D975178();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_20D7E5C60(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20D7E5C74()
{
  result = qword_27C838A28;
  if (!qword_27C838A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A28);
  }

  return result;
}

unint64_t sub_20D7E5CCC()
{
  result = qword_27C838A30;
  if (!qword_27C838A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A30);
  }

  return result;
}

unint64_t sub_20D7E5D24()
{
  result = qword_27C838A38;
  if (!qword_27C838A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HEUIFAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HEUIFAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D7E5F20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 297))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_20D7E5F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_20D7E6050(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D7E60AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A20, &qword_20D9768E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20D7E6174(uint64_t a1)
{
  sub_20D7EB128(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20D7E62AC();
    if (v2 <= 0x3F)
    {
      sub_20D7E6310();
      if (v3 <= 0x3F)
      {
        sub_20D972628();
        if (v4 <= 0x3F)
        {
          sub_20D7E6360(319);
          if (v5 <= 0x3F)
          {
            sub_20D7E63C4(319);
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

unint64_t sub_20D7E62AC()
{
  result = qword_2811272D0[0];
  if (!qword_2811272D0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811272D0);
  }

  return result;
}

void sub_20D7E6310()
{
  if (!qword_2811262F8[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811262F8);
    }
  }
}

void sub_20D7E6360(uint64_t a1)
{
  if (!qword_281124B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A48, &qword_20D976D90);
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281124B80);
    }
  }
}

void sub_20D7E63C4(uint64_t a1)
{
  if (!qword_281127048)
  {
    sub_20D7E6420();
    v1 = sub_20D973B88();
    if (!v2)
    {
      atomic_store(v1, &qword_281127048);
    }
  }
}

unint64_t sub_20D7E6420()
{
  result = qword_281126ED8;
  if (!qword_281126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126ED8);
  }

  return result;
}

uint64_t sub_20D7E6490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A50, &qword_20D976DE8);
  MEMORY[0x28223BE20](v1);
  v3 = &v41[-v2];
  type metadata accessor for BasicEnergyForecastView(0);
  *v3 = sub_20D974168();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A58, &qword_20D976DF0);
  sub_20D7E6748(v0, &v3[*(v4 + 44)]);
  v5 = sub_20D974328();
  sub_20D973AD8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A60, &qword_20D976DF8) + 36)];
  *v14 = v5;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  v15 = sub_20D974338();
  sub_20D973AD8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A68, &qword_20D976E00) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_20D974348();
  sub_20D973AD8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A70, &qword_20D976E08) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_20D974C48();
  v37 = v36;
  v38 = &v3[*(v1 + 36)];
  sub_20D974C08();
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)] = 256;
  v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36)];
  *v39 = v35;
  v39[1] = v37;
  v42 = v0;
  sub_20D7E6DDC();
  sub_20D7E702C();
  sub_20D974728();
  return sub_20D7E3944(v3, &qword_27C838A50, &qword_20D976DE8);
}

uint64_t sub_20D7E6748@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A90, &qword_20D976E28) - 8;
  v3 = MEMORY[0x28223BE20](v48);
  v49 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v41[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A98, &qword_20D976E30);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v41[-v11];
  sub_20D7E7080((a1 + 8), &v41[-v11]);
  v42 = a1[48];
  v13 = type metadata accessor for BasicEnergyForecastView(0);
  v14 = v13[7];
  v45 = v14;
  v15 = type metadata accessor for BasicUsageAdviceView(0);
  v16 = v15[6];
  v44 = sub_20D972628();
  v17 = *(v44 - 8);
  v43 = *(v17 + 16);
  v46 = v17 + 16;
  v43(&v12[v16], &a1[v14], v44);
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = a1[v13[9]];
  LOBYTE(v14) = a1[v13[10]];
  v20 = &a1[v13[13]];
  v21 = *v20;
  v22 = v20[1];
  v12[40] = v42;
  swift_unknownObjectWeakInit();
  sub_20D7DD75C(v21, v22);

  v12[v15[8]] = v19;
  v12[v15[9]] = v14;
  v23 = &v12[v15[10]];
  *v23 = v21;
  v23[1] = v22;
  LOBYTE(Strong) = sub_20D974338();
  sub_20D973AD8();
  v24 = &v12[*(v8 + 44)];
  *v24 = Strong;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = *a1;
  v30 = type metadata accessor for EnergyForecastChart(0);
  v43(v6 + v30[5], &a1[v45], v44);
  *(v6 + v30[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *(v6 + v30[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  *v6 = v29;
  *(v6 + v30[6]) = 12;
  *(v6 + v30[7]) = 0;
  *(v6 + v30[8]) = 0x4010000000000000;

  LOBYTE(a1) = sub_20D974348();
  sub_20D973AD8();
  v31 = v47;
  v32 = v6 + *(v48 + 44);
  *v32 = a1;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_20D7EB7E8(v12, v31, &qword_27C838A98, &qword_20D976E30);
  v37 = v49;
  sub_20D7EB7E8(v6, v49, &qword_27C838A90, &qword_20D976E28);
  v38 = v50;
  sub_20D7EB7E8(v31, v50, &qword_27C838A98, &qword_20D976E30);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AB0, &qword_20D976EA8);
  sub_20D7EB7E8(v37, v38 + *(v39 + 48), &qword_27C838A90, &qword_20D976E28);
  sub_20D7E3944(v6, &qword_27C838A90, &qword_20D976E28);
  sub_20D7E3944(v12, &qword_27C838A98, &qword_20D976E30);
  sub_20D7E3944(v37, &qword_27C838A90, &qword_20D976E28);
  return sub_20D7E3944(v31, &qword_27C838A98, &qword_20D976E30);
}

uint64_t sub_20D7E6B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v4);
  v6 = (*(v5 + 72))(v4, v5);
  LOBYTE(v4) = *(a1 + 48);
  sub_20D7E7080(a1 + 8, a2 + 8);
  v7 = type metadata accessor for BasicEnergyForecastView(0);
  v8 = *(a1 + v7[11]);
  v14 = *(a1 + v7[14]);
  v15 = *(a1 + v7[15]);
  v16 = *(a1 + v7[12]);
  *a2 = v6 & 1;
  *(a2 + 1) = v4 & 1;
  *(a2 + 48) = v8;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v16;
  sub_20D7DD75C(v8, *(&v8 + 1));
  sub_20D7DD75C(v14, *(&v14 + 1));
  sub_20D7DD75C(v15, *(&v15 + 1));
  sub_20D7DD75C(v16, *(&v16 + 1));
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  *(a2 + 112) = sub_20D971FF8();
  *(a2 + 120) = v9;
  *(a2 + 128) = sub_20D971FF8();
  *(a2 + 136) = v10;
  *(a2 + 144) = sub_20D971FF8();
  *(a2 + 152) = v11;
  result = sub_20D971FF8();
  *(a2 + 160) = result;
  *(a2 + 168) = v13;
  return result;
}

unint64_t sub_20D7E6DDC()
{
  result = qword_281124E58;
  if (!qword_281124E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A50, &qword_20D976DE8);
    sub_20D7E6EF0(&qword_281124E78, &qword_27C838A70, &qword_20D976E08, sub_20D7E6EC0);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E58);
  }

  return result;
}

uint64_t sub_20D7E6EF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D7E6F74()
{
  result = qword_281124F38;
  if (!qword_281124F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A60, &qword_20D976DF8);
    sub_20D7EBC4C(&qword_281124D48, &qword_27C838A88, &qword_20D976E20, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F38);
  }

  return result;
}

unint64_t sub_20D7E702C()
{
  result = qword_281126AB0;
  if (!qword_281126AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126AB0);
  }

  return result;
}

uint64_t sub_20D7E7080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20D7E70E4(uint64_t a1)
{
  v30[0] = a1;
  v1 = sub_20D9721C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D973CA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TapToRadarDraft(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[v10[13]];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0) + 36);
  v15 = sub_20D972628();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *v13 = 0x7349664F656D6954;
  *(v13 + 1) = 0xEB00000000657573;
  *v12 = 0x4449656C646E7542;
  *(v12 + 1) = 0xE800000000000000;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 2) = xmmword_20D976CF0;
  *(v12 + 3) = xmmword_20D976D00;
  *(v12 + 4) = xmmword_20D976D10;
  *(v12 + 10) = 0xEE006E6F69746163;
  v12[88] = 10;
  *(v12 + 12) = 0x6375646F72706552;
  *(v12 + 13) = 0xEF7974696C696269;
  v12[112] = 6;
  *(v12 + 15) = 0x656C746954;
  *(v12 + 16) = 0xE500000000000000;
  *(v12 + 17) = 0;
  *(v12 + 18) = 0;
  *(v12 + 19) = 0x7470697263736544;
  *(v12 + 20) = 0xEB000000006E6F69;
  *(v12 + 21) = 0;
  *(v12 + 22) = 0;
  *(v12 + 23) = 0x7364726F7779654BLL;
  *(v12 + 24) = 0xE800000000000000;
  v16 = MEMORY[0x277D84F90];
  *(v12 + 25) = MEMORY[0x277D84F90];
  v17 = &v12[v10[14]];
  *v17 = 0x656D686361747441;
  *(v17 + 1) = 0xEB0000000073746ELL;
  *(v17 + 2) = v16;
  v18 = &v12[v10[15]];
  *v18 = 0xD000000000000011;
  *(v18 + 1) = 0x800000020D982F20;
  *(v18 + 2) = v16;
  v19 = &v12[v10[16]];
  *v19 = 0xD000000000000014;
  *(v19 + 1) = 0x800000020D982F40;
  *(v19 + 2) = v16;
  v20 = &v12[v10[17]];
  strcpy(v20, "DeleteOnAttach");
  v20[15] = -18;
  v20[16] = 0;
  v21 = &v12[v10[18]];
  *v21 = 0x4449656369766544;
  *(v21 + 1) = 0xE900000000000073;
  *(v21 + 2) = v16;
  v22 = &v12[v10[19]];
  strcpy(v22, "DeviceClasses");
  *(v22 + 7) = -4864;
  *(v22 + 2) = v16;
  v23 = &v12[v10[20]];
  strcpy(v23, "DeviceModels");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  *(v23 + 2) = v16;
  v24 = &v12[v10[21]];
  *v24 = 0xD000000000000016;
  *(v24 + 1) = 0x800000020D982F60;
  *(v24 + 2) = 0;
  v25 = &v12[v10[22]];
  *v25 = 0xD00000000000001ALL;
  *(v25 + 1) = 0x800000020D982F80;
  v25[16] = 0;
  v26 = &v12[v10[23]];
  *v26 = 0x676169446F747541;
  *(v26 + 1) = 0xEF73636974736F6ELL;
  v26[16] = 0;
  v27 = &v12[v10[24]];
  *v27 = 0xD00000000000001BLL;
  *(v27 + 1) = 0x800000020D982FA0;
  *(v27 + 2) = v16;
  v28 = &v12[v10[25]];
  *v28 = 0xD000000000000018;
  *(v28 + 1) = 0x800000020D982FC0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v12 + 136) = xmmword_20D976D20;
  *(v12 + 25) = &unk_282497030;
  sub_20D9082A4(v8);
  sub_20D8D8124(v4);
  sub_20D973C98();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return sub_20D7EBBF0(v12);
}

uint64_t sub_20D7E777C@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B98, &qword_20D9771D8);
  MEMORY[0x28223BE20](v1);
  v3 = (v20 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B80, &qword_20D9771D0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = sub_20D9749B8();
  v8 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v10 = *MEMORY[0x277CE1050];
  v11 = sub_20D9749F8();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v3 = v7;
  v12 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v14 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BA8, &unk_20D9771E0) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = [objc_opt_self() secondaryLabelColor];
  v16 = sub_20D974888();
  v17 = swift_getKeyPath();
  v18 = (v3 + *(v1 + 36));
  *v18 = v17;
  v18[1] = v16;
  sub_20D7EB1C4(&qword_27C838B90, &qword_27C838B98, &qword_20D9771D8, sub_20D7EBA74);
  sub_20D9747D8();
  sub_20D7E3944(v3, &qword_27C838B98, &qword_20D9771D8);
  strcpy(v21, "Tap to Radar");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  sub_20D7E1EF8();
  sub_20D973D88();
  return sub_20D7E3944(v6, &qword_27C838B80, &qword_20D9771D0);
}

uint64_t sub_20D7E7A50(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_20D7EB894(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_20D7EB8F8(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B80, &qword_20D9771D0);
  sub_20D7EB9BC();
  return sub_20D974A88();
}

uint64_t sub_20D7E7B84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B48, &qword_20D977120);
  v3 = MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v24 = &v21 - v6;
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v7);
  v9 = (*(v8 + 72))(v7, v8);
  v23 = v5;
  if ((v9 & 1) != 0 && *(v1 + 48) != 2)
  {
    v10 = &selRef_secondaryLabelColor;
  }

  else
  {
    v10 = &selRef_quaternaryLabelColor;
  }

  v11 = [objc_opt_self() *v10];
  v12 = sub_20D9749B8();
  v13 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v22 = v11;
  v15 = sub_20D974888();
  v16 = swift_getKeyPath();
  v27 = v12;
  v28 = KeyPath;
  v29 = v13;
  v30 = v16;
  v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B50, &qword_20D977188);
  sub_20D7EB1C4(&qword_281126FC0, &qword_27C838B50, &qword_20D977188, sub_20D7EB274);
  v17 = v23;
  sub_20D9747D8();

  if (qword_281126530 != -1)
  {
    swift_once();
  }

  v27 = qword_28112ABC8;
  v28 = unk_28112ABD0;
  sub_20D7E1EF8();
  v18 = v24;
  sub_20D973D88();
  sub_20D7E3944(v17, &qword_27C838B48, &qword_20D977120);
  sub_20D7EB32C(v2, &v27);
  v19 = swift_allocObject();
  sub_20D7EAEE0(&v27, v19 + 16);
  sub_20D7EB36C();
  sub_20D974748();

  return sub_20D7E3944(v18, &qword_27C838B48, &qword_20D977120);
}

uint64_t sub_20D7E7EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_28112AC18);
  v6 = sub_20D9734D8();
  v7 = sub_20D975448();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20D7C9000, v6, v7, "BasicEnergyForecastView Glyph tapped...", v8, 2u);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v9);
  result = (*(v10 + 72))(v9, v10);
  if ((result & 1) != 0 && *(a1 + 48) != 2)
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(a1 + 64);

      v12(v14);

      return sub_20D7DD774(v12, v13);
    }

    else if (*a1 == 1)
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v15);
      return (*(v16 + 88))(v15, v16);
    }

    else
    {
      v17 = sub_20D975318();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      sub_20D7EB32C(a1, v21);
      sub_20D9752E8();
      v18 = sub_20D9752D8();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      sub_20D7EAEE0(v21, v19 + 32);
      sub_20D82D02C(0, 0, v4, &unk_20D9771B8, v19);
    }
  }

  return result;
}

uint64_t sub_20D7E81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_20D9752E8();
  v4[22] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_20D7E824C, v6, v5);
}

uint64_t sub_20D7E824C()
{
  v1 = [objc_opt_self() currentNotificationCenter];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_20D7E838C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B70, &unk_20D9771C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D7E8B24;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D7E838C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_20D7E8494, v2, v1);
}

uint64_t sub_20D7E8494()
{

  v1 = *(v0 + 160);
  if ([v1 authorizationStatus] == 2)
  {
    if (qword_27C8383A0 != -1)
    {
      swift_once();
    }

    if (qword_27C838398 != -1)
    {
      swift_once();
    }

    if (qword_27C8383A8 != -1)
    {
      swift_once();
    }

    v2 = qword_27C840C20;
    v3 = *algn_27C840C28;
    sub_20D7E7080(*(v0 + 168) + 8, v0 + 80);
    v4 = swift_allocObject();
    sub_20D7EB734((v0 + 80), v4 + 16);
    v5 = sub_20D975078();
    v6 = sub_20D975078();
    v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = v3;
    v8[4] = sub_20D7EB74C;
    v8[5] = v4;

    v9 = sub_20D975078();
    *(v0 + 112) = sub_20D7EBC98;
    *(v0 + 120) = v8;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20D92B6D0;
    *(v0 + 104) = &block_descriptor_71;
    v10 = _Block_copy((v0 + 80));

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:0 handler:v10];
    _Block_release(v10);

    [v7 addAction_];
    [v7 setPreferredAction_];
    if (qword_27C8383C8 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  if (qword_27C8383B0 != -1)
  {
    swift_once();
  }

  if (qword_27C8383B8 != -1)
  {
    swift_once();
  }

  if (qword_27C8383C0 != -1)
  {
    swift_once();
  }

  v13 = qword_27C840C50;
  v14 = *algn_27C840C58;
  sub_20D7EB32C(*(v0 + 168), v0 + 80);
  v15 = swift_allocObject();
  sub_20D7EAEE0(v0 + 80, v15 + 16);
  v16 = sub_20D975078();
  v17 = sub_20D975078();
  v7 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = sub_20D7EB6F8;
  v18[5] = v15;

  v19 = sub_20D975078();
  *(v0 + 112) = sub_20D7EB710;
  *(v0 + 120) = v18;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20D92B6D0;
  *(v0 + 104) = &block_descriptor_61;
  v20 = _Block_copy((v0 + 80));

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v7 addAction_];
  [v7 setPreferredAction_];
  if (qword_27C8383C8 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v21 = sub_20D975078();
  v22 = [v11 actionWithTitle:v21 style:1 handler:0];

  [v7 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }

  v25 = *(v0 + 200);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20D7E8B24(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id sub_20D7E8B88()
{
  v0 = sub_20D9721C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_20D9721B8();
  sub_20D7EB7E8(v9, v7, &qword_27C838B78, &qword_20D97A5A0);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_20D7E3944(v9, &qword_27C838B78, &qword_20D97A5A0);
    return sub_20D7E3944(v7, &qword_27C838B78, &qword_20D97A5A0);
  }

  (*(v1 + 32))(v3, v7, v0);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    v12 = sub_20D972198();
    sub_20D8D6720(MEMORY[0x277D84F90]);
    v13 = sub_20D974F38();

    [v11 openSensitiveURL:v12 withOptions:v13];

    (*(v1 + 8))(v3, v0);
    v7 = v9;
    return sub_20D7E3944(v7, &qword_27C838B78, &qword_20D97A5A0);
  }

  __break(1u);
  return result;
}

void sub_20D7E8E10(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_28112AC18);

  v8 = sub_20D9734D8();
  v9 = sub_20D975448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D7F4DC8(a2, a3, &v12);
    _os_log_impl(&dword_20D7C9000, v8, v9, "alert %s tapped...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  if (a4)
  {
    a4();
  }
}

uint64_t sub_20D7E8F78()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C00 = result;
  *algn_27C840C08 = v1;
  return result;
}

uint64_t sub_20D7E9024()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C10 = result;
  *algn_27C840C18 = v1;
  return result;
}

uint64_t sub_20D7E90D0()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C20 = result;
  *algn_27C840C28 = v1;
  return result;
}

uint64_t sub_20D7E9178()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C30 = result;
  *algn_27C840C38 = v1;
  return result;
}

uint64_t sub_20D7E9224()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C40 = result;
  *algn_27C840C48 = v1;
  return result;
}

uint64_t sub_20D7E92D0()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C50 = result;
  *algn_27C840C58 = v1;
  return result;
}

uint64_t sub_20D7E9380()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C60 = result;
  *algn_27C840C68 = v1;
  return result;
}

uint64_t sub_20D7E9420()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112ABC8 = result;
  unk_28112ABD0 = v1;
  return result;
}

uint64_t sub_20D7E94D0()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20D974458();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for BasicUsageAdviceView(0);
  v8 = *(v0 + *(v7 + 32));
  if (v8 == 1)
  {
    v9 = sub_20D7EAB84();
    v11 = v10;
    v78 = v12;
    v77 = v13;
  }

  else
  {
    v9 = 0;
    v78 = 0;
    v77 = MEMORY[0x277D84F90];
    v11 = 0xE000000000000000;
  }

  v14 = v0[3];
  v15 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v14);
  (*(v15 + 96))(&v79, v14, v15);
  v16 = MEMORY[0x277CE0A10];
  if ((v79 == 12 || (v17 = v0[3], v18 = v0[4], __swift_project_boxed_opaque_existential_1Tm(v0, v17), (*(v18 + 96))(&v79, v17, v18), v79 == 6) || *(v0 + *(v7 + 36)) == 1) && (v19 = v0[3], v20 = v0[4], __swift_project_boxed_opaque_existential_1Tm(v0, v19), v21 = (*(v20 + 16))(0, v19, v20), v22))
  {
    v23 = v22;
    v76 = v9;
    v71 = v4;
    v72 = v11;
    v70 = v7;
    if (v8)
    {
      v79 = 0x209380E220;
      v80 = 0xA500000000000000;
      MEMORY[0x20F323340](v21, v22);

      v21 = v79;
      v23 = v80;
    }

    v79 = v21;
    v80 = v23;
    sub_20D7E1EF8();
    v24 = sub_20D9745C8();
    v26 = v25;
    v28 = v27;
    sub_20D974388();
    v29 = *v16;
    v31 = v73;
    v30 = v74;
    v32 = v75;
    (*(v74 + 104))(v73, v29, v75);
    sub_20D974478();

    (*(v30 + 8))(v31, v32);
    v33 = sub_20D974558();
    v35 = v34;
    LOBYTE(v30) = v36;

    sub_20D7EADC0(v24, v26, v28 & 1);

    v37 = v78;
    v38 = v76;
    v39 = v72;
    v40 = sub_20D974528();
    v68 = v41;
    v69 = v40;
    v67 = v42;
    v44 = v43;
    sub_20D7EADC0(v33, v35, v30 & 1);

    sub_20D7EADC0(v38, v39, v37 & 1);

    v11 = v68;
    v9 = v69;
    v78 = v67;
    v7 = v70;
  }

  else
  {
    v44 = v77;
  }

  if (*(v1 + *(v7 + 36)) & 1) != 0 || (v45 = v1[3], v46 = v1[4], __swift_project_boxed_opaque_existential_1Tm(v1, v45), ((*(v46 + 32))(v45, v46)))
  {
    sub_20D9740D8();
    sub_20D9740C8();
    sub_20D9749B8();
    sub_20D9740A8();

    sub_20D9740C8();
    sub_20D974108();
    v47 = sub_20D9745A8();
    v49 = v48;
    v51 = v50;
    sub_20D974388();
    v76 = v9;
    v52 = v73;
    v53 = v74;
    v54 = v75;
    (*(v74 + 104))(v73, *MEMORY[0x277CE0A10], v75);
    sub_20D974478();
    v77 = v44;

    (*(v53 + 8))(v52, v54);
    LOBYTE(v54) = v51;
    v55 = v47;
    v56 = sub_20D974558();
    v58 = v57;
    LOBYTE(v47) = v78;
    LOBYTE(v52) = v59;
    v73 = v60;

    sub_20D7EADC0(v55, v49, v54 & 1);

    v61 = v76;
    v62 = sub_20D974528();
    v74 = v63;
    v75 = v62;
    LODWORD(v55) = v64;
    sub_20D7EADC0(v56, v58, v52 & 1);

    sub_20D7EADC0(v61, v11, v47 & 1);

    v9 = v75;
    v78 = v55;
  }

  return v9;
}

uint64_t sub_20D7E9AC8()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v3);
  v5 = type metadata accessor for BasicUsageAdviceView(0);
  (*(v4 + 24))(v0 + *(v5 + 24), v3, v4);
  sub_20D7E1EF8();
  v6 = sub_20D9745C8();
  v8 = v7;
  v10 = v9;
  v11 = v0[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_20D85EDB8(v11, v12);
  if (v13)
  {
    sub_20D9740D8();
    sub_20D9740C8();
    sub_20D9749B8();
    sub_20D9740A8();

    sub_20D9740C8();
    sub_20D974108();
    v14 = sub_20D9745A8();
    v16 = v15;
    v18 = v17;
    v20 = sub_20D974528();
    sub_20D7EADC0(v14, v16, v18 & 1);

    sub_20D7EADC0(v6, v8, v10 & 1);

    return v20;
  }

  return v6;
}

uint64_t sub_20D7E9CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  MEMORY[0x28223BE20](v48);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AD0, &qword_20D976F30);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  *v17 = sub_20D974078();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v47 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AD8, &qword_20D976F38);
  sub_20D7EA220(a1, &v17[*(v18 + 44)]);
  v19 = sub_20D7E9AC8();
  v21 = v20;
  v23 = v22;
  sub_20D974388();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v6, v3);
  v24 = sub_20D974558();
  v26 = v25;
  LOBYTE(v4) = v27;

  sub_20D7EADC0(v19, v21, v23 & 1);

  v28 = [objc_opt_self() secondaryLabelColor];
  sub_20D974888();
  v29 = sub_20D974508();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_20D7EADC0(v24, v26, v4 & 1);

  v36 = &v8[*(v48 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v38 = *MEMORY[0x277CE1050];
  v39 = sub_20D9749F8();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  *v8 = v29;
  *(v8 + 1) = v31;
  v8[16] = v33 & 1;
  *(v8 + 3) = v35;
  sub_20D7EBB4C(&qword_281127010, &qword_27C838AC0, &qword_20D976F20);
  v40 = v50;
  sub_20D9747D8();
  sub_20D7E3944(v8, &qword_27C838AC0, &qword_20D976F20);
  v41 = v47;
  v42 = v49;
  sub_20D7EB7E8(v47, v49, &qword_27C838AD0, &qword_20D976F30);
  v43 = v51;
  sub_20D7EB7E8(v40, v51, &qword_27C838AC8, &qword_20D976F28);
  v44 = v52;
  sub_20D7EB7E8(v42, v52, &qword_27C838AD0, &qword_20D976F30);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE8, &qword_20D976F78);
  sub_20D7EB7E8(v43, v44 + *(v45 + 48), &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v40, &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v41, &qword_27C838AD0, &qword_20D976F30);
  sub_20D7E3944(v43, &qword_27C838AC8, &qword_20D976F28);
  return sub_20D7E3944(v42, &qword_27C838AD0, &qword_20D976F30);
}

uint64_t sub_20D7EA220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AF0, &qword_20D976F80);
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = (&v90 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AF8, &qword_20D976F88);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v90 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  MEMORY[0x28223BE20](v94);
  v10 = &v90 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v90 - v14;
  v97 = a1;
  v16 = sub_20D7E94D0();
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() labelColor];
  sub_20D974888();
  v92 = sub_20D974508();
  v93 = v22;
  v24 = v23;
  v26 = v25;

  sub_20D7EADC0(v16, v18, v20 & 1);

  v27 = &v10[*(v94 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v29 = *MEMORY[0x277CE1050];
  v30 = sub_20D9749F8();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v10 = v92;
  *(v10 + 1) = v24;
  v10[16] = v26 & 1;
  *(v10 + 3) = v93;
  sub_20D7EBB4C(&qword_281127010, &qword_27C838AC0, &qword_20D976F20);
  v31 = v15;
  sub_20D9747D8();
  sub_20D7E3944(v10, &qword_27C838AC0, &qword_20D976F20);
  v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v33 = sub_20D975078();
  v34 = [v32 initWithSuiteName_];

  if (v34 && (v35 = sub_20D975078(), v36 = [v34 BOOLForKey_], v34, v35, v36))
  {
    KeyPath = swift_getKeyPath();
    v38 = v91;
    *v91 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B20, &qword_20D976FE0);
    swift_storeEnumTagMultiPayload();
    v39 = sub_20D974328();
    sub_20D973AD8();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B28, &qword_20D976FE8) + 36);
    *v48 = v39;
    *(v48 + 8) = v41;
    *(v48 + 16) = v43;
    *(v48 + 24) = v45;
    *(v48 + 32) = v47;
    *(v48 + 40) = 0;
    v49 = sub_20D974338();
    sub_20D973AD8();
    v50 = v96;
    v51 = v38 + *(v96 + 36);
    *v51 = v49;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    v56 = v99;
    sub_20D7EAF18(v38, v99, &qword_27C838AF0, &qword_20D976F80);
    v57 = v50;
    v58 = 0;
    v59 = v97;
  }

  else
  {
    v58 = 1;
    v56 = v99;
    v57 = v96;
    v59 = v97;
  }

  (*(v95 + 56))(v56, v58, 1, v57);
  v60 = *(v59 + 24);
  v61 = *(v59 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  if (((*(v61 + 72))(v60, v61) & 1) != 0 && (v62 = *(v59 + 40), v62 != 2))
  {
    sub_20D7E7080(v59, &v108[8]);
    v63 = *(v59 + 40);
    v64 = (v59 + *(type metadata accessor for BasicUsageAdviceView(0) + 40));
    v65 = *v64;
    v66 = v64[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    v108[0] = v62 & 1;
    LOBYTE(v109) = v63;
    *(&v109 + 1) = v65;
    *&v110 = v66;
    swift_unknownObjectWeakInit();
    sub_20D7DD75C(v65, v66);

    LOBYTE(v65) = sub_20D974338();
    sub_20D973AD8();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_20D7EAEE0(v108, v102);
    v102[80] = v65;
    v103 = v69;
    v104 = v71;
    v105 = v73;
    v106 = v75;
    v107 = 0;
    LOBYTE(v65) = sub_20D974368();
    sub_20D973AD8();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_20D7EAF18(v102, v108, &qword_27C838B10, &qword_20D976FA0);
    LOBYTE(v114) = v65;
    *(&v114 + 1) = v77;
    v115[0] = v79;
    v115[1] = v81;
    v115[2] = v83;
    LOBYTE(v115[3]) = 0;
    sub_20D7EAF18(v108, v102, &qword_27C838B18, &qword_20D976FA8);
    sub_20D7EAF18(v102, v108, &qword_27C838B18, &qword_20D976FA8);
  }

  else
  {
    v114 = 0u;
    memset(v115, 0, 25);
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    memset(v108, 0, sizeof(v108));
  }

  v84 = v98;
  sub_20D7EB7E8(v31, v98, &qword_27C838AC8, &qword_20D976F28);
  v85 = v100;
  sub_20D7EB7E8(v56, v100, &qword_27C838AF8, &qword_20D976F88);
  sub_20D7EB7E8(v108, v102, &qword_27C838B00, &qword_20D976F90);
  v86 = v101;
  sub_20D7EB7E8(v84, v101, &qword_27C838AC8, &qword_20D976F28);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B08, &qword_20D976F98);
  v88 = v86 + v87[12];
  *v88 = 0;
  *(v88 + 8) = 1;
  sub_20D7EB7E8(v85, v86 + v87[16], &qword_27C838AF8, &qword_20D976F88);
  sub_20D7EB7E8(v102, v86 + v87[20], &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v108, &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v56, &qword_27C838AF8, &qword_20D976F88);
  sub_20D7E3944(v31, &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v102, &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v85, &qword_27C838AF8, &qword_20D976F88);
  return sub_20D7E3944(v84, &qword_27C838AC8, &qword_20D976F28);
}

uint64_t sub_20D7EAA4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AB8, &qword_20D976F18);
  return sub_20D7E9CEC(v1, a1 + *(v3 + 44));
}

uint64_t sub_20D7EAABC(uint64_t a1)
{
  v2 = sub_20D973CA8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973F78();
}

uint64_t sub_20D7EAB84()
{
  v0 = sub_20D974458();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v12[2] = sub_20D971FF8();
  v12[3] = v4;
  sub_20D7E1EF8();
  v5 = sub_20D9745C8();
  v7 = v6;
  v9 = v8;
  sub_20D974388();
  sub_20D9743A8();

  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_20D974478();

  (*(v1 + 8))(v3, v0);
  v10 = sub_20D974558();

  sub_20D7EADC0(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_20D7EADC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_20D7EADF8(uint64_t a1)
{
  sub_20D7E62AC();
  if (v1 <= 0x3F)
  {
    sub_20D7E6310();
    if (v2 <= 0x3F)
    {
      sub_20D972628();
      if (v3 <= 0x3F)
      {
        sub_20D7E6360(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D7EAF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20D7EAF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D7EAFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20D7EB08C(uint64_t a1)
{
  sub_20D7EB128(319, &qword_281125008, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20D7EB128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D7EB1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7EB274()
{
  result = qword_281126FF0;
  if (!qword_281126FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B58, &unk_20D977190);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FF0);
  }

  return result;
}

unint64_t sub_20D7EB36C()
{
  result = qword_281124E90;
  if (!qword_281124E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B48, &qword_20D977120);
    sub_20D7EB1C4(&qword_281126FC0, &qword_27C838B50, &qword_20D977188, sub_20D7EB274);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E90);
  }

  return result;
}

unint64_t sub_20D7EB424()
{
  result = qword_281126F38;
  if (!qword_281126F38)
  {
    sub_20D9742B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F38);
  }

  return result;
}

uint64_t sub_20D7EB47C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D7E81B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_20D7EB52C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D7EB630(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  if (*(v0 + 72))
  {
  }

  MEMORY[0x20F324310](v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D7EB734(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20D7EB74C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t objectdestroy_57Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7EB7E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20D7EB894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7EB8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7EB95C()
{
  v1 = *(type metadata accessor for TapToRadarButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7E70E4(v2);
}

unint64_t sub_20D7EB9BC()
{
  result = qword_27C838B88;
  if (!qword_27C838B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B80, &qword_20D9771D0);
    sub_20D7EB1C4(&qword_27C838B90, &qword_27C838B98, &qword_20D9771D8, sub_20D7EBA74);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838B88);
  }

  return result;
}

unint64_t sub_20D7EBA74()
{
  result = qword_27C838BA0;
  if (!qword_27C838BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BA8, &unk_20D9771E0);
    sub_20D7EBB4C(&qword_281126FE8, &qword_27C838BB0, &qword_20D977D40);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838BA0);
  }

  return result;
}

uint64_t sub_20D7EBB4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20D7EBBF0(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7EBC4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EducationSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_20D973CD8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD0, &qword_20D977230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD8, &qword_20D977238);
  sub_20D7EBC4C(&qword_27C838BE0, &qword_27C838BD8, &qword_20D977238, MEMORY[0x277CE14C0]);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230, MEMORY[0x277CDE5A0]);
  sub_20D974878();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20D7EBEEC@<X0>(uint64_t a1@<X8>)
{
  v201 = a1;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D30, &qword_20D9775C0);
  MEMORY[0x28223BE20](v194);
  v198 = v183 - v1;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D38, &qword_20D9775C8);
  MEMORY[0x28223BE20](v197);
  v186 = v183 - v2;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D40, &qword_20D9775D0);
  v3 = MEMORY[0x28223BE20](v196);
  v185 = v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v195 = v183 - v5;
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v203 = v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D975058();
  MEMORY[0x28223BE20](v8 - 8);
  v202 = v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D48, &qword_20D9775D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v213 = v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v221 = v183 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D50, &qword_20D9775E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v184 = v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v222 = v183 - v18;
  MEMORY[0x28223BE20](v17);
  v220 = v183 - v19;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D58, &qword_20D9775E8);
  MEMORY[0x28223BE20](v208);
  v207 = v183 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D60, &qword_20D9775F0);
  v199 = *(v21 - 8);
  v200 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v212 = v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v219 = v183 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v211 = v183 - v27;
  MEMORY[0x28223BE20](v26);
  v218 = v183 - v28;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D68, &qword_20D9775F8);
  v214 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = v183 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D70, &qword_20D977600);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v210 = v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v217 = v183 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v215 = v183 - v36;
  MEMORY[0x28223BE20](v35);
  v216 = v183 - v37;
  v38 = sub_20D9744B8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D78, &qword_20D977608);
  MEMORY[0x28223BE20](v42);
  v44 = v183 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D80, &qword_20D977610);
  v46 = v45 - 8;
  v47 = MEMORY[0x28223BE20](v45);
  v209 = v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = v183 - v49;
  *&v229 = 0x3FF0000000000000;
  (*(v39 + 104))(v41, *MEMORY[0x277CE0A68], v38);
  sub_20D7E6420();
  sub_20D973B68();
  *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D88, &qword_20D977618) + 36)] = 256;
  LOBYTE(v38) = sub_20D974338();
  sub_20D973AD8();
  v51 = &v44[*(v42 + 36)];
  *v51 = v38;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  *(v51 + 3) = v54;
  *(v51 + 4) = v55;
  v51[40] = 0;
  sub_20D973BB8();
  sub_20D7F02A0();
  sub_20D974798();
  sub_20D7E3944(v44, &qword_27C838D78, &qword_20D977608);
  v56 = sub_20D974148();
  v57 = *(v46 + 44);
  v206 = v50;
  v58 = &v50[v57];
  *v58 = v56;
  v58[1] = sub_20D7EDA0C;
  v58[2] = 0;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v223 = qword_28112ABE8;
  *&v229 = sub_20D971FF8();
  *(&v229 + 1) = v59;
  v193 = sub_20D7E1EF8();
  v60 = sub_20D9745C8();
  v62 = v61;
  v64 = v63;
  sub_20D974428();
  sub_20D9743A8();

  v65 = sub_20D974558();
  v67 = v66;
  v69 = v68;
  v71 = v70;

  sub_20D7EADC0(v60, v62, v64 & 1);

  LOBYTE(v60) = sub_20D974328();
  sub_20D973AD8();
  LOBYTE(v225) = v69 & 1;
  v233 = 0;
  *&v229 = v65;
  *(&v229 + 1) = v67;
  LOBYTE(v230) = v69 & 1;
  *(&v230 + 1) = v71;
  LOBYTE(v231) = v60;
  *(&v231 + 1) = v72;
  *&v232[0] = v73;
  *(&v232[0] + 1) = v74;
  *&v232[1] = v75;
  BYTE8(v232[1]) = 0;
  sub_20D973BC8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  v77 = sub_20D7F021C();
  v78 = v204;
  sub_20D974798();
  v234[2] = v231;
  v235[0] = v232[0];
  *(v235 + 9) = *(v232 + 9);
  v234[0] = v229;
  v234[1] = v230;
  sub_20D7E3944(v234, &qword_27C838D18, &qword_20D9775B0);
  v191 = v77;
  v192 = v76;
  *&v229 = v76;
  *(&v229 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v205;
  v190 = OpaqueTypeConformance2;
  sub_20D9747D8();
  v81 = v214 + 8;
  v188 = *(v214 + 8);
  v188(v78, v80);
  *&v229 = sub_20D971FF8();
  *(&v229 + 1) = v82;
  v83 = sub_20D7F03E8();
  v84 = v207;
  v189 = v83;
  sub_20D9747D8();

  sub_20D973BC8();
  v187 = sub_20D7F043C(&qword_27C838DB0, &qword_27C838D58, &qword_20D9775E8, sub_20D7F03E8);
  sub_20D974798();
  sub_20D7E3944(v84, &qword_27C838D58, &qword_20D9775E8);
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  v214 = v81;
  v85 = qword_28112ABF0;
  v86 = qword_281126F30;

  if (v86 != -1)
  {
    swift_once();
  }

  v87 = qword_28112ABF8;

  v88 = sub_20D974948();
  v89 = sub_20D971FF8();
  v91 = v90;
  v92 = sub_20D971FF8();
  *&v229 = v85;
  *(&v229 + 1) = v87;
  *&v230 = v88;
  *(&v230 + 1) = v89;
  *&v231 = v91;
  *(&v231 + 1) = v92;
  *&v232[0] = v93;
  v94 = sub_20D7F04F0();
  sub_20D9747D8();

  v95 = sub_20D972EC8();
  *(&v230 + 1) = v95;
  *&v231 = sub_20D7F0544(&qword_281127110, MEMORY[0x277D073A0], MEMORY[0x277D07368]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v229);
  (*(*(v95 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07380], v95);
  LOBYTE(v95) = sub_20D972938();
  __swift_destroy_boxed_opaque_existential_0(&v229);
  if (v95)
  {
    v183[1] = v94;
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v97 = qword_28112AB68;
    v98 = objc_opt_self();

    v99 = [v98 quaternaryLabelColor];
    v183[0] = sub_20D974888();
    v100 = v223;
    v101 = sub_20D971FF8();
    v103 = v102;
    v104 = v202;
    sub_20D974FE8();
    v105 = v100;
    v106 = v203;
    sub_20D9726B8();
    v107 = v105;
    v108 = sub_20D975108(v104, 0, 0, v100, v106, "Less Clean body in the About the Forecast section", 49, 2);
    *&v229 = v97;
    *(&v229 + 1) = v87;
    *&v230 = v183[0];
    *(&v230 + 1) = v101;
    *&v231 = v103;
    *(&v231 + 1) = v108;
    *&v232[0] = v109;

    sub_20D9747D8();

    if (qword_27C838750 != -1)
    {
      swift_once();
    }

    v110 = qword_27C840E70;
    v111 = qword_27C838368;

    if (v111 != -1)
    {
      swift_once();
    }

    v112 = qword_27C840BC8;

    v113 = v202;
    sub_20D974FE8();
    v114 = v203;
    sub_20D9726B8();
    v115 = v223;
    v116 = sub_20D975108(v113, 0, 0, v223, v114, "Strained title in the About the Forecast section", 48, 2);
    v118 = v117;
    sub_20D974FE8();
    sub_20D9726B8();
    v119 = sub_20D975108(v113, 0, 0, v115, v114, "Less Clean body in the About the Forecast section", 49, 2);
    v121 = v120;
    v122 = sub_20D974148();
    *&v225 = v110;
    *(&v225 + 1) = v87;
    *&v226 = v112;
    *(&v226 + 1) = v116;
    *&v227 = v118;
    *(&v227 + 1) = v119;
    *&v228[0] = v121;
    *(&v228[0] + 1) = v122;
    *&v228[1] = sub_20D7EDA0C;
    *(&v228[1] + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F05F0();
    v123 = v195;
    sub_20D9747D8();
    v231 = v227;
    v232[0] = v228[0];
    v232[1] = v228[1];
    v229 = v225;
    v230 = v226;
    sub_20D7E3944(&v229, &qword_27C838DC0, &qword_20D977620);
    v124 = v222;
    v125 = v184;
    sub_20D7EB7E8(v222, v184, &qword_27C838D50, &qword_20D9775E0);
    v126 = v185;
    sub_20D7EB7E8(v123, v185, &qword_27C838D40, &qword_20D9775D0);
    v127 = v186;
    sub_20D7EB7E8(v125, v186, &qword_27C838D50, &qword_20D9775E0);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DE8, &qword_20D977630);
    sub_20D7EB7E8(v126, v127 + *(v128 + 48), &qword_27C838D40, &qword_20D9775D0);
    sub_20D7E3944(v126, &qword_27C838D40, &qword_20D9775D0);
    sub_20D7E3944(v125, &qword_27C838D50, &qword_20D9775E0);
    sub_20D7EB7E8(v127, v198, &qword_27C838D38, &qword_20D9775C8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C838DD0, &qword_27C838D38, &qword_20D9775C8, MEMORY[0x277CE14C0]);
    sub_20D7F043C(&qword_27C838DD8, &qword_27C838D40, &qword_20D9775D0, sub_20D7F05F0);
    sub_20D9741B8();
    sub_20D7E3944(v127, &qword_27C838D38, &qword_20D9775C8);
    sub_20D7E3944(v123, &qword_27C838D40, &qword_20D9775D0);
    v129 = v124;
    v130 = &qword_27C838D50;
    v131 = &qword_20D9775E0;
  }

  else
  {
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v132 = qword_28112AB68;
    v133 = objc_opt_self();

    v134 = [v133 quaternaryLabelColor];
    v135 = sub_20D974888();
    v136 = v223;
    v137 = sub_20D971FF8();
    v139 = v138;
    v140 = v202;
    sub_20D974FE8();
    v141 = v136;
    v142 = v203;
    sub_20D9726B8();
    v143 = sub_20D975108(v140, 0, 0, v136, v142, "Less Clean body in the About the Forecast section", 49, 2);
    v145 = v144;
    v146 = sub_20D974148();
    *&v225 = v132;
    *(&v225 + 1) = v87;
    *&v226 = v135;
    *(&v226 + 1) = v137;
    *&v227 = v139;
    *(&v227 + 1) = v143;
    *&v228[0] = v145;
    *(&v228[0] + 1) = v146;
    *&v228[1] = sub_20D7EDA0C;
    *(&v228[1] + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F05F0();
    v147 = v195;
    sub_20D9747D8();
    v231 = v227;
    v232[0] = v228[0];
    v232[1] = v228[1];
    v229 = v225;
    v230 = v226;
    sub_20D7E3944(&v229, &qword_27C838DC0, &qword_20D977620);
    sub_20D7EB7E8(v147, v198, &qword_27C838D40, &qword_20D9775D0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C838DD0, &qword_27C838D38, &qword_20D9775C8, MEMORY[0x277CE14C0]);
    sub_20D7F043C(&qword_27C838DD8, &qword_27C838D40, &qword_20D9775D0, sub_20D7F05F0);
    sub_20D9741B8();
    v129 = v147;
    v130 = &qword_27C838D40;
    v131 = &qword_20D9775D0;
  }

  sub_20D7E3944(v129, v130, v131);
  *&v229 = sub_20D971FF8();
  *(&v229 + 1) = v148;
  v149 = sub_20D9745C8();
  v151 = v150;
  v153 = v152;
  sub_20D974428();
  sub_20D9743A8();

  v154 = sub_20D974558();
  v156 = v155;
  v158 = v157;
  v160 = v159;

  sub_20D7EADC0(v149, v151, v153 & 1);

  LOBYTE(v149) = sub_20D974328();
  sub_20D973AD8();
  v233 = v158 & 1;
  v224 = 0;
  *&v225 = v154;
  *(&v225 + 1) = v156;
  LOBYTE(v226) = v158 & 1;
  *(&v226 + 1) = v160;
  LOBYTE(v227) = v149;
  *(&v227 + 1) = v161;
  *&v228[0] = v162;
  *(&v228[0] + 1) = v163;
  *&v228[1] = v164;
  BYTE8(v228[1]) = 0;
  sub_20D973BC8();
  v165 = v204;
  sub_20D974798();
  v231 = v227;
  v232[0] = v228[0];
  *(v232 + 9) = *(v228 + 9);
  v229 = v225;
  v230 = v226;
  sub_20D7E3944(&v229, &qword_27C838D18, &qword_20D9775B0);
  v166 = v205;
  sub_20D9747D8();
  v188(v165, v166);
  *&v225 = sub_20D971FF8();
  *(&v225 + 1) = v167;
  v168 = v207;
  sub_20D9747D8();

  sub_20D973BC8();
  v169 = v211;
  sub_20D974798();
  sub_20D7E3944(v168, &qword_27C838D58, &qword_20D9775E8);
  v170 = v209;
  sub_20D7EB7E8(v206, v209, &qword_27C838D80, &qword_20D977610);
  sub_20D7EB7E8(v216, v217, &qword_27C838D70, &qword_20D977600);
  v172 = v199;
  v171 = v200;
  v173 = *(v199 + 16);
  v173(v219, v218, v200);
  sub_20D7EB7E8(v220, v222, &qword_27C838D50, &qword_20D9775E0);
  v174 = v213;
  sub_20D7EB7E8(v221, v213, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7EB7E8(v215, v210, &qword_27C838D70, &qword_20D977600);
  v173(v212, v169, v171);
  v175 = v170;
  v176 = v201;
  sub_20D7EB7E8(v175, v201, &qword_27C838D80, &qword_20D977610);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DE0, &qword_20D977628);
  sub_20D7EB7E8(v217, v176 + v177[12], &qword_27C838D70, &qword_20D977600);
  v173((v176 + v177[16]), v219, v171);
  sub_20D7EB7E8(v222, v176 + v177[20], &qword_27C838D50, &qword_20D9775E0);
  sub_20D7EB7E8(v174, v176 + v177[24], &qword_27C838D48, &qword_20D9775D8);
  v178 = v210;
  sub_20D7EB7E8(v210, v176 + v177[28], &qword_27C838D70, &qword_20D977600);
  v179 = v176 + v177[32];
  v180 = v212;
  v173(v179, v212, v171);
  v181 = *(v172 + 8);
  v181(v211, v171);
  sub_20D7E3944(v215, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v221, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7E3944(v220, &qword_27C838D50, &qword_20D9775E0);
  v181(v218, v171);
  sub_20D7E3944(v216, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v206, &qword_27C838D80, &qword_20D977610);
  v181(v180, v171);
  sub_20D7E3944(v178, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v213, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7E3944(v222, &qword_27C838D50, &qword_20D9775E0);
  v181(v219, v171);
  sub_20D7E3944(v217, &qword_27C838D70, &qword_20D977600);
  return sub_20D7E3944(v209, &qword_27C838D80, &qword_20D977610);
}

uint64_t sub_20D7EDA14@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_20D973CD8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD0, &qword_20D977230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD8, &qword_20D977238);
  sub_20D7EBC4C(&qword_27C838BE0, &qword_27C838BD8, &qword_20D977238, MEMORY[0x277CE14C0]);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230, MEMORY[0x277CDE5A0]);
  sub_20D974878();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20D7EDC7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20D7EDCC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D7EDD20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20D7EDD68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for IntroView(uint64_t a1)
{
  result = qword_27C838BF0;
  if (!qword_27C838BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D7EDE28(uint64_t a1)
{
  sub_20D7E63C4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20D7EDEB0@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C50, &qword_20D977508);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v58 - v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C58, &qword_20D977510);
  MEMORY[0x28223BE20](v58);
  v5 = &v58 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C60, &qword_20D977518);
  MEMORY[0x28223BE20](v59);
  v7 = &v58 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C68, &qword_20D977520);
  MEMORY[0x28223BE20](v60);
  v9 = &v58 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C70, &qword_20D977528);
  MEMORY[0x28223BE20](v61);
  v11 = &v58 - v10;
  *v3 = sub_20D974168();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C78, &unk_20D977530);
  sub_20D7EE41C(&v3[*(v12 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v14 = sub_20D974348();
  *(inited + 32) = v14;
  v15 = sub_20D974368();
  *(inited + 33) = v15;
  v16 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v14)
  {
    v16 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v15)
  {
    v16 = sub_20D974358();
  }

  sub_20D7EAF18(v3, v5, &qword_27C838C50, &qword_20D977508);
  v17 = &v5[*(v58 + 36)];
  *v17 = v16;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  v18 = sub_20D974328();
  sub_20D973AD8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_20D7EAF18(v5, v7, &qword_27C838C58, &qword_20D977510);
  v27 = &v7[*(v59 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_20D974338();
  sub_20D973AD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_20D7EAF18(v7, v9, &qword_27C838C60, &qword_20D977518);
  v37 = &v9[*(v60 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_20D974C48();
  v40 = v39;
  v41 = sub_20D974C48();
  v43 = v42;
  sub_20D7EF054(&v69);
  v44 = v69;
  v45 = v70;
  v46 = v71;
  *&v64 = v41;
  *(&v64 + 1) = v43;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  *&v68 = v38;
  *(&v68 + 1) = v40;
  sub_20D7EAF18(v9, v11, &qword_27C838C68, &qword_20D977520);
  v47 = &v11[*(v61 + 36)];
  v48 = v67;
  *(v47 + 2) = v66;
  *(v47 + 3) = v48;
  *(v47 + 4) = v68;
  v49 = v65;
  *v47 = v64;
  *(v47 + 1) = v49;
  *&v69 = v41;
  *(&v69 + 1) = v43;
  v70 = v44;
  v71 = v45;
  v72 = v46;
  v73 = v38;
  v74 = v40;
  sub_20D7EB7E8(&v64, &v63, &qword_27C838C88, &qword_20D977540);
  sub_20D7E3944(&v69, &qword_27C838C88, &qword_20D977540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v50 = v63 * 20.0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C90, &qword_20D977548);
  v52 = v62;
  v53 = (v62 + *(v51 + 36));
  v54 = *(sub_20D973DE8() + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_20D974118();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = v50;
  v53[1] = v50;
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
  return sub_20D7EAF18(v11, v52, &qword_27C838C70, &qword_20D977528);
}

uint64_t sub_20D7EE41C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA8, &qword_20D977560);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - v4;
  v6 = sub_20D9749C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CB0, &qword_20D977568);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CB8, &qword_20D977570);
  MEMORY[0x28223BE20](v53);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CC0, &qword_20D977578);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v50 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CC8, &qword_20D977580);
  v17 = MEMORY[0x28223BE20](v51);
  v54 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v24 = sub_20D974A08();
  (*(v7 + 8))(v9, v6);
  sub_20D974C58();
  sub_20D973E08();
  *&v57[54] = v62;
  *&v57[70] = v63;
  *&v57[86] = v64;
  *&v57[102] = v65;
  *&v57[6] = v59;
  *&v57[22] = v60;
  v58 = 1;
  v25 = &v12[*(v10 + 36)];
  *&v57[38] = v61;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);
  sub_20D974198();
  v27 = sub_20D9741A8();
  (*(*(v27 - 8) + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v28 = *&v57[80];
  *(v12 + 82) = *&v57[64];
  *(v12 + 98) = v28;
  *(v12 + 114) = *&v57[96];
  v29 = *&v57[16];
  *(v12 + 18) = *v57;
  *(v12 + 34) = v29;
  v30 = *&v57[48];
  *(v12 + 50) = *&v57[32];
  *v12 = v24;
  *(v12 + 1) = 0;
  *(v12 + 8) = 1;
  *(v12 + 16) = *&v57[110];
  *(v12 + 66) = v30;
  v31 = sub_20D974918();
  sub_20D974918();
  v32 = sub_20D974948();

  sub_20D7EAF18(v12, v14, &qword_27C838CB0, &qword_20D977568);
  v33 = &v14[*(v53 + 36)];
  *v33 = v31;
  v33[1] = v32;
  sub_20D7EFF9C();
  v34 = v52;
  sub_20D9747B8();
  sub_20D7E3944(v14, &qword_27C838CB8, &qword_20D977570);
  LOBYTE(v31) = sub_20D974338();
  sub_20D973AD8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_20D7EAF18(v34, v21, &qword_27C838CC0, &qword_20D977578);
  v43 = &v21[*(v51 + 36)];
  *v43 = v31;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_20D7EAF18(v21, v23, &qword_27C838CC8, &qword_20D977580);
  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D00, &qword_20D977598);
  sub_20D7EEB28(&v5[*(v44 + 44)]);
  v45 = v54;
  sub_20D7EB7E8(v23, v54, &qword_27C838CC8, &qword_20D977580);
  v46 = v55;
  sub_20D7EB7E8(v5, v55, &qword_27C838CA8, &qword_20D977560);
  v47 = v56;
  sub_20D7EB7E8(v45, v56, &qword_27C838CC8, &qword_20D977580);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D08, &qword_20D9775A0);
  sub_20D7EB7E8(v46, v47 + *(v48 + 48), &qword_27C838CA8, &qword_20D977560);
  sub_20D7E3944(v5, &qword_27C838CA8, &qword_20D977560);
  sub_20D7E3944(v23, &qword_27C838CC8, &qword_20D977580);
  sub_20D7E3944(v46, &qword_27C838CA8, &qword_20D977560);
  return sub_20D7E3944(v45, &qword_27C838CC8, &qword_20D977580);
}

uint64_t sub_20D7EEB28@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v49 = &v46 - v4;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v46 = qword_28112ABE8;
  *&v56[0] = sub_20D971FF8();
  *(&v56[0] + 1) = v5;
  sub_20D7E1EF8();
  v6 = sub_20D9745C8();
  v8 = v7;
  v10 = v9;
  sub_20D9743B8();
  sub_20D9743A8();

  v11 = sub_20D974558();
  v13 = v12;
  v15 = v14;

  sub_20D7EADC0(v6, v8, v10 & 1);

  *&v56[0] = sub_20D974918();
  v16 = sub_20D974518();
  v18 = v17;
  LOBYTE(v8) = v19;
  v21 = v20;
  sub_20D7EADC0(v11, v13, v15 & 1);

  LOBYTE(v13) = sub_20D974338();
  sub_20D973AD8();
  v55 = v8 & 1;
  v54 = 0;
  *&v50 = v16;
  *(&v50 + 1) = v18;
  LOBYTE(v51) = v8 & 1;
  *(&v51 + 1) = v21;
  LOBYTE(v52) = v13;
  *(&v52 + 1) = v22;
  *v53 = v23;
  *&v53[8] = v24;
  *&v53[16] = v25;
  v53[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747D8();
  v56[2] = v52;
  v57[0] = *v53;
  *(v57 + 9) = *&v53[9];
  v56[0] = v50;
  v56[1] = v51;
  sub_20D7E3944(v56, &qword_27C838D18, &qword_20D9775B0);
  *&v50 = sub_20D971FF8();
  *(&v50 + 1) = v26;
  v27 = sub_20D9745C8();
  v29 = v28;
  LOBYTE(v16) = v30;
  sub_20D974398();
  v31 = sub_20D974558();
  v33 = v32;
  LOBYTE(v21) = v34;

  sub_20D7EADC0(v27, v29, v16 & 1);

  *&v50 = sub_20D974918();
  v35 = sub_20D974518();
  v37 = v36;
  LOBYTE(v16) = v38;
  v40 = v39;
  sub_20D7EADC0(v31, v33, v21 & 1);

  v41 = v49;
  v42 = v48;
  sub_20D7EB7E8(v49, v48, &qword_27C838D10, &qword_20D9775A8);
  v43 = v47;
  sub_20D7EB7E8(v42, v47, &qword_27C838D10, &qword_20D9775A8);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D28, &qword_20D9775B8) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  LOBYTE(v16) = v16 & 1;
  *(v44 + 16) = v16;
  *(v44 + 24) = v40;
  sub_20D7DDC4C(v35, v37, v16);

  sub_20D7E3944(v41, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7EADC0(v35, v37, v16);

  return sub_20D7E3944(v42, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D7EF054@<X0>(uint64_t a1@<X8>)
{
  if (qword_281126F30 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D977210;
  sub_20D9748E8();
  v4 = sub_20D974948();

  *(v3 + 32) = v4;
  sub_20D9748E8();
  v5 = sub_20D974948();

  *(v3 + 40) = v5;
  sub_20D974CA8();
  sub_20D974CB8();
  MEMORY[0x20F322D80](v3);
  sub_20D973D08();
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
}

uint64_t sub_20D7EF1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C10, &qword_20D977458);
  MEMORY[0x28223BE20](v6);
  v8 = (&v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C18, &qword_20D977460);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = *a1;
  v16 = sub_20D9743C8();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);

  v17 = sub_20D974418();
  sub_20D7E3944(v5, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  v19 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C20, &qword_20D977498) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);
  sub_20D974198();
  v21 = sub_20D9741A8();
  (*(*(v21 - 8) + 56))(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  *v8 = v15;
  v8[1] = KeyPath;
  v8[2] = v17;
  v22 = v42;
  v23 = v42[1];
  v24 = (v8 + *(v6 + 36));
  *v24 = v42[2];
  v24[1] = v23;
  sub_20D7EFE2C();

  sub_20D9747B8();
  sub_20D7E3944(v8, &qword_27C838C10, &qword_20D977458);
  LOBYTE(v8) = sub_20D974348();
  sub_20D973AD8();
  v25 = &v14[*(v10 + 44)];
  *v25 = v8;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_20D974168();
  LOBYTE(v49[0]) = 0;
  sub_20D7EF638(v22, v46);
  *&v45[7] = v46[0];
  *&v45[23] = v46[1];
  *&v45[39] = v46[2];
  *&v45[55] = v46[3];
  LOBYTE(v15) = v49[0];
  v31 = v44;
  sub_20D7EB7E8(v14, v44, &qword_27C838C18, &qword_20D977460);
  v32 = v31;
  v33 = v43;
  sub_20D7EB7E8(v32, v43, &qword_27C838C18, &qword_20D977460);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C38, &qword_20D9774F0) + 48);
  *&v47 = v30;
  *(&v47 + 1) = 0x4000000000000000;
  v48[0] = v15;
  *&v48[1] = *v45;
  *&v48[17] = *&v45[16];
  *&v48[33] = *&v45[32];
  *&v48[49] = *&v45[48];
  v35 = *&v45[63];
  *&v48[64] = *&v45[63];
  v36 = *v48;
  *v34 = v47;
  *(v34 + 16) = v36;
  v37 = *&v48[16];
  v38 = *&v48[32];
  v39 = *&v48[48];
  *(v34 + 80) = v35;
  *(v34 + 48) = v38;
  *(v34 + 64) = v39;
  *(v34 + 32) = v37;
  sub_20D7EB7E8(&v47, v49, &qword_27C838C40, &qword_20D9774F8);
  sub_20D7E3944(v14, &qword_27C838C18, &qword_20D977460);
  v49[0] = v30;
  v49[1] = 0x4000000000000000;
  v50 = v15;
  v52 = *&v45[16];
  v53 = *&v45[32];
  *v54 = *&v45[48];
  *&v54[15] = *&v45[63];
  v51 = *v45;
  sub_20D7E3944(v49, &qword_27C838C40, &qword_20D9774F8);
  return sub_20D7E3944(v44, &qword_27C838C18, &qword_20D977460);
}

uint64_t sub_20D7EF638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  v52 = a1[3];
  v53 = v7;
  v45 = sub_20D7E1EF8();

  v8 = sub_20D9745C8();
  v10 = v9;
  v12 = v11;
  v41[1] = v13;
  sub_20D974398();
  sub_20D9743A8();

  v44 = *MEMORY[0x277CE0A08];
  v43 = *(v4 + 104);
  v43(v6);
  sub_20D974478();

  v42 = *(v4 + 8);
  v42(v6, v3);
  v14 = sub_20D974558();
  v48 = v15;
  v49 = v14;
  v47 = v16;
  v46 = v17;

  sub_20D7EADC0(v8, v10, v12 & 1);

  v18 = a1[6];
  v52 = a1[5];
  v53 = v18;

  v19 = sub_20D9745C8();
  v21 = v20;
  LOBYTE(a1) = v22;
  sub_20D974398();
  (v43)(v6, v44, v3);
  sub_20D974478();

  v42(v6, v3);
  v23 = sub_20D974558();
  v25 = v24;
  LOBYTE(v8) = v26;

  sub_20D7EADC0(v19, v21, a1 & 1);

  v27 = [objc_opt_self() secondaryLabelColor];
  v52 = sub_20D974888();
  v28 = sub_20D974518();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_20D7EADC0(v23, v25, v8 & 1);

  v35 = v46 & 1;
  v51 = v46 & 1;
  LOBYTE(v52) = v46 & 1;
  v54 = v32 & 1;
  v37 = v49;
  v36 = v50;
  v39 = v47;
  v38 = v48;
  *v50 = v49;
  v36[1] = v39;
  *(v36 + 16) = v35;
  v36[3] = v38;
  v36[4] = v28;
  v36[5] = v30;
  *(v36 + 48) = v32 & 1;
  v36[7] = v34;
  sub_20D7DDC4C(v37, v39, v35);

  sub_20D7DDC4C(v28, v30, v32 & 1);

  sub_20D7EADC0(v28, v30, v32 & 1);

  sub_20D7EADC0(v37, v39, v51);
}

uint64_t sub_20D7EF9E8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_20D974078();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C00, &qword_20D977448);
  return sub_20D7EF1C4(v7, a2 + *(v5 + 44));
}

uint64_t sub_20D7EFA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D974458();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20D974168();
  v29 = a1;
  v30 = a2;
  sub_20D7E1EF8();

  v10 = sub_20D9745C8();
  v12 = v11;
  v14 = v13;
  sub_20D974398();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A08], v6);
  sub_20D974478();

  (*(v7 + 8))(v9, v6);
  v15 = sub_20D974558();
  v17 = v16;
  LOBYTE(v9) = v18;

  sub_20D7EADC0(v10, v12, v14 & 1);

  v19 = [objc_opt_self() secondaryLabelColor];
  v29 = sub_20D974888();
  v20 = sub_20D974518();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  sub_20D7EADC0(v15, v17, v9 & 1);

  *a3 = v28;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v20;
  *(a3 + 32) = v22;
  *(a3 + 40) = v12 & 1;
  *(a3 + 48) = v25;
  return result;
}

__n128 sub_20D7EFCB4@<Q0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = sub_20D974078();
  v18 = 1;
  sub_20D7EFA5C(v5, v4, &v13);
  v7 = v14;
  v8 = v16;
  v9 = v17;
  result = v15;
  v11 = v13;
  v12 = v18;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 40) = v7;
  *(a2 + 48) = result;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_20D7EFD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v5 - v3, &qword_27C838C48, &qword_20D977500);
  return sub_20D973F18();
}

unint64_t sub_20D7EFE2C()
{
  result = qword_281124E98;
  if (!qword_281124E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C10, &qword_20D977458);
    sub_20D7EFEE4();
    sub_20D7EBC4C(&qword_281124DD8, &qword_27C838C30, &qword_20D9774E8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E98);
  }

  return result;
}

unint64_t sub_20D7EFEE4()
{
  result = qword_281124EE8;
  if (!qword_281124EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C20, &qword_20D977498);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281124DB8, &qword_27C838C28, &qword_20D9774A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EE8);
  }

  return result;
}

unint64_t sub_20D7EFF9C()
{
  result = qword_27C838CD0;
  if (!qword_27C838CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CB8, &qword_20D977570);
    sub_20D7F0054();
    sub_20D7EBC4C(&qword_281124DD8, &qword_27C838C30, &qword_20D9774E8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CD0);
  }

  return result;
}

unint64_t sub_20D7F0054()
{
  result = qword_27C838CD8;
  if (!qword_27C838CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CB0, &qword_20D977568);
    sub_20D7F010C();
    sub_20D7EBC4C(&qword_281124DB8, &qword_27C838C28, &qword_20D9774A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CD8);
  }

  return result;
}

unint64_t sub_20D7F010C()
{
  result = qword_27C838CE0;
  if (!qword_27C838CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CE8, &qword_20D977588);
    sub_20D7F0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CE0);
  }

  return result;
}

unint64_t sub_20D7F0198()
{
  result = qword_27C838CF0;
  if (!qword_27C838CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CF8, &qword_20D977590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CF0);
  }

  return result;
}

unint64_t sub_20D7F021C()
{
  result = qword_27C838D20;
  if (!qword_27C838D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D18, &qword_20D9775B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D20);
  }

  return result;
}

unint64_t sub_20D7F02A0()
{
  result = qword_27C838D90;
  if (!qword_27C838D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D78, &qword_20D977608);
    sub_20D7F032C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D90);
  }

  return result;
}

unint64_t sub_20D7F032C()
{
  result = qword_27C838D98;
  if (!qword_27C838D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D88, &qword_20D977618);
    sub_20D7F0544(&qword_27C838DA0, type metadata accessor for IntroView, &unk_20D977354);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D98);
  }

  return result;
}

unint64_t sub_20D7F03E8()
{
  result = qword_27C838DA8;
  if (!qword_27C838DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DA8);
  }

  return result;
}

uint64_t sub_20D7F043C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7F0544(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7F04F0()
{
  result = qword_27C838DB8;
  if (!qword_27C838DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DB8);
  }

  return result;
}

uint64_t sub_20D7F0544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_20D7F05F0()
{
  result = qword_27C838DC8;
  if (!qword_27C838DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F04F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DC8);
  }

  return result;
}

unint64_t sub_20D7F067C()
{
  result = qword_27C838E10;
  if (!qword_27C838E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C90, &qword_20D977548);
    sub_20D7F0734();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E10);
  }

  return result;
}

unint64_t sub_20D7F0734()
{
  result = qword_27C838E18;
  if (!qword_27C838E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C70, &qword_20D977528);
    sub_20D7F07EC();
    sub_20D7EBC4C(&qword_27C838E40, &qword_27C838C88, &qword_20D977540, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E18);
  }

  return result;
}

unint64_t sub_20D7F07EC()
{
  result = qword_27C838E20;
  if (!qword_27C838E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C68, &qword_20D977520);
    sub_20D7F0878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E20);
  }

  return result;
}

unint64_t sub_20D7F0878()
{
  result = qword_27C838E28;
  if (!qword_27C838E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C60, &qword_20D977518);
    sub_20D7F0904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E28);
  }

  return result;
}

unint64_t sub_20D7F0904()
{
  result = qword_27C838E30;
  if (!qword_27C838E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C58, &qword_20D977510);
    sub_20D7EBC4C(&qword_27C838E38, &qword_27C838C50, &qword_20D977508, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E30);
  }

  return result;
}

uint64_t RectangularLockEnergyForecastView.init(referenceDate:widgetStartDate:energyWindow:gridForecastError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - v12;
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v84 = *a4;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v21 = type metadata accessor for RectangularLockEnergyForecastView(0);
  v22 = *(v21 + 28);
  v23 = sub_20D972998();
  v75 = *(v23 - 8);
  v76 = v23;
  v24 = *(v75 + 56);
  v81 = v22;
  v24(a5 + v22, 1, 1);
  v82 = v21;
  v25 = *(v21 + 32);
  v79 = a5;
  v80 = v25;
  *(a5 + v25) = 12;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v26 = sub_20D9734F8();
  __swift_project_value_buffer(v26, qword_2811250C8);
  v27 = v15;
  v28 = *(v15 + 16);
  v83 = a1;
  v28(v20, a1, v14);
  v29 = v18;
  v78 = v18;
  v30 = v85;
  v28(v29, v85, v14);
  sub_20D7EB7E8(a3, v13, &qword_27C838E48, &qword_20D977670);
  v31 = sub_20D9734D8();
  v32 = sub_20D975478();
  if (os_log_type_enabled(v31, v32))
  {
    v71 = v32;
    v72 = v31;
    v74 = a3;
    v33 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v89[0] = v70;
    *v33 = 136315906;
    v34 = sub_20D9725F8();
    v36 = v35;
    v73 = v27;
    v37 = *(v27 + 8);
    v37(v20, v14);
    v38 = sub_20D7F4DC8(v34, v36, v89);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = v78;
    v40 = sub_20D9725F8();
    v42 = v41;
    v78 = v14;
    v37(v39, v14);
    v43 = sub_20D7F4DC8(v40, v42, v89);

    *(v33 + 14) = v43;
    *(v33 + 22) = 2080;
    v44 = v84;
    if (v84 == 12)
    {
      v45 = 0xE500000000000000;
      v46 = 0x7272456F6ELL;
    }

    else
    {
      v88 = v84;
      v86 = GridForecastError.description.getter();
      v87 = v49;
      sub_20D7E1EF8();
      v50 = sub_20D975538();
      v45 = v51;

      v46 = v50;
      v44 = v84;
    }

    v52 = v13;
    v54 = v76;
    v53 = v77;
    v55 = sub_20D7F4DC8(v46, v45, v89);

    *(v33 + 24) = v55;
    *(v33 + 32) = 2080;
    sub_20D7EB7E8(v13, v53, &qword_27C838E48, &qword_20D977670);
    v56 = v75;
    v57 = (*(v75 + 48))(v53, 1, v54);
    v47 = v85;
    if (v57 == 1)
    {
      sub_20D7E3944(v53, &qword_27C838E48, &qword_20D977670);
      v58 = 0xE500000000000000;
      v59 = 0x3E6C696E3CLL;
    }

    else
    {
      EnergyWindow.description.getter();
      v59 = v60;
      v58 = v61;
      (*(v56 + 8))(v53, v54);
    }

    v27 = v73;
    sub_20D7E3944(v52, &qword_27C838E48, &qword_20D977670);
    v62 = sub_20D7F4DC8(v59, v58, v89);

    *(v33 + 34) = v62;
    v63 = v72;
    _os_log_impl(&dword_20D7C9000, v72, v71, "RectangularLockEnergyForecastView: creating view for date: %s, with widgetStartDate: %s - (%s) & %s", v33, 0x2Au);
    v64 = v70;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v64, -1, -1);
    MEMORY[0x20F324260](v33, -1, -1);

    a3 = v74;
    v14 = v78;
  }

  else
  {
    v47 = v30;

    sub_20D7E3944(v13, &qword_27C838E48, &qword_20D977670);
    v48 = *(v27 + 8);
    v48(v78, v14);
    v48(v20, v14);
    v44 = v84;
  }

  v65 = v79;
  sub_20D7F4D58(a3, v79 + v81);
  v66 = v82;
  v67 = *(v27 + 32);
  v67(v65 + *(v82 + 20), v83, v14);
  result = (v67)(v65 + *(v66 + 24), v47, v14);
  *(v65 + v80) = v44;
  return result;
}

uint64_t RectangularLockEnergyForecastView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E50, &qword_20D9776A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E58, &qword_20D9776B0);
  sub_20D7F1118(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D7F4E94();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C838E50, &qword_20D9776A8);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E70, &qword_20D9776C8);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_20D7F1118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v108 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E78, &unk_20D977758);
  MEMORY[0x28223BE20](v99);
  v92 = &v83 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E80, &qword_20D977768);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E88, &qword_20D977770);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v90 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = (&v83 - v14);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E90, &qword_20D977778);
  MEMORY[0x28223BE20](v97);
  v96 = (&v83 - v15);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E98, &qword_20D977780);
  MEMORY[0x28223BE20](v106);
  v103 = &v83 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EA0, &qword_20D977788);
  MEMORY[0x28223BE20](v107);
  v94 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EA8, &qword_20D977790);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v83 - v25;
  v27 = sub_20D972998();
  v100 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v95 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EB0, &qword_20D977798);
  MEMORY[0x28223BE20](v29);
  v98 = &v83 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EB8, &unk_20D9777A0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v105 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v83 - v34;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v86 = *(v87 - 8);
  v36 = MEMORY[0x28223BE20](v87);
  v109 = (&v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v39 = &v83 - v38;
  *v39 = sub_20D974088();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  v41 = *(v40 + 44);
  v104 = v39;
  sub_20D7F1FE0(&v39[v41]);
  v42 = type metadata accessor for RectangularLockEnergyForecastView(0);
  v43 = *(v102 + *(v42 + 32));
  if (v43 == 12)
  {
    v44 = v42;
    v85 = v29;
    v94 = v35;
    v45 = v102;
    sub_20D7EB7E8(v102 + *(v42 + 28), v26, &qword_27C838E48, &qword_20D977670);
    v46 = v100;
    if ((*(v100 + 48))(v26, 1, v27) == 1)
    {
      sub_20D7E3944(v26, &qword_27C838E48, &qword_20D977670);
      v47 = sub_20D974088();
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);
      v48 = MEMORY[0x277D84F90];

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v112 = 1;
      v111 = 0;
      v110 = 1;
      v49 = sub_20D974088();
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v115 = 1;
      v114 = 0;
      v113 = 1;
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v50 = v96;
      *v96 = v47;
      v50[1] = 0;
      *(v50 + 16) = 1;
      *(v50 + 3) = xmmword_20D977660;
      *(v50 + 40) = 0;
      v50[6] = v48;
      v50[7] = 0;
      *(v50 + 64) = 1;
      v50[9] = v49;
      v50[10] = 0;
      *(v50 + 88) = 1;
      *(v50 + 6) = xmmword_20D977660;
      *(v50 + 112) = 0;
      v50[15] = v48;
      v50[16] = 0;
      *(v50 + 136) = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED0, &qword_20D9777B8);
      v51 = MEMORY[0x277CE14C0];
      sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758, MEMORY[0x277CE14C0]);
      sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8, v51);
      v52 = v98;
      sub_20D9741B8();
      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);
    }

    else
    {
      v59 = v27;
      v60 = *(v46 + 32);
      v61 = v95;
      v84 = v59;
      v60(v95, v26);
      v62 = sub_20D974088();
      v63 = v101;
      *v101 = v62;
      v63[1] = 0x4008000000000000;
      *(v63 + 16) = 0;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EE0, &qword_20D9777C8);
      sub_20D7F260C(v63 + *(v64 + 44));
      v65 = v88;
      sub_20D972988();
      v66 = v89;
      sub_20D972978();
      v67 = sub_20D7F3D2C(v65, v66, v45 + *(v44 + 24));
      sub_20D7E3944(v66, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v65, &qword_27C8389E8, &qword_20D9768D0);
      v68 = 1;
      if (v67)
      {
        v69 = sub_20D974088();
        v70 = v109;
        *v109 = v69;
        v70[1] = 0;
        *(v70 + 16) = 1;
        sub_20D7F4934(v61, v70 + *(v40 + 44));
        sub_20D7F5308(v70, v93);
        v68 = 0;
      }

      v71 = v93;
      (*(v86 + 56))(v93, v68, 1, v87);
      v72 = v90;
      sub_20D7EB7E8(v101, v90, &qword_27C838E88, &qword_20D977770);
      v73 = v91;
      sub_20D7EB7E8(v71, v91, &qword_27C838E80, &qword_20D977768);
      v74 = v92;
      sub_20D7EB7E8(v72, v92, &qword_27C838E88, &qword_20D977770);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EE8, &qword_20D9777D0);
      sub_20D7EB7E8(v73, v74 + *(v75 + 48), &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v73, &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v72, &qword_27C838E88, &qword_20D977770);
      sub_20D7EB7E8(v74, v96, &qword_27C838E78, &unk_20D977758);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED0, &qword_20D9777B8);
      v76 = MEMORY[0x277CE14C0];
      sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758, MEMORY[0x277CE14C0]);
      sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8, v76);
      v52 = v98;
      sub_20D9741B8();
      sub_20D7E3944(v74, &qword_27C838E78, &unk_20D977758);
      sub_20D7E3944(v71, &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v101, &qword_27C838E88, &qword_20D977770);
      (*(v100 + 8))(v95, v84);
    }

    sub_20D7EB7E8(v52, v103, &qword_27C838EB0, &qword_20D977798);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CD0, &qword_27C838EA0, &qword_20D977788, MEMORY[0x277CE14C0]);
    sub_20D7F5228();
    v35 = v94;
    sub_20D9741B8();
    v56 = v52;
    v57 = &qword_27C838EB0;
    v58 = &qword_20D977798;
  }

  else
  {
    *v23 = sub_20D974088();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EF0, &qword_20D9777D8);
    sub_20D7F228C(v43, &v23[*(v53 + 44)]);
    sub_20D7EB7E8(v23, v21, &qword_27C838EA8, &qword_20D977790);
    v54 = v94;
    sub_20D7EB7E8(v21, v94, &qword_27C838EA8, &qword_20D977790);
    v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EF8, &qword_20D9777E0) + 48);
    *v55 = 0;
    *(v55 + 8) = 1;
    sub_20D7E3944(v21, &qword_27C838EA8, &qword_20D977790);
    sub_20D7EB7E8(v54, v103, &qword_27C838EA0, &qword_20D977788);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CD0, &qword_27C838EA0, &qword_20D977788, MEMORY[0x277CE14C0]);
    sub_20D7F5228();
    sub_20D9741B8();
    sub_20D7E3944(v54, &qword_27C838EA0, &qword_20D977788);
    v56 = v23;
    v57 = &qword_27C838EA8;
    v58 = &qword_20D977790;
  }

  sub_20D7E3944(v56, v57, v58);
  v77 = v104;
  v78 = v109;
  sub_20D7EB7E8(v104, v109, &qword_27C838EC0, &unk_20D977FE0);
  v79 = v105;
  sub_20D7EB7E8(v35, v105, &qword_27C838EB8, &unk_20D9777A0);
  v80 = v108;
  sub_20D7EB7E8(v78, v108, &qword_27C838EC0, &unk_20D977FE0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED8, &qword_20D9777C0);
  sub_20D7EB7E8(v79, v80 + *(v81 + 48), &qword_27C838EB8, &unk_20D9777A0);
  sub_20D7E3944(v35, &qword_27C838EB8, &unk_20D9777A0);
  sub_20D7E3944(v77, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v79, &qword_27C838EB8, &unk_20D9777A0);
  return sub_20D7E3944(v78, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D7F1FE0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v24 = sub_20D971FF8();
  v25 = v7;
  sub_20D7E1EF8();
  v8 = sub_20D9745C8();
  v10 = v9;
  v12 = v11;
  LODWORD(v24) = sub_20D974248();
  v13 = sub_20D974518();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_20D7EADC0(v8, v10, v12 & 1);

  v24 = v13;
  v25 = v15;
  v26 = v17 & 1;
  v27 = v19;
  sub_20D9747D8();
  sub_20D7EADC0(v13, v15, v17 & 1);

  sub_20D7EB7E8(v6, v4, &qword_27C838F18, &unk_20D977860);
  v20 = v23;
  sub_20D7EB7E8(v4, v23, &qword_27C838F18, &unk_20D977860);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v4, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7F228C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_20D974458();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F00, &qword_20D9777E8) - 8;
  v6 = MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v48 = a1;
  v44 = GridForecastError.mediumUIString.getter();
  v45 = v10;
  sub_20D7E1EF8();
  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  v16 = sub_20D974548();
  v18 = v17;
  v20 = v19;
  sub_20D7EADC0(v11, v13, v15 & 1);

  LODWORD(v44) = sub_20D974248();
  v21 = sub_20D974518();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_20D7EADC0(v16, v18, v20 & 1);

  v44 = v21;
  v45 = v23;
  v46 = v11 & 1;
  v47 = v26;
  sub_20D974868();
  sub_20D7EADC0(v21, v23, v11 & 1);

  sub_20D974398();
  v28 = v39;
  v27 = v40;
  (*(v39 + 104))(v5, *MEMORY[0x277CE0A10], v40);
  v29 = sub_20D974478();

  (*(v28 + 8))(v5, v27);
  KeyPath = swift_getKeyPath();
  v31 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = swift_getKeyPath();
  v33 = v41;
  v34 = &v9[*(v42 + 44)];
  *v34 = v32;
  v34[8] = 0;
  sub_20D7EB7E8(v9, v33, &qword_27C838F00, &qword_20D9777E8);
  v35 = v43;
  sub_20D7EB7E8(v33, v43, &qword_27C838F00, &qword_20D9777E8);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F10, &qword_20D977858) + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C838F00, &qword_20D9777E8);
  return sub_20D7E3944(v33, &qword_27C838F00, &qword_20D9777E8);
}

uint64_t sub_20D7F260C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F28, &qword_20D977870);
  MEMORY[0x28223BE20](v31);
  v30 = v29 - v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F30, &qword_20D977878);
  MEMORY[0x28223BE20](v32);
  v3 = v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F38, &qword_20D977880);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F40, &qword_20D977888);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F48, &qword_20D977890);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F50, &qword_20D977898);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - v17;
  if (EnergyWindow.isCleanEnergy.getter())
  {
    sub_20D7F2C08(v12);
    v30 = v18;
    sub_20D7EB7E8(v12, v6, &qword_27C838F48, &qword_20D977890);
    swift_storeEnumTagMultiPayload();
    v19 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870, v19);
    v18 = v30;
    sub_20D9741B8();
    sub_20D7EB7E8(v9, v3, &qword_27C838F40, &qword_20D977888);
    swift_storeEnumTagMultiPayload();
    sub_20D7F58AC();
    sub_20D9741B8();
    sub_20D7E3944(v9, &qword_27C838F40, &qword_20D977888);
    v20 = v12;
    v21 = &qword_27C838F48;
    v22 = &qword_20D977890;
  }

  else
  {
    v29[1] = v7;
    if (EnergyWindow.isStrainedEnergy.getter())
    {
      v23 = v30;
      sub_20D7F30F8(v30);
      sub_20D7EB7E8(v23, v6, &qword_27C838F28, &qword_20D977870);
      swift_storeEnumTagMultiPayload();
      v24 = MEMORY[0x277CE14C0];
      sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890, MEMORY[0x277CE14C0]);
      sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870, v24);
      sub_20D9741B8();
      sub_20D7EB7E8(v9, v3, &qword_27C838F40, &qword_20D977888);
      swift_storeEnumTagMultiPayload();
      sub_20D7F58AC();
      sub_20D9741B8();
      sub_20D7E3944(v9, &qword_27C838F40, &qword_20D977888);
      v20 = v23;
    }

    else
    {
      v25 = v30;
      sub_20D7F3764(v30);
      sub_20D7EB7E8(v25, v3, &qword_27C838F28, &qword_20D977870);
      swift_storeEnumTagMultiPayload();
      sub_20D7F58AC();
      sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870, MEMORY[0x277CE14C0]);
      sub_20D9741B8();
      v20 = v25;
    }

    v21 = &qword_27C838F28;
    v22 = &qword_20D977870;
  }

  sub_20D7E3944(v20, v21, v22);
  sub_20D7EB7E8(v18, v16, &qword_27C838F50, &qword_20D977898);
  v26 = v33;
  sub_20D7EB7E8(v16, v33, &qword_27C838F50, &qword_20D977898);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F58, &unk_20D9778A0) + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_20D7E3944(v18, &qword_27C838F50, &qword_20D977898);
  return sub_20D7E3944(v16, &qword_27C838F50, &qword_20D977898);
}

uint64_t sub_20D7F2C08@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  MEMORY[0x28223BE20](v5);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  if (qword_281124D88 != -1)
  {
    swift_once();
  }

  v14 = qword_28112AB60;
  v15 = (v7 + *(v5 + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_20D9749F8();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v7, &qword_27C838BB0, &qword_20D977D40);
  *&v13[*(v8 + 36)] = sub_20D974248();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v45 = sub_20D971FF8();
  v46 = v19;
  sub_20D7E1EF8();
  v20 = sub_20D9745C8();
  v22 = v21;
  v24 = v23;
  v25 = sub_20D974548();
  v27 = v26;
  v29 = v28;
  sub_20D7EADC0(v20, v22, v24 & 1);

  LODWORD(v45) = sub_20D974248();
  v30 = sub_20D974518();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  sub_20D7EADC0(v25, v27, v29 & 1);

  v45 = v30;
  v46 = v32;
  v47 = v20 & 1;
  v48 = v35;
  v36 = v42;
  sub_20D9747D8();
  sub_20D7EADC0(v30, v32, v20 & 1);

  sub_20D7EB7E8(v13, v11, &qword_27C838F60, &unk_20D9778B0);
  v37 = v44;
  sub_20D7EB7E8(v36, v44, &qword_27C838F18, &unk_20D977860);
  v38 = v43;
  sub_20D7EB7E8(v11, v43, &qword_27C838F60, &unk_20D9778B0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F68, &qword_20D9778F0);
  sub_20D7EB7E8(v37, v38 + *(v39 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v36, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v13, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v37, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v11, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F30F8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F70, &qword_20D9778F8);
  MEMORY[0x28223BE20](v50);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F78, &unk_20D977900);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  MEMORY[0x28223BE20](v12);
  v14 = (&v47 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v16 = MEMORY[0x28223BE20](v15);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  if (qword_27C838768 != -1)
  {
    swift_once();
  }

  v20 = qword_27C840E80;
  v21 = (v14 + *(v12 + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v23 = *MEMORY[0x277CE1050];
  v24 = sub_20D9749F8();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v14 = v20;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v14, &qword_27C838BB0, &qword_20D977D40);
  *&v19[*(v15 + 36)] = sub_20D974248();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v25 = qword_28112ABE8;
  v26 = qword_28112ABE8;
  v27 = v48;
  sub_20D9726B8();
  *&v62[0] = sub_20D975108(v5, 0, 0, v25, v27, "Title describing that user should avoid using energy now.", 57, 2);
  *(&v62[0] + 1) = v28;
  sub_20D7E1EF8();
  v29 = sub_20D9745C8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_20D974348();
  sub_20D973AD8();
  v59 = v33 & 1;
  v58 = 0;
  *&v54 = v29;
  *(&v54 + 1) = v31;
  LOBYTE(v55) = v33 & 1;
  *(&v55 + 1) = *v61;
  DWORD1(v55) = *&v61[3];
  *(&v55 + 1) = v35;
  LOBYTE(v56) = v36;
  *(&v56 + 1) = *v60;
  DWORD1(v56) = *&v60[3];
  *(&v56 + 1) = v37;
  *v57 = v38;
  *&v57[8] = v39;
  *&v57[16] = v40;
  v57[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747F8();
  v62[2] = v56;
  v63[0] = *v57;
  *(v63 + 9) = *&v57[9];
  v62[0] = v54;
  v62[1] = v55;
  sub_20D7E3944(v62, &qword_27C838D18, &qword_20D9775B0);
  *&v7[*(v50 + 36)] = sub_20D974248();
  sub_20D7F5A44();
  v41 = v51;
  sub_20D9747D8();
  sub_20D7E3944(v7, &qword_27C838F70, &qword_20D9778F8);
  v42 = v49;
  sub_20D7EB7E8(v19, v49, &qword_27C838F60, &unk_20D9778B0);
  v43 = v52;
  sub_20D7EB7E8(v41, v52, &qword_27C838F78, &unk_20D977900);
  v44 = v53;
  sub_20D7EB7E8(v42, v53, &qword_27C838F60, &unk_20D9778B0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F90, &qword_20D977918);
  sub_20D7EB7E8(v43, v44 + *(v45 + 48), &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v41, &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v19, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v43, &qword_27C838F78, &unk_20D977900);
  return sub_20D7E3944(v42, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F3764@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F70, &qword_20D9778F8);
  MEMORY[0x28223BE20](v40);
  v2 = &v39 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F78, &unk_20D977900);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  if (qword_27C838760 != -1)
  {
    swift_once();
  }

  v16 = qword_27C840E78;
  v17 = (v9 + *(v7 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v19 = *MEMORY[0x277CE1050];
  v20 = sub_20D9749F8();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v9 = v16;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v9, &qword_27C838BB0, &qword_20D977D40);
  *&v15[*(v10 + 36)] = sub_20D974248();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  *&v52[0] = sub_20D971FF8();
  *(&v52[0] + 1) = v21;
  sub_20D7E1EF8();
  v22 = sub_20D9745C8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_20D974348();
  sub_20D973AD8();
  v49 = v26 & 1;
  v48 = 0;
  *&v44 = v22;
  *(&v44 + 1) = v24;
  LOBYTE(v45) = v26 & 1;
  *(&v45 + 1) = *v51;
  DWORD1(v45) = *&v51[3];
  *(&v45 + 1) = v28;
  LOBYTE(v46) = v29;
  *(&v46 + 1) = *v50;
  DWORD1(v46) = *&v50[3];
  *(&v46 + 1) = v30;
  *v47 = v31;
  *&v47[8] = v32;
  *&v47[16] = v33;
  v47[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747F8();
  v52[2] = v46;
  v53[0] = *v47;
  *(v53 + 9) = *&v47[9];
  v52[0] = v44;
  v52[1] = v45;
  sub_20D7E3944(v52, &qword_27C838D18, &qword_20D9775B0);
  *&v2[*(v40 + 36)] = sub_20D974248();
  sub_20D7F5A44();
  v34 = v41;
  sub_20D9747D8();
  sub_20D7E3944(v2, &qword_27C838F70, &qword_20D9778F8);
  sub_20D7EB7E8(v15, v13, &qword_27C838F60, &unk_20D9778B0);
  v35 = v42;
  sub_20D7EB7E8(v34, v42, &qword_27C838F78, &unk_20D977900);
  v36 = v43;
  sub_20D7EB7E8(v13, v43, &qword_27C838F60, &unk_20D9778B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F90, &qword_20D977918);
  sub_20D7EB7E8(v35, v36 + *(v37 + 48), &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v34, &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v15, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v35, &qword_27C838F78, &unk_20D977900);
  return sub_20D7E3944(v13, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v5 = sub_20D972628();
  v114 = *(v5 - 8);
  v121 = v114;
  v6 = MEMORY[0x28223BE20](v5);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v113 = &v102 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v110 = &v102 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v119 = &v102 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v102 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v112 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v102 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v111 = (&v102 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v102 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v102 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v102 - v29;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v31 = sub_20D9734F8();
  v32 = __swift_project_value_buffer(v31, qword_2811250C8);
  v117 = a1;
  sub_20D7EB7E8(a1, v30, &qword_27C8389E8, &qword_20D9768D0);
  v118 = a2;
  sub_20D7EB7E8(a2, v28, &qword_27C8389E8, &qword_20D9768D0);
  v33 = v121 + 16;
  v108 = *(v121 + 16);
  v108(v15, v120, v5);
  v116 = v32;
  v34 = sub_20D9734D8();
  v35 = sub_20D975478();
  v36 = v5;
  if (os_log_type_enabled(v34, v35))
  {
    v104 = v35;
    v105 = v28;
    v106 = v34;
    v102 = v15;
    v107 = v33;
    v37 = v5;
    v38 = 0x3E6C696E3CLL;
    v39 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v122[0] = v103;
    *v39 = 136315906;
    *(v39 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v122);
    *(v39 + 12) = 2080;
    sub_20D7EB7E8(v30, v25, &qword_27C8389E8, &qword_20D9768D0);
    v40 = v121;
    v41 = *(v121 + 48);
    if (v41(v25, 1, v5) == 1)
    {
      sub_20D7E3944(v25, &qword_27C8389E8, &qword_20D9768D0);
      v42 = 0xE500000000000000;
      v43 = 0x3E6C696E3CLL;
    }

    else
    {
      v48 = v40;
      v43 = sub_20D972418();
      v42 = v49;
      (*(v48 + 8))(v25, v37);
    }

    sub_20D7E3944(v30, &qword_27C8389E8, &qword_20D9768D0);
    v50 = sub_20D7F4DC8(v43, v42, v122);

    *(v39 + 14) = v50;
    *(v39 + 22) = 2080;
    v51 = v105;
    v52 = v111;
    sub_20D7EB7E8(v105, v111, &qword_27C8389E8, &qword_20D9768D0);
    if (v41(v52, 1, v37) == 1)
    {
      sub_20D7E3944(v52, &qword_27C8389E8, &qword_20D9768D0);
      v53 = 0xE500000000000000;
      v45 = v119;
      v44 = v121;
    }

    else
    {
      v38 = sub_20D972418();
      v53 = v54;
      v44 = v121;
      (*(v121 + 8))(v52, v37);
      v45 = v119;
    }

    v46 = v117;
    v47 = v115;
    sub_20D7E3944(v51, &qword_27C8389E8, &qword_20D9768D0);
    v55 = sub_20D7F4DC8(v38, v53, v122);

    *(v39 + 24) = v55;
    *(v39 + 32) = 2080;
    v56 = v102;
    v57 = sub_20D972418();
    v59 = v58;
    v111 = v44[1];
    (v111)(v56, v37);
    v60 = sub_20D7F4DC8(v57, v59, v122);

    *(v39 + 34) = v60;
    v61 = v106;
    _os_log_impl(&dword_20D7C9000, v106, v104, "%s: start/end: %s, %s widgetStartDate: %s", v39, 0x2Au);
    v62 = v103;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v62, -1, -1);
    MEMORY[0x20F324260](v39, -1, -1);

    v36 = v37;
  }

  else
  {

    v44 = v121;
    v111 = *(v121 + 8);
    (v111)(v15, v5);
    sub_20D7E3944(v28, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v30, &qword_27C8389E8, &qword_20D9768D0);
    v45 = v119;
    v46 = v117;
    v47 = v115;
  }

  sub_20D7EB7E8(v46, v47, &qword_27C8389E8, &qword_20D9768D0);
  v63 = v44[6];
  v64 = v63(v47, 1, v36);
  v65 = v118;
  if (v64 == 1)
  {
    v66 = v47;
LABEL_16:
    sub_20D7E3944(v66, &qword_27C8389E8, &qword_20D9768D0);
    v70 = sub_20D9734D8();
    v71 = sub_20D975478();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v122[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v122);
      _os_log_impl(&dword_20D7C9000, v70, v71, "%s: TRUE: missing a date...", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x20F324260](v73, -1, -1);
      MEMORY[0x20F324260](v72, -1, -1);
    }

    return 1;
  }

  v67 = v113;
  v68 = v44[4];
  v68(v45, v47, v36);
  v69 = v65;
  v66 = v112;
  sub_20D7EB7E8(v69, v112, &qword_27C8389E8, &qword_20D9768D0);
  if (v63(v66, 1, v36) == 1)
  {
    (v111)(v45, v36);
    goto LABEL_16;
  }

  v75 = v45;
  v76 = v110;
  v68(v110, v66, v36);
  sub_20D972458();
  if (v77 < 32400.0)
  {
    v78 = v67;
    v79 = v108;
    v108(v67, v75, v36);
    v80 = v109;
    v79(v109, v76, v36);
    v81 = sub_20D9734D8();
    v82 = sub_20D975478();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122[0] = v121;
      *v83 = 136315650;
      *(v83 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v122);
      *(v83 + 12) = 2080;
      sub_20D7F5854();
      v84 = v81;
      v85 = sub_20D9757A8();
      v87 = v86;
      v88 = v78;
      v89 = v111;
      (v111)(v88, v36);
      v90 = sub_20D7F4DC8(v85, v87, v122);

      *(v83 + 14) = v90;
      *(v83 + 22) = 2080;
      v91 = sub_20D9757A8();
      v93 = v92;
      v89(v80, v36);
      v94 = sub_20D7F4DC8(v91, v93, v122);

      *(v83 + 24) = v94;
      _os_log_impl(&dword_20D7C9000, v84, v82, "%s: TRUE for: %s, %s", v83, 0x20u);
      v95 = v121;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v95, -1, -1);
      MEMORY[0x20F324260](v83, -1, -1);

      v89(v110, v36);
      v89(v119, v36);
    }

    else
    {

      v101 = v111;
      (v111)(v80, v36);
      v101(v67, v36);
      v101(v76, v36);
      v101(v75, v36);
    }

    return 1;
  }

  v96 = sub_20D9734D8();
  v97 = sub_20D975478();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v122[0] = v99;
    *v98 = 136315394;
    *(v98 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v122);
    *(v98 + 12) = 2048;
    *(v98 + 14) = 9;
    _os_log_impl(&dword_20D7C9000, v96, v97, "%s: FALSE: end date is beyond %ld hrs...", v98, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x20F324260](v99, -1, -1);
    MEMORY[0x20F324260](v98, -1, -1);
  }

  v100 = v111;
  (v111)(v76, v36);
  v100(v75, v36);
  return 0;
}

uint64_t sub_20D7F4934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  LOBYTE(v27) = 1;
  v27 = _s12HomeEnergyUI19GridForecastStringsV09localizedB12RatingString3for5styleSS0A8Services0B6WindowV_AC0I5StyleOtFZ_0(a1, &v27);
  v28 = v9;
  v27 = sub_20D9751B8();
  v28 = v10;
  sub_20D7E1EF8();
  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  LODWORD(v27) = sub_20D974258();
  v16 = sub_20D974518();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v27 = v16;
  v28 = v18;
  v20 &= 1u;
  v29 = v20;
  v30 = v22;
  sub_20D9747D8();
  sub_20D7EADC0(v16, v18, v20);

  sub_20D7EB7E8(v8, v6, &qword_27C838F18, &unk_20D977860);
  v23 = v26;
  sub_20D7EB7E8(v6, v26, &qword_27C838F18, &unk_20D977860);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7F4B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E50, &qword_20D9776A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E58, &qword_20D9776B0);
  sub_20D7F1118(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D7F4E94();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C838E50, &qword_20D9776A8);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E70, &qword_20D9776C8);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_20D7F4CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973FB8();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for RectangularLockEnergyForecastView(uint64_t a1)
{
  result = qword_281126DF0;
  if (!qword_281126DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D7F4D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D7F4DC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20D7F5378(v11, 0, 0, 1, a1, a2);
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
    sub_20D7EB630(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20D7F4E94()
{
  result = qword_281124F48;
  if (!qword_281124F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E50, &qword_20D9776A8);
    sub_20D7EBC4C(&qword_281124D20, &qword_27C838E60, &qword_20D9776B8, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F48);
  }

  return result;
}

void sub_20D7F4FBC(uint64_t a1)
{
  sub_20D7F5110(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      sub_20D7F50B8(319);
      if (v3 <= 0x3F)
      {
        sub_20D7F5110(319, qword_2811274E0, &type metadata for GridForecastError, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7F50B8(uint64_t a1)
{
  if (!qword_281125120)
  {
    sub_20D972998();
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281125120);
    }
  }
}

void sub_20D7F5110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D7F5160()
{
  result = qword_281124F88;
  if (!qword_281124F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E70, &qword_20D9776C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E50, &qword_20D9776A8);
    sub_20D7F4E94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F88);
  }

  return result;
}

unint64_t sub_20D7F5228()
{
  result = qword_281124DF8;
  if (!qword_281124DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838EB0, &qword_20D977798);
    v1 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124DF8);
  }

  return result;
}

uint64_t sub_20D7F5308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D7F5378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20D7F5484(a5, a6);
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
    result = sub_20D9756B8();
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

void *sub_20D7F5484(uint64_t a1, unint64_t a2)
{
  v3 = sub_20D7F54D0(a1, a2);
  sub_20D7F5600(&unk_282496C20);
  return v3;
}

void *sub_20D7F54D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_20D7F56EC(v5, 0);
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

  result = sub_20D9756B8();
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
        v10 = sub_20D975198();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20D7F56EC(v10, 0);
        result = sub_20D975668();
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

uint64_t sub_20D7F5600(uint64_t result)
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

  result = sub_20D7F5760(result, v11, 1, v3);
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

void *sub_20D7F56EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F98, &qword_20D977920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20D7F5760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F98, &qword_20D977920);
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

unint64_t sub_20D7F5854()
{
  result = qword_281127730;
  if (!qword_281127730)
  {
    sub_20D972628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127730);
  }

  return result;
}

unint64_t sub_20D7F58AC()
{
  result = qword_281124E00;
  if (!qword_281124E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F40, &qword_20D977888);
    v1 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E00);
  }

  return result;
}

unint64_t sub_20D7F598C()
{
  result = qword_281126FE8;
  if (!qword_281126FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BB0, &qword_20D977D40);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FE8);
  }

  return result;
}

unint64_t sub_20D7F5A44()
{
  result = qword_27C838F80;
  if (!qword_27C838F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F70, &qword_20D9778F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D18, &qword_20D9775B0);
    sub_20D7F021C();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838F80);
  }

  return result;
}

uint64_t sub_20D7F5B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t InlineEducationTip.init(hideTipFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_20D9744B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for InlineEducationTip(0);
  v11 = a3 + *(v10 + 20);
  v15[15] = 1;
  sub_20D974A38();
  v12 = v17;
  *v11 = v16;
  *(v11 + 1) = v12;
  v13 = (a3 + *(v10 + 24));
  v16 = 0x3FF0000000000000;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A68], v6);
  sub_20D7E6420();
  result = sub_20D973B68();
  *v13 = a1;
  v13[1] = a2;
  return result;
}

uint64_t InlineEducationTip.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA8, &qword_20D977968);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FB0, &qword_20D977970);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FB8, &qword_20D977978);
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v32 - v9;
  v11 = (v1 + *(type metadata accessor for InlineEducationTip(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v35) = v12;
  *(&v35 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v14 = 1;
  if (LOBYTE(v34) == 1)
  {
    sub_20D7F62C0(v4);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC8, &qword_20D977988) + 36)] = 256;
    v15 = sub_20D974318();
    v16 = &v4[*(v2 + 36)];
    *v16 = v15;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    v16[40] = 1;
    sub_20D974C48();
    sub_20D973E08();
    sub_20D7EAF18(v4, v7, &qword_27C838FA8, &qword_20D977968);
    v17 = &v7[*(v5 + 36)];
    v18 = v40;
    *(v17 + 4) = v39;
    *(v17 + 5) = v18;
    *(v17 + 6) = v41;
    v19 = v36;
    *v17 = v35;
    *(v17 + 1) = v19;
    v20 = v38;
    *(v17 + 2) = v37;
    *(v17 + 3) = v20;
    v21 = sub_20D974C48();
    v23 = v22;
    v24 = &v10[*(v32 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
    v25 = v34 * 24.0;
    v26 = *(sub_20D973DE8() + 20);
    v27 = *MEMORY[0x277CE0118];
    v28 = sub_20D974118();
    (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
    *v24 = v25;
    v24[1] = v25;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
    sub_20D974C08();
    *(v24 + *(v29 + 56)) = 256;
    v30 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
    *v30 = v21;
    v30[1] = v23;
    sub_20D7EAF18(v7, v10, &qword_27C838FB0, &qword_20D977970);
    sub_20D7EAF18(v10, v33, &qword_27C838FB8, &qword_20D977978);
    v14 = 0;
  }

  return (*(v8 + 56))(v33, v14, 1, v32);
}

uint64_t sub_20D7F62C0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839010, &qword_20D977A48);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = (&v57 - v5);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839018, &qword_20D977A50);
  v6 = MEMORY[0x28223BE20](v58);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839000, &qword_20D977A38);
  MEMORY[0x28223BE20](v63);
  v10 = &v57 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839020, &qword_20D977A58);
  MEMORY[0x28223BE20](v64);
  v12 = &v57 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FF8, &qword_20D977A30);
  MEMORY[0x28223BE20](v65);
  v14 = &v57 - v13;
  v15 = sub_20D973D58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  sub_20D7F5B3C(v18);
  v20 = sub_20D973D38();
  v21 = *(v16 + 8);
  v21(v18, v15);
  if (v20)
  {
    *v14 = sub_20D974168();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839048, &unk_20D977A80);
    sub_20D7F771C(v19, &v14[*(v22 + 44)]);
    v23 = &qword_27C838FF8;
    v24 = &qword_20D977A30;
    sub_20D7EB7E8(v14, v12, &qword_27C838FF8, &qword_20D977A30);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30, MEMORY[0x277CE1198]);
    sub_20D7F88D0();
    sub_20D9741B8();
    v25 = v14;
  }

  else
  {
    v57 = v12;
    *v10 = sub_20D974078();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839028, &qword_20D977A60) + 44)];
    if (qword_281126F20 != -1)
    {
      swift_once();
    }

    v27 = qword_28112ABF0;
    (*(v16 + 104))(v18, *MEMORY[0x277CDF9D8], v15);
    v28 = v59;
    sub_20D965890(v18, v27, v59);
    v21(v18, v15);
    v29 = sub_20D974348();
    sub_20D973AD8();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839030, &qword_20D977A68) + 36);
    *v38 = v29;
    *(v38 + 8) = v31;
    *(v38 + 16) = v33;
    *(v38 + 24) = v35;
    *(v38 + 32) = v37;
    *(v38 + 40) = 0;
    v39 = sub_20D974368();
    sub_20D973AD8();
    v40 = v28 + *(v58 + 36);
    *v40 = v39;
    *(v40 + 8) = v41;
    *(v40 + 16) = v42;
    *(v40 + 24) = v43;
    *(v40 + 32) = v44;
    *(v40 + 40) = 0;
    v45 = sub_20D974168();
    v46 = v61;
    *v61 = v45;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839038, &qword_20D977A70);
    sub_20D7F7D88(v46 + *(v47 + 44));
    v48 = v60;
    sub_20D7EB7E8(v28, v60, &qword_27C839018, &qword_20D977A50);
    v49 = v62;
    sub_20D7EB7E8(v46, v62, &qword_27C839010, &qword_20D977A48);
    sub_20D7EB7E8(v48, v26, &qword_27C839018, &qword_20D977A50);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839040, &qword_20D977A78);
    sub_20D7EB7E8(v49, v26 + *(v50 + 48), &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v46, &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v28, &qword_27C839018, &qword_20D977A50);
    sub_20D7E3944(v49, &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v48, &qword_27C839018, &qword_20D977A50);
    LOBYTE(v49) = sub_20D974328();
    sub_20D973AD8();
    v51 = &v10[*(v63 + 36)];
    *v51 = v49;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    v23 = &qword_27C839000;
    v24 = &qword_20D977A38;
    sub_20D7EB7E8(v10, v57, &qword_27C839000, &qword_20D977A38);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30, MEMORY[0x277CE1198]);
    sub_20D7F88D0();
    sub_20D9741B8();
    v25 = v10;
  }

  return sub_20D7E3944(v25, v23, v24);
}

uint64_t sub_20D7F6974@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - v3;
  v5 = type metadata accessor for InlineEducationTip(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839088, &qword_20D977AC8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839090, &qword_20D977AD0);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v31 = &v30 - v12;
  sub_20D7F8988(v1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_20D7F89EC(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_20D974A88();
  v15 = sub_20D974258();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839098, &qword_20D977AD8) + 36)] = v15;
  v16 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v18 = v8;
  v19 = &v10[*(v8 + 36)];
  *v19 = KeyPath;
  v19[1] = v16;
  v20 = *MEMORY[0x277CDFA10];
  v21 = sub_20D973D58();
  (*(*(v21 - 8) + 104))(v4, v20, v21);
  sub_20D7F8AB0();
  v22 = v4;
  result = sub_20D974FD8();
  if (result)
  {
    v24 = sub_20D7F8B08();
    v25 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v26 = v2;
    v28 = v31;
    v27 = v32;
    v29 = v25;
    sub_20D974778();
    sub_20D7E3944(v22, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v10, &qword_27C839088, &qword_20D977AC8);
    v34 = v18;
    v35 = v26;
    v36 = v24;
    v37 = v29;
    swift_getOpaqueTypeConformance2();
    sub_20D9747D8();
    return (*(v27 + 8))(v28, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D7F6D94(uint64_t a1)
{
  v2 = type metadata accessor for InlineEducationTip(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  __swift_project_value_buffer(v5, qword_2811270E0);
  v6 = sub_20D9734D8();
  v7 = sub_20D975448();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20D7C9000, v6, v7, "Tapped X button in education tip", v8, 2u);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v9 = (a1 + *(v2 + 20));
  v11 = *(v9 + 1);
  v26 = *v9;
  v10 = v26;
  v27 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v24 = v10;
  v25 = v11;
  v23[7] = (v28 & 1) == 0;
  sub_20D974A58();

  v13 = a1 + *(v2 + 24);
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);
    sub_20D7F8988(a1, v4);

    v16 = sub_20D9734D8();
    v17 = sub_20D975478();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      v19 = &v4[*(v2 + 20)];
      v20 = *v19;
      v21 = *(v19 + 1);
      v26 = v20;
      v27 = v21;
      sub_20D974A48();
      v22 = v24;
      sub_20D7F8CA4(v4);
      *(v18 + 4) = v22;
      _os_log_impl(&dword_20D7C9000, v16, v17, "Education tip has function to hide. Should be shown -> %{BOOL}d", v18, 8u);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    else
    {
      sub_20D7F8CA4(v4);
    }

    v14();
    return sub_20D7DD774(v14, v15);
  }

  return result;
}

uint64_t sub_20D7F7050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D9749B8();
  *a1 = result;
  return result;
}

uint64_t sub_20D7F7088@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_20D974458();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v41 = sub_20D971FF8();
  v42 = v5;
  sub_20D7E1EF8();
  v6 = sub_20D9745C8();
  v8 = v7;
  v10 = v9;
  sub_20D974388();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v2 + 8))(v4, v1);
  v11 = sub_20D974558();
  v13 = v12;
  v15 = v14;

  sub_20D7EADC0(v6, v8, v10 & 1);

  v16 = sub_20D974548();
  v18 = v17;
  LOBYTE(v6) = v19;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v20 = [objc_opt_self() labelColor];
  v41 = sub_20D974888();
  v21 = sub_20D974518();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_20D7EADC0(v16, v18, v6 & 1);

  v41 = v21;
  v42 = v23;
  v43 = v25 & 1;
  v44 = v27;
  v28 = v40;
  sub_20D9747D8();
  sub_20D7EADC0(v21, v23, v25 & 1);

  v29 = sub_20D974338();
  sub_20D973AD8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v39 = v28 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_20D7F7420()
{
  v0 = sub_20D974458();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v24 = sub_20D971FF8();
  v25 = v4;
  sub_20D7E1EF8();
  v5 = sub_20D9745C8();
  v7 = v6;
  v9 = v8;
  sub_20D974388();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_20D974478();

  (*(v1 + 8))(v3, v0);
  v10 = sub_20D974558();
  v12 = v11;
  v14 = v13;

  sub_20D7EADC0(v5, v7, v9 & 1);

  v15 = [objc_opt_self() secondaryLabelColor];
  v24 = sub_20D974888();
  v16 = sub_20D974518();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20D7EADC0(v10, v12, v14 & 1);

  v24 = v16;
  v25 = v18;
  v26 = v20 & 1;
  v27 = v22;
  sub_20D9747D8();
  sub_20D7EADC0(v16, v18, v20 & 1);
}

uint64_t sub_20D7F771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839058, &qword_20D977A98);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  *v20 = sub_20D974078();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839060, &qword_20D977AA0);
  sub_20D7F7A44(v25, &v20[*(v21 + 44)]);
  sub_20D7F7088(v14);
  sub_20D7F7420();
  sub_20D7EB7E8(v20, v18, &qword_27C839058, &qword_20D977A98);
  sub_20D7EB7E8(v14, v12, &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v8, v6, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v18, a2, &qword_27C839058, &qword_20D977A98);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839068, &qword_20D977AA8);
  sub_20D7EB7E8(v12, a2 + *(v22 + 48), &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v6, a2 + *(v22 + 64), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v14, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v20, &qword_27C839058, &qword_20D977A98);
  sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v12, &qword_27C839050, &qword_20D977A90);
  return sub_20D7E3944(v18, &qword_27C839058, &qword_20D977A98);
}

uint64_t sub_20D7F7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839070, &qword_20D977AB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = sub_20D973D58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839030, &qword_20D977A68);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - v17;
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  v19 = qword_28112ABF0;
  (*(v10 + 104))(v12, *MEMORY[0x277CDFA10], v9);
  sub_20D965890(v12, v19, v18);
  (*(v10 + 8))(v12, v9);
  v20 = sub_20D974338();
  sub_20D973AD8();
  v21 = &v18[*(v13 + 36)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_20D7F6974(v8);
  sub_20D7EB7E8(v18, v16, &qword_27C839030, &qword_20D977A68);
  sub_20D7EB7E8(v8, v6, &qword_27C839070, &qword_20D977AB0);
  sub_20D7EB7E8(v16, a2, &qword_27C839030, &qword_20D977A68);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839078, &qword_20D977AB8);
  v27 = a2 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_20D7EB7E8(v6, a2 + *(v26 + 64), &qword_27C839070, &qword_20D977AB0);
  sub_20D7E3944(v8, &qword_27C839070, &qword_20D977AB0);
  sub_20D7E3944(v18, &qword_27C839030, &qword_20D977A68);
  sub_20D7E3944(v6, &qword_27C839070, &qword_20D977AB0);
  return sub_20D7E3944(v16, &qword_27C839030, &qword_20D977A68);
}

uint64_t sub_20D7F7D88@<X0>(uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390A8, &qword_20D977B18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  *v16 = sub_20D974078();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390B0, &qword_20D977B20);
  sub_20D7F7FBC(&v16[*(v17 + 44)]);
  sub_20D7F7420();
  sub_20D7EB7E8(v16, v14, &qword_27C8390A8, &qword_20D977B18);
  sub_20D7EB7E8(v10, v8, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v14, a2, &qword_27C8390A8, &qword_20D977B18);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390B8, &qword_20D977B28);
  sub_20D7EB7E8(v8, a2 + *(v18 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v10, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v16, &qword_27C8390A8, &qword_20D977B18);
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v14, &qword_27C8390A8, &qword_20D977B18);
}

uint64_t sub_20D7F7FBC@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390C0, &qword_20D977B30);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_20D7F7088(&v36 - v15);
  sub_20D7F6974(v10);
  v17 = sub_20D974328();
  sub_20D973AD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390C8, &qword_20D977B38) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_20D974368();
  sub_20D973AD8();
  v28 = &v10[*(v5 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_20D7EB7E8(v16, v14, &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v10, v8, &qword_27C8390C0, &qword_20D977B30);
  sub_20D7EB7E8(v14, a1, &qword_27C839050, &qword_20D977A90);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D0, &unk_20D977B40);
  v34 = a1 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_20D7EB7E8(v8, a1 + *(v33 + 64), &qword_27C8390C0, &qword_20D977B30);
  sub_20D7E3944(v10, &qword_27C8390C0, &qword_20D977B30);
  sub_20D7E3944(v16, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v8, &qword_27C8390C0, &qword_20D977B30);
  return sub_20D7E3944(v14, &qword_27C839050, &qword_20D977A90);
}

uint64_t sub_20D7F8284(uint64_t a1)
{
  v2 = sub_20D973D58();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E78();
}

uint64_t type metadata accessor for InlineEducationTip(uint64_t a1)
{
  result = qword_2811269D8;
  if (!qword_2811269D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D7F83DC(uint64_t a1)
{
  sub_20D7F8490(319);
  if (v1 <= 0x3F)
  {
    sub_20D7F84E8();
    if (v2 <= 0x3F)
    {
      sub_20D7E6360(319);
      if (v3 <= 0x3F)
      {
        sub_20D7E63C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7F8490(uint64_t a1)
{
  if (!qword_281127050)
  {
    sub_20D973D58();
    v1 = sub_20D973B28();
    if (!v2)
    {
      atomic_store(v1, &qword_281127050);
    }
  }
}

void sub_20D7F84E8()
{
  if (!qword_281124D80)
  {
    v0 = sub_20D974A78();
    if (!v1)
    {
      atomic_store(v0, &qword_281124D80);
    }
  }
}

unint64_t sub_20D7F8538()
{
  result = qword_281124E68;
  if (!qword_281124E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FE8, &qword_20D977A20);
    sub_20D7F85BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E68);
  }

  return result;
}

unint64_t sub_20D7F85BC()
{
  result = qword_281124E70;
  if (!qword_281124E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FB8, &qword_20D977978);
    sub_20D7F8674();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E70);
  }

  return result;
}

unint64_t sub_20D7F8674()
{
  result = qword_281124EB8;
  if (!qword_281124EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FB0, &qword_20D977970);
    sub_20D7F8700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EB8);
  }

  return result;
}

unint64_t sub_20D7F8700()
{
  result = qword_281124F18;
  if (!qword_281124F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FA8, &qword_20D977968);
    sub_20D7F878C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F18);
  }

  return result;
}

unint64_t sub_20D7F878C()
{
  result = qword_281124FC0;
  if (!qword_281124FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FC8, &qword_20D977988);
    sub_20D7F8818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FC0);
  }

  return result;
}

unint64_t sub_20D7F8818()
{
  result = qword_281124E08;
  if (!qword_281124E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FF0, &qword_20D977A28);
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30, MEMORY[0x277CE1198]);
    sub_20D7F88D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E08);
  }

  return result;
}

unint64_t sub_20D7F88D0()
{
  result = qword_281124F50;
  if (!qword_281124F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839000, &qword_20D977A38);
    sub_20D7EBC4C(&qword_281124D60, &qword_27C839008, &qword_20D977A40, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F50);
  }

  return result;
}

uint64_t sub_20D7F8988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineEducationTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7F89EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineEducationTip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7F8A50()
{
  v1 = *(type metadata accessor for InlineEducationTip(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7F6D94(v2);
}

unint64_t sub_20D7F8AB0()
{
  result = qword_281127030;
  if (!qword_281127030)
  {
    sub_20D973D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127030);
  }

  return result;
}

unint64_t sub_20D7F8B08()
{
  result = qword_281124ED0;
  if (!qword_281124ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839088, &qword_20D977AC8);
    sub_20D7F8BC0();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124ED0);
  }

  return result;
}

unint64_t sub_20D7F8BC0()
{
  result = qword_281124F58;
  if (!qword_281124F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839098, &qword_20D977AD8);
    sub_20D7EBC4C(&qword_281124D78, &qword_27C8390A0, &qword_20D977B10, MEMORY[0x277CDF028]);
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F58);
  }

  return result;
}

uint64_t sub_20D7F8CA4(uint64_t a1)
{
  v2 = type metadata accessor for InlineEducationTip(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7F8D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *GridForecastIndicator.init(location:homeID:analyticsFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for GridForecastIndicator(0);
  v13 = v12[5];
  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  v14 = (a6 + v13);
  type metadata accessor for GridForecastSnapshotManager(0);

  result = sub_20D974A38();
  *v14 = v18;
  v14[1] = v19;
  v16 = (a6 + v12[6]);
  *(a6 + v12[7]) = a1;
  v17 = (a6 + v12[8]);
  *v17 = a2;
  v17[1] = a3;
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t GridForecastIndicator.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GridForecastIndicator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_20D974288();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_20D974278();
  sub_20D7FC65C(v1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastIndicator);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_20D7FC888(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for GridForecastIndicator);
  (*(v6 + 16))(v9, v11, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20D7FB830;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88);
  sub_20D7FC840(&qword_281124DD0, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_20D7FB860();
  sub_20D973BA8();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_20D7F92D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v3 = type metadata accessor for GridForecastIndicator(0);
  v4 = v3 - 8;
  v54 = *(v3 - 8);
  v5 = *(v54 + 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839100, &unk_20D977BB0);
  MEMORY[0x28223BE20](v56);
  v7 = &v48 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390F8, &qword_20D977BA8);
  MEMORY[0x28223BE20](v55);
  v9 = &v48 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *(v4 + 28));
  v19 = *v17;
  v18 = v17[1];
  v61 = v19;
  v62 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
  sub_20D974A48();
  v20 = v59;
  swift_getKeyPath();
  v61 = v20;
  sub_20D7FC840(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v21 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D7FC65C(v20 + v21, v16, type metadata accessor for GridForecastSnapshot);

  sub_20D9725C8();
  v22 = GridForecastSnapshot.updateEnergyIndicatorStatus(referenceTime:)();
  v51 = v22;
  v24 = v23;
  v26 = v25;
  v53 = v25;
  (*(v11 + 8))(v13, v10);
  sub_20D7FC960(v16, type metadata accessor for GridForecastSnapshot);
  *v7 = sub_20D974088();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839188, &qword_20D977E40) + 44)];
  v28 = v58;
  v50 = v24;
  sub_20D7F9998(v58, v22, v24, v26, v27);
  v59 = v22;
  v60 = v24;
  v49 = type metadata accessor for GridForecastIndicator;
  v29 = v52;
  sub_20D7FC65C(v28, v52, type metadata accessor for GridForecastIndicator);
  v30 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v31 = swift_allocObject();
  v54 = type metadata accessor for GridForecastIndicator;
  sub_20D7FC888(v29, v31 + v30, type metadata accessor for GridForecastIndicator);
  sub_20D7EBC4C(&qword_281124D70, &qword_27C839100, &unk_20D977BB0, MEMORY[0x277CE1138]);
  sub_20D974858();

  sub_20D7E3944(v7, &qword_27C839100, &unk_20D977BB0);
  *&v9[*(v55 + 36)] = sub_20D974248();
  sub_20D7FBAB8();
  v32 = v57;
  sub_20D9747D8();
  sub_20D7CCCE0(v9);
  KeyPath = swift_getKeyPath();
  v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390E8, &qword_20D977B98) + 36));
  v35 = v32;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839108, &qword_20D977BC0) + 28);
  v37 = *MEMORY[0x277CDF3C0];
  v38 = sub_20D973B18();
  (*(*(v38 - 8) + 104))(v34 + v36, v37, v38);
  *v34 = KeyPath;
  v39 = swift_getKeyPath();
  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390E0, &qword_20D977B90) + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839110, &qword_20D977BC8) + 28);
  sub_20D974C08();
  v42 = sub_20D974C18();
  (*(*(v42 - 8) + 56))(v40 + v41, 0, 1, v42);
  *v40 = v39;
  sub_20D7FC65C(v58, v29, v49);
  v43 = swift_allocObject();
  sub_20D7FC888(v29, v43 + v30, v54);
  v44 = (v43 + ((v30 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v45 = v50;
  *v44 = v51;
  v44[1] = v45;
  v44[2] = v53;
  v46 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88) + 36));
  sub_20D973CB8();
  result = sub_20D9752F8();
  *v46 = &unk_20D977EB0;
  v46[1] = v43;
  return result;
}

uint64_t sub_20D7F9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a4;
  v106 = a3;
  v100 = a2;
  v105 = a5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391A0, &qword_20D977EC8);
  MEMORY[0x28223BE20](v104);
  v97 = &v86[-v6];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391A8, &qword_20D977ED0);
  MEMORY[0x28223BE20](v101);
  v103 = &v86[-v7];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B0, &qword_20D977ED8);
  MEMORY[0x28223BE20](v102);
  v94 = &v86[-v8];
  v9 = sub_20D9749F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v93 = &v86[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for IconView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v89 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86[-v16];
  MEMORY[0x28223BE20](v15);
  v92 = &v86[-v18];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B8, &qword_20D977EE0);
  v19 = MEMORY[0x28223BE20](v91);
  v95 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v86[-v22];
  MEMORY[0x28223BE20](v21);
  v98 = &v86[-v23];
  v24 = sub_20D973D58();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v86[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v30 = &v86[-v29];
  v96 = a1;
  sub_20D7F8D00(&v86[-v29]);
  (*(v25 + 104))(v28, *MEMORY[0x277CDF988], v24);
  sub_20D7FC840(&qword_281127038, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  LOBYTE(a1) = sub_20D974FA8();
  v31 = *(v25 + 8);
  v31(v28, v24);
  v31(v30, v24);
  if (a1)
  {
    (*(v10 + 104))(v17 + *(v12 + 5), *MEMORY[0x277CE1050], v9);
    *v17 = v99;

    v32 = sub_20D974168();
    v33 = qword_281126E98;

    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_20D971FF8();
    v37 = v36;
    v38 = v89;
    sub_20D7FC65C(v17, v89, type metadata accessor for IconView);
    v39 = v97;
    sub_20D7FC65C(v38, v97, type metadata accessor for IconView);
    v40 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391D0, &qword_20D977EF8) + 48)];
    v41 = v100;
    *v40 = v32;
    v40[1] = v41;
    v40[2] = v34;
    v40[3] = v35;
    v40[4] = v37;
    sub_20D7FC960(v38, type metadata accessor for IconView);
    sub_20D7EB7E8(v39, v103, &qword_27C8391A0, &qword_20D977EC8);
    swift_storeEnumTagMultiPayload();
    v42 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CF0, &qword_27C8391B0, &qword_20D977ED8, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CF8, &qword_27C8391A0, &qword_20D977EC8, v42);
    sub_20D9741B8();
    sub_20D7E3944(v39, &qword_27C8391A0, &qword_20D977EC8);
    return sub_20D7FC960(v17, type metadata accessor for IconView);
  }

  else
  {
    v97 = v12;
    v44 = v9;
    v89 = sub_20D974178();
    v45 = qword_281126E98;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = sub_20D971FF8();
    v88 = v47;
    v87 = sub_20D974328();
    sub_20D973AD8();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    LOBYTE(v113[0]) = 0;
    sub_20D7F8D00(v30);
    v56 = sub_20D973D38();
    v31(v30, v24);
    v57 = MEMORY[0x277CE1050];
    if ((v56 & 1) == 0)
    {
      v57 = MEMORY[0x277CE1058];
    }

    v58 = v93;
    (*(v10 + 104))(v93, *v57, v44);
    v59 = v92;
    *v92 = v99;
    (*(v10 + 32))(v59 + *(v97 + 5), v58, v44);

    v60 = sub_20D974328();
    sub_20D973AD8();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v90;
    sub_20D7FC888(v59, v90, type metadata accessor for IconView);
    v70 = &v69[*(v91 + 36)];
    *v70 = v60;
    *(v70 + 1) = v62;
    *(v70 + 2) = v64;
    *(v70 + 3) = v66;
    *(v70 + 4) = v68;
    v70[40] = 0;
    v71 = v69;
    v72 = v98;
    sub_20D7FC8F0(v71, v98);
    v73 = v95;
    sub_20D7EB7E8(v72, v95, &qword_27C8391B8, &qword_20D977EE0);
    v74 = v89;
    *&v107 = v89;
    v75 = v100;
    *(&v107 + 1) = v100;
    v76 = v106;
    *&v108 = v106;
    *(&v108 + 1) = v46;
    v77 = v88;
    *&v109 = v88;
    v78 = v87;
    BYTE8(v109) = v87;
    HIDWORD(v109) = *&v121[3];
    *(&v109 + 9) = *v121;
    *&v110 = v49;
    *(&v110 + 1) = v51;
    *&v111 = v53;
    *(&v111 + 1) = v55;
    v112 = 0;
    v79 = v108;
    v80 = v94;
    *v94 = v107;
    *(v80 + 16) = v79;
    v81 = v109;
    v82 = v110;
    v83 = v111;
    *(v80 + 80) = 0;
    *(v80 + 48) = v82;
    *(v80 + 64) = v83;
    *(v80 + 32) = v81;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391C0, &qword_20D977EE8);
    sub_20D7EB7E8(v73, v80 + *(v84 + 48), &qword_27C8391B8, &qword_20D977EE0);
    sub_20D7EB7E8(&v107, v113, &qword_27C8391C8, &qword_20D977EF0);
    sub_20D7E3944(v73, &qword_27C8391B8, &qword_20D977EE0);
    v113[0] = v74;
    v113[1] = v75;
    v113[2] = v76;
    v113[3] = v46;
    v113[4] = v77;
    v114 = v78;
    *v115 = *v121;
    *&v115[3] = *&v121[3];
    v116 = v49;
    v117 = v51;
    v118 = v53;
    v119 = v55;
    v120 = 0;
    sub_20D7E3944(v113, &qword_27C8391C8, &qword_20D977EF0);
    sub_20D7EB7E8(v80, v103, &qword_27C8391B0, &qword_20D977ED8);
    swift_storeEnumTagMultiPayload();
    v85 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CF0, &qword_27C8391B0, &qword_20D977ED8, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CF8, &qword_27C8391A0, &qword_20D977EC8, v85);
    sub_20D9741B8();
    sub_20D7E3944(v80, &qword_27C8391B0, &qword_20D977ED8);
    return sub_20D7E3944(v98, &qword_27C8391B8, &qword_20D977EE0);
  }
}

uint64_t sub_20D7FA544(uint64_t a1)
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC18);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D7C9000, v2, v3, "Updating pill via notification from GridForecastIndicator", v4, 2u);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  type metadata accessor for GridForecastIndicator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
  sub_20D974A48();
  sub_20D84B418();
}

uint64_t sub_20D7FA670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839198, &qword_20D977EC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v5 - v3, &qword_27C839198, &qword_20D977EC0);
  return sub_20D973EC8();
}

uint64_t sub_20D7FA718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  v3[36] = type metadata accessor for GridForecastSnapshot(0);
  v3[37] = swift_task_alloc();
  sub_20D9752E8();
  v3[38] = sub_20D9752D8();
  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D7FA7E4, v5, v4);
}

uint64_t sub_20D7FA7E4()
{
  v1 = *(v0 + 264);

  v2 = type metadata accessor for GridForecastIndicator(0);
  v3 = v1 + *(v2 + 24);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = (*(v0 + 264) + *(v2 + 20));
    v12 = *v10;
    v11 = v10[1];
    *(v0 + 232) = v12;
    *(v0 + 240) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
    sub_20D974A48();
    v13 = *(v0 + 248);
    swift_getKeyPath();
    *(v0 + 256) = v13;
    sub_20D7FC840(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v14 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D7FC65C(v13 + v14, v6, type metadata accessor for GridForecastSnapshot);

    v15 = (v6 + *(v7 + 24));
    v16 = MEMORY[0x277D837D0];
    v17 = *v15;
    v18 = v15[1];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v17;
    *(v0 + 24) = v18;
    sub_20D7E39A4((v0 + 16), (v0 + 48));

    v19 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 80) = v9;
    *(v0 + 104) = v16;
    *(v0 + 88) = v8;
    sub_20D7E39A4((v0 + 80), (v0 + 112));

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 112), 0x6554656369766461, 0xEA00000000007478, v21);
    v22 = sub_20D9729C8();
    if (v22)
    {
      v23 = _s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(v22);

      *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839190, &qword_20D977EB8);
      *(v0 + 144) = v23;
      sub_20D7E39A4((v0 + 144), (v0 + 176));
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5160((v0 + 176), 0x6957796772656E65, 0xED000073776F646ELL, v24);
    }

    v25 = *(v0 + 296);
    v4(v19);
    sub_20D7DD774(v4, v5);

    sub_20D7FC960(v25, type metadata accessor for GridForecastSnapshot);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20D7FAB20(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D974288();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_20D974278();
  sub_20D7FC65C(v2, v5, type metadata accessor for GridForecastIndicator);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_20D7FC888(v5, v14 + v13, type metadata accessor for GridForecastIndicator);
  (*(v7 + 16))(v10, v12, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20D7FCB34;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88);
  sub_20D7FC840(&qword_281124DD0, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_20D7FB860();
  sub_20D973BA8();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20D7FADC0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  MEMORY[0x28223BE20](v2);
  v4 = (&v38 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839128, &qword_20D977D48);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839130, &qword_20D977D50);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839138, &qword_20D977D58);
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839140, &qword_20D977D60);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = *v1;
  v43 = v14;
  if (v17)
  {
    v38 = v1;

    v39 = sub_20D974428();
    KeyPath = swift_getKeyPath();
    v19 = *(type metadata accessor for IconView(0) + 20);
    v20 = swift_getKeyPath();
    v21 = v9;
    v22 = (v12 + *(v10 + 36));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40);
    v40 = v5;
    v24 = *(v23 + 28);
    v25 = sub_20D9749F8();
    (*(*(v25 - 8) + 16))(v22 + v24, &v38[v19], v25);
    *v22 = v20;
    *v12 = v17;
    v12[1] = KeyPath;
    v12[2] = v39;
    sub_20D7FC304();

    sub_20D9747B8();
    sub_20D7E3944(v12, &qword_27C839138, &qword_20D977D58);
    sub_20D7EB7E8(v16, v21, &qword_27C839140, &qword_20D977D60);
    swift_storeEnumTagMultiPayload();
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    sub_20D9741B8();

    v26 = v16;
    v27 = &qword_27C839140;
    v28 = &qword_20D977D60;
  }

  else
  {
    v29 = v1;
    v40 = v9;
    v30 = v5;
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v31 = qword_28112AB68;
    v32 = *(type metadata accessor for IconView(0) + 20);
    v33 = swift_getKeyPath();
    v34 = (v4 + *(v2 + 36));
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v36 = sub_20D9749F8();
    (*(*(v36 - 8) + 16))(v34 + v35, &v29[v32], v36);
    *v34 = v33;
    *v4 = v31;
    sub_20D7F598C();

    sub_20D9747B8();
    sub_20D7E3944(v4, &qword_27C838BB0, &qword_20D977D40);
    *&v7[*(v30 + 36)] = 0;
    sub_20D7EB7E8(v7, v40, &qword_27C839128, &qword_20D977D48);
    swift_storeEnumTagMultiPayload();
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    sub_20D9741B8();
    v26 = v7;
    v27 = &qword_27C839128;
    v28 = &qword_20D977D48;
  }

  return sub_20D7E3944(v26, v27, v28);
}

uint64_t sub_20D7FB2EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v57 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - v10;
  v11 = a1[4];
  v64 = a1[3];
  v65 = v11;
  v59 = sub_20D7E1EF8();

  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  sub_20D974488();
  v17 = sub_20D974558();
  v19 = v18;
  v21 = v20;

  sub_20D7EADC0(v12, v14, v16 & 1);

  sub_20D9743D8();
  v22 = sub_20D9744F8();
  v24 = v23;
  v26 = v25;
  sub_20D7EADC0(v17, v19, v21 & 1);

  LODWORD(v64) = sub_20D974248();
  v27 = sub_20D974518();
  v29 = v28;
  LOBYTE(v19) = v30;
  v32 = v31;
  sub_20D7EADC0(v22, v24, v26 & 1);

  v64 = v27;
  v65 = v29;
  v66 = v19 & 1;
  v67 = v32;
  v33 = v58;
  sub_20D9747D8();
  sub_20D7EADC0(v27, v29, v19 & 1);

  v34 = a1[2];
  v64 = a1[1];
  v65 = v34;

  v35 = sub_20D9745C8();
  v37 = v36;
  v39 = v38;
  sub_20D974488();
  v40 = sub_20D974558();
  v42 = v41;
  LOBYTE(a1) = v43;

  sub_20D7EADC0(v35, v37, v39 & 1);

  LODWORD(v64) = sub_20D974248();
  v44 = sub_20D974518();
  v46 = v45;
  LOBYTE(v37) = v47;
  v49 = v48;
  sub_20D7EADC0(v40, v42, a1 & 1);

  v64 = v44;
  v65 = v46;
  v66 = v37 & 1;
  v67 = v49;
  v50 = v60;
  sub_20D9747D8();
  sub_20D7EADC0(v44, v46, v37 & 1);

  v51 = v33;
  v52 = v61;
  sub_20D7EB7E8(v33, v61, &qword_27C838F18, &unk_20D977860);
  v53 = v62;
  sub_20D7EB7E8(v50, v62, &qword_27C838F18, &unk_20D977860);
  v54 = v63;
  sub_20D7EB7E8(v52, v63, &qword_27C838F18, &unk_20D977860);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v53, v54 + *(v55 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v50, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v51, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v53, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v52, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FB784@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_20D974178();
  *(a2 + 8) = 0x3FE0000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  sub_20D7FB2EC(v7, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839158, &unk_20D977DE0);
  *(a2 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_20D7FB860()
{
  result = qword_281124E50;
  if (!qword_281124E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390D8, &qword_20D977B88);
    sub_20D7FB91C();
    sub_20D7FC840(&qword_281124FD0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E50);
  }

  return result;
}

unint64_t sub_20D7FB91C()
{
  result = qword_281124E60;
  if (!qword_281124E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390E0, &qword_20D977B90);
    sub_20D7FB9D4();
    sub_20D7EBC4C(&qword_281124DB0, &qword_27C839110, &qword_20D977BC8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E60);
  }

  return result;
}

unint64_t sub_20D7FB9D4()
{
  result = qword_281124EA0;
  if (!qword_281124EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390E8, &qword_20D977B98);
    sub_20D7FC250(&qword_281124EF0, &qword_27C8390F0, &qword_20D977BA0, sub_20D7FBAB8);
    sub_20D7EBC4C(&qword_281124DC0, &qword_27C839108, &qword_20D977BC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EA0);
  }

  return result;
}

unint64_t sub_20D7FBAB8()
{
  result = qword_281124F78;
  if (!qword_281124F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390F8, &qword_20D977BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839100, &unk_20D977BB0);
    sub_20D7EBC4C(&qword_281124D70, &qword_27C839100, &unk_20D977BB0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F78);
  }

  return result;
}

void sub_20D7FBC38(uint64_t a1)
{
  sub_20D7FBDA4(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20D7FBDA4(319, &qword_27C839118, type metadata accessor for GridForecastSnapshotManager, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_20D7E6360(319);
      if (v3 <= 0x3F)
      {
        sub_20D7FBDA4(319, &qword_281126EA0, sub_20D7FBE08, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20D7FBFB4(319, &qword_281124C28, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D7FBDA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D7FBE08()
{
  result = qword_281126EB0;
  if (!qword_281126EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281126EB0);
  }

  return result;
}

unint64_t sub_20D7FBE54()
{
  result = qword_281124FE0;
  if (!qword_281124FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839120, &qword_20D977C50);
    sub_20D7FB860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FE0);
  }

  return result;
}

void sub_20D7FBF20(uint64_t a1)
{
  sub_20D7FBFB4(319, &qword_281126F10, MEMORY[0x277CE1088]);
  if (v1 <= 0x3F)
  {
    sub_20D9749F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20D7FBFB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20D975508();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
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

uint64_t sub_20D7FC014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D7FC05C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_20D7FC100(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839168, &qword_20D978440);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(v14 - 8);
  result = v14 - 8;
  if (*(v16 + 64) == v11)
  {
    (*(v10 + 16))(v13, a1, v9);
    a2(v13);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D7FC250(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7FC840(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7FC304()
{
  result = qword_281124EE0;
  if (!qword_281124EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839138, &qword_20D977D58);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EE0);
  }

  return result;
}

unint64_t sub_20D7FC3BC()
{
  result = qword_281124E80;
  if (!qword_281124E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839128, &qword_20D977D48);
    sub_20D7FC250(&qword_281124ED8, &qword_27C839148, &qword_20D977DA0, sub_20D7F598C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E80);
  }

  return result;
}

uint64_t objectdestroyTm_0()
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

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7FC5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20D7F92D0(v4, a1);
}

uint64_t sub_20D7FC65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D7FC6C4()
{
  v1 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7FA544(v2);
}

uint64_t sub_20D7FC724()
{
  v2 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20D7EB52C;

  return sub_20D7FA718(v0 + v3, v5, v6);
}

uint64_t sub_20D7FC840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D7FC888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D7FC8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B8, &qword_20D977EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7FC960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D7FC9C0()
{
  result = qword_281124E28;
  if (!qword_281124E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391D8, &unk_20D977F00);
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E28);
  }

  return result;
}

unint64_t sub_20D7FCA78()
{
  result = qword_281124F20;
  if (!qword_281124F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839158, &unk_20D977DE0);
    sub_20D7EBC4C(&qword_281124D28, &qword_27C8391E0, &unk_20D97EBD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F20);
  }

  return result;
}

uint64_t RectangularLockHistoricalUsageView.init(widgetStartDate:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D975058();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v15;
  v18 = *(v15 + 16);
  v41 = a1;
  v18(v17, a1, v14);
  sub_20D7FCF94(a2, v13);
  v19 = type metadata accessor for RectangularLockHistoricalUsageView(0);
  v20 = &a3[*(v19 + 28)];
  v21 = v13;
  v22 = a2;
  v23 = v19;
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v17, v21, v20);
  v24 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v18(a3, &v20[*(v24 + 52)], v14);
  v25 = a3;
  sub_20D7FCF94(v22, &a3[*(v23 + 20)]);
  if (*(v22 + *(v11 + 64)) == 6)
  {
    if (*(v22 + *(v11 + 44)) == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v26 = qword_28112ABE8;
      v27 = qword_28112ABE8;
      v28 = v40;
      sub_20D9726B8();
      v29 = sub_20D975108(v10, 0, 0, v26, v28, "electricity usage summary title", 31, 2);
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v34 = qword_28112ABE8;
      sub_20D9726B8();
      v29 = sub_20D9750F8();
    }
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v31 = qword_28112ABE8;
    v32 = qword_28112ABE8;
    v33 = v40;
    sub_20D9726B8();
    v29 = sub_20D975108(v10, 0, 0, v31, v33, "Rectangular Historical Usage widget title when no homes have a utility configured.", 82, 2);
  }

  v35 = v29;
  v36 = v30;
  sub_20D7FEF04(v22);
  result = (*(v39 + 8))(v41, v14);
  v38 = &v25[*(v23 + 24)];
  *v38 = v35;
  *(v38 + 1) = v36;
  return result;
}

uint64_t sub_20D7FCF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RectangularLockHistoricalUsageView(uint64_t a1)
{
  result = qword_281125248;
  if (!qword_281125248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RectangularLockHistoricalUsageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391E8, &qword_20D977F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391F0, &qword_20D977F18);
  sub_20D7FD16C(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D7FEF60();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C8391E8, &qword_20D977F10);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839200, &qword_20D977F30);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_20D7FD16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839208, &qword_20D977FB8);
  MEMORY[0x28223BE20](v72);
  v66 = &v61 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839210, &qword_20D977FC0);
  MEMORY[0x28223BE20](v67);
  v68 = &v61 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839218, &qword_20D977FC8);
  MEMORY[0x28223BE20](v71);
  v65 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839220, &qword_20D977FD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = (&v61 - v9);
  v10 = sub_20D9726E8();
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D975058();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839228, &qword_20D977FD8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v70 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v61 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v61 - v32;
  *v33 = sub_20D974088();
  *(v33 + 1) = 0;
  v33[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  sub_20D7FDA0C(a1, &v33[*(v34 + 44)]);
  v35 = a1;
  v36 = a1 + *(type metadata accessor for RectangularLockHistoricalUsageView(0) + 20);
  if (*(v36 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 64)) == 6)
  {
    *v31 = sub_20D974088();
    *(v31 + 1) = 0x4008000000000000;
    v31[16] = 0;
    sub_20D7FE064(&v31[*(v34 + 44)]);
    *v28 = sub_20D974088();
    *(v28 + 1) = 0;
    v28[16] = 1;
    sub_20D7FEAA0(v35, &v28[*(v34 + 44)]);
    sub_20D7EB7E8(v31, v25, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7EB7E8(v28, v22, &qword_27C838EC0, &unk_20D977FE0);
    v37 = v66;
    sub_20D7EB7E8(v25, v66, &qword_27C838EC0, &unk_20D977FE0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839230, &qword_20D977FF0);
    sub_20D7EB7E8(v22, v37 + *(v38 + 48), &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v22, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v25, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7EB7E8(v37, v68, &qword_27C839208, &qword_20D977FB8);
    swift_storeEnumTagMultiPayload();
    v39 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CC8, &qword_27C839218, &qword_20D977FC8, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CD8, &qword_27C839208, &qword_20D977FB8, v39);
    v40 = v69;
    sub_20D9741B8();
    sub_20D7E3944(v37, &qword_27C839208, &qword_20D977FB8);
    sub_20D7E3944(v28, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v31, &qword_27C838EC0, &unk_20D977FE0);
  }

  else
  {
    v41 = v68;
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v42 = qword_28112ABE8;
    v43 = qword_28112ABE8;
    v44 = v62;
    sub_20D9726B8();
    v45 = sub_20D975108(v14, 0, 0, v42, v44, "Rectangular Historical Usage widget text when no homes have a utility configured.", 81, 2);
    v47 = v46;
    v48 = sub_20D974088();
    v49 = v64;
    *v64 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839240, &qword_20D978000);
    sub_20D7FDC4C(v45, v47, v49 + *(v50 + 44));

    v51 = v63;
    sub_20D7EB7E8(v49, v63, &qword_27C839220, &qword_20D977FD0);
    v52 = v65;
    sub_20D7EB7E8(v51, v65, &qword_27C839220, &qword_20D977FD0);
    v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839248, &unk_20D978008) + 48);
    *v53 = 0;
    *(v53 + 8) = 1;
    sub_20D7E3944(v51, &qword_27C839220, &qword_20D977FD0);
    sub_20D7EB7E8(v52, v41, &qword_27C839218, &qword_20D977FC8);
    swift_storeEnumTagMultiPayload();
    v54 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_281124CC8, &qword_27C839218, &qword_20D977FC8, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_281124CD8, &qword_27C839208, &qword_20D977FB8, v54);
    v40 = v69;
    sub_20D9741B8();
    sub_20D7E3944(v52, &qword_27C839218, &qword_20D977FC8);
    sub_20D7E3944(v49, &qword_27C839220, &qword_20D977FD0);
  }

  sub_20D7EB7E8(v33, v31, &qword_27C838EC0, &unk_20D977FE0);
  v55 = v40;
  v56 = v40;
  v57 = v70;
  sub_20D7EB7E8(v55, v70, &qword_27C839228, &qword_20D977FD8);
  v58 = v73;
  sub_20D7EB7E8(v31, v73, &qword_27C838EC0, &unk_20D977FE0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839238, &qword_20D977FF8);
  sub_20D7EB7E8(v57, v58 + *(v59 + 48), &qword_27C839228, &qword_20D977FD8);
  sub_20D7E3944(v56, &qword_27C839228, &qword_20D977FD8);
  sub_20D7E3944(v33, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v57, &qword_27C839228, &qword_20D977FD8);
  return sub_20D7E3944(v31, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D7FDA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = (a1 + *(type metadata accessor for RectangularLockHistoricalUsageView(0) + 24));
  v10 = v9[1];
  v27 = *v9;
  v28 = v10;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  LODWORD(v27) = sub_20D974248();
  v16 = sub_20D974518();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v27 = v16;
  v28 = v18;
  v20 &= 1u;
  v29 = v20;
  v30 = v22;
  sub_20D9747D8();
  sub_20D7EADC0(v16, v18, v20);

  sub_20D7EB7E8(v8, v6, &qword_27C838F18, &unk_20D977860);
  v23 = v26;
  sub_20D7EB7E8(v6, v26, &qword_27C838F18, &unk_20D977860);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FDC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v44 = sub_20D974458();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820);
  MEMORY[0x28223BE20](v43);
  v7 = &v40 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839250, &qword_20D978018) - 8;
  v8 = MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v48 = a1;
  v49 = a2;
  sub_20D7E1EF8();

  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  v17 = sub_20D974548();
  v19 = v18;
  v21 = v20;
  sub_20D7EADC0(v12, v14, v16 & 1);

  LODWORD(v48) = sub_20D974248();
  v22 = sub_20D974518();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_20D7EADC0(v17, v19, v21 & 1);

  v48 = v22;
  v49 = v24;
  v50 = v12 & 1;
  v51 = v27;
  sub_20D974868();
  sub_20D7EADC0(v22, v24, v12 & 1);

  sub_20D974488();
  v29 = v41;
  v28 = v42;
  v30 = v44;
  (*(v42 + 104))(v41, *MEMORY[0x277CE0A10], v44);
  v31 = sub_20D974478();

  (*(v28 + 8))(v29, v30);
  KeyPath = swift_getKeyPath();
  v33 = &v7[*(v43 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_20D7FF1F4();
  sub_20D9747D8();
  sub_20D7E3944(v7, &qword_27C838F08, &qword_20D977820);
  v34 = swift_getKeyPath();
  v35 = v45;
  v36 = &v11[*(v46 + 44)];
  *v36 = v34;
  v36[8] = 0;
  sub_20D7EB7E8(v11, v35, &qword_27C839250, &qword_20D978018);
  v37 = v47;
  sub_20D7EB7E8(v35, v47, &qword_27C839250, &qword_20D978018);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839260, &qword_20D978088) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_20D7E3944(v11, &qword_27C839250, &qword_20D978018);
  return sub_20D7E3944(v35, &qword_27C839250, &qword_20D978018);
}

uint64_t sub_20D7FE064@<X0>(uint64_t a2@<X8>)
{
  v71 = a2;
  v64 = sub_20D971F38();
  MEMORY[0x28223BE20](v64);
  v65 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v56 - v4;
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20D971F48();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D975038();
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20D974458();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972AF8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_20D971FC8();
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v66 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v67 = (&v56 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v69 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - v26;
  type metadata accessor for RectangularLockHistoricalUsageView(0);
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972DB8();
  v29 = v28;
  sub_20D972E58();
  (*(v13 + 104))(v16, *MEMORY[0x277D075B0], v12);
  sub_20D7FF2DC(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v72 == v75)
  {
    v30 = *(v13 + 8);
    v30(v16, v12);
    v30(v18, v12);

LABEL_4:
    sub_20D88D380(0, v67, v29, COERCE__INT64(1.0));
    goto LABEL_8;
  }

  v31 = sub_20D9757C8();
  v32 = *(v13 + 8);
  v32(v16, v12);
  v32(v18, v12);

  if (v31)
  {
    goto LABEL_4;
  }

  sub_20D88D380(0, v66, v29, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v33 = MEMORY[0x277D84F90];
  *&v72 = MEMORY[0x277D84F90];
  sub_20D7FF2DC(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
  v34 = v57;
  v35 = v59;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v58 + 8))(v34, v35);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v36 = qword_28112ABE8;
  v37 = sub_20D9726E8();
  (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
  *&v72 = v33;
  sub_20D7FF2DC(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v38 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v60 + 8))(v66, v61);
LABEL_8:
  v39 = sub_20D9745B8();
  v41 = v40;
  v43 = v42;
  sub_20D974398();
  v44 = v68;
  v45 = v70;
  (*(v68 + 104))(v11, *MEMORY[0x277CE0A10], v70);
  sub_20D974478();

  (*(v44 + 8))(v11, v45);
  v46 = sub_20D974558();
  v48 = v47;
  LOBYTE(v44) = v49;
  v51 = v50;

  sub_20D7EADC0(v39, v41, v43 & 1);

  *&v72 = v46;
  *(&v72 + 1) = v48;
  v73 = v44 & 1;
  v74 = v51;
  sub_20D9747D8();
  sub_20D7EADC0(v46, v48, v44 & 1);

  v52 = v69;
  sub_20D7EB7E8(v27, v69, &qword_27C838F18, &unk_20D977860);
  v53 = v71;
  sub_20D7EB7E8(v52, v71, &qword_27C838F18, &unk_20D977860);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_20D7E3944(v27, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v52, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FEAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D971FC8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  type metadata accessor for RectangularLockHistoricalUsageView(0);
  HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrendShort(_:)(a1, v9);
  v15 = sub_20D9745B8();
  v17 = v16;
  v19 = v18;
  sub_20D974398();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v6, v3);
  v20 = sub_20D974558();
  v22 = v21;
  LOBYTE(v6) = v23;
  v25 = v24;

  sub_20D7EADC0(v15, v17, v19 & 1);

  v33 = v20;
  v34 = v22;
  v35 = v6 & 1;
  v36 = v25;
  sub_20D9747D8();
  sub_20D7EADC0(v20, v22, v6 & 1);

  v26 = v31;
  sub_20D7EB7E8(v14, v31, &qword_27C838F18, &unk_20D977860);
  v27 = v32;
  sub_20D7EB7E8(v26, v32, &qword_27C838F18, &unk_20D977860);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_20D7E3944(v14, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v26, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FEDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391E8, &qword_20D977F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391F0, &qword_20D977F18);
  sub_20D7FD16C(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D7FEF60();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C8391E8, &qword_20D977F10);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839200, &qword_20D977F30);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_20D7FEF04(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D7FEF60()
{
  result = qword_281124F40;
  if (!qword_281124F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391E8, &qword_20D977F10);
    sub_20D7EBC4C(&qword_281124D18, &qword_27C8391F8, &unk_20D977F20, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F40);
  }

  return result;
}

uint64_t sub_20D7FF088(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshot(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_20D7FF12C()
{
  result = qword_281124F90;
  if (!qword_281124F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839200, &qword_20D977F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391E8, &qword_20D977F10);
    sub_20D7FEF60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F90);
  }

  return result;
}

unint64_t sub_20D7FF1F4()
{
  result = qword_27C839258;
  if (!qword_27C839258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F08, &qword_20D977820);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839258);
  }

  return result;
}

uint64_t sub_20D7FF2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D7FF324@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973AF8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t GridForecastAppView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v98 = sub_20D973AF8();
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v83[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for GridForecastAppView(0);
  v4 = v3 - 8;
  v90 = *(v3 - 8);
  v114 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v116 = &v83[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = sub_20D9729D8();
  v102 = *(v108 - 1);
  v89 = *(v102 + 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_20D974288();
  v111 = *(v92 - 8);
  v7 = MEMORY[0x28223BE20](v92);
  v91 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v109 = &v83[-v9];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839280, &qword_20D9780B0);
  MEMORY[0x28223BE20](v94);
  v110 = &v83[-v10];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839288, &qword_20D9780B8);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v113 = &v83[-v11];
  v12 = type metadata accessor for GridForecastSnapshot(0);
  v85 = *(v12 - 8);
  v103 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v104 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v83[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v83[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v83[-v20];
  v115 = v1;
  v86 = sub_20D80048C();
  v22 = *(v4 + 32);
  v87 = v4;
  v23 = *(v1 + v22);
  swift_getKeyPath();
  v124[0] = v23;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v24 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D80536C(v23 + v24, v21, type metadata accessor for GridForecastSnapshot);
  swift_getKeyPath();
  v124[0] = v23;
  sub_20D972858();

  v25 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v106 = v23;
  sub_20D80536C(v23 + v25, v19, type metadata accessor for GridForecastSnapshot);
  v26 = *(v12 + 20);
  v124[3] = v12;
  v27 = sub_20D8050A4(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  v124[4] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
  sub_20D80536C(v21, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
  v123[3] = v12;
  v123[4] = v27;
  v29 = __swift_allocate_boxed_opaque_existential_1(v123);
  v93 = v19;
  sub_20D80536C(v19, v29, type metadata accessor for GridForecastSnapshot);
  v30 = v115;
  v84 = *(v115 + *(v4 + 60)) == 4;
  swift_retain_n();
  sub_20D974278();
  v31 = v102;
  v32 = *(v102 + 2);
  v112 = v21;
  v32(v107, &v21[v26], v108);
  v33 = v101;
  v88 = type metadata accessor for GridForecastSnapshot;
  sub_20D80536C(v21, v101, type metadata accessor for GridForecastSnapshot);
  sub_20D7E7080(v124, &v122);
  v105 = type metadata accessor for GridForecastAppView;
  sub_20D80536C(v30, v116, type metadata accessor for GridForecastAppView);
  sub_20D80536C(v19, v104, type metadata accessor for GridForecastSnapshot);
  sub_20D7E7080(v123, &v121);
  v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v35 = v34 + v89;
  v89 = *(v85 + 80);
  v36 = (v89 + v35 + 1) & ~v89;
  v37 = (v103 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = *(v90 + 80);
  v38 = (v90 + v37 + 40) & ~v90;
  v39 = (v114 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v89 + v39 + 16) & ~v89;
  v85 = (v40 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + v103 + 55) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v102 + 4))(v42 + v34, v107, v108);
  LODWORD(v107) = v86 & 1;
  *(v42 + v35) = v86 & 1;
  v102 = type metadata accessor for GridForecastSnapshot;
  sub_20D80503C(v33, v42 + v36, type metadata accessor for GridForecastSnapshot);
  sub_20D7EB734(&v122, v42 + v37);
  v108 = type metadata accessor for GridForecastAppView;
  sub_20D80503C(v116, v42 + v38, type metadata accessor for GridForecastAppView);
  v43 = (v42 + v39);
  v44 = v106;
  *v43 = sub_20D804294;
  v43[1] = v44;
  sub_20D80503C(v104, v42 + v40, type metadata accessor for GridForecastSnapshot);
  v45 = v42 + v85;
  sub_20D7EB734(&v121, v42 + v85);
  *(v45 + 40) = v84;
  v46 = (v42 + v41);
  *v46 = sub_20D80425C;
  v46[1] = v44;
  v47 = v109;
  v48 = v92;
  (*(v111 + 16))(v91, v109, v92);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20D8042CC;
  *(v49 + 24) = v42;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839298, &qword_20D978128);
  sub_20D8050A4(&qword_281124DD0, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A0, &unk_20D978130);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
  v52 = sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130, MEMORY[0x277CE1198]);
  v53 = sub_20D80472C();
  v117 = v50;
  v118 = v51;
  v119 = v52;
  v120 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v110;
  sub_20D973BA8();
  (*(v111 + 8))(v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v55 = v115;
  sub_20D973B78();
  v56 = *&v122 * 24.0;
  v57 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392A8, &unk_20D978140) + 36)];
  v58 = *(sub_20D973DE8() + 20);
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_20D974118();
  (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
  *v57 = v56;
  v57[1] = v56;
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
  *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392B0, &qword_20D978150) + 36)] = 256;
  v61 = v55;
  v62 = v116;
  v63 = v105;
  sub_20D80536C(v61, v116, v105);
  v64 = v101;
  sub_20D80536C(v112, v101, v88);
  v65 = (v90 + 16) & ~v90;
  v114 += v65;
  v66 = (v114 + v89) & ~v89;
  v67 = v66 + v103;
  v68 = swift_allocObject();
  v69 = v108;
  sub_20D80503C(v62, v68 + v65, v108);
  sub_20D80503C(v64, v68 + v66, v102);
  *(v68 + v67) = v107;
  v70 = v94;
  v71 = &v54[*(v94 + 36)];
  sub_20D973CB8();
  sub_20D9752F8();
  *v71 = &unk_20D978160;
  v71[1] = v68;
  v72 = v115;
  sub_20D80536C(v115, v62, v63);
  v73 = swift_allocObject();
  sub_20D80503C(v62, v73 + v65, v69);
  v74 = sub_20D804950();
  v75 = v70;
  v76 = v110;
  sub_20D974748();

  sub_20D7CDBFC(v76);
  v77 = v97;
  sub_20D7FF324(v97);
  sub_20D80536C(v72, v62, v105);
  v78 = swift_allocObject();
  sub_20D80503C(v62, v78 + v65, v108);
  *&v122 = v75;
  *(&v122 + 1) = v74;
  swift_getOpaqueTypeConformance2();
  sub_20D8050A4(&qword_281125028, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v79 = v95;
  v80 = v98;
  v81 = v113;
  sub_20D974848();

  (*(v100 + 8))(v77, v80);
  (*(v96 + 8))(v81, v79);
  sub_20D8053D4(v93, type metadata accessor for GridForecastSnapshot);
  sub_20D8053D4(v112, type metadata accessor for GridForecastSnapshot);
  __swift_destroy_boxed_opaque_existential_0(v123);
  return __swift_destroy_boxed_opaque_existential_0(v124);
}

uint64_t type metadata accessor for GridForecastAppView(uint64_t a1)
{
  result = qword_281126940;
  if (!qword_281126940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D80048C()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v71[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v71[-v6];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v71[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v71[-v11];
  v13 = type metadata accessor for GridForecastAppView(0);
  v14 = *(v0 + *(v13 + 52));
  if (v14 < 2)
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v40 = sub_20D9734F8();
    __swift_project_value_buffer(v40, qword_28112AC18);
    v41 = sub_20D9734D8();
    v42 = sub_20D975448();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
      _os_log_impl(&dword_20D7C9000, v41, v42, "%s Forcing Single Pane Mode", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F324260](v44, -1, -1);
      MEMORY[0x20F324260](v43, -1, -1);
    }

    goto LABEL_34;
  }

  v73 = v1;
  v75 = v10;
  v72 = v14;
  if (v14 - 3 >= 2)
  {
    v15 = v13;
    v16 = v0;
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v17 = sub_20D9734F8();
    __swift_project_value_buffer(v17, qword_28112AC18);
    v18 = sub_20D9734D8();
    v19 = sub_20D975448();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v77[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s Forcing Double Pane Mode", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F324260](v21, -1, -1);
      MEMORY[0x20F324260](v20, -1, -1);
    }

    v0 = v16;
    v13 = v15;
  }

  v22 = *(v0 + *(v13 + 24));
  swift_getKeyPath();
  v77[0] = v22;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v23 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D80536C(v22 + v23, v12, type metadata accessor for GridForecastSnapshot);
  swift_getKeyPath();
  v76[1] = v22;
  sub_20D972858();

  v24 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v25 = v75;
  sub_20D80536C(v22 + v24, v75, type metadata accessor for GridForecastSnapshot);
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v26 = sub_20D9734F8();
  __swift_project_value_buffer(v26, qword_28112AC18);
  sub_20D80536C(v25, v7, type metadata accessor for GridForecastSnapshot);
  v74 = v12;
  sub_20D80536C(v12, v4, type metadata accessor for GridForecastSnapshot);
  v27 = sub_20D9734D8();
  v28 = sub_20D975478();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v76[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v76);
    *(v29 + 12) = 2080;
    v31 = GridForecastSnapshot.description.getter();
    v33 = v32;
    sub_20D8053D4(v7, type metadata accessor for GridForecastSnapshot);
    v34 = sub_20D7F4DC8(v31, v33, v76);

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    v35 = GridForecastSnapshot.description.getter();
    v37 = v36;
    sub_20D8053D4(v4, type metadata accessor for GridForecastSnapshot);
    v38 = sub_20D7F4DC8(v35, v37, v76);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s checking gridIDs for locationSnapshot:%s & homeSnapshot:%s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v30, -1, -1);
    v39 = v29;
    v25 = v75;
    MEMORY[0x20F324260](v39, -1, -1);
  }

  else
  {

    sub_20D8053D4(v4, type metadata accessor for GridForecastSnapshot);
    sub_20D8053D4(v7, type metadata accessor for GridForecastSnapshot);
  }

  v45 = v73;
  v46 = v74;
  if (v72 == 3)
  {
    v47 = *(v73 + 36);
    if (*(v25 + v47) != 12 || v74[v47] != 12)
    {
      v62 = sub_20D9734D8();
      v63 = sub_20D975478();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v76[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v76);
        v66 = "%s Either locationSnapshot or homeSnapshot location has an error. Show single pane";
        goto LABEL_32;
      }

LABEL_33:

      sub_20D8053D4(v25, type metadata accessor for GridForecastSnapshot);
      sub_20D8053D4(v46, type metadata accessor for GridForecastSnapshot);
LABEL_34:
      v67 = 0;
      return v67 & 1;
    }
  }

  v48 = sub_20D7E0238();
  if (!v48 || (v48, (v49 = sub_20D7E0238()) == 0))
  {
    v62 = sub_20D9734D8();
    v63 = sub_20D975478();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76[0] = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v76);
      v66 = "%s Either locationSnapshot or homeSnapshot location is nil. Show single pane";
LABEL_32:
      _os_log_impl(&dword_20D7C9000, v62, v63, v66, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F324260](v65, -1, -1);
      MEMORY[0x20F324260](v64, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v50 = *(v45 + 24);
  v51 = *(v25 + v50);
  v52 = *(v25 + v50 + 8);
  v53 = (v46 + v50);
  v54 = *v53;
  v55 = v53[1];

  v56 = sub_20D9734D8();
  v57 = sub_20D975478();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136315906;
    *(v58 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v76);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_20D7F4DC8(v51, v52, v76);
    *(v58 + 22) = 2080;
    if (v51 == v54 && v52 == v55 || (sub_20D9757C8() & 1) != 0)
    {
      v60 = 0xE200000000000000;
      v61 = 29545;
    }

    else
    {
      v60 = 0xE600000000000000;
      v61 = 0x544F4E207369;
    }

    v69 = sub_20D7F4DC8(v61, v60, v76);

    *(v58 + 24) = v69;
    *(v58 + 32) = 2080;
    *(v58 + 34) = sub_20D7F4DC8(v54, v55, v76);
    _os_log_impl(&dword_20D7C9000, v56, v57, "%s locGridID:%s %s = homeGridID:%s", v58, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v59, -1, -1);
    MEMORY[0x20F324260](v58, -1, -1);

    v46 = v74;
  }

  else
  {
  }

  v70 = v75;
  if (v51 == v54 && v52 == v55)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_20D9757C8() ^ 1;
  }

  sub_20D8053D4(v70, type metadata accessor for GridForecastSnapshot);
  sub_20D8053D4(v46, type metadata accessor for GridForecastSnapshot);
  return v67 & 1;
}

uint64_t sub_20D800F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_20D975318();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_20D9752E8();

  v9 = sub_20D9752D8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_20D82D02C(0, 0, v7, a3, v10);
}

uint64_t sub_20D801050@<X0>(uint64_t a1@<X0>, int a2@<W2>, char *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *a9, uint64_t a10, unsigned __int8 a11, char *a12, uint64_t a13)
{
  v199 = a7;
  v198 = a6;
  v181 = a4;
  v180 = a3;
  LODWORD(v185) = a2;
  v197 = a8;
  v183 = a10;
  v182 = a9;
  v15 = type metadata accessor for GridForecastAppView(0);
  v194 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v195 = v16;
  v196 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839308, &qword_20D978420);
  MEMORY[0x28223BE20](v189);
  v193 = v156 - v17;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839310, &qword_20D978428);
  MEMORY[0x28223BE20](v192);
  v178 = v156 - v18;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839318, &qword_20D978430);
  v19 = MEMORY[0x28223BE20](v173);
  v177 = v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v207 = v156 - v21;
  v205 = sub_20D9744B8();
  v208 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v206 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BasicEnergyForecastView(0);
  v24 = MEMORY[0x28223BE20](v23);
  v171 = v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v172 = v156 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v174 = v156 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v175 = v156 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v176 = v156 - v33;
  MEMORY[0x28223BE20](v32);
  v204 = v156 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839320, &qword_20D978438);
  MEMORY[0x28223BE20](v35 - 8);
  v186 = v156 - v36;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392A0, &unk_20D978130);
  MEMORY[0x28223BE20](v190);
  v38 = v156 - v37;
  v39 = sub_20D972628();
  v200 = *(v39 - 8);
  v201 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v184 = v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = v156 - v42;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v187);
  v45 = v156 - v44;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839168, &qword_20D978440);
  v46 = a1;
  sub_20D973B98();
  v47 = sub_20D9729C8();
  if (v47)
  {
    v48 = v47;
    MEMORY[0x28223BE20](v47);
    v156[-2] = v43;
    sub_20D871194(sub_20D80534C, v48, v45);
  }

  else
  {
    v49 = sub_20D972998();
    (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
  }

  v188 = v45;
  v179 = a12;
  (*(v200 + 8))(v43, v201);
  *v38 = sub_20D974158();
  *(v38 + 1) = 0;
  v38[16] = 0;
  v191 = v38;
  v202 = a5;
  if (v185)
  {
    LODWORD(v201) = a11;
    v185 = type metadata accessor for GridForecastSnapshot(0);
    v164 = *&v180[*(v185 + 32)];
    v50 = v204;
    sub_20D7E7080(v181, (v204 + 8));
    v165 = *(a5 + v15[7]);
    v51 = v23;

    v170 = v46;
    sub_20D973B98();
    v184 = v15[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    v52 = v15[10];
    v53 = a5;
    v54 = (a5 + v15[9]);
    v55 = *v54;
    v56 = v54[1];
    v58 = *(v53 + v52);
    v57 = *(v53 + v52 + 8);
    swift_unknownObjectWeakInit();
    v162 = v51[9];
    v59 = v51[11];
    v60 = v51[12];
    v200 = a13;
    v160 = &v50[v59];
    v161 = &v50[v60];
    v61 = v51[13];
    v62 = v51[14];
    v166 = v15;
    v158 = &v50[v61];
    v159 = &v50[v62];
    v63 = v51[15];
    v156[1] = v51[16];
    v157 = &v50[v63];
    v64 = v50;
    *&v210 = 0x3FF0000000000000;
    LODWORD(v181) = *MEMORY[0x277CE0A68];
    v65 = *(v208 + 104);
    v208 += 104;
    v180 = v65;
    (v65)(v206);
    sub_20D7DD75C(v55, v56);
    sub_20D7DD75C(v58, v57);
    v66 = v199;
    swift_retain_n();
    v67 = v55;
    v168 = v55;
    v172 = v56;
    sub_20D7DD75C(v55, v56);
    v171 = v58;
    v169 = v57;
    sub_20D7DD75C(v58, v57);
    v167 = sub_20D7E6420();
    sub_20D973B68();
    *v64 = v164;
    v64[48] = v165;
    v68 = Strong;
    swift_unknownObjectWeakAssign();

    v64[v162] = 0;
    v64[v51[10]] = 0;
    v69 = v160;
    *v160 = v67;
    v69[1] = v56;
    v70 = v161;
    *v161 = v58;
    v70[1] = v57;
    v71 = v158;
    *v158 = 0;
    *(v71 + 1) = 0;
    v72 = v198;
    v73 = v159;
    *v159 = v198;
    v73[1] = v66;
    v74 = v157;
    *v157 = v72;
    v74[1] = v66;
    v75 = v207;
    sub_20D974B68();
    LOBYTE(v67) = sub_20D974328();
    sub_20D973AD8();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36);
    *v84 = v67;
    *(v84 + 8) = v77;
    *(v84 + 16) = v79;
    *(v84 + 24) = v81;
    *(v84 + 32) = v83;
    *(v84 + 40) = 0;
    LOBYTE(v67) = sub_20D974338();
    sub_20D973AD8();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0) + 36);
    *v93 = v67;
    *(v93 + 8) = v86;
    *(v93 + 16) = v88;
    *(v93 + 24) = v90;
    *(v93 + 32) = v92;
    *(v93 + 40) = 0;
    LOBYTE(v67) = sub_20D974348();
    sub_20D973AD8();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839330, &qword_20D978450) + 36);
    *v102 = v67;
    *(v102 + 8) = v95;
    *(v102 + 16) = v97;
    *(v102 + 24) = v99;
    *(v102 + 32) = v101;
    *(v102 + 40) = 0;
    v103 = sub_20D974C48();
    v105 = v104;
    v106 = v75 + *(v173 + 36);
    sub_20D974C08();
    *(v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
    v107 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36));
    *v107 = v103;
    v107[1] = v105;
    v198 = *&v182[*(v185 + 32)];
    v108 = v176;
    sub_20D7E7080(v183, (v176 + 8));
    LODWORD(v199) = *(v202 + v166[8]);

    sub_20D973B98();
    v184 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v185 = v51[9];
    v109 = (v108 + v51[11]);
    v203 = (v108 + v51[12]);
    v110 = (v108 + v51[13]);
    v111 = (v108 + v51[14]);
    v112 = (v108 + v51[15]);
    *&v210 = 0x3FF0000000000000;
    (v180)(v206, v181, v205);
    v113 = v200;
    swift_retain_n();
    sub_20D973B68();
    *v108 = v198;
    *(v108 + 48) = v199;
    v114 = v184;
    swift_unknownObjectWeakAssign();

    *(v108 + v185) = 0;
    *(v108 + v51[10]) = v201 & 1;
    v115 = v172;
    *v109 = v168;
    v109[1] = v115;
    v117 = v203;
    v116 = v204;
    v118 = v169;
    *v203 = v171;
    v117[1] = v118;
    *v110 = 0;
    v110[1] = 0;
    v119 = v179;
    *v111 = v179;
    v111[1] = v113;
    *v112 = v119;
    v112[1] = v113;
    v120 = v175;
    sub_20D80536C(v116, v175, type metadata accessor for BasicEnergyForecastView);
    v121 = v177;
    sub_20D7EB7E8(v207, v177, &qword_27C839318, &qword_20D978430);
    v122 = v174;
    sub_20D80536C(v108, v174, type metadata accessor for BasicEnergyForecastView);
    v123 = v178;
    sub_20D80536C(v120, v178, type metadata accessor for BasicEnergyForecastView);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839338, &qword_20D978458);
    sub_20D7EB7E8(v121, v123 + *(v124 + 64), &qword_27C839318, &qword_20D978430);
    sub_20D80536C(v122, v123 + *(v124 + 80), type metadata accessor for BasicEnergyForecastView);
    sub_20D8053D4(v122, type metadata accessor for BasicEnergyForecastView);
    v125 = v186;
    sub_20D7E3944(v121, &qword_27C839318, &qword_20D978430);
    sub_20D8053D4(v120, type metadata accessor for BasicEnergyForecastView);
    sub_20D7EB7E8(v123, v193, &qword_27C839310, &qword_20D978428);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D00, &qword_27C839310, &qword_20D978428, MEMORY[0x277CE14C0]);
    sub_20D8050A4(qword_281126D58, type metadata accessor for BasicEnergyForecastView, &unk_20D976D98);
    sub_20D9741B8();
    sub_20D7E3944(v123, &qword_27C839310, &qword_20D978428);
    sub_20D7E3944(v207, &qword_27C839318, &qword_20D978430);
    sub_20D8053D4(v108, type metadata accessor for BasicEnergyForecastView);
    v126 = v204;
  }

  else
  {
    v127 = sub_20D8023B0();
    v128 = *(type metadata accessor for GridForecastSnapshot(0) + 32);
    if (v127)
    {
      v207 = *&v180[v128];

      v129 = 7;
      v130 = v181;
    }

    else
    {
      v207 = *&v182[v128];

      v129 = 8;
      v130 = v183;
      v199 = a13;
      v198 = v179;
    }

    sub_20D7E7080(v130, &v210);
    LODWORD(v204) = *(a5 + v15[v129]);
    sub_20D973B98();
    v203 = swift_unknownObjectWeakLoadStrong();
    v131 = v15[10];
    v132 = (a5 + v15[9]);
    v133 = *v132;
    v134 = v132[1];
    v135 = *(a5 + v131);
    v136 = *(a5 + v131 + 8);
    v137 = v23;
    v138 = v171;
    swift_unknownObjectWeakInit();
    v183 = v137[9];
    v139 = v137[12];
    v181 = (v138 + v137[11]);
    v185 = v138 + v139;
    v140 = v137[14];
    v180 = (v138 + v137[13]);
    v182 = (v138 + v140);
    v179 = (v138 + v137[15]);
    v209 = 0x3FF0000000000000;
    (*(v208 + 104))(v206, *MEMORY[0x277CE0A68], v205);
    v141 = v199;
    swift_retain_n();
    sub_20D7DD75C(v133, v134);
    sub_20D7DD75C(v135, v136);
    sub_20D7E6420();
    sub_20D973B68();
    *v138 = v207;
    sub_20D7EB734(&v210, v138 + 8);
    *(v138 + 48) = v204;
    (*(v200 + 32))(v138 + v137[7], v184, v201);
    v142 = v203;
    swift_unknownObjectWeakAssign();

    *(v138 + v183) = 1;
    *(v138 + v137[10]) = 0;
    v143 = v181;
    *v181 = v133;
    v143[1] = v134;
    v144 = v185;
    *v185 = v135;
    *(v144 + 8) = v136;
    v145 = v180;
    *v180 = 0;
    *(v145 + 1) = 0;
    v146 = v198;
    v147 = v182;
    *v182 = v198;
    *(v147 + 1) = v141;
    v148 = v179;
    *v179 = v146;
    *(v148 + 1) = v141;
    v126 = v172;
    sub_20D80503C(v138, v172, type metadata accessor for BasicEnergyForecastView);
    sub_20D80536C(v126, v193, type metadata accessor for BasicEnergyForecastView);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D00, &qword_27C839310, &qword_20D978428, MEMORY[0x277CE14C0]);
    sub_20D8050A4(qword_281126D58, type metadata accessor for BasicEnergyForecastView, &unk_20D976D98);
    v125 = v186;
    sub_20D9741B8();
  }

  sub_20D8053D4(v126, type metadata accessor for BasicEnergyForecastView);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839328, &qword_20D978448);
  v150 = v191;
  sub_20D7EAF18(v125, &v191[*(v149 + 44)], &qword_27C839320, &qword_20D978438);
  v151 = v196;
  sub_20D80536C(v202, v196, type metadata accessor for GridForecastAppView);
  v152 = (*(v194 + 80) + 16) & ~*(v194 + 80);
  v153 = swift_allocObject();
  sub_20D80503C(v151, v153 + v152, type metadata accessor for GridForecastAppView);
  sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130, MEMORY[0x277CE1198]);
  sub_20D80472C();
  v154 = v188;
  sub_20D974858();

  sub_20D7E3944(v150, &qword_27C8392A0, &unk_20D978130);
  return sub_20D7E3944(v154, &qword_27C838E48, &qword_20D977670);
}

BOOL sub_20D8023B0()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v38[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GridForecastAppView(0);
  if (*(v0 + *(v10 + 52)) == 1)
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v17 = sub_20D9734F8();
    __swift_project_value_buffer(v17, qword_28112AC18);
    v18 = sub_20D9734D8();
    v19 = sub_20D975448();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, v38);
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s Forcing Home Forecast", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F324260](v21, -1, -1);
      MEMORY[0x20F324260](v20, -1, -1);
    }

    return 1;
  }

  else if (*(v0 + *(v10 + 52)))
  {
    v22 = *(v0 + *(v10 + 24));
    swift_getKeyPath();
    v38[0] = v22;
    sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v23 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D80536C(v22 + v23, v9, type metadata accessor for GridForecastSnapshot);
    sub_20D80536C(v9, v3, type metadata accessor for GridForecastSnapshotType);
    sub_20D8053D4(v9, type metadata accessor for GridForecastSnapshot);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7EAF18(v3 + *(v24 + 64), v6, &qword_27C8389F8, &qword_20D978460);
    }

    else
    {
      v25 = sub_20D972698();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      sub_20D8053D4(v3, type metadata accessor for GridForecastSnapshotType);
    }

    v26 = sub_20D972698();
    v27 = (*(*(v26 - 8) + 48))(v6, 1, v26);
    v28 = v27 != 1;
    sub_20D7E3944(v6, &qword_27C8389F8, &qword_20D978460);
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v29 = sub_20D9734F8();
    __swift_project_value_buffer(v29, qword_28112AC18);
    v30 = sub_20D9734D8();
    v31 = sub_20D975478();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, &v37);
      *(v32 + 12) = 2080;
      if (v27 == 1)
      {
        v34 = 0x544F4E2073656F64;
      }

      else
      {
        v34 = 5456200;
      }

      if (v27 == 1)
      {
        v35 = 0xED00006576616820;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_20D7F4DC8(v34, v35, &v37);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_20D7C9000, v30, v31, "%s home snapshot %s a valid homeID", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v33, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);
    }

    return v28;
  }

  else
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v11 = sub_20D9734F8();
    __swift_project_value_buffer(v11, qword_28112AC18);
    v12 = sub_20D9734D8();
    v13 = sub_20D975448();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D983770, v38);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s Forcing Location Forecast", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_20D802A8C()
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v0 = sub_20D9734F8();
  __swift_project_value_buffer(v0, qword_28112AC18);
  v1 = sub_20D9734D8();
  v2 = sub_20D975478();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20D7C9000, v1, v2, "Updating pill via notification from GridForecastAppView", v3, 2u);
    MEMORY[0x20F324260](v3, -1, -1);
  }

  return sub_20D84B418();
}

uint64_t sub_20D802B74(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  sub_20D9752E8();
  *(v3 + 96) = sub_20D9752D8();
  v5 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D802C10, v5, v4);
}

uint64_t sub_20D802C10()
{
  v1 = *(v0 + 80);

  v2 = v1 + *(type metadata accessor for GridForecastAppView(0) + 48);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = type metadata accessor for GridForecastSnapshot(0);
    LODWORD(v8) = *(v6 + *(v7 + 36));
    *(v0 + 40) = MEMORY[0x277D83B88];
    if (v8 == 12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v8;
    }

    *(v0 + 16) = v8;
    sub_20D7E39A4((v0 + 16), (v0 + 48));
    sub_20D7DD75C(v3, v4);
    v9 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = v5;
    sub_20D7E39A4((v0 + 16), (v0 + 48));
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0xD000000000000024, 0x800000020D983740, v11);
    v12 = (v6 + *(v7 + 24));
    v13 = *v12;
    v14 = v12[1];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v13;
    *(v0 + 24) = v14;
    sub_20D7E39A4((v0 + 16), (v0 + 48));

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x444964697267, 0xE600000000000000, v15);
    v16 = sub_20D9729C8();
    if (v16)
    {
      v17 = _s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(v16);

      *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839190, &qword_20D977EB8);
      *(v0 + 16) = v17;
      sub_20D7E39A4((v0 + 16), (v0 + 48));
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5160((v0 + 48), 0x6957796772656E65, 0xED000073776F646ELL, v18);
    }

    v3(v9);

    sub_20D7DD774(v3, v4);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_20D802E90(uint64_t a1)
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC18);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D7C9000, v3, v4, "GridForecastAppView tapped...", v5, 2u);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  result = type metadata accessor for GridForecastAppView(0);
  v7 = (a1 + *(result + 44));
  if (*v7)
  {
    return (*v7)();
  }

  return result;
}

uint64_t sub_20D802F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for GridForecastAppView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_20D973AF8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277CDD6B8], v11);
  v15 = sub_20D973AE8();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = sub_20D975318();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    sub_20D80536C(a3, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastAppView);
    sub_20D9752E8();
    v18 = sub_20D9752D8();
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v18;
    *(v20 + 24) = v21;
    sub_20D80503C(v7, v20 + v19, type metadata accessor for GridForecastAppView);
    sub_20D82D02C(0, 0, v10, &unk_20D978410, v20);
  }

  return result;
}

uint64_t sub_20D803250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20D8032E8, v6, v5);
}

uint64_t sub_20D8032E8()
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC18);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D7C9000, v2, v3, "GridForecastAppView reloading onChange...", v4, 2u);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  type metadata accessor for GridForecastAppView(0);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_20D803448;

  return GridForecastSnapshotManager.reloadSnapshots()();
}

uint64_t sub_20D803448()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_20D803568, v3, v2);
}

uint64_t sub_20D803568()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t GridForecastViewConfiguration.description.getter()
{
  v1 = *v0;
  v2 = 0x756F446563726F66;
  v3 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t GridForecastViewConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

unint64_t sub_20D8036F8()
{
  v1 = *v0;
  v2 = 0x756F446563726F66;
  v3 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void GridForecastAppView.init(snapshotManager:host:explainMenuFunction:hideMenuFunction:viewTapFunction:analyticsFunction:viewConfiguration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 *a12)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v35 = a2;
  v36 = a3;
  v38 = a4;
  v39 = a11;
  v37 = a10;
  v14 = sub_20D9744B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a12;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for GridForecastAppView(0);
  swift_unknownObjectWeakInit();
  v19 = v18[10];
  v32 = (a9 + v18[9]);
  v33 = (a9 + v19);
  v20 = (a9 + v18[11]);
  v21 = (a9 + v18[12]);
  v45 = 0x3FF0000000000000;
  (*(v15 + 104))(v17, *MEMORY[0x277CE0A68], v14);
  sub_20D7E6420();
  sub_20D973B68();
  *(a9 + v18[6]) = a1;
  swift_getKeyPath();
  v45 = a1;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);

  sub_20D972858();

  v22 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  swift_beginAccess();
  *(a9 + v18[7]) = *(a1 + v22);
  swift_getKeyPath();
  v44 = a1;
  sub_20D972858();

  v23 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);

  *(a9 + v18[8]) = v23;
  v24 = v35;
  swift_unknownObjectWeakAssign();

  v26 = v32;
  v25 = v33;
  v27 = v38;
  *v32 = v36;
  v26[1] = v27;
  v28 = v41;
  *v25 = v40;
  v25[1] = v28;
  v29 = v43;
  *v20 = v42;
  v20[1] = v29;
  v30 = v39;
  *v21 = v37;
  v21[1] = v30;
  *(a9 + v18[13]) = v34;
}

uint64_t sub_20D803AAC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0) - 8;
  v1 = MEMORY[0x28223BE20](v45);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v43 - v8;
  v9 = sub_20D7EAB84();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() labelColor];
  sub_20D974888();
  v15 = sub_20D974508();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_20D7EADC0(v9, v11, v13 & 1);

  v48 = v15;
  v49 = v17;
  v50 = v19 & 1;
  v51 = v21;
  v22 = v43;
  sub_20D9747D8();
  sub_20D7EADC0(v15, v17, v19 & 1);

  sub_20D974B68();
  LOBYTE(v21) = sub_20D974328();
  sub_20D973AD8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v21) = sub_20D974338();
  sub_20D973AD8();
  v32 = v44;
  v33 = &v4[*(v45 + 44)];
  *v33 = v21;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v38 = v22;
  sub_20D7EB7E8(v22, v32, &qword_27C838F18, &unk_20D977860);
  v39 = v46;
  sub_20D7EB7E8(v4, v46, &qword_27C8392F0, &unk_20D9783E0);
  v40 = v47;
  sub_20D7EB7E8(v32, v47, &qword_27C838F18, &unk_20D977860);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839300, &qword_20D9783F8);
  sub_20D7EB7E8(v39, v40 + *(v41 + 48), &qword_27C8392F0, &unk_20D9783E0);
  sub_20D7E3944(v4, &qword_27C8392F0, &unk_20D9783E0);
  sub_20D7E3944(v38, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v39, &qword_27C8392F0, &unk_20D9783E0);
  return sub_20D7E3944(v32, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D803E28@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392D0, &qword_20D9783C0);
  sub_20D803AAC(a2 + *(v3 + 44));
  v4 = sub_20D974328();
  sub_20D973AD8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392D8, &qword_20D9783C8) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_20D974348();
  sub_20D973AD8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392E0, &qword_20D9783D0) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = sub_20D974C48();
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392E8, &qword_20D9783D8) + 36);
  sub_20D974C08();
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670);
  v29 = (v27 + *(result + 36));
  *v29 = v24;
  v29[1] = v26;
  return result;
}

uint64_t sub_20D804010@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v7 = *a3;
  swift_beginAccess();
  return sub_20D80536C(v6 + v7, a4, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D804110(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D80536C(a1, v10, type metadata accessor for GridForecastSnapshot);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();

  return sub_20D8053D4(v10, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D8042CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20D9729D8() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for GridForecastAppView(0) - 8);
  v13 = (v11 + *(v12 + 80) + 40) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + v14 + 16) & ~v8;
  return sub_20D801050(a1, *(v2 + v6), (v2 + v9), (v2 + v11), v2 + v13, *(v2 + v14), *(v2 + v14 + 8), a2, (v2 + v15), v2 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40), *(v2 + ((v15 + v10 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v15 + v10 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
}