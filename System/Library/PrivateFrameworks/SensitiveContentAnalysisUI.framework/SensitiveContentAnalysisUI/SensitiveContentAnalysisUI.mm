uint64_t sub_1BC6326A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC632700(uint64_t a1)
{
  sub_1BC6A5A14(319, &qword_1EDDCE748, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1BC6A482C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PolicyProperty(319);
      if (v3 <= 0x3F)
      {
        sub_1BC632880(319, qword_1EDDCEA60, type metadata accessor for InterventionConfig.Layout, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BC632880(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC632880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6328E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC632948()
{
  if (!qword_1EDDCF0E8)
  {
    sub_1BC6E73D4(0, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCF0E8);
    }
  }
}

void sub_1BC6329AC(uint64_t a1)
{
  sub_1BC759CA0();
  if (v1 <= 0x3F)
  {
    sub_1BC6E73D4(319, &qword_1EDDCEE98, MEMORY[0x1E697B4F0]);
    if (v2 <= 0x3F)
    {
      sub_1BC759DE0();
      if (v3 <= 0x3F)
      {
        sub_1BC632B18(319);
        if (v4 <= 0x3F)
        {
          sub_1BC632948();
          if (v5 <= 0x3F)
          {
            sub_1BC632A8C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BC632A8C(uint64_t a1)
{
  if (!qword_1EDDCEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCEEA0);
    }
  }
}

void sub_1BC632B18(uint64_t a1)
{
  if (!qword_1EDDCF098)
  {
    sub_1BC759D00();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCF098);
    }
  }
}

uint64_t View.intervention(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a4;
  v27 = a3;
  v29 = a2;
  v31 = a1;
  v33 = type metadata accessor for IntervenableAction(0);
  v5 = MEMORY[0x1EEE9AC00](v33);
  v30 = &WitnessTable - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &WitnessTable - v7;
  v9 = type metadata accessor for PolicyCheckingIntervention(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BC75A960();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &WitnessTable - v13;
  v14 = sub_1BC6A45D0(qword_1EDDD1180, type metadata accessor for PolicyCheckingIntervention, &unk_1BC76406C);
  v37 = a3;
  v38 = v14;
  WitnessTable = swift_getWitnessTable();
  v35 = v12;
  v36 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &WitnessTable - v20;
  sub_1BC63368C(v31, v11 + *(v9 + 24), type metadata accessor for Intervention.Kind);
  sub_1BC688D34(v8);
  PolicyProperty.init()(v11);
  sub_1BC63368C(v8, v30, type metadata accessor for IntervenableAction);
  sub_1BC75B630();
  sub_1BC6A4570(v8, type metadata accessor for IntervenableAction);
  v22 = v28;
  MEMORY[0x1BFB25FF0](v11, v29, v9, v27);
  sub_1BC6A4570(v11, type metadata accessor for PolicyCheckingIntervention);
  View.prefetchSensitiveContentPolicy()(v12, WitnessTable);
  (*(v32 + 8))(v22, v12);
  v23 = *(v16 + 16);
  v23(v21, v19, OpaqueTypeMetadata2);
  v24 = *(v16 + 8);
  v24(v19, OpaqueTypeMetadata2);
  v23(v34, v21, OpaqueTypeMetadata2);
  return (v24)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1BC632FC0(uint64_t *a1)
{
  type metadata accessor for ParticipantHistoryChecker(255);
  sub_1BC75A960();
  sub_1BC69D4B0();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63302C(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_1BC635800(result, a2);
  }

  return result;
}

uint64_t sub_1BC63305C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6330A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6330EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC633134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC63317C(uint64_t a1)
{
  if (!qword_1EDDCF108)
  {
    sub_1BC75A030();
    v1 = sub_1BC75A720();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCF108);
    }
  }
}

void sub_1BC6331D4(uint64_t a1)
{
  sub_1BC632880(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BC6A463C(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6335F0(319, &qword_1EDDCE738, &qword_1EBCDC8E8, &unk_1BC762EC0);
      if (v3 <= 0x3F)
      {
        sub_1BC6A46E4(319);
        if (v4 <= 0x3F)
        {
          sub_1BC6335F0(319, &qword_1EDDCE750, &qword_1EBCDCBF8, &unk_1BC763F68);
          if (v5 <= 0x3F)
          {
            sub_1BC6335F0(319, &qword_1EDDCE760, &qword_1EBCDC970, &unk_1BC763180);
            if (v6 <= 0x3F)
            {
              sub_1BC6335F0(319, &qword_1EDDCE758, &qword_1EBCDCC00, &qword_1BC763F78);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC633358(uint64_t a1)
{
  sub_1BC68C7A8(319, &qword_1EDDCE7F8, &qword_1EBCDC948, &qword_1BC766D80, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BC68C758(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1BC68C7A8(319, &qword_1EDDCE770, &qword_1EBCDC870, &unk_1BC762D60, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1BC68C7A8(319, &qword_1EDDCE780, &qword_1EBCDC878, &qword_1BC763F00, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1BC68C7A8(319, &qword_1EDDCF100, &qword_1EBCDBC50, &qword_1BC762D70, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PolicyProperty(319);
            if (v6 <= 0x3F)
            {
              sub_1BC68C80C(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1BC68C80C(319, &qword_1EDDCEE58, MEMORY[0x1E697B640], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
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

unint64_t sub_1BC6335A0()
{
  result = qword_1EDDCF0A0;
  if (!qword_1EDDCF0A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDCF0A0);
  }

  return result;
}

void sub_1BC6335F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC808, &qword_1BC763F60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
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

uint64_t sub_1BC63368C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC633720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BC75ADF0();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BC75AE00();
}

uint64_t sub_1BC633818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BC75ADF0();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BC75AE00();
}

uint64_t type metadata accessor for _SensitiveContentInPreviousCallTipView(uint64_t a1)
{
  result = qword_1EDDD0FB0;
  if (!qword_1EDDD0FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC633980(uint64_t a1)
{
  sub_1BC633AC8(319, &unk_1EDDCE170, &qword_1EBCDD660, &unk_1BC766F48, MEMORY[0x1E697BD78]);
  if (v1 <= 0x3F)
  {
    sub_1BC6D1C8C(319, &qword_1EDDCF0F8, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1BC633AC8(319, &qword_1EDDCE7F8, &qword_1EBCDC948, &qword_1BC766D80, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PolicyProperty(319);
        if (v4 <= 0x3F)
        {
          sub_1BC633B3C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC633AC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BC633B3C(uint64_t a1)
{
  if (!qword_1EDDCDFE8)
  {
    sub_1BC759FE0();
    sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
    v1 = sub_1BC75BA50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCDFE8);
    }
  }
}

unint64_t sub_1BC633BF8()
{
  result = qword_1EDDD0FC8[0];
  if (!qword_1EDDD0FC8[0])
  {
    type metadata accessor for _SensitiveContentInPreviousCallTipView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0FC8);
  }

  return result;
}

uint64_t sub_1BC633C54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1BC633CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC898, &unk_1BC762D90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC890, &qword_1BC762D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  sub_1BC68BE3C();
  sub_1BC633DBC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BC633DBC()
{
  result = qword_1EDDCE740;
  if (!qword_1EDDCE740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC68C20C(&qword_1EDDCEE88, MEMORY[0x1E697B460], MEMORY[0x1E697B470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE740);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy09Sensitivee8AnalysisB006OnShowE8CallbackVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1BC75A960();
  sub_1BC633F08(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_1BC633F08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1BC633FB4(uint64_t a1)
{
  type metadata accessor for InterventionConfig.Layout(319);
  if (v1 <= 0x3F)
  {
    sub_1BC759EE0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SCUIInterventionOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BC6340E0();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AnalyticsUIContext(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC634094(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1BC6340E0()
{
  if (!qword_1EDDCEEA8)
  {
    v0 = sub_1BC75BA50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCEEA8);
    }
  }
}

uint64_t sub_1BC634160()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD20, &qword_1BC764248);
  sub_1BC6A5340();
  return swift_getOpaqueTypeConformance2();
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

uint64_t View.intervention(isPresented:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v37 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  type metadata accessor for InterventionPresenter(255);
  v13 = sub_1BC75A960();
  v14 = sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter, &unk_1BC76401C);
  v42 = a6;
  v43 = v14;
  WitnessTable = swift_getWitnessTable();
  v38 = v13;
  v39 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1BC759D90();
  v38 = v13;
  v39 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v38 = OpaqueTypeMetadata2;
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v41 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v38 = OpaqueTypeMetadata2;
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v41 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v38 = v20;
  v39 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v33 - v27;
  v29 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  View.intervention(isPresented:with:analyticsContext:)(a1, v34, v35, v36, v12, a5, a6, v26);
  sub_1BC66008C(v12, &qword_1EBCDBC50, &qword_1BC762D70);
  v30 = *(v23 + 16);
  v30(v28, v26, v22);
  v31 = *(v23 + 8);
  v31(v26, v22);
  v30(v37, v28, v22);
  return (v31)(v28, v22);
}

{
  v24 = a4;
  v26 = a3;
  v25 = a2;
  v23 = a1;
  v28 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v41 = a6;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = swift_getOpaqueTypeConformance2();
  v39 = OpaqueTypeMetadata2;
  v40 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  v12 = sub_1BC75B590();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v29 = a5;
  v30 = a6;
  v31 = v24;
  v32 = v27;
  v33 = v23;
  v34 = v25;
  v35 = v26;
  v39 = OpaqueTypeMetadata2;
  v40 = v11;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = a6;
  WitnessTable = swift_getWitnessTable();
  sub_1BC75B580();
  v36 = WitnessTable;
  swift_getWitnessTable();
  v20 = *(v13 + 16);
  v20(v18, v16, v12);
  v21 = *(v13 + 8);
  v21(v16, v12);
  v20(v28, v18, v12);
  return (v21)(v18, v12);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BC634610(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BC634668(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC6346C4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v84 = a2;
  v3 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v87 = *(v3 - 8);
  v92 = *(v87 + 64);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v70 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC880, &qword_1BC762D78);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v70 - v12;
  v71 = &v70 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC888, &qword_1BC762D80);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v70 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC890, &qword_1BC762D88);
  MEMORY[0x1EEE9AC00](v78);
  v88 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC898, &unk_1BC762D90);
  v17 = *(v16 - 8);
  v82 = v16;
  v83 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v70 - v18;
  v81 = *(v2 + 16);
  v80 = *(v2 + 24);
  v97[0] = v81;
  v98 = v80;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v19 = v93;
  v20 = v94;
  v21 = v95;
  v73 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B640();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B8, &unk_1BC762DB0);
  v23 = sub_1BC633C54(&qword_1EDDCE7A8, &qword_1EBCDC8B8, &unk_1BC762DB0, MEMORY[0x1E697FDF8]);
  View.intervention(isPresented:with:analyticsContext:)(v19, v20, v21, v11, v8, v22, v23, v13);

  sub_1BC66008C(v8, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC66008C(v11, &qword_1EBCDC878, &qword_1BC763F00);
  v91 = type metadata accessor for InterventionParticipantHistoryChecker;
  v24 = v2;
  v85 = v2;
  v25 = v89;
  sub_1BC68B6C8(v2, v89, type metadata accessor for InterventionParticipantHistoryChecker);
  v26 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v87 = *(v87 + 80);
  v27 = swift_allocObject();
  v86 = type metadata accessor for InterventionParticipantHistoryChecker;
  sub_1BC635348(v25, v27 + v26, type metadata accessor for InterventionParticipantHistoryChecker);
  v93 = v22;
  v94 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v72;
  v30 = v74;
  v31 = v71;
  View.onShowContent(_:)(sub_1BC68B730, v27, v74, OpaqueTypeConformance2);

  (*(v75 + 8))(v31, v30);
  v32 = v24;
  v33 = v89;
  sub_1BC68B6C8(v32, v89, v91);
  v34 = swift_allocObject();
  v35 = v26;
  v36 = v33;
  sub_1BC635348(v33, v34 + v26, type metadata accessor for InterventionParticipantHistoryChecker);
  v93 = v30;
  v94 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v88;
  v39 = v76;
  View.onInterventionHeeded(_:)(sub_1BC68BC84, v34, v76, v37);

  (*(v77 + 8))(v29, v39);
  KeyPath = swift_getKeyPath();
  v41 = v85;
  v42 = sub_1BC688DDC();
  LOBYTE(v34) = v43;
  v44 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C8, &qword_1BC762DF8) + 36)];
  *v44 = KeyPath;
  *(v44 + 1) = v42;
  v44[16] = v34;
  v45 = swift_getKeyPath();
  v46 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8D0, &qword_1BC762E30) + 36)];
  *v46 = v45;
  v46[8] = 1;
  v47 = swift_getKeyPath();
  v48 = *(v73 + 52);
  v49 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8D8, &qword_1BC762E70) + 36)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E0, &qword_1BC762E78);
  sub_1BC660024(v41 + v48, v49 + *(v50 + 28), &qword_1EBCDC868, &qword_1BC762D30);
  *v49 = v47;
  v51 = swift_getKeyPath();
  v52 = v41;
  v53 = v36;
  v54 = v36;
  v55 = v91;
  sub_1BC68B6C8(v52, v54, v91);
  v56 = swift_allocObject();
  v57 = v86;
  sub_1BC635348(v53, v56 + v35, v86);
  v58 = v78;
  v59 = &v38[*(v78 + 36)];
  *v59 = v51;
  v59[1] = sub_1BC68BD6C;
  v59[2] = v56;
  v60 = v85;
  v93 = sub_1BC688F48();
  sub_1BC68B6C8(v60, v53, v55);
  v61 = swift_allocObject();
  sub_1BC635348(v53, v61 + v35, v57);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  v63 = sub_1BC68BE3C();
  v64 = sub_1BC633DBC();
  v65 = v88;
  sub_1BC75B420();

  sub_1BC635080(v65);
  LOBYTE(v93) = v81;
  v94 = v80;
  sub_1BC75B640();
  sub_1BC68B6C8(v60, v53, v91);
  v66 = swift_allocObject();
  sub_1BC635348(v53, v66 + v35, v86);
  v93 = v58;
  v94 = v62;
  v95 = v63;
  v96 = v64;
  swift_getOpaqueTypeConformance2();
  v67 = v82;
  v68 = v90;
  sub_1BC75B430();

  return (*(v83 + 8))(v68, v67);
}

uint64_t sub_1BC635080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC890, &qword_1BC762D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6350F8(uint64_t *a1)
{
  type metadata accessor for InterventionPresenter(255);
  sub_1BC75A960();
  sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter, &unk_1BC76401C);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BC759D90();
  swift_getOpaqueTypeConformance2();
  sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC6352DC(uint64_t *a1)
{
  type metadata accessor for SensitiveContentPolicyPrefetcher(255);
  sub_1BC75A960();
  sub_1BC7321B4();
  return swift_getWitnessTable();
}

uint64_t sub_1BC635348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.onShowContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  if (a1)
  {

    sub_1BC711660(a1, a2, &v8);
    v6 = v8;
  }

  else
  {
    v6 = xmmword_1BC767530;
  }

  v8 = v6;
  sub_1BC75B220();

  return sub_1BC635468(v8, *(&v8 + 1));
}

uint64_t sub_1BC635468(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_1BC635484(result, a2);
  }

  return result;
}

uint64_t sub_1BC635484(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC6354C8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1BC6354F0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_1BC6355AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD12B0;
  if (!qword_1EDDD12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD12B0);
  }

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

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI28OnInterventionFailedCallbackVSg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_SDys11AnyHashableVypGSo18SCUIReportEvidenceCs5Error_pIegHgozo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BC6356A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI06OnShowB8CallbackVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC635780@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDD12C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntervenableAction(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDDD12C8);
  return sub_1BC68B6C8(v3, a1, type metadata accessor for IntervenableAction);
}

uint64_t sub_1BC635800(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC635850@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IntervenableAction(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BC68CD30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1BC635800(v4, v5);
}

uint64_t sub_1BC6358E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC635920(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BC68CD00;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for IntervenableAction(0) + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_1BC635800(v3, v4);
  result = sub_1BC635484(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1BC6359D0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = EnvironmentValues.analysisHistoryCheckStatus.getter(a2, a3, a4);
  *a1 = result;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1BC635A00(uint64_t a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  sub_1BC68B6C8(a1, &v12 - v6, type metadata accessor for IntervenableAction);
  v8 = sub_1BC68B6C8(v7, v5, type metadata accessor for IntervenableAction);
  sub_1BC6355AC(v8, v9, v10);
  sub_1BC75ABD0();
  return sub_1BC68C880(v7, type metadata accessor for IntervenableAction);
}

unint64_t sub_1BC635B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD6A8;
  if (!qword_1EBCDD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6A8);
  }

  return result;
}

unint64_t sub_1BC635B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD6B0;
  if (!qword_1EBCDD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6B0);
  }

  return result;
}

unint64_t sub_1BC635BB4()
{
  result = qword_1EBCDD6E8;
  if (!qword_1EBCDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6F0, &qword_1BC767040);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6E8);
  }

  return result;
}

__n128 sub_1BC635C64@<Q0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  EnvironmentValues.sensitiveContentCallbacks.getter(a2, a3, a4);
  a1[10] = v16;
  a1[11] = v17;
  a1[12] = v18;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v11;
  result = v7;
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t EnvironmentValues.sensitiveContentCallbacks.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC635DE4(a1, a2, a3);

  return sub_1BC75ABC0();
}

unint64_t sub_1BC635D18()
{
  result = qword_1EBCDD6E0;
  if (!qword_1EBCDD6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6D8, &qword_1BC767038);
    sub_1BC635BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6E0);
  }

  return result;
}

uint64_t sub_1BC635D9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1BC6354C8(*a1, v2);
  return EnvironmentValues.analysisHistoryCheckStatus.setter(v1, v2, v3);
}

unint64_t sub_1BC635DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDCF088;
  if (!qword_1EDDCF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCF088);
  }

  return result;
}

void *SensitiveContentInPreviousCallTipView.init(participants:onBlockParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BC6D0F94(0, v11, 0);
    v12 = v30;
    v28 = sub_1BC759FE0();
    v13 = *(v28 - 8);
    v14 = *(v13 + 16);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24[1] = a1;
    v16 = a1 + v15;
    v17 = *(v13 + 72);
    do
    {
      v14(v10, v16, v28);
      v10[*(v29 + 32)] = 0;
      v30 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BC6D0F94((v18 > 1), v19 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v19 + 1;
      sub_1BC6D1388(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19);
      v16 += v17;
      --v11;
    }

    while (v11);

    a3 = v26;
    a4 = v27;
    a2 = v25;
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_9:
    v22 = v12;
    v21 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = sub_1BC6D13F8;
  v22 = v12;
LABEL_10:
  result = sub_1BC6CD1CC(v22, 0, 0, v21, v20, &v30);
  *a4 = v30;
  return result;
}

uint64_t sub_1BC63609C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BC6360D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD730, &qword_1BC7670F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
    v7 = sub_1BC75C420();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BC660024(v9, v5, &qword_1EBCDD730, &qword_1BC7670F0);
      result = sub_1BC639118(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BC759FE0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC636318@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EDDD17F8 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = xmmword_1EDDD19C8;
  v15[10] = xmmword_1EDDD19D8;
  v15[11] = xmmword_1EDDD19E8;
  v2 = xmmword_1EDDD19E8;
  v15[12] = xmmword_1EDDD19F8;
  v3 = xmmword_1EDDD1988;
  v4 = xmmword_1EDDD1998;
  v15[6] = xmmword_1EDDD1998;
  v15[7] = xmmword_1EDDD19A8;
  v5 = xmmword_1EDDD19A8;
  v6 = xmmword_1EDDD19B8;
  v15[8] = xmmword_1EDDD19B8;
  v15[9] = xmmword_1EDDD19C8;
  v7 = xmmword_1EDDD1948;
  v8 = xmmword_1EDDD1958;
  v15[2] = xmmword_1EDDD1958;
  v15[3] = xmmword_1EDDD1968;
  v9 = xmmword_1EDDD1968;
  v10 = xmmword_1EDDD1978;
  v15[4] = xmmword_1EDDD1978;
  v15[5] = xmmword_1EDDD1988;
  v11 = xmmword_1EDDD1938;
  v15[0] = xmmword_1EDDD1938;
  v15[1] = xmmword_1EDDD1948;
  a1[10] = xmmword_1EDDD19D8;
  a1[11] = v2;
  a1[12] = xmmword_1EDDD19F8;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v11;
  a1[1] = v7;
  return sub_1BC6362BC(v15, &v14);
}

uint64_t SensitiveContentInPreviousCallTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD638, &qword_1BC766DF0);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD640, &qword_1BC766DF8);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD648, &qword_1BC766E00);
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v40 - v10;
  v11 = sub_1BC759F50();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  (*(v12 + 104))(v14, *MEMORY[0x1E697B570], v11);
  v16 = sub_1BC759F40();
  (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    v31 = 1;
    v32 = v50;
    return (*(v32 + 56))(v51, v31, 1, v9);
  }

  sub_1BC636A5C();

  v17 = sub_1BC636A68();
  v18 = *v17;
  sub_1BC636C24(v17, v19, v20);
  v21 = v18;
  *v5 = sub_1BC75A610();
  v54 = 0;
  sub_1BC75B630();
  v22 = v53;
  v5[8] = v52;
  *(v5 + 2) = v22;
  v54 = 0;
  sub_1BC75B630();
  v23 = v53;
  v5[24] = v52;
  *(v5 + 4) = v23;
  v54 = 0;
  sub_1BC75B630();
  v24 = v53;
  v5[40] = v52;
  *(v5 + 6) = v24;
  *(v5 + 7) = swift_getKeyPath();
  *(v5 + 32) = 0;
  PolicyProperty.init()(&v5[*(v3 + 36)]);
  *&v5[*(v3 + 40)] = v15;
  v25 = *(v15 + 16);
  if (!v25)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v41 = v3;
  v42 = v7;
  v43 = v9;
  v26 = sub_1BC639758(v25, 0);
  v27 = *(sub_1BC759FE0() - 8);
  v28 = sub_1BC639854(&v52, &v26[(*(v27 + 80) + 32) & ~*(v27 + 80)], v25, v15);
  v29 = v52;

  result = sub_1BC639AFC(v29);
  if (v28 == v25)
  {
    v7 = v42;
    v9 = v43;
    v3 = v41;
LABEL_7:
    KeyPath = swift_getKeyPath();
    v34 = sub_1BC633BF8();

    v35 = v44;
    View.checkingHistory(of:predicate:)(v26, sub_1BC6A5314, KeyPath, v3, v34);

    sub_1BC636CF0(v5);
    v52 = v3;
    v53 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v47;
    v37 = v48;
    View.prefetchSensitiveContentPolicy()(v47, OpaqueTypeConformance2);
    (*(v45 + 8))(v35, v38);
    sub_1BC759D90();
    sub_1BC759D80();
    v52 = v38;
    v53 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BC6330EC(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
    v39 = v46;
    sub_1BC75B210();

    (*(v49 + 8))(v37, v7);
    v32 = v50;
    (*(v50 + 32))(v51, v39, v9);
    v31 = 0;
    return (*(v32 + 56))(v51, v31, 1, v9);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1BC636A68()
{
  if (qword_1EBCF1E90 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF1E98;
}

void sub_1BC636AB8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1BC75BB30();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EBCF1E98 = v2;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BC636B78(_OWORD *a1)
{
  v1 = a1[9];
  v2 = a1[11];
  v27 = a1[10];
  v28 = v2;
  v3 = a1[11];
  v29 = a1[12];
  v4 = a1[5];
  v5 = a1[7];
  v23 = a1[6];
  v24 = v5;
  v6 = a1[7];
  v7 = a1[9];
  v25 = a1[8];
  v26 = v7;
  v8 = a1[1];
  v9 = a1[3];
  v19 = a1[2];
  v20 = v9;
  v10 = a1[3];
  v11 = a1[5];
  v21 = a1[4];
  v22 = v11;
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  v17[10] = v27;
  v17[11] = v3;
  v17[12] = a1[12];
  v17[6] = v23;
  v17[7] = v6;
  v17[8] = v25;
  v17[9] = v1;
  v17[2] = v19;
  v17[3] = v10;
  v17[4] = v21;
  v17[5] = v4;
  v17[0] = v18[0];
  v17[1] = v8;
  sub_1BC6362BC(v18, &v16);
  return EnvironmentValues.sensitiveContentCallbacks.setter(v17, v13, v14);
}

unint64_t sub_1BC636C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD718;
  if (!qword_1EBCDD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD718);
  }

  return result;
}

uint64_t sub_1BC636CF0(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC636D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v28 = a2;
  v3 = type metadata accessor for InterventionPresenter(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD20, &qword_1BC764248);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  sub_1BC6375D0(&v25 - v14);
  v16 = *(v2 + 8);
  v17 = *(v2 + 16);
  v32 = *v2;
  v33 = v16;
  v34 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  sub_1BC75B730();
  sub_1BC6A2AF0(v15, v25, v29, v30, v31, v9);

  PolicyProperty.wrappedValue.getter(v7);
  v18 = sub_1BC759EE0();
  v19 = (*(*(v18 - 8) + 48))(v7, 1, v18);
  sub_1BC66008C(v7, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v19 == 1)
  {
    v20 = 0;
  }

  else
  {
    sub_1BC6375D0(v13);
    v21 = type metadata accessor for InterventionConfig(0);
    v20 = (*(*(v21 - 8) + 48))(v13, 1, v21) == 1;
    sub_1BC66008C(v13, &qword_1EBCDC250, &qword_1BC761340);
  }

  LOBYTE(v32) = v20;
  sub_1BC63368C(v2, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InterventionPresenter);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_1BC6A52AC(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for InterventionPresenter);
  sub_1BC6A5340();
  sub_1BC75B420();

  sub_1BC66008C(v9, &qword_1EBCDCD20, &qword_1BC764248);
  return sub_1BC66008C(v15, &qword_1EBCDC250, &qword_1BC761340);
}

uint64_t sub_1BC637164()
{
  v1 = type metadata accessor for InterventionPresenter(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_1BC63906C(*(v5 + 24), *(v5 + 32), *(v5 + 40));
  v6 = v0 + v3 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  v10 = v5 + v1[7];
  v11 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (EnumCaseMultiPayload != 7)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v14 = sub_1BC759D00();
        (*(*(v14 - 8) + 8))(v10, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_20;
        }

        v13 = sub_1BC759CA0();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v13 = sub_1BC759DE0();
LABEL_15:
        (*(*(v13 - 8) + 8))(v10, v13);
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v15 = v5 + v1[8];
  v16 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = sub_1BC759940();
    (*(*(v17 - 8) + 8))(v15, v17);

    v18 = *(v16 + 24);
    v19 = sub_1BC759EE0();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v20 = *(v16 + 48);
    v21 = sub_1BC759C70();
    (*(*(v21 - 8) + 8))(v15 + v20, v21);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6375D0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1BC759EE0();
  v36 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for InterventionConfig.Layout(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v20 = type metadata accessor for InterventionPresenter(0);
  sub_1BC660024(v1 + *(v20 + 28), v13, &qword_1EBCDC878, &qword_1BC763F00);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BC66008C(v13, &qword_1EBCDC878, &qword_1BC763F00);
LABEL_8:
    v29 = 1;
    v28 = v37;
    goto LABEL_9;
  }

  sub_1BC6A52AC(v13, v19, type metadata accessor for InterventionConfig.Layout);
  PolicyProperty.wrappedValue.getter(v6);
  v21 = v36;
  if ((*(v36 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC6A4570(v19, type metadata accessor for InterventionConfig.Layout);
    sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_8;
  }

  v22 = v35;
  (*(v21 + 32))(v35, v6, v7);
  v23 = v34;
  sub_1BC759E50();
  sub_1BC6330A4(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v24 = sub_1BC75C170();
  v25 = *(v21 + 8);
  v25(v23, v7);
  if ((v24 & 1) == 0)
  {
    v25(v22, v7);
    sub_1BC6A4570(v19, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_8;
  }

  sub_1BC63368C(v19, v33, type metadata accessor for InterventionConfig.Layout);
  (*(v21 + 16))(v23, v22, v7);
  v26 = v32;
  sub_1BC660024(v1 + *(v20 + 32), v32, &qword_1EBCDBC50, &qword_1BC762D70);
  v27 = sub_1BC67A2E4();
  v28 = v37;
  InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)(v33, v23, v27, v26, 0, v37);
  v25(v22, v7);
  sub_1BC6A4570(v19, type metadata accessor for InterventionConfig.Layout);
  v29 = 0;
LABEL_9:
  v30 = type metadata accessor for InterventionConfig(0);
  return (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
}

uint64_t sub_1BC637B24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for InterventionConfig.Layout(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1BC759EE0();
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
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for AnalyticsUIContext(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BC637CAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for InterventionConfig.Layout(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759EE0();
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
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for AnalyticsUIContext(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

void sub_1BC637E20(uint64_t a1, _BYTE *a2)
{
  v4 = *(type metadata accessor for InterventionPresenter(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1BC6A3D90(a2, v5);
}

uint64_t sub_1BC637E90()
{
  v0 = type metadata accessor for IntervenableAction(0);
  __swift_allocate_value_buffer(v0, qword_1EDDD12C8);
  v1 = __swift_project_value_buffer(v0, qword_1EDDD12C8);
  type metadata accessor for IntervenableAction.BoolBox();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 255;
  v3 = *(v0 + 28);
  v4 = sub_1BC75A160();
  result = (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v6 = (v1 + *(v0 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

double sub_1BC637F60@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1BC767530;
  a1[1] = xmmword_1BC767530;
  a1[2] = xmmword_1BC767530;
  a1[3] = xmmword_1BC767530;
  a1[4] = xmmword_1BC767530;
  a1[5] = xmmword_1BC767530;
  a1[6] = xmmword_1BC767530;
  a1[7] = xmmword_1BC767530;
  a1[8] = xmmword_1BC767530;
  a1[9] = xmmword_1BC767530;
  a1[10] = xmmword_1BC767530;
  a1[11] = xmmword_1BC767530;
  a1[12] = xmmword_1BC767530;
  return result;
}

uint64_t sub_1BC637F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD668, &qword_1BC766FF0);
  v74 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v64 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD670, &qword_1BC766FF8);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v64 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD678, &qword_1BC767000);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v85 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD680, &qword_1BC767008);
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v64 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD688, &unk_1BC767010);
  v10 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v80 = &v64 - v11;
  v12 = sub_1BC759EE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v64 - v17;
  type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v19 = v1;
  PolicyProperty.wrappedValue.getter(v18);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    sub_1BC66008C(v18, &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_3;
  }

  v84 = a1;
  sub_1BC759E10();
  sub_1BC6330EC(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v21 = sub_1BC75C170();
  v22 = *(v13 + 8);
  v22(v15, v12);
  v22(v18, v12);
  if ((v21 & 1) == 0)
  {
    v20 = 1;
    a1 = v84;
    goto LABEL_10;
  }

  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD660, &unk_1BC766F48);
  v24 = sub_1BC75A600();
  v27 = v87;
  a1 = v84;
  if (v87 == 3 || (LOBYTE(v99) = 0, sub_1BC6D1DBC(v24, v25, v26), (sub_1BC75BAB0() & 1) != 0))
  {
LABEL_3:
    v20 = 1;
LABEL_10:
    v33 = v86;
    return (*(v10 + 56))(a1, v20, 1, v33);
  }

  v28 = sub_1BC6CDE84();
  if (v29 == -1)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v30 = v29;
    v31 = v28;
    v32 = Array<A>.partitionByIsFromMeFlag.getter(v28);
    sub_1BC638C1C(v31, v30);
  }

  v35 = sub_1BC6CE62C();
  LOBYTE(v99) = v27;
  v90 = &type metadata for SensitiveContentInPreviousCallTip;
  v91 = sub_1BC6D1E10(v35, v36, v37);
  sub_1BC729334(v32, v35, &v99, &v87);
  sub_1BC75A540();
  SensitiveContentTipViewStyle.init()();
  v38 = sub_1BC633C54(&qword_1EBCDD6A0, &qword_1EBCDD668, &qword_1BC766FF0, MEMORY[0x1E6982A10]);
  v41 = sub_1BC635B08(v38, v39, v40);
  v42 = v75;
  sub_1BC75B1C0();
  (*(v74 + 8))(v5, v3);
  v43 = *(v23 + 16);
  LOBYTE(v99) = *(v23 + 8);
  v100 = v43;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v65 = v23;
  v87 = v3;
  v88 = &type metadata for SensitiveContentTipViewStyle;
  v89 = v38;
  v90 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_1BC635B5C(OpaqueTypeConformance2, v44, v45);
  v46 = v77;
  sub_1BC75B3C0();

  (v76[1])(v42, v46);
  v47._countAndFlagsBits = 0x4C45485F45524F4DLL;
  v47._object = 0xE900000000000050;
  SCLocalizedStringKey.init(stringLiteral:)(v47);
  v76 = v100;
  v97 = v99;
  v98 = v100;
  v48 = v65;
  v49 = *(v65 + 48);
  v95 = *(v65 + 40);
  v96 = v49;
  v50 = sub_1BC75B660();
  v75 = &v64;
  v70 = v87;
  v69 = v88;
  v72 = v89;
  v51 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6B8, &qword_1BC767028);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6C0, &qword_1BC767030);
  v87 = v46;
  v88 = &type metadata for WaysToGetHelpWebView;
  v89 = OpaqueTypeConformance2;
  v90 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v71 = sub_1BC651EB8(v68, v52, v53);
  OpaqueTypeConformance2 = sub_1BC633C54(&qword_1EBCDD6C8, &qword_1EBCDD6B8, &qword_1BC767028, MEMORY[0x1E6981F48]);
  v77 = sub_1BC6D1E74();
  v54 = v79;
  v55 = v81;
  v56 = v85;
  sub_1BC75B2D0();

  (*(v78 + 8))(v56, v54);
  v85 = sub_1BC75AC70();
  LODWORD(v78) = v57;
  v58 = *(v48 + 32);
  LOBYTE(v99) = *(v48 + 24);
  v100 = v58;
  v59 = sub_1BC75B660();
  v76 = &v64;
  MEMORY[0x1EEE9AC00](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6D8, &qword_1BC767038);
  v87 = v54;
  v88 = MEMORY[0x1E69E6158];
  v89 = v66;
  v90 = v67;
  v91 = v68;
  v92 = v71;
  v93 = OpaqueTypeConformance2;
  v94 = v77;
  swift_getOpaqueTypeConformance2();
  sub_1BC635D18();
  v60 = v83;
  v61 = v80;
  sub_1BC75B2E0();

  (*(v82 + 8))(v55, v60);
  a1 = v84;
  v62 = v86;
  (*(v10 + 32))(v84, v61, v86);
  v33 = v62;
  v20 = 0;
  return (*(v10 + 56))(a1, v20, 1, v33);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  sub_1BC680E6C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BC638C10(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    return sub_1BC638C1C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC638C1C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_1BC638C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759D00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1BC68C20C(&qword_1EDDCEE88, MEMORY[0x1E697B460], MEMORY[0x1E697B470]);
    v21 = sub_1BC75BAB0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t IntervenableAction.buttonTreatment.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1BC75A160();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 17) != 1)
  {
    goto LABEL_7;
  }

  v10 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v1 + *(v10 + 28), v5, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BC66008C(v5, &qword_1EBCDC868, &qword_1BC762D30);
    goto LABEL_5;
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = sub_1BC75A150();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
LABEL_7:
    result = 1;
    goto LABEL_8;
  }

LABEL_5:
  result = *(v1 + 16);
  if (*(v1 + 16) > 1u)
  {
    if (result == 2 && (sub_1BC638C30(MEMORY[0x1E69E7CC0], *(v1 + 8)) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
LABEL_12:
    result = sub_1BC75B5C0();
  }

LABEL_8:
  *a1 = result;
  return result;
}

uint64_t sub_1BC63906C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BC635468(result, a2);
  }

  else
  {
  }
}

unint64_t sub_1BC639118(uint64_t a1)
{
  sub_1BC759FE0();
  sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
  v2 = sub_1BC75BA60();

  return sub_1BC6391B0(a1, v2);
}

unint64_t sub_1BC6391B0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1BC6330EC(&qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);
      v15 = sub_1BC75BAB0();
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

uint64_t sub_1BC639370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BC759FE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v43 = v4;
  result = sub_1BC75C410();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_1BC635800(*v30, v28);
      }

      sub_1BC6330EC(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
      result = sub_1BC75BA60();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void *sub_1BC639758(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v4 = *(sub_1BC759FE0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC639854(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1BC759FE0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BC639B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB00();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC639B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB00();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1BC639C2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC639E94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_1BC639CB0(void *a1, uint64_t *a2)
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

void *sub_1BC639CE0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BC639D0C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1BC639DF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BC639E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BC65EC38(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BC639E54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1BC639E94(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BC639EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC639EFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BC759940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759EE0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1BC759C70();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[12];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[13]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BC63A050(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BC759940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1BC759EE0();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_1BC759C70();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[12];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BC63A1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63A234()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC63A26C()
{
  v1 = (type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1BC67D564(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), sub_1BC635480);
  v5 = v0 + v4 + v1[8];
  v6 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1BC759940();
    (*(*(v7 - 8) + 8))(v5, v7);

    v8 = *(v6 + 24);
    v9 = sub_1BC759EE0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = *(v6 + 48);
    v11 = sub_1BC759C70();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC63A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BC63A56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BC63A674(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1BC63A730(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63A890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63A93C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC440, &qword_1BC7617C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63A9F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC440, &qword_1BC7617C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63AB38()
{
  v1 = (type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_1BC67D564(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), sub_1BC635480);
  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1BC759940();
    (*(*(v7 - 8) + 8))(v5, v7);

    v8 = *(v6 + 24);
    v9 = sub_1BC759EE0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = *(v6 + 48);
    v11 = sub_1BC759C70();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63AD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
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

uint64_t sub_1BC63ADB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63AE34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BC759800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63AEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC759800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63AF84()
{
  sub_1BC6877A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), sub_1BC635480);
  sub_1BC6877A0(*(v0 + 40), *(v0 + 48), *(v0 + 56), sub_1BC635480);

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1BC63B004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC800, &unk_1BC762AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC63B07C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = type metadata accessor for PolicyProperty(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BC63B258(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  result = type metadata accessor for PolicyProperty(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BC63B434()
{
  v1 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1BC638C10(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 9));

  if (*(v0 + v3 + 32))
  {
  }

  v6 = v5 + v1[7];
  v7 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (EnumCaseMultiPayload != 7)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v10 = sub_1BC759D00();
        (*(*(v10 - 8) + 8))(v6, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_17;
        }

        v9 = sub_1BC759CA0();
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v9 = sub_1BC759DE0();
LABEL_12:
        (*(*(v9 - 8) + 8))(v6, v9);
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);

  v11 = v5 + v1[8];
  v12 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = sub_1BC759940();
    (*(*(v13 - 8) + 8))(v11, v13);

    v14 = *(v12 + 24);
    v15 = sub_1BC759EE0();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
    v16 = *(v12 + 48);
    v17 = sub_1BC759C70();
    (*(*(v17 - 8) + 8))(v11 + v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v18 = v5 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v20 = sub_1BC759EE0();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v18, 1, v20))
      {
        (*(v21 + 8))(v18, v20);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  v22 = v1[11];
  v23 = sub_1BC75A160();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v5 + v22, 1, v23))
  {
    (*(v24 + 8))(v5 + v22, v23);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1BC63BA50(void *a1)
{
  sub_1BC75A960();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  sub_1BC75AE10();
  v4 = sub_1BC75AE10();
  sub_1BC694E64(v4, v1, v2);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63BCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
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

uint64_t sub_1BC63BD40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BC759FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63BDC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63BDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9C0, &qword_1BC763770);
  sub_1BC695800();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC63BF28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PolicyProperty(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC63BFF4(uint64_t *a1)
{
  type metadata accessor for PolicyCheckingIntervention(255);
  sub_1BC75A960();
  sub_1BC6A45D0(qword_1EDDD1180, type metadata accessor for PolicyCheckingIntervention, &unk_1BC76406C);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63C0B4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75AE10();
  sub_1BC75B590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63C2EC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63C470(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BC63C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Intervention.Kind(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63C740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PolicyProperty(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Intervention.Kind(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BC63C898()
{
  v1 = type metadata accessor for PolicyCheckingIntervention(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {
      v6 = sub_1BC759EE0();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  v8 = v4 + *(v1 + 20);

  if (*(v8 + 16) != 255)
  {
  }

  v9 = type metadata accessor for IntervenableAction(0);
  v10 = *(v9 + 28);
  v11 = sub_1BC75A160();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  if (*(v8 + *(v9 + 32)))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);

  v13 = v4 + *(v1 + 24);
  type metadata accessor for Intervention.Kind(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 4u:

      break;
    case 2u:

      goto LABEL_24;
    case 3u:

      goto LABEL_24;
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:

      goto LABEL_24;
    case 6u:
    case 0xCu:

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
      v15 = sub_1BC759CA0();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v13 + v14, 1, v15))
      {
        (*(v16 + 8))(v13 + v14, v15);
      }

      v17 = &qword_1EBCDCBE8;
      v18 = &unk_1BC763EF0;
      goto LABEL_23;
    case 0xBu:

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC00, &qword_1BC763F78) + 32);
      v20 = sub_1BC759DE0();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v13 + v19, 1, v20))
      {
        (*(v21 + 8))(v13 + v19, v20);
      }

      v17 = &unk_1EBCDCC30;
      v18 = &unk_1BC7640E0;
LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);

LABEL_24:

      break;
    default:
      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v23, v2 | 7);
}

uint64_t sub_1BC63CDB0()
{
  v1 = (type metadata accessor for InterventionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1BC67D564(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), sub_1BC635480);

  v5 = v0 + v4 + v1[9];
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v5, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_14;
      }

      v7 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v7 = sub_1BC759DE0();
LABEL_9:
      (*(*(v7 - 8) + 8))(v5, v7);
      goto LABEL_14;
    }
  }

LABEL_14:
  v9 = type metadata accessor for InterventionConfig(0);
  v10 = *(v9 + 20);
  v11 = sub_1BC759EE0();
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);

  v13 = v5 + *(v9 + 32);
  v14 = sub_1BC759940();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for AnalyticsUIContext(0);

  v12(v13 + *(v15 + 24), v11);
  v16 = *(v15 + 48);
  v17 = sub_1BC759C70();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC63D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = type metadata accessor for InterventionConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63D1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for InterventionConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 208);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC63D318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InterventionConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 208) = -a2;
  }

  return result;
}

uint64_t sub_1BC63D404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD68, &qword_1BC7642C0);
  sub_1BC759D90();
  sub_1BC6A6660();
  sub_1BC6A67F0(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD98, &qword_1BC764330);
  type metadata accessor for _InterventionView(255);
  sub_1BC6A67F0(&qword_1EBCDCDA0, type metadata accessor for _InterventionView, &unk_1BC7644B4);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D57C()
{
  type metadata accessor for _WaysToGetHelpWebView(255);
  sub_1BC6A67F0(&qword_1EBCDCDB0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC7645E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63D604()
{
  v1 = (type metadata accessor for InterventionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_1BC67D564(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), sub_1BC635480);
  sub_1BC67D564(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), sub_1BC635480);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v5, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_14;
      }

      v7 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v7 = sub_1BC759DE0();
LABEL_9:
      (*(*(v7 - 8) + 8))(v5, v7);
      goto LABEL_14;
    }
  }

LABEL_14:
  v9 = type metadata accessor for InterventionConfig(0);
  v10 = *(v9 + 20);
  v11 = sub_1BC759EE0();
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);

  v13 = v5 + *(v9 + 32);
  v14 = sub_1BC759940();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for AnalyticsUIContext(0);

  v12(v13 + *(v15 + 24), v11);
  v16 = *(v15 + 48);
  v17 = sub_1BC759C70();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63D948()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC63D98C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63D9C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC63DA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s6VictimVMa(0);
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

uint64_t sub_1BC63DB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s6VictimVMa(0);
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

uint64_t sub_1BC63DC88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BC759910();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63DD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC759910();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63DDD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BC759B50();
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BC63DFB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BC759B50();
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

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1BC63E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC63E248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759800();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC63E304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63E37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63E3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 208);
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
    v8 = type metadata accessor for PolicyProperty(0);
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
      v13 = sub_1BC759CA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BC63E514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 208) = -a2;
  }

  else
  {
    v8 = type metadata accessor for PolicyProperty(0);
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
      v13 = sub_1BC759CA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC63E638(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BC63E6EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63E7A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1BC759FE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BC63E844(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_1BC759FE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63E8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
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
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC63E988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PolicyProperty(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63EA28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5C8, &qword_1BC766B98);
  sub_1BC759D90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5C0, &qword_1BC766B90);
  type metadata accessor for _SensitiveParticipantBadge(255);
  sub_1BC6CC3E8(&qword_1EBCDD5D0, type metadata accessor for _SensitiveParticipantBadge, &unk_1BC766CC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BC6CC3E8(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63EBBC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PolicyProperty(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC63EC68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PolicyProperty(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC63ED10()
{
  v1 = sub_1BC759D00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63EDD4()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC63EE60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1BC759FE0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC63EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*v6 + 64);

  v10 = sub_1BC759FE0();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[9], v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BC63F1DC()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC63F214(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for InterventionConfig(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1BC63F390(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for InterventionConfig(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BC63F510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759AD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for InterventionConfig(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BC63F638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759AD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for InterventionConfig(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BC63F764()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC63F7A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC63F7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SCUIInterventionKind._Kind(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63F858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SCUIInterventionKind._Kind(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63F8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC63F948(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC63F9D8(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutV4ModeOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC63FA44(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutV4ModeOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BC63FAB4(uint64_t *a1)
{
  type metadata accessor for SensitiveContentRedactor(255);
  sub_1BC75A960();
  sub_1BC6EB9E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BC759D90();
  swift_getOpaqueTypeConformance2();
  sub_1BC633134(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC63FBE4(uint64_t *a1)
{
  sub_1BC75AA10();
  sub_1BC75A960();
  sub_1BC75A960();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC63FCB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PolicyProperty(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v12 = _s6LayoutVMa(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[12] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BC63FE70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PolicyProperty(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[9];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[10];
      }

      else
      {
        result = _s6LayoutVMa(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 8) = a2;
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[11];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BC640028()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6F4B1C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v0 + v4 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);

  v10 = v5 + v1[9];
  v11 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_1BC759940();
    (*(*(v12 - 8) + 8))(v10, v12);

    v13 = *(v11 + 24);
    v14 = sub_1BC759EE0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = *(v11 + 48);
    v16 = sub_1BC759C70();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v17 = v5 + v1[10];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v19 = sub_1BC759CA0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v17 + v18, 1, v19))
  {
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v5 + v1[11];
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      v23 = sub_1BC759FE0();
      (*(*(v23 - 8) + 8))(v21, v23);
      v24 = &qword_1EBCDBF80;
      v25 = &qword_1BC75FA30;
    }

    else
    {
      v27 = sub_1BC759FE0();
      (*(*(v27 - 8) + 8))(v21, v27);
      v24 = &qword_1EBCDBF88;
      v25 = &qword_1BC75FA38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = sub_1BC759D50();
    (*(*(v26 - 8) + 8))(v21, v26);
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BC640584()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v31 = sub_1BC759FE0();
  v3 = *(v31 - 8);
  v4 = *(v3 + 80);
  v30 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  sub_1BC6F4B1C(*v5, *(v5 + 8));
  v6 = v5 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);

  v10 = v5 + v1[9];
  v11 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_1BC759940();
    (*(*(v12 - 8) + 8))(v10, v12);

    v13 = *(v11 + 24);
    v14 = sub_1BC759EE0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = *(v11 + 48);
    v16 = sub_1BC759C70();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v17 = v5 + v1[10];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v19 = sub_1BC759CA0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v17 + v18, 1, v19))
  {
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v5 + v1[11];
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v31;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      (*(v3 + 8))(v21, v31);
      v24 = &qword_1EBCDBF80;
      v25 = &qword_1BC75FA30;
    }

    else
    {
      (*(v3 + 8))(v21, v31);
      v24 = &qword_1EBCDBF88;
      v25 = &qword_1BC75FA38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    goto LABEL_19;
  }

  v23 = v31;
  if (EnumCaseMultiPayload == 2)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = sub_1BC759D50();
    (*(*(v26 - 8) + 8))(v21, v26);
  }

LABEL_20:
  v27 = (((v2 + 16) & ~v2) + v29 + v4) & ~v4;

  (*(v3 + 8))(v0 + v27, v23);

  return MEMORY[0x1EEE6BDD0](v0, v27 + v30, v2 | v4 | 7);
}

uint64_t sub_1BC640B54()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC640B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE10, &qword_1BC7694A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC640BFC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC640CB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC640D68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC640E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC640ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BC640FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC641070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BC64112C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC6411DC(uint64_t *a1)
{
  sub_1BC75AE90();
  swift_getOpaqueTypeMetadata2();
  sub_1BC75A9B0();
  swift_getOpaqueTypeConformance2();
  sub_1BC6FFB80(&qword_1EBCDDDA0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDA8, &unk_1BC769458);
  sub_1BC75A960();
  swift_getOpaqueTypeConformance2();
  sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC6413C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
  sub_1BC75B7C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDB8, &qword_1BC769468);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC8, &qword_1BC769478);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDD0, &qword_1BC769480);
  sub_1BC75A960();
  sub_1BC75B7C0();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75A960();
  sub_1BC75AE10();
  sub_1BC6D1E74();
  swift_getWitnessTable();
  v1 = MEMORY[0x1E6980A18];
  sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  v2 = MEMORY[0x1E697FDC0];
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478, v2);
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC641788(void *a1)
{
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
  swift_getTupleTypeMetadata2();
  sub_1BC75B850();
  swift_getWitnessTable();
  sub_1BC75B6D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  swift_getWitnessTable();
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
  return swift_getWitnessTable();
}

uint64_t sub_1BC6418D4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF88, &qword_1BC769588);
  sub_1BC633C54(&qword_1EBCDDF90, &qword_1EBCDDF88, &qword_1BC769588, &unk_1BC769680);
  sub_1BC75A8B0();
  return swift_getWitnessTable();
}

uint64_t sub_1BC641984(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  sub_1BC75A960();
  sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
  return swift_getWitnessTable();
}

uint64_t sub_1BC641A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC641AAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1BC641BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BC641CF8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE320, &unk_1BC769F90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC641E34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD920, qword_1BC767B10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE320, &unk_1BC769F90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC641F70(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ReportScreen(0);
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
      v13 = sub_1BC75A830();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC642094(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
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
      v13 = sub_1BC75A830();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC6421B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ReportScreen(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC642264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ReportScreen(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC642308()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE140, &qword_1BC769B08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE188, &qword_1BC769B28);
  v0 = sub_1BC633C54(&unk_1EBCDE190, &qword_1EBCDE140, &qword_1BC769B08, MEMORY[0x1E697C1A8]);
  sub_1BC651EB8(v0, v1, v2);
  sub_1BC70A620();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC642448()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC642498()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC6424D0()
{
  v1 = sub_1BC759800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC642594()
{
  v1 = *(type metadata accessor for ReportScreen(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = v5 + *(v9 + 24);

      v11 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v11 + 44)], v7);

      v12 = (v5 + *(v9 + 52));
      v13 = v12[1];
      if (v13 >> 60 != 15)
      {
        sub_1BC6AE140(*v12, v13);
      }
    }
  }

  else
  {
    v14 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v14 - 8) + 48))(v0 + v3, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BC759800();
      v17 = *(*(v16 - 8) + 8);
      v17(v5 + v15, v16);
      v17(v5 + *(v14 + 32), v16);
    }
  }

  v18 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BC64291C()
{
  v1 = type metadata accessor for Report.Evidence(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_1BC759910();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v5 + *(v1 + 24);

  v9 = _s6VictimVMa(0);
  (*(v7 + 8))(v8 + *(v9 + 44), v6);

  v10 = (v5 + *(v1 + 52));
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1BC6AE140(*v10, v11);
  }

  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1BC642B88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC642BD8(uint64_t a1, int a2)
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

uint64_t sub_1BC642BF8(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC642CEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BC642D24()
{
  MEMORY[0x1BFB27FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC642D5C()
{
  v1 = type metadata accessor for InterventionConfig(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_14;
      }

      v7 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v7 = sub_1BC759DE0();
LABEL_9:
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      goto LABEL_14;
    }
  }

LABEL_14:
  v9 = *(v1 + 20);
  v10 = sub_1BC759EE0();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);

  v12 = v5 + *(v1 + 32);
  v13 = sub_1BC759940();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for AnalyticsUIContext(0);

  v11(v12 + *(v14 + 24), v10);
  v15 = *(v14 + 48);
  v16 = sub_1BC759C70();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC643050()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC643124()
{
  v1 = sub_1BC759EE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC6431AC()
{
  if (v0[2] >= 2uLL)
  {
  }

  if (v0[4] >= 2uLL)
  {
  }

  if (v0[6] >= 2uLL)
  {
  }

  if (v0[8] >= 2uLL)
  {
  }

  if (v0[10] >= 2uLL)
  {
  }

  if (v0[12] >= 2uLL)
  {
  }

  if (v0[14] >= 2uLL)
  {
  }

  if (v0[16] >= 2uLL)
  {
  }

  if (v0[18] >= 2uLL)
  {
  }

  if (v0[20] >= 2uLL)
  {
  }

  if (v0[22] >= 2uLL)
  {
  }

  if (v0[24] >= 2uLL)
  {
  }

  if (v0[26] >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1BC6432E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5 == 1)
  {
    TupleTypeMetadata = sub_1BC75C110();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v5;
      do
      {
        v9 += 8;
        *v10++ = sub_1BC75C110();
        --v11;
      }

      while (v11);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, a2);
}

uint64_t sub_1BC6433F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6 == 1)
  {
    TupleTypeMetadata = sub_1BC75C110();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v10 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v6;
      do
      {
        v10 += 8;
        *v11++ = sub_1BC75C110();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_1BC64350C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BC6435BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BC75B910();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BC6436AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BC75B910();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BC6437D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759800();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BC6438A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759800();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1BC643990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE988, &qword_1BC76CBA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9A8, &qword_1BC76CBB8);
  sub_1BC633C54(&qword_1EBCDE9B0, &qword_1EBCDE988, &qword_1BC76CBA0, &unk_1BC769590);
  sub_1BC633C54(&qword_1EBCDE9B8, &qword_1EBCDE9A8, &qword_1BC76CBB8, MEMORY[0x1E697C5E0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643A80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9C8, &qword_1BC76CBC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE9C0, &qword_1BC76CBC0);
  sub_1BC633C54(&qword_1EBCDE9E0, &qword_1EBCDE9C0, &qword_1BC76CBC0, &unk_1BC769590);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA18, &qword_1BC76CBF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
  sub_1BC726B00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC643D30()
{
  v1 = *(type metadata accessor for MediaPreviewScreen(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(v1 + 64);
  v4 = v0 + v3;
  v5 = sub_1BC759800();
  v6 = *(v5 - 8);
  v17 = *(v6 + 8);
  v17(v0 + v3, v5);
  v7 = type metadata accessor for Report.Media(0);
  v8 = v7[5];
  v9 = sub_1BC759B50();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v7[6];
  v11 = sub_1BC75A050();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = (v4 + v7[9]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1BC6AE140(*v13, v14);
  }

  v15 = v7[11];
  if (!(*(v6 + 48))(v4 + v15, 1, v5))
  {
    v17(v4 + v15, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v18, v2 | 7);
}

uint64_t sub_1BC643F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB10, &qword_1BC76D0A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC644058()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC644098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC759910();
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

uint64_t sub_1BC644158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC759910();
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

uint64_t sub_1BC644214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC6442DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1BC6443A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759EE0();
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

uint64_t sub_1BC644410(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BC759EE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BC644490(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECC8, &unk_1BC76D878);
  sub_1BC75A960();
  sub_1BC75AE10();
  sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BC64457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
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

uint64_t sub_1BC644644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
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

uint64_t sub_1BC644708()
{
  v1 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {
      v6 = sub_1BC759EE0();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }
    }
  }

  else
  {
  }

  j__swift_release(*(v0 + v3 + *(v1 + 20)));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6448D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC64492C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BC644A10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BC644AB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC644B0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC644B44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF60, &unk_1BC76DED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF58, &qword_1BC76DEC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF50, &qword_1BC76DEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF48, &qword_1BC76DEB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF40, &qword_1BC76DEB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF38, &qword_1BC76DEA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF30, &qword_1BC76DEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF28, &qword_1BC76DE98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF20, &qword_1BC76DE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF18, &qword_1BC76DE88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF10, &qword_1BC76DE80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF08, &qword_1BC76DE78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  sub_1BC73F0A4();
  swift_getOpaqueTypeConformance2();
  sub_1BC73F25C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC644ECC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC644F04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC644F98()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC645070(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEFC0, qword_1BC76E0B0);
  sub_1BC633C54(&qword_1EBCDEFC8, &qword_1EBCDEFC0, qword_1BC76E0B0, MEMORY[0x1E6981F48]);
  sub_1BC75B140();
  return swift_getWitnessTable();
}

uint64_t sub_1BC645120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BC645240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BC64536C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BC75A8F0();
  }

  else
  {
    sub_1BC75A860();
  }

  return sub_1BC75A960();
}

uint64_t sub_1BC6453D4(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BC75A8F0();
    sub_1BC75A960();
    sub_1BC7481C0();
  }

  else
  {
    sub_1BC75A860();
    sub_1BC75A960();
    sub_1BC74820C(qword_1EDDCEEC0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1BC6454C8()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v37 = *(*(v1 - 1) + 80);
  v2 = (v37 + 16) & ~v37;
  v35 = *(*(v1 - 1) + 64);
  v38 = _s6VictimVMa(0);
  v3 = *(*(v38 - 8) + 80);
  v34 = *(*(v38 - 8) + 64);
  v36 = v2;
  v4 = (v0 + v2);
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v4, 1, v6))
      {
        (*(v7 + 8))(v4, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = v4 + *(v8 + 24);

      (*(v7 + 8))(&v9[*(v38 + 44)], v6);

      v10 = (v4 + *(v8 + 52));
      v11 = v10[1];
      if (v11 >> 60 != 15)
      {
        sub_1BC6AE140(*v10, v11);
      }
    }
  }

  else
  {
    v12 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v12 - 8) + 48))(v0 + v2, 1, v12))
    {

      v13 = *(v12 + 28);
      v14 = sub_1BC759800();
      v15 = *(*(v14 - 8) + 8);
      v15(v4 + v13, v14);
      v15(v4 + *(v12 + 32), v14);
    }
  }

  v16 = (v4 + v1[5]);
  v17 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {

    v18 = *(v17 + 28);
    v19 = sub_1BC759800();
    v20 = *(*(v19 - 8) + 8);
    v20(v16 + v18, v19);
    v20(v16 + *(v17 + 32), v19);
  }

  v21 = v4 + v1[7];

  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32)];
  v23 = sub_1BC759910();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v22, 1, v23))
  {
    (*(v24 + 8))(v22, v23);
  }

  v25 = type metadata accessor for Report.Evidence(0);
  v26 = &v22[*(v25 + 24)];

  v27 = *(v24 + 8);
  v27(&v26[*(v38 + 44)], v23);

  v28 = &v22[*(v25 + 52)];
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1BC6AE140(*v28, v29);
  }

  v30 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_1BC75A710();
    (*(*(v31 - 8) + 8))(v4 + v30, v31);
  }

  else
  {
  }

  v32 = (v36 + v35 + v3) & ~v3;

  v27((v0 + v32 + *(v38 + 44)), v23);

  return MEMORY[0x1EEE6BDD0](v0, ((v34 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v37 | v3 | 7);
}

uint64_t sub_1BC645C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CheckSelector(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  v10 = v4 + v8 + v6[11];

  sub_1BC75C110();
  v11 = *(sub_1BC75B760() + 32);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v10 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1BC645DD4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ReportScreen(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BC645F04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ReportScreen(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BC646034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s6VictimVMa(0);
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

uint64_t sub_1BC64614C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s6VictimVMa(0);
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

uint64_t sub_1BC646260(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ReportScreen(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Report.Authority(0);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BC646434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ReportScreen(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Report.Authority(0);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BC646608(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BC6466C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF98, &qword_1BC7697A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC646774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF010, &qword_1BC76E300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF018, &qword_1BC76E308);
  sub_1BC747094();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC646814()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF080, &qword_1BC76E3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0D0, &qword_1BC76E3D0);
  sub_1BC750C24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  sub_1BC750D78();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BC646970(void *a1)
{
  sub_1BC75BD70();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF168, &qword_1BC76E438);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1BC75B790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
  sub_1BC7515E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1BC646AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CheckSelector(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v19 = *(*v6 + 64);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);

  v12 = v4 + v8 + v6[11];

  sub_1BC75C110();
  v13 = *(sub_1BC75B760() + 32);
  v14 = (*(v9 + 48))(v12 + v13, 1, v5);
  v15 = *(v9 + 8);
  if (!v14)
  {
    v15(v12 + v13, v5);
  }

  v16 = v7 | v10;
  v17 = (v8 + v19 + v10) & ~v10;
  v15(v4 + v17, v5);

  return MEMORY[0x1EEE6BDD0](v4, v17 + v11, v16 | 7);
}

uint64_t sub_1BC646C8C()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v35 = *(*(v1 - 1) + 64);
  v38 = _s6VictimVMa(0);
  v4 = *(*(v38 - 8) + 80);
  v36 = *(*(v38 - 8) + 64);
  v37 = v0;
  v3 = (v2 + 16) & ~v2;
  v5 = (v0 + v3);
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = v5 + *(v9 + 24);

      (*(v8 + 8))(&v10[*(v38 + 44)], v7);

      v11 = (v5 + *(v9 + 52));
      v12 = v11[1];
      if (v12 >> 60 != 15)
      {
        sub_1BC6AE140(*v11, v12);
      }
    }
  }

  else
  {
    v13 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v13 - 8) + 48))(v0 + v3, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BC759800();
      v16 = *(*(v15 - 8) + 8);
      v16(v5 + v14, v15);
      v16(v5 + *(v13 + 32), v15);
    }
  }

  v17 = (v5 + v1[5]);
  v18 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v19 = *(v18 + 28);
    v20 = sub_1BC759800();
    v21 = *(*(v20 - 8) + 8);
    v21(v17 + v19, v20);
    v21(v17 + *(v18 + 32), v20);
  }

  v22 = v5 + v1[7];

  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32)];
  v24 = sub_1BC759910();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  v26 = type metadata accessor for Report.Evidence(0);
  v27 = &v23[*(v26 + 24)];

  v28 = *(v25 + 8);
  v28(&v27[*(v38 + 44)], v24);

  v29 = &v23[*(v26 + 52)];
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_1BC6AE140(*v29, v30);
  }

  v31 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BC75A710();
    (*(*(v32 - 8) + 8))(v5 + v31, v32);
  }

  else
  {
  }

  v33 = (((v2 + 16) & ~v2) + v35 + v4) & ~v4;

  v28((v37 + v33 + *(v38 + 44)), v24);

  return MEMORY[0x1EEE6BDD0](v37, v33 + v36, v2 | v4 | 7);
}

uint64_t sub_1BC64742C()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v34 = *(*(v1 - 1) + 64);

  v4 = (v0 + v3);
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = v4 + *(v8 + 24);

      v10 = _s6VictimVMa(0);
      (*(v7 + 8))(&v9[*(v10 + 44)], v6);

      v11 = (v4 + *(v8 + 52));
      v12 = v11[1];
      if (v12 >> 60 != 15)
      {
        sub_1BC6AE140(*v11, v12);
      }
    }
  }

  else
  {
    v13 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v13 - 8) + 48))(v0 + v3, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BC759800();
      v16 = *(*(v15 - 8) + 8);
      v16(v4 + v14, v15);
      v16(v4 + *(v13 + 32), v15);
    }
  }

  v17 = (v4 + v1[5]);
  v18 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v33 = *(v18 + 28);
    v19 = sub_1BC759800();
    v20 = *(*(v19 - 8) + 8);
    v20(v17 + v33, v19);
    v20(v17 + *(v18 + 32), v19);
    v3 = (v2 + 24) & ~v2;
  }

  v21 = v4 + v1[7];

  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32)];
  v23 = sub_1BC759910();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v22, 1, v23))
  {
    (*(v24 + 8))(v22, v23);
  }

  v25 = type metadata accessor for Report.Evidence(0);
  v26 = &v22[*(v25 + 24)];

  v27 = _s6VictimVMa(0);
  (*(v24 + 8))(&v26[*(v27 + 44)], v23);

  v28 = &v22[*(v25 + 52)];
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1BC6AE140(*v28, v29);
  }

  v30 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_1BC75A710();
    (*(*(v31 - 8) + 8))(v4 + v30, v31);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v34 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 168, v2 | 7);
}

uint64_t sub_1BC647B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC647BB8()
{
  v1 = (_s6VictimVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  v6 = sub_1BC759910();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC647CFC()
{
  v1 = v0;
  v2 = type metadata accessor for ReportOverviewScreen(0);
  v39 = *(*(v2 - 8) + 80);
  v3 = (v39 + 16) & ~v39;
  v4 = *(*(v2 - 8) + 64);
  v5 = type metadata accessor for Report.Evidence(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v38 = *(*(v5 - 8) + 64);
  v8 = v1 + v3;

  v9 = (v1 + v3 + *(v2 + 20));
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_1BC759910();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v9, 1, v11))
      {
        (*(v12 + 8))(v9, v11);
      }

      v13 = v9 + *(v5 + 24);

      v14 = _s6VictimVMa(0);
      (*(v12 + 8))(&v13[*(v14 + 44)], v11);

      v15 = (v9 + *(v5 + 52));
      v16 = v15[1];
      if (v16 >> 60 != 15)
      {
        sub_1BC6AE140(*v15, v16);
      }
    }
  }

  else
  {
    v17 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v17 - 8) + 48))(v9, 1, v17))
    {

      v37 = *(v17 + 28);
      v18 = sub_1BC759800();
      v19 = *(*(v18 - 8) + 8);
      v19(v9 + v37, v18);
      v19(v9 + *(v17 + 32), v18);
    }
  }

  v20 = v7 & ~v6;

  v21 = v8 + *(v2 + 32);
  v22 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = sub_1BC759910();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v21, 1, v23))
    {
      (*(v24 + 8))(v21, v23);
    }

    v25 = v21 + *(v5 + 24);

    v26 = _s6VictimVMa(0);
    (*(v24 + 8))(v25 + *(v26 + 44), v23);

    v27 = (v21 + *(v5 + 52));
    v28 = v27[1];
    if (v28 >> 60 != 15)
    {
      sub_1BC6AE140(*v27, v28);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);

  v29 = v1 + v20;
  v30 = sub_1BC759910();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v1 + v20, 1, v30))
  {
    (*(v31 + 8))(v1 + v20, v30);
  }

  v32 = v29 + *(v5 + 24);

  v33 = _s6VictimVMa(0);
  (*(v31 + 8))(v32 + *(v33 + 44), v30);

  v34 = (v29 + *(v5 + 52));
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_1BC6AE140(*v34, v35);
  }

  return MEMORY[0x1EEE6BDD0](v1, v20 + v38, v39 | v6 | 7);
}

void __getIMMessagePartChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMMessagePartChatItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMMessagePartChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMMessagePartChatItemClass_block_invoke_cold_1();
    ChatKitLibrary();
  }
}

void ChatKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ChatKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7FF2390;
    v3 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ChatKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIMAssociatedStickerChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  result = objc_getClass("IMAssociatedStickerChatItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAssociatedStickerChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMAssociatedStickerChatItemClass_block_invoke_cold_1();
    return __getIMAggregateAcknowledgmentChatItemClass_block_invoke(v3);
  }

  return result;
}

Class __getIMAggregateAcknowledgmentChatItemClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  result = objc_getClass("IMAggregateAcknowledgmentChatItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAggregateAcknowledgmentChatItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMAggregateAcknowledgmentChatItemClass_block_invoke_cold_1();
    return [(SCUIScreenTimePasscodeController *)v3 _isScreenTimePasscodeSet:v4, v5];
  }

  return result;
}

Class __getSTCommunicationClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FF23F0;
    v6 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STCommunicationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationClientClass_block_invoke_cold_1();
  }

  getSTCommunicationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SCUICurrentInterventionType()
{
  v0 = [MEMORY[0x1E697B668] currentScanningPolicy];
  v1 = [v0 policy];

  if (v1 < 2)
  {
    return 2;
  }

  v3 = [MEMORY[0x1E697B668] currentInterventionType];
  v2 = [v3 isEqualToString:*MEMORY[0x1E69ADFF0]];

  return v2;
}

void sub_1BC64C100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIMServiceClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMServiceClass_block_invoke_cold_1();
    ChatKitLibrary_0();
  }
}

void ChatKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ChatKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7FF24C0;
    v3 = 0;
    ChatKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ChatKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ChatKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

NSDictionary *__getIMAccountControllerClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  result = objc_getClass("IMAccountController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMAccountControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMAccountControllerClass_block_invoke_cold_1();
    return [(SCUIMoreHelpMenu *)v3 contextDictionary];
  }

  return result;
}

void sub_1BC64CA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BC64DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v39 - 248));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 stringForObjectValue_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1BC75BB60();

    _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV06appendH0yySSF_0();
  }

  else
  {
    sub_1BC75C290();

    v6 = a2;
    v7 = [v6 description];
    v8 = sub_1BC75BB60();
    v10 = v9;

    MEMORY[0x1BFB267E0](v8, v10);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC75C5B0();
  _s26SensitiveContentAnalysisUI20SCLocalizedStringKeyV0F13InterpolationV06appendH0yySSF_0();
}

uint64_t SCLocalizedStringKey.init(stringInterpolation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7599C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BC75BB00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75BB20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  (*(v6 + 16))(v8, a1, v5);
  sub_1BC75BB10();
  v10 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v11 = sub_1BC75BBB0();
  v13 = v12;
  result = sub_1BC651738(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1BC651738(uint64_t a1)
{
  v2 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SCLocalizedStringKey.StringInterpolation(uint64_t a1)
{
  result = qword_1EBCDF990;
  if (!qword_1EBCDF990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SensitiveContentAnalysisUI::SCLocalizedStringKey __swiftcall SCLocalizedStringKey.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  v3 = sub_1BC7599C0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BC75BB20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC75BAC0();
  v5 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v6 = sub_1BC75BBB0();
  *v2 = v6;
  v2[1] = v7;
  result.localized._object = v7;
  result.localized._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1BC651920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7599C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BC75BB00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75BB20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  (*(v6 + 16))(v8, a1, v5);
  sub_1BC75BB10();
  v10 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v11 = sub_1BC75BBB0();
  v13 = v12;
  result = sub_1BC651738(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1BC651B00@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BC7599C0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BC75BB20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC75BAC0();
  v5 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  result = sub_1BC75BBB0();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t SCLocalizedStringKey.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

SensitiveContentAnalysisUI::SCLocalizedStringKey_optional __swiftcall SCLocalizedStringKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC7599C0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BC75BB20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC75BAC0();
  v5 = [objc_opt_self() mainBundle];
  sub_1BC7599B0();
  v6 = sub_1BC75BBB0();
  *v2 = v6;
  v2[1] = v7;
  result.value.localized._object = v7;
  result.value.localized._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

uint64_t sub_1BC651DA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1BC651DAC()
{
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC651E00(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC651E48(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BC75C5E0();
  }
}

unint64_t sub_1BC651EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBAE0;
  if (!qword_1EBCDBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAE0);
  }

  return result;
}

uint64_t sub_1BC651F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v9 = sub_1BC652090(a2, v13 - v8);
  sub_1BC651EB8(v9, v10, v11);
  sub_1BC75B6A0();
  return sub_1BC652100(a2);
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

uint64_t sub_1BC652090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC652100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC6521FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBAF0;
  if (!qword_1EBCDBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAF0);
  }

  return result;
}

unint64_t sub_1BC652254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBAF8;
  if (!qword_1EBCDBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBAF8);
  }

  return result;
}

unint64_t sub_1BC6522AC()
{
  result = qword_1EBCDBB00;
  if (!qword_1EBCDBB00)
  {
    type metadata accessor for SCLocalizedStringKey.StringInterpolation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB00);
  }

  return result;
}

unint64_t sub_1BC652308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBB08;
  if (!qword_1EBCDBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB08);
  }

  return result;
}

unint64_t sub_1BC652378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBB10;
  if (!qword_1EBCDBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBB10);
  }

  return result;
}

uint64_t sub_1BC6523CC(uint64_t a1, int a2)
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

uint64_t sub_1BC652414(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC652488(uint64_t a1)
{
  result = sub_1BC75BB00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BC6524FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1BC75BDE0();
  v6[3] = sub_1BC75BDD0();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1BC6525CC;

  return sub_1BC65CA6C(a5, a6);
}

uint64_t sub_1BC6525CC()
{

  v1 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC652708, v1, v0);
}

uint64_t sub_1BC652708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SCUIAnalytics.logObscuredViewShown(_:identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC65281C;

  return sub_1BC65CA6C(a1, a2);
}

uint64_t sub_1BC65281C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BC652910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BC660024(a3, v25 - v10, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v12 = sub_1BC75BE10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BC66008C(v11, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BC75BD80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BC75BBC0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static SCUIAnalytics.contextMap.getter()
{
  if (qword_1EBCDF9B0 != -1)
  {
    swift_once();
  }

  sub_1BC75C7B0();
  return v1;
}

SCUIAnalytics __swiftcall SCUIAnalytics.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1BC652E00(char *a1, unint64_t a2)
{
  v27 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1BC75A1E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  if (a2 >= 8)
  {
    v29 = a2;
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    (*(v10 + 104))(&v24 - v14, **(&unk_1E7FF26A0 + a2), v9);
    if ([objc_opt_self() isEnabled])
    {
      v26 = ObjectType;
      v16 = sub_1BC75BE10();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BC65F4F0(v27, v25, type metadata accessor for AnalyticsUIContext);
      (*(v10 + 16))(v13, v15, v9);
      v27 = v8;
      if (qword_1EBCDF9D0 != -1)
      {
        swift_once();
      }

      v18 = qword_1EBCF4440;
      v19 = sub_1BC65E9D8(&qword_1EBCDBBE8, v17, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
      v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v21 = (v5 + *(v10 + 80) + v20) & ~*(v10 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
      sub_1BC65D8C4(v25, v22 + v20);
      (*(v10 + 32))(v22 + v21, v13, v9);
      *(v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

      sub_1BC652910(0, 0, v27, &unk_1BC75F118, v22);
    }

    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1BC653230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BC75BDE0();
  v8[3] = sub_1BC75BDD0();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1BC653334;

  return sub_1BC65DB58(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_1BC653334()
{

  v1 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6602CC, v1, v0);
}

uint64_t static SCUIAnalytics.logContextMenuButtonTapped(contentType:subContentType:direction:options:isBlurred:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BC660280;

  return sub_1BC65DB58(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BC6536D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 176) = a5;
  *(v5 + 32) = a4;
  v6 = sub_1BC75A3B0();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  sub_1BC759C70();
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for AnalyticsUIContext(0);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1BC759EE0();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = sub_1BC75BDE0();
  *(v5 + 128) = sub_1BC75BDD0();
  v9 = sub_1BC75BD80();
  *(v5 + 136) = v9;
  *(v5 + 144) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC6538C8, v9, v8);
}

uint64_t sub_1BC6538C8()
{
  sub_1BC75C200();
  sub_1BC75A030();
  v0[19] = sub_1BC75A000();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1BC6539B8;
  v2 = v0[10];

  return MEMORY[0x1EEDD8CE0](v2);
}

uint64_t sub_1BC6539B8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BC653DA0;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BC653AD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC653AD4()
{
  v23 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BC66008C(*(v0 + 80), &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v20 = *(v0 + 56);
    v9 = *(v0 + 48);
    v10 = *(v0 + 176);
    v18 = *(v0 + 72);
    v19 = *(v0 + 40);
    v17 = *(v0 + 32);
    (*(v7 + 32))(v4, *(v0 + 80), v6);
    v16 = [objc_allocWithZone(SCUIAnalytics) init];
    v11 = (*(v7 + 16))(v5, v4, v6);
    *(v0 + 24) = MEMORY[0x1E69E7CC0];
    v21 = v10;
    sub_1BC65E6C8(v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC75C1B0();
    v22 = *(v0 + 16);
    sub_1BC759C20();
    sub_1BC664670(v5, MEMORY[0x1E69E7CC0], 2, 0, v17, 0, 1, &v21, v18, &v22, v8);
    (*(v9 + 104))(v20, *MEMORY[0x1E69AA6A0], v19);
    sub_1BC656874(v18, v20);

    (*(v9 + 8))(v20, v19);
    sub_1BC65FD74(v18, type metadata accessor for AnalyticsUIContext);
    (*(v7 + 8))(v4, v6);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BC653DA0()
{

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCDF9E0);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to retrieve policy %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BC653F90(id a1, unint64_t a2)
{
  v3 = v2;
  v31 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AnalyticsUIContext(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1BC75A3B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  if (a2 >= 8)
  {
    v34 = a2;
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    (*(v12 + 104))(&v29 - v16, **(&unk_1E7FF26E0 + a2), v11);
    if ([objc_opt_self() isEnabled])
    {
      v30 = ObjectType;
      v18 = sub_1BC75BE10();
      v19 = *(*(v18 - 8) + 56);
      v29 = v10;
      v19(v10, 1, 1, v18);
      sub_1BC65F4F0(v31, v33, type metadata accessor for AnalyticsUIContext);
      (*(v12 + 16))(v15, v17, v11);
      v20 = qword_1EBCDF9D0;
      v31 = v3;
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = qword_1EBCF4440;
      v23 = sub_1BC65E9D8(&qword_1EBCDBBE8, v21, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
      v24 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v25 = (v7 + *(v12 + 80) + v24) & ~*(v12 + 80);
      v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 2) = v22;
      *(v27 + 3) = v23;
      *(v27 + 4) = v31;
      sub_1BC65D8C4(v33, &v27[v24]);
      (*(v12 + 32))(&v27[v25], v15, v11);
      *&v27[v26] = v30;

      sub_1BC652910(0, 0, v29, &unk_1BC75F158, v27);
    }

    return (*(v12 + 8))(v17, v11);
  }

  return result;
}

uint64_t sub_1BC654524(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1BC75A1E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  (*(v9 + 104))(&v23 - v13, *MEMORY[0x1E69A9FB8], v8);
  if ([objc_opt_self() isEnabled])
  {
    v25 = ObjectType;
    v15 = sub_1BC75BE10();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    sub_1BC65F4F0(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v9 + 16))(v12, v14, v8);
    v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = v7;
    if (qword_1EBCDF9D0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBCF4440;
    v18 = sub_1BC65E9D8(&qword_1EBCDBBE8, v16, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
    v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v20 = (v4 + *(v9 + 80) + v19) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    sub_1BC65D8C4(v23, v21 + v19);
    (*(v9 + 32))(v21 + v20, v12, v8);
    *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

    sub_1BC652910(0, 0, v24, &unk_1BC75F160, v21);
  }

  return (*(v9 + 8))(v14, v8);
}

void sub_1BC6548D4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BC66008C(a1, &qword_1EBCDBC50, &qword_1BC762D70);
    sub_1BC65B838(a2, v7);

    sub_1BC66008C(v7, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    sub_1BC65D8C4(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1BC65C118(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t sub_1BC654A78@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBBF0, &qword_1BC75F168);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC75F0C0;
  *(v4 + 32) = *sub_1BC661E64();
  v5 = sub_1BC661E7C();
  *(v4 + 40) = *v5;
  v27[0] = v4;
  sub_1BC65E6C8(v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
  sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
  result = sub_1BC75C1B0();
  if ((a1 & 4) != 0)
  {
    v11 = sub_1BC661EC4();
    result = sub_1BC659A70(v27, *v11, v12);
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  v13 = sub_1BC661E94();
  result = sub_1BC659A70(v27, *v13, v14);
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15 = sub_1BC661EAC();
  result = sub_1BC659A70(v27, *v15, v16);
  if ((a1 & 0x20) == 0)
  {
LABEL_5:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v17 = sub_1BC661F54();
  result = sub_1BC659A70(v27, *v17, v18);
  if ((a1 & 0x40) == 0)
  {
LABEL_6:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v19 = sub_1BC661F24();
  result = sub_1BC659A70(v27, *v19, v20);
  if ((a1 & 0x100) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v21 = sub_1BC661F3C();
  result = sub_1BC659A70(v27, *v21, v22);
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v25 = sub_1BC661F0C();
    result = sub_1BC659A70(v27, *v25, v26);
    if ((a1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v23 = sub_1BC661EF4();
  result = sub_1BC659A70(v27, *v23, v24);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((a1 & 8) != 0)
  {
LABEL_10:
    v9 = sub_1BC661EDC();
    result = sub_1BC659A70(v27, *v9, v10);
  }

LABEL_11:
  *a2 = v27[1];
  return result;
}

uint64_t sub_1BC654C64(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_1BC75A3B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  (*(v11 + 104))(&v27 - v15, *MEMORY[0x1E69AA698], v10);
  if ([objc_opt_self() isEnabled])
  {
    v30 = ObjectType;
    v17 = sub_1BC75BE10();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_1BC65F4F0(a1, v32, type metadata accessor for AnalyticsUIContext);
    (*(v11 + 16))(v14, v16, v10);
    v18 = qword_1EBCDF9D0;
    v28 = v2;
    v29 = v9;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBCF4440;
    v21 = sub_1BC65E9D8(&qword_1EBCDBBE8, v19, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
    v22 = (*(v31 + 80) + 40) & ~*(v31 + 80);
    v23 = (v6 + *(v11 + 80) + v22) & ~*(v11 + 80);
    v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 2) = v20;
    *(v25 + 3) = v21;
    *(v25 + 4) = v28;
    sub_1BC65D8C4(v32, &v25[v22]);
    (*(v11 + 32))(&v25[v23], v14, v10);
    *&v25[v24] = v30;

    sub_1BC652910(0, 0, v29, &unk_1BC75F178, v25);
  }

  return (*(v11 + 8))(v16, v10);
}

void *sub_1BC655028()
{
  sub_1BC75A2B0();
  sub_1BC65E9D8(&qword_1EBCDBD18, 255, MEMORY[0x1E69AA2C8], MEMORY[0x1E69AA2C0]);
  return sub_1BC75A2D0();
}

void *sub_1BC6550CC()
{
  sub_1BC75A2C0();
  sub_1BC65E9D8(&qword_1EBCDBD10, 255, MEMORY[0x1E69AA2D8], MEMORY[0x1E69AA2D0]);
  return sub_1BC75A2D0();
}

uint64_t sub_1BC655170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6551BC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_1BC655248(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t SCUIAnalytics.ContextMap.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SCUIAnalytics.ContextMap.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SCUIAnalytics.ContextMap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BC655380()
{
  type metadata accessor for SCUIAnalytics.ContextMap();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBDF0, &qword_1BC75F898);
  swift_allocObject();
  result = sub_1BC75C7A0();
  qword_1EBCDF9B8 = result;
  return result;
}

uint64_t sub_1BC65541C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 8)
  {
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E7FF26A0 + a1);
    v4 = sub_1BC75A1E0();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

id sub_1BC6554C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v25 = sub_1BC75A1E0();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnalyticsUIContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v24 = ObjectType;
    v16 = sub_1BC75BE10();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    sub_1BC65F4F0(a1, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v25);
    if (qword_1EBCDF9D0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBCF4440;
    v19 = sub_1BC65E9D8(&qword_1EBCDBBE8, v17, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = (v10 + *(v5 + 80) + v20) & ~*(v5 + 80);
    v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = v19;
    sub_1BC65D8C4(v11, v23 + v20);
    (*(v5 + 32))(v23 + v21, v7, v25);
    *(v23 + v22) = v24;

    sub_1BC652910(0, 0, v14, &unk_1BC75F188, v23);
  }

  return result;
}

uint64_t sub_1BC655810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1BC75A2A0();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBCF4440;
  v5[12] = qword_1EBCF4440;

  return MEMORY[0x1EEE6DFA0](sub_1BC655908, v7, 0);
}

uint64_t sub_1BC655908()
{
  *(swift_task_alloc() + 16) = *(v0 + 56);
  sub_1BC75A4A0();

  *(v0 + 104) = sub_1BC75BDE0();
  *(v0 + 112) = sub_1BC75BDD0();
  v2 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC655A08, v2, v1);
}

uint64_t sub_1BC655A08()
{

  if (qword_1EBCDF9A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BC655AA0, v1, 0);
}

uint64_t sub_1BC655AA0(uint64_t a1)
{
  *(v1 + 120) = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC655B2C, v3, v2);
}

uint64_t sub_1BC655B2C()
{

  if (qword_1EBCF4408)
  {
    sub_1BC65E764(&xmmword_1EBCF43F0, v0 + 16);
  }

  else
  {
    v1 = qword_1EBCF4410;
    v2 = unk_1EBCF4400;
    *(v0 + 16) = xmmword_1EBCF43F0;
    *(v0 + 32) = v2;
    *(v0 + 48) = v1;
  }

  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BC655BCC, v3, 0);
}

uint64_t sub_1BC655BCC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1BC75A490();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    (*(v2 + 8))(v0[11], v0[9]);
    if (!v0[5])
    {
      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_5:

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC655CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDA8, &qword_1BC75F868);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32[-v5];
  v7 = sub_1BC75A250();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDB0, &qword_1BC75F870);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDB8, &qword_1BC75F878);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32[-v13];
  v15 = sub_1BC75A1D0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDC0, &qword_1BC75F880);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32[-v17];
  sub_1BC759920();
  sub_1BC75A280();
  v19 = type metadata accessor for AnalyticsUIContext(0);

  sub_1BC75A210();
  v20 = a2 + v19[7];
  if (*(v20 + 8) == 1)
  {
    goto LABEL_2;
  }

  v22 = *v20;
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v23 = MEMORY[0x1E69A9FD0];
      goto LABEL_12;
    }

    if (v22 == 4)
    {
      v23 = MEMORY[0x1E69A9FC8];
      goto LABEL_12;
    }

LABEL_2:
    v21 = sub_1BC75A200();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    goto LABEL_13;
  }

  if (v22 == 1)
  {
    v23 = MEMORY[0x1E69A9FD8];
    goto LABEL_12;
  }

  if (v22 != 2)
  {
    goto LABEL_2;
  }

  v23 = MEMORY[0x1E69A9FE0];
LABEL_12:
  v33 = *v23;
  v24 = sub_1BC75A200();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v18, v33, v24);
  (*(v25 + 56))(v18, 0, 1, v24);
LABEL_13:
  v26 = v35;
  sub_1BC75A220();
  sub_1BC6561C4(*(a2 + v19[8]));
  sub_1BC75A1F0();
  v27 = a2 + v19[9];
  if (*(v27 + 8) == 1)
  {
    v28 = sub_1BC75A170();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  }

  else
  {
    sub_1BC656308(*v27, v14);
  }

  sub_1BC75A180();
  sub_1BC657FD0(MEMORY[0x1E69AA010], MEMORY[0x1E69AA018], MEMORY[0x1E69AA008], MEMORY[0x1E69AA000], v11);
  sub_1BC75A290();
  sub_1BC656468(v34);
  sub_1BC75A260();
  v29 = sub_1BC75A1E0();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v6, v26, v29);
  (*(v30 + 56))(v6, 0, 1, v29);
  return sub_1BC75A270();
}

uint64_t sub_1BC6561C4(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {

      return MEMORY[0x1EEE13F80]();
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_12;
      }

      return MEMORY[0x1EEE13F68]();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {

        return sub_1BC75A1B0();
      }

LABEL_12:
      sub_1BC75A1D0();
      sub_1BC65E9D8(&qword_1EBCDBC18, 255, MEMORY[0x1E69A9FA0], MEMORY[0x1E69A9FA8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC20, &qword_1BC75F190);
      sub_1BC65FF68(&unk_1EBCDBC28, &qword_1EBCDBC20, &qword_1BC75F190);
      return sub_1BC75C1B0();
    }

    return sub_1BC75A1A0();
  }
}

uint64_t sub_1BC656308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69A9F90];
      goto LABEL_10;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = MEMORY[0x1E69A9F88];
        goto LABEL_10;
      case 4:
        v3 = MEMORY[0x1E69A9F98];
        goto LABEL_10;
      case 3:
        v3 = MEMORY[0x1E69A9F80];
LABEL_10:
        v4 = *v3;
        v5 = sub_1BC75A170();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_12;
    }
  }

  v10 = sub_1BC75A170();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_12:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1BC656468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75A250();
  v27 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v5;
  v6 = sub_1BC759C70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BC65E9D8(&qword_1EBCDBDC8, 255, MEMORY[0x1E69A9FE8], MEMORY[0x1E69A9FF8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDD0, &qword_1BC75F888);
  sub_1BC65FF68(&qword_1EBCDBDD8, &qword_1EBCDBDD0, &qword_1BC75F888);
  v28 = a1;
  v24 = v2;
  sub_1BC75C1B0();
  sub_1BC759C50();
  sub_1BC65E9D8(&qword_1EBCDBD78, 255, MEMORY[0x1E697B418], MEMORY[0x1E697B438]);
  v10 = sub_1BC75C170();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v10)
  {
    v12 = v25;
    sub_1BC75A1B0();
    v13 = v26;
    sub_1BC659B38(v26, v12);
    v14 = *(v27 + 8);
    v15 = v12;
    v16 = v24;
    v14(v15, v24);
    v14(v13, v16);
  }

  sub_1BC759C20();
  v17 = sub_1BC75C170();
  result = (v11)(v9, v6);
  if (v17)
  {
    v19 = v25;
    sub_1BC75A1A0();
    v20 = v26;
    sub_1BC659B38(v26, v19);
    v21 = *(v27 + 8);
    v22 = v19;
    v23 = v24;
    v21(v22, v24);
    return (v21)(v20, v23);
  }

  return result;
}

uint64_t sub_1BC6567C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 8)
  {
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E7FF26E0 + a1);
    v4 = sub_1BC75A3B0();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

id sub_1BC656874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v29 = sub_1BC75A3B0();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnalyticsUIContext(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v27 = ObjectType;
    v17 = sub_1BC75BE10();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    sub_1BC65F4F0(a1, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v29);
    v18 = qword_1EBCDF9D0;
    v26 = v3;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBCF4440;
    v21 = sub_1BC65E9D8(&qword_1EBCDBBE8, v19, type metadata accessor for AnalyticsActor, &unk_1BC75F444);
    v22 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v23 = (v11 + *(v7 + 80) + v22) & ~*(v7 + 80);
    v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 2) = v20;
    *(v25 + 3) = v21;
    *(v25 + 4) = v26;
    sub_1BC65D8C4(v12, &v25[v22]);
    (*(v7 + 32))(&v25[v23], v9, v29);
    *&v25[v24] = v27;

    sub_1BC652910(0, 0, v15, &unk_1BC75F198, v25);
  }

  return result;
}

uint64_t sub_1BC656BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v7 = sub_1BC75A480();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_1BC7599C0();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
  v6[15] = swift_task_alloc();
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBCF4440;
  v6[16] = qword_1EBCF4440;

  return MEMORY[0x1EEE6DFA0](sub_1BC656D60, v9, 0);
}

uint64_t sub_1BC656D60()
{
  *(v0 + 136) = sub_1BC75BDE0();
  *(v0 + 144) = sub_1BC75BDD0();
  v2 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC656DF8, v2, v1);
}

uint64_t sub_1BC656DF8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  sub_1BC7599B0();
  sub_1BC7599A0();
  (*(v4 + 8))(v1, v3);
  v5 = sub_1BC759990();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = v0[15];
  if (v7 == 1)
  {
    sub_1BC66008C(v0[15], &qword_1EBCDBC10, &qword_1BC75F180);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_1BC759970();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  v0[19] = v9;
  v0[20] = v10;
  v12 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1BC656F4C, v12, 0);
}