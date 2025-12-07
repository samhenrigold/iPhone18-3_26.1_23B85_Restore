uint64_t sub_20E283CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D098, &qword_20E356468);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CB8, &qword_20E3462D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CB8, &qword_20E3462D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D098, &qword_20E356468);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D098, &qword_20E356468);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D098, &qword_20E356468);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D098, &qword_20E356468);
    return sub_20E04875C(v32, &qword_27C86D098, &qword_20E356468);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D098, &qword_20E356468);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E284290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A0, &qword_20E356470);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CB8, &qword_20E3462D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CB8, &qword_20E3462D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D0A0, &qword_20E356470);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
    return sub_20E04875C(v32, &qword_27C86D0A0, &qword_20E356470);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28484C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0;
  result = sub_20E3223D0();
  if (v4)
  {
  }

  if (v17)
  {
    v18 = v17;
    v15 = v16;
    sub_20E0486F4(a2, v8, &qword_27C869CB8, &qword_20E3462D0);
    v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_20E04875C(v8, &qword_27C869CB8, &qword_20E3462D0);
    if (v12 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(a2, &qword_27C869CB8, &qword_20E3462D0);
    v13 = v18;
    *a2 = v15;
    a2[1] = v13;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_20E284A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A0, &qword_20E356470);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CB8, &qword_20E3462D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CB8, &qword_20E3462D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D0A0, &qword_20E356470);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
    return sub_20E04875C(v32, &qword_27C86D0A0, &qword_20E356470);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D0A0, &qword_20E356470);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_20E28524C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, 1);
  if (!v4)
  {
    sub_20E0486F4(v3, v10, &qword_27C869CB8, &qword_20E3462D0);
    v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_20E285504(v3, a1, a2, a3);
        }

        else
        {
          sub_20E2852D0(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_20E28573C(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          sub_20E285974(v3, a1, a2, a3);
          goto LABEL_13;
        }

        sub_20E285AEC(v3, a1, a2, a3);
      }

      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

LABEL_13:
    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E28524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2852D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CB8, &qword_20E3462D0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CB8, &qword_20E3462D0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E28573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CB8, &qword_20E3462D0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869CB8, &qword_20E3462D0);
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CB8, &qword_20E3462D0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E285E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD70, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E285EE0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_20E322470();
}

uint64_t sub_20E285F4C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_20E322480();
}

uint64_t sub_20E285FCC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E362EF0);

  qword_27C86AC60 = v1;
  *algn_27C86AC68 = v2;
  return result;
}

uint64_t sub_20E28609C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC70);
  __swift_project_value_buffer(v0, qword_27C86AC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E286358(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD68, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2863F8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_20E322470();
}

uint64_t sub_20E286464(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_20E322480();
}

uint64_t sub_20E2864E0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2865BC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD00000000000001ELL, 0x800000020E362EC0);

  qword_27C86AC88 = v1;
  qword_27C86AC90 = v2;
  return result;
}

uint64_t sub_20E28668C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC98);
  __swift_project_value_buffer(v0, qword_27C86AC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E28691C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E28691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E286A7C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_20E322540();
    }

    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E286A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869CC0, &qword_20E3462D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CC0, &qword_20E3462D8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_20E286D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD60, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E286DF0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_20E322470();
}

uint64_t sub_20E286E5C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_20E322480();
}

uint64_t sub_20E286EDC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_27C86ACB0 = v1;
  *algn_27C86ACB8 = v2;
  return result;
}

uint64_t sub_20E286FAC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ACC0);
  __swift_project_value_buffer(v0, qword_27C86ACC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "actionIdentifier";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_20E322540(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_20E322540(), !v4))
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E28741C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD58, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2874BC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_20E322470();
}

uint64_t sub_20E287528(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_20E322480();
}

uint64_t sub_20E2875A8()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362E70);
  qword_27C86ACD8 = 0xD00000000000001ALL;
  qword_27C86ACE0 = 0x800000020E3615E0;
  return result;
}

uint64_t sub_20E287750(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD50, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2877F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_20E322470();
}

uint64_t sub_20E28785C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_20E322480();
}

uint64_t sub_20E287908(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000020E3615E0;
  return result;
}

uint64_t sub_20E28799C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD10);
  __swift_project_value_buffer(v0, qword_27C86AD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "multiline_allowed";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "smart_quotes_enabled";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "smart_dashes_enabled";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "keyboard_type";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "autocorrection_type";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "capitalization_type";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v6 = v3;
            sub_20E24F4B0();
            break;
          case 5:
            v6 = v3;
            sub_20E24F504();
            break;
          case 6:
            v6 = v3;
            sub_20E24F45C();
            break;
          default:
            goto LABEL_5;
        }

        v3 = v6;
        sub_20E322310();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_20E3222F0();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_20E3224C0(), !v4))
  {
    if (v3[1] != 1 || (result = sub_20E3224C0(), !v4))
    {
      if (v3[2] != 1 || (result = sub_20E3224C0(), !v4))
      {
        v6 = v4;
        if (v3[3])
        {
          sub_20E24F4B0();
          result = sub_20E3224D0();
          if (v4)
          {
            return result;
          }

          v6 = 0;
        }

        if (v3[4])
        {
          sub_20E24F504();
          v7 = v6;
          result = sub_20E3224D0();
          if (v6)
          {
            return result;
          }

          if (!v3[5])
          {
            goto LABEL_16;
          }
        }

        else
        {
          v7 = v6;
          if (!v3[5])
          {
LABEL_16:
            type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
            return sub_20E3221A0();
          }
        }

        sub_20E24F45C();
        result = sub_20E3224D0();
        if (v7)
        {
          return result;
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_20E287FCC@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a2 + 4) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_20E288058(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD48, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2880F8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_20E322470();
}

uint64_t sub_20E288164(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_20E322480();
}

uint64_t sub_20E2881E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD28);
  __swift_project_value_buffer(v0, qword_27C86AD28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionType_ON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AutocorrectionType_OFF";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E288454()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD40);
  __swift_project_value_buffer(v0, qword_27C86AD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326300;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardType_ASCII_CAPABLE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardType_NUMBERS_AND_PUNCTUATION";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardType_URL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardType_NUMBER_PAD";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardType_PHONE_PAD";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardType_NAME_PHONE_PAD";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardType_EMAIL_ADDRESS";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 8;
  *v23 = "KeyboardType_DECIMAL_PAD";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "KeyboardType_TWITTER";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "KeyboardType_WEB_SEARCH";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "KeyboardType_ASCII_CAPABLE_NUMBER_PAD";
  *(v29 + 1) = 37;
  v29[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2888F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD58);
  __swift_project_value_buffer(v0, qword_27C86AD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E288BB0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD70);
  __swift_project_value_buffer(v0, qword_27C86AD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkEnumContentItemClass";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E2894B4(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E288EF8(v5, a1, a2, a3);
          break;
        case 1:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869CC8, &qword_20E3462E0, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind, 0);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E288EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D078, &qword_20E356448);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CC8, &qword_20E3462E0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CC8, &qword_20E3462E0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D078, &qword_20E356448);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D078, &qword_20E356448);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D078, &qword_20E356448);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D078, &qword_20E356448);
    return sub_20E04875C(v32, &qword_27C86D078, &qword_20E356448);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D078, &qword_20E356448);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CC8, &qword_20E3462E0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2894B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D080, &qword_20E356450);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CC8, &qword_20E3462E0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CC8, &qword_20E3462E0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D080, &qword_20E356450);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D080, &qword_20E356450);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D080, &qword_20E356450);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D080, &qword_20E356450);
    return sub_20E04875C(v32, &qword_27C86D080, &qword_20E356450);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D080, &qword_20E356450);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CC8, &qword_20E3462E0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoContentItemClassDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C869CC8, &qword_20E3462E0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    result = sub_20E289C40(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20E289DB4(v3, a1, a2, a3);
  }

  else
  {
    sub_20E289FEC(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  if (!v4)
  {
LABEL_9:
    type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E289C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869CC8, &qword_20E3462E0);
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E289DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CC8, &qword_20E3462E0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E289FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CC8, &qword_20E3462E0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E28A2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD40, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28A374(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return sub_20E322470();
}

uint64_t sub_20E28A3E0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return sub_20E322480();
}

uint64_t sub_20E28A460()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E362AA0);
  qword_27C86AD88 = 0xD000000000000022;
  qword_27C86AD90 = 0x800000020E361600;
  return result;
}

uint64_t sub_20E28A4FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD98);
  __swift_project_value_buffer(v0, qword_27C86AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E28A7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD38, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28A870(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_20E322470();
}

uint64_t sub_20E28A8DC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_20E322480();
}

uint64_t sub_20E28A988()
{
  result = MEMORY[0x20F32BF40](0xD000000000000019, 0x800000020E362A80);
  qword_27C86ADB0 = 0xD000000000000022;
  *algn_27C86ADB8 = 0x800000020E361600;
  return result;
}

uint64_t sub_20E28AA24()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ADC0);
  __swift_project_value_buffer(v0, qword_27C86ADC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E28AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 3)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E28AD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD30, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28AE00(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_20E322470();
}

uint64_t sub_20E28AE6C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_20E322480();
}

uint64_t sub_20E28AF04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ADD8);
  __swift_project_value_buffer(v0, qword_27C86ADD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E28B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_20E322430();
}

uint64_t sub_20E28B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_20E322430();
}

uint64_t sub_20E28B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t sub_20E28B464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869CD0, &qword_20E3462E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CD0, &qword_20E3462E8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_20E28B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD8, &qword_20E3462F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869CD8, &qword_20E3462F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CD8, &qword_20E3462F0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_20E28B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869CC0, &qword_20E3462D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CC0, &qword_20E3462D8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_20E28BB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD28, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28BC04(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return sub_20E322470();
}

uint64_t sub_20E28BC70(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return sub_20E322480();
}

uint64_t sub_20E28BD44()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE00);
  __swift_project_value_buffer(v0, qword_27C86AE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E28C558(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E28CB08(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_20E28D0C4(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E28D680(v5, a1, a2, a3);
          break;
        case 7:
          sub_20E28DC3C(v5, a1, a2, a3);
          break;
        case 8:
          sub_20E28E1F8(v5, a1, a2, a3);
          break;
        case 9:
          sub_20E28E7B4(v5, a1, a2, a3);
          break;
        case 10:
          sub_20E28ED70(v5, a1, a2, a3);
          break;
        case 11:
          sub_20E28F32C(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E28F8E8(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E28FEA4(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E290460(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C869CE0, &qword_20E3462F8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind, v15);
          break;
        case 16:
          sub_20E290A1C(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E28C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28CB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E28FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E290460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E290A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D068, &qword_20E356438);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE0, &qword_20E3462F8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE0, &qword_20E3462F8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C86D068, &qword_20E356438);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D068, &qword_20E356438);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D068, &qword_20E356438);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D068, &qword_20E356438);
    return sub_20E04875C(v32, &qword_27C86D068, &qword_20E356438);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D068, &qword_20E356438);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E2915A4(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_20E291C74(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_20E291EAC(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_20E2920E4(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_20E29231C(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_20E292554(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_20E29278C(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_20E2929C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 9u:
        sub_20E292BFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xAu:
        sub_20E292E34(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xBu:
        sub_20E29306C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_20E2934F0(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

LABEL_10:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        break;
      case 0xDu:
        result = sub_20E2917DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E291A28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E2932A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E291370(v3, a1, a2, a3);
LABEL_23:
        result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  return sub_20E3221A0();
}

uint64_t sub_20E291370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2915A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2917DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE0, &qword_20E3462F8);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E291A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE0, &qword_20E3462F8);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E291C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E291EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2920E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2929C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2932A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE0, &qword_20E3462F8);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2934F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE0, &qword_20E3462F8);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2937E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E293884(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_20E322470();
}

uint64_t sub_20E2938F0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_20E322480();
}

uint64_t sub_20E293970()
{
  if (qword_27C863520 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86ADF0;
  v2 = *algn_27C86ADF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726961502ELL, 0xE500000000000000);

  qword_27C86AE18 = v1;
  qword_27C86AE20 = v2;
  return result;
}

uint64_t sub_20E293A38()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE28);
  __swift_project_value_buffer(v0, qword_27C86AE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E293D38(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E293D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E293E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E294050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E2942B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  v5(a2 + *(a1 + 20), 1, 1, v4);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2943B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD18, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E294450(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_20E322470();
}

uint64_t sub_20E2944BC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_20E322480();
}

uint64_t sub_20E29453C()
{
  if (qword_27C863520 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86ADF0;
  v2 = *algn_27C86ADF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);

  qword_27C86AE40 = v1;
  *algn_27C86AE48 = v2;
  return result;
}

uint64_t sub_20E29460C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE50);
  __swift_project_value_buffer(v0, qword_27C86AE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E294E20(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E2953D0(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_20E29598C(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E295F48(v5, a1, a2, a3);
          break;
        case 7:
          sub_20E296504(v5, a1, a2, a3);
          break;
        case 8:
          sub_20E296AC0(v5, a1, a2, a3);
          break;
        case 9:
          sub_20E29707C(v5, a1, a2, a3);
          break;
        case 10:
          sub_20E297638(v5, a1, a2, a3);
          break;
        case 11:
          sub_20E297BF4(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E2981B0(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E29876C(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E298D28(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C869CE8, &qword_20E346300, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind, v15);
          break;
        case 16:
          sub_20E2992E4(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E294E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2953D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E29598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E295F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E296504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E296AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E29707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E297638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E297BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2981B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E29876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E298D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2992E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869CE8, &qword_20E346300);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CE8, &qword_20E346300);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v24, v32, &qword_27C863C48, &qword_20E323F30);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v32, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863C48, &qword_20E323F30);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E299E6C(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_20E29A53C(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_20E29A774(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_20E29A9AC(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_20E29ABE4(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_20E29AE1C(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_20E29B054(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_20E29B28C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 9u:
        sub_20E29B4C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xAu:
        sub_20E29B6FC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xBu:
        sub_20E29B934(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_20E29BDB8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

LABEL_10:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        break;
      case 0xDu:
        result = sub_20E29A0A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E29A2F0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E29BB6C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E299C38(v3, a1, a2, a3);
LABEL_23:
        result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  return sub_20E3221A0();
}

uint64_t sub_20E299C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E299E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE8, &qword_20E346300);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE8, &qword_20E346300);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869CE8, &qword_20E346300);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CE8, &qword_20E346300);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29C14C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_20E322470();
}

uint64_t sub_20E29C1B8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_20E322480();
}

uint64_t sub_20E29C260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x800000020E361630;
  return result;
}

uint64_t sub_20E29C2F4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE78);
  __swift_project_value_buffer(v0, qword_27C86AE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E29C5C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_20E3222B0();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E3223E0();
      }

      else if (result == 4)
      {
        a6(a1, v11, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(a1, v11, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v11, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E29C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_20E322430();
}

uint64_t sub_20E29C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_20E322430();
}

uint64_t sub_20E29C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t sub_20E29C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    v16 = v7[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_20E322540();
    }

    a6(v7, a1, a2, a3);
    a7(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E29CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869CD0, &qword_20E3462E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CD0, &qword_20E3462E8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_20E29CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF0, &qword_20E346308);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869CF0, &qword_20E346308);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CF0, &qword_20E346308);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_20E29CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869CC0, &qword_20E3462D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CC0, &qword_20E3462D8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_20E29D114@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v6 = a1[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = a1[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = a1[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E29D280(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD08, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29D320(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29D38C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29D428()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE90);
  __swift_project_value_buffer(v0, qword_27C86AE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E24F408();
        sub_20E322310();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoComparisonPredicate(0);
        sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoCompoundPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_20E24F408(), result = sub_20E3224D0(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate), result = sub_20E322570(), !v4))
    {
      type metadata accessor for ToolKitProtoCompoundPredicate(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E29D8AC@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E29D934(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD00, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29D9D4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29DA40(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29DABC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_20E154DAC(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E29DB74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AEA8);
  __swift_project_value_buffer(v0, qword_27C86AEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Operator_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Operator_AND";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Operator_OR";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E29DF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCF8, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29DFA0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29E00C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29E088(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E29E144()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AED8 = 0xD00000000000001DLL;
  qword_27C86AEE0 = 0x800000020E361670;
  return result;
}

uint64_t sub_20E29E290(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCF0, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E330(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29E39C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29E534(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCE8, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E5D4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29E640(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29E6BC()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AF18 = 0xD000000000000019;
  qword_27C86AF20 = 0x800000020E361690;
  return result;
}

uint64_t sub_20E29E808(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCE0, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E8A8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29E914(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCD8, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29EB48(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29EBB4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29EC30()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AF58 = 0xD00000000000001FLL;
  qword_27C86AF60 = 0x800000020E3616B0;
  return result;
}

uint64_t sub_20E29ED7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCD0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29EE1C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29EE88(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29EFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCC8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F068(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F0D4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F214(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCC0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F2B4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F320(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F460(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCB8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F500(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F56C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F60C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AFC8);
  __swift_project_value_buffer(v0, qword_27C86AFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "limit";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for ToolKitProtoQuery(0);
          sub_20E322380();
          break;
        case 2:
          sub_20E24F3B4();
          sub_20E322310();
          break;
        case 1:
          sub_20E29F954(a1, v5, a2, a3);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E29F954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoQuery(0);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  return sub_20E322430();
}

uint64_t ToolKitProtoQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E29FAFC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_20E24F3B4();
      sub_20E3224D0();
    }

    sub_20E29FD18(v3, a1, a2, a3, type metadata accessor for ToolKitProtoQuery);
    type metadata accessor for ToolKitProtoQuery(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E29FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF8, &qword_20E346310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoQuery(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869CF8, &qword_20E346310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CF8, &qword_20E346310);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_20E29FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E29FDE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  v6[8] = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E29FEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCB0, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29FF64(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return sub_20E322470();
}

uint64_t sub_20E29FFD0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return sub_20E322480();
}

uint64_t sub_20E2A0050()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AFE0);
  __swift_project_value_buffer(v0, qword_27C86AFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrder_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrder_FORWARD";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SortOrder_REVERSE";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2A02BC()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x20F32BF40](0x64657250796E412ELL, 0xED00006574616369);
  qword_27C86AFF8 = v1[0];
  qword_27C86B000 = v1[1];
  return result;
}

uint64_t sub_20E2A0364()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B008);
  __swift_project_value_buffer(v0, qword_27C86B008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "compound";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stringSearch";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "idSearch";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "all";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "suggested";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_20E2A2AC4(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E2A3080(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_20E2A1F4C(v5, a1, a2, a3);
      }

      else
      {
        sub_20E2A2508(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_20E2A13D4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E2A1990(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E2A0868(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E2A0E18(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D010, &qword_20E3563E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86D010, &qword_20E3563E0);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoComparisonPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoComparisonPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D010, &qword_20E3563E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D010, &qword_20E3563E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D010, &qword_20E3563E0);
    return sub_20E04875C(v32, &qword_27C86D010, &qword_20E3563E0);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoComparisonPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D010, &qword_20E3563E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoComparisonPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A0E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D018, &qword_20E3563E8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D018, &qword_20E3563E8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoCompoundPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoCompoundPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D018, &qword_20E3563E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D018, &qword_20E3563E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D018, &qword_20E3563E8);
    return sub_20E04875C(v32, &qword_27C86D018, &qword_20E3563E8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D018, &qword_20E3563E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoCompoundPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D020, &qword_20E3563F0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D020, &qword_20E3563F0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoStringSearchPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoStringSearchPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D020, &qword_20E3563F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D020, &qword_20E3563F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D020, &qword_20E3563F0);
    return sub_20E04875C(v32, &qword_27C86D020, &qword_20E3563F0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoStringSearchPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D020, &qword_20E3563F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoStringSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D028, &qword_20E3563F8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C86D028, &qword_20E3563F8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoIdSearchPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoIdSearchPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D028, &qword_20E3563F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D028, &qword_20E3563F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D028, &qword_20E3563F8);
    return sub_20E04875C(v32, &qword_27C86D028, &qword_20E3563F8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoIdSearchPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D028, &qword_20E3563F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoIdSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C869C60, &qword_20E346268);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoAllPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoAllPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C869C60, &qword_20E346268);
  }

  sub_20E0486F4(v24, v32, &qword_27C869C60, &qword_20E346268);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C869C60, &qword_20E346268);
    return sub_20E04875C(v32, &qword_27C869C60, &qword_20E346268);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoAllPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C869C60, &qword_20E346268);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoAllPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C869C68, &qword_20E346270);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C869C68, &qword_20E346270);
  }

  sub_20E0486F4(v24, v32, &qword_27C869C68, &qword_20E346270);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C869C68, &qword_20E346270);
    return sub_20E04875C(v32, &qword_27C869C68, &qword_20E346270);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSuggestedPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C869C68, &qword_20E346270);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSuggestedPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A2AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D030, &qword_20E356400);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C86D030, &qword_20E356400);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D030, &qword_20E356400);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D030, &qword_20E356400);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D030, &qword_20E356400);
    return sub_20E04875C(v32, &qword_27C86D030, &qword_20E356400);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D030, &qword_20E356400);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A3080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v6 = *(valid - 8);
  v7 = MEMORY[0x28223BE20](valid);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = valid;
  v26 = valid;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C869D00, &qword_20E346318);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D00, &qword_20E346318);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C869C78, &qword_20E346280);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoValidPredicate);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoValidPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C869C78, &qword_20E346280);
  }

  sub_20E0486F4(v24, v32, &qword_27C869C78, &qword_20E346280);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C869C78, &qword_20E346280);
    return sub_20E04875C(v32, &qword_27C869C78, &qword_20E346280);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoValidPredicate);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C869C78, &qword_20E346280);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoValidPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoQuery.AnyPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E2A45EC(v3, a1, a2, a3);
      }

      else
      {
        sub_20E2A4824(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E2A417C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A43B4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E2A3D0C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A3F44(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E2A3AD4(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2A38A0(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2A38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoComparisonPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoCompoundPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoStringSearchPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoIdSearchPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoAllPredicate);
    sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAllPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A43B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSuggestedPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A45EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x28223BE20](valid);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D00, &qword_20E346318);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoValidPredicate);
    sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoValidPredicate);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A4B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCA8, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A4BB8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return sub_20E322470();
}

uint64_t sub_20E2A4C24(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return sub_20E322480();
}

uint64_t sub_20E2A4CC0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B020);
  __swift_project_value_buffer(v0, qword_27C86B020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_20E3222F0();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_20E322370();
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_20E322500(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_20E322500(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_20E322500(), !v4))
      {
        if (*(v3 + 12) != 1 || (result = sub_20E3224C0(), !v4))
        {
          type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
          return sub_20E3221A0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2A5130@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a2 + 5) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_20E2A51B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCA0, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A5250(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return sub_20E322470();
}

uint64_t sub_20E2A52BC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return sub_20E322480();
}

uint64_t sub_20E2A5358()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B038);
  __swift_project_value_buffer(v0, qword_27C86B038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E2A6230(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_20E2A67EC(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E2A56C4(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E2A5C74(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A56C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFF0, &qword_20E3563C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C867EB0, &qword_20E346320);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EB0, &qword_20E346320);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CFF0, &qword_20E3563C0);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFF0, &qword_20E3563C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFF0, &qword_20E3563C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFF0, &qword_20E3563C0);
    return sub_20E04875C(v32, &qword_27C86CFF0, &qword_20E3563C0);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFF0, &qword_20E3563C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFF8, &qword_20E3563C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C867EB0, &qword_20E346320);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EB0, &qword_20E346320);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CFF8, &qword_20E3563C8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFF8, &qword_20E3563C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFF8, &qword_20E3563C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFF8, &qword_20E3563C8);
    return sub_20E04875C(v32, &qword_27C86CFF8, &qword_20E3563C8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFF8, &qword_20E3563C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D000, &qword_20E3563D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C867EB0, &qword_20E346320);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EB0, &qword_20E346320);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D000, &qword_20E3563D0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D000, &qword_20E3563D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D000, &qword_20E3563D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D000, &qword_20E3563D0);
    return sub_20E04875C(v32, &qword_27C86D000, &qword_20E3563D0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D000, &qword_20E3563D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2A67EC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 2;
  sub_20E24F360();
  result = sub_20E322300();
  if (!v4)
  {
    v10 = v17;
    if (v17 != 2)
    {
      v16 = 0;
      sub_20E0486F4(a2, v8, &qword_27C867EB0, &qword_20E346320);
      v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      sub_20E04875C(v8, &qword_27C867EB0, &qword_20E346320);
      if (v13 != 1)
      {
        v14 = v16;
        result = sub_20E3222C0();
        if (v14)
        {
          return result;
        }

        v16 = 0;
      }

      sub_20E04875C(a2, &qword_27C867EB0, &qword_20E346320);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C867EB0, &qword_20E346320);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_20E2A724C(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_20E2A7014(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E2A6DDC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A6BA8(v3, a1, a2, a3);
    }

    result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2A6BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EB0, &qword_20E346320);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A6DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EB0, &qword_20E346320);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A7014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EB0, &qword_20E346320);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  sub_20E0486F4(a1, &v10[-v6], &qword_27C867EB0, &qword_20E346320);
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10[15] = *v7;
    sub_20E24F360();
    return sub_20E3224D0();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A747C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC98, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A751C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return sub_20E322470();
}

uint64_t sub_20E2A7588(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return sub_20E322480();
}

uint64_t sub_20E2A7608()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B050);
  __swift_project_value_buffer(v0, qword_27C86B050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DeviceState_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceState_UNLOCKED";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2A782C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000017, 0x800000020E3627E0);
  qword_27C86B068 = 0xD00000000000001ALL;
  qword_27C86B070 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A78C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B078);
  __swift_project_value_buffer(v0, qword_27C86B078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E2A7D14(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_20E2A7DC8(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_20E24F7F8();
        sub_20E322310();
      }

      else if (result == 2)
      {
        sub_20E2A7C60(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2A7C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t sub_20E2A7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t sub_20E2A7DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_20E24F7F8(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E2A7F70(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E2A818C(v3, a1, a2, a3);
      sub_20E2A83A8(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2A7F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869D08, &qword_20E346328);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869D08, &qword_20E346328);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869D08, &qword_20E346328);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A860C@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[a1[6]], 1, 1, v5);
  v6(&a2[a1[7]], 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E2A8730(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC90, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A87D0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_20E322470();
}

uint64_t sub_20E2A883C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_20E322480();
}

uint64_t sub_20E2A88BC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E362760);
  qword_27C86B090 = 0xD00000000000001ALL;
  *algn_27C86B098 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A89D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A8A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE8, &qword_20E3563B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C869D10, &qword_20E346330);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C869D10, &qword_20E346330);
    v26 = v40;
  }

  else
  {
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_20E2FB8D8(v18, v16, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_20E04875C(v23, &qword_27C86CFE8, &qword_20E3563B8);
    v27 = v38;
    sub_20E2FB8D8(v16, v38, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    sub_20E2FB8D8(v27, v23, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C86CFE8, &qword_20E3563B8);
  }

  sub_20E0486F4(v23, v39, &qword_27C86CFE8, &qword_20E3563B8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C86CFE8, &qword_20E3563B8);
    return sub_20E04875C(v29, &qword_27C86CFE8, &qword_20E3563B8);
  }

  else
  {
    v31 = v36;
    sub_20E2FB8D8(v29, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C86CFE8, &qword_20E3563B8);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C869D10, &qword_20E346330);
    sub_20E2FB8D8(v31, v32, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E2A8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D10, &qword_20E346330);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D10, &qword_20E346330);
  }

  sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E322580();
  return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
}

uint64_t sub_20E2A92A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC88, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A9340(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_20E322470();
}

uint64_t sub_20E2A93AC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_20E322480();
}

uint64_t sub_20E2A942C()
{
  if (qword_27C863618 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B090;
  v2 = *algn_27C86B098;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_27C86B0B8 = v1;
  qword_27C86B0C0 = v2;
  return result;
}

uint64_t sub_20E2A9504()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B0C8);
  __swift_project_value_buffer(v0, qword_27C86B0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_20E3224C0(), !v4))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2A9894@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E2A9924(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC80, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A99C4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_20E322470();
}

uint64_t sub_20E2A9A30(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_20E322480();
}

uint64_t sub_20E2A9AB0()
{
  result = MEMORY[0x20F32BF40](0x657275746165462ELL, 0xEC00000067616C46);
  qword_27C86B0E0 = 0xD00000000000001ALL;
  *algn_27C86B0E8 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A9B4C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B0F0);
  __swift_project_value_buffer(v0, qword_27C86B0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E3222F0();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}