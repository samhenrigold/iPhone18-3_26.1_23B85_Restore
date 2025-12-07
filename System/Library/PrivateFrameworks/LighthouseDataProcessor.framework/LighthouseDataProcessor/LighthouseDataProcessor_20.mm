uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != 41)
  {
    v5 = *a1;
    if (v2 == 41)
    {
      return 0;
    }

    v4 = v2;
    if (!_s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV0deF13PrimitiveKindO2eeoiySbAE_AEtFZ_0(&v5, &v4))
    {
      return 0;
    }

LABEL_6:
    type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  if (v2 == 41)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC8, &qword_20E33AF98);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863B68, &unk_20E346230);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863B68, &unk_20E346230);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863B68, &unk_20E346230);
LABEL_9:
      type metadata accessor for ToolKitProtoTypeIdentifier(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863B68, &unk_20E346230);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867EC8, &qword_20E33AF98);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v18 = _s23LighthouseDataProcessor30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E04875C(v14, &qword_27C863B68, &unk_20E346230);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = a1[8];
  v15 = a2[8];
  if (v14)
  {
    if (!v15 || (a1[7] != a2[7] || v14 != v15) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v24 = v7;
  v23 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v16 = *(v23 + 40);
  v17 = *(v11 + 48);
  sub_20E0486F4(a1 + v16, v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v16, &v13[v17], &qword_27C863C48, &qword_20E323F30);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C863C48, &qword_20E323F30);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
      goto LABEL_18;
    }

    v19 = v24;
    sub_20E2FB8D8(&v13[v17], v24, type metadata accessor for ToolKitProtoTypeInstance);
    v20 = sub_20E2EC518(v10, v19, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_18:
    sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_24;
  }

  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
LABEL_20:
  if ((sub_20E159F90(a1[4], a2[4]) & 1) == 0 || (sub_20E1559DC(a1[5], a2[5]) & 1) == 0 || (sub_20E196610() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_20E322850();
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E78, &qword_20E33AF50);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C867E70, &unk_20E346370);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C867E70, &unk_20E346370);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C867E70, &unk_20E346370);
LABEL_11:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C867E70, &unk_20E346370);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
LABEL_8:
    sub_20E04875C(v13, &qword_27C867E78, &qword_20E33AF50);
    goto LABEL_9;
  }

  v18 = v21;
  sub_20E2FB8D8(&v13[v15], v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  v19 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(v10, v18);
  sub_20E2FB878(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E04875C(v13, &qword_27C867E70, &unk_20E346370);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C867E60, &qword_20E33AF40);
  sub_20E0486F4(a2, &v14[v15], &qword_27C867E60, &qword_20E33AF40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
LABEL_9:
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C867E60, &qword_20E33AF40);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867E68, &qword_20E33AF48);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  v18 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_20E322160();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C88, &qword_20E346290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D248, &qword_20E356608);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v15 = v12;
  v26 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v16 = *(v26 + 24);
  v17 = *(v15 + 48);
  sub_20E0486F4(&a1[v16], v14, &qword_27C869C88, &qword_20E346290);
  v18 = &a2[v16];
  v19 = v5;
  v27 = v17;
  sub_20E0486F4(v18, &v14[v17], &qword_27C869C88, &qword_20E346290);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v27], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869C88, &qword_20E346290);
LABEL_12:
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v14, v10, &qword_27C869C88, &qword_20E346290);
  v21 = v27;
  if (v20(&v14[v27], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_20E04875C(v14, &qword_27C86D248, &qword_20E356608);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v14[v21], v4);
  sub_20E2FB9A4(&qword_27C86D250, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v24 = sub_20E322850();
  v25 = *(v19 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_20E04875C(v14, &qword_27C869C88, &qword_20E346290);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D230, &qword_20E3565F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869C80, &qword_20E346288);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869C80, &qword_20E346288);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
LABEL_9:
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869C80, &qword_20E346288);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86D230, &qword_20E3565F0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v18 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV0def9PrimitiveH4KindO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E2F1054(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_20E322D60() & 1) != 0)
  {
    v7 = a1[3];
    v8 = a2[3];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[2] == a2[2] && v7 == v8;
        if (v9 || (sub_20E322D60() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      a3(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF40, &qword_20E356310);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C869D48, &qword_20E346380);
  sub_20E0486F4(a2, &v14[v15], &qword_27C869D48, &qword_20E346380);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C869D48, &qword_20E346380);
LABEL_9:
      type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C869D48, &qword_20E346380);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C86CF40, &qword_20E356310);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v14[v15], v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  v18 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0defD8IconKindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E04875C(v14, &qword_27C869D48, &qword_20E346380);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV0d6SymbolI0V2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (v8 && (a1[5] == *(a2 + 40) && v7 == v8 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_20:
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

unint64_t sub_20E2F15C4()
{
  result = qword_27C86BDF0;
  if (!qword_27C86BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BDF0);
  }

  return result;
}

unint64_t sub_20E2F161C()
{
  result = qword_27C86BDF8;
  if (!qword_27C86BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BDF8);
  }

  return result;
}

unint64_t sub_20E2F18B4()
{
  result = qword_27C86BE28;
  if (!qword_27C86BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BE28);
  }

  return result;
}

unint64_t sub_20E2F190C()
{
  result = qword_27C86BE30;
  if (!qword_27C86BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BE30);
  }

  return result;
}

unint64_t sub_20E2F2264()
{
  result = qword_27C86BEE8;
  if (!qword_27C86BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BEE8);
  }

  return result;
}

unint64_t sub_20E2F22BC()
{
  result = qword_27C86BEF0;
  if (!qword_27C86BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BEF0);
  }

  return result;
}

unint64_t sub_20E2F2554()
{
  result = qword_27C86BF20;
  if (!qword_27C86BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BF20);
  }

  return result;
}

unint64_t sub_20E2F25AC()
{
  result = qword_27C86BF28;
  if (!qword_27C86BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BF28);
  }

  return result;
}

unint64_t sub_20E2F2DE4()
{
  result = qword_27C86BFB0;
  if (!qword_27C86BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFB0);
  }

  return result;
}

unint64_t sub_20E2F2E3C()
{
  result = qword_27C86BFB8;
  if (!qword_27C86BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFB8);
  }

  return result;
}

unint64_t sub_20E2F31F4()
{
  result = qword_27C86C008;
  if (!qword_27C86C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C008);
  }

  return result;
}

unint64_t sub_20E2F324C()
{
  result = qword_27C86C010;
  if (!qword_27C86C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C010);
  }

  return result;
}

unint64_t sub_20E2F3844()
{
  result = qword_27C86C090;
  if (!qword_27C86C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C090);
  }

  return result;
}

unint64_t sub_20E2F389C()
{
  result = qword_27C86C098;
  if (!qword_27C86C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C098);
  }

  return result;
}

unint64_t sub_20E2F49D4()
{
  result = qword_27C86C1F8;
  if (!qword_27C86C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C1F8);
  }

  return result;
}

unint64_t sub_20E2F4A2C()
{
  result = qword_27C86C200;
  if (!qword_27C86C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C200);
  }

  return result;
}

unint64_t sub_20E2F4A84()
{
  result = qword_27C86C208;
  if (!qword_27C86C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C208);
  }

  return result;
}

unint64_t sub_20E2F4ADC()
{
  result = qword_27C86C210;
  if (!qword_27C86C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C210);
  }

  return result;
}

unint64_t sub_20E2F5314()
{
  result = qword_27C86C2C0;
  if (!qword_27C86C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2C0);
  }

  return result;
}

unint64_t sub_20E2F536C()
{
  result = qword_27C86C2C8;
  if (!qword_27C86C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2C8);
  }

  return result;
}

unint64_t sub_20E2F53C4()
{
  result = qword_27C86C2D0;
  if (!qword_27C86C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2D0);
  }

  return result;
}

unint64_t sub_20E2F541C()
{
  result = qword_27C86C2D8;
  if (!qword_27C86C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2D8);
  }

  return result;
}

unint64_t sub_20E2F5474()
{
  result = qword_27C86C2E0;
  if (!qword_27C86C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2E0);
  }

  return result;
}

unint64_t sub_20E2F54CC()
{
  result = qword_27C86C2E8;
  if (!qword_27C86C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2E8);
  }

  return result;
}

unint64_t sub_20E2F5F44()
{
  result = qword_27C86C3B8;
  if (!qword_27C86C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C3B8);
  }

  return result;
}

unint64_t sub_20E2F5F9C()
{
  result = qword_27C86C3C0;
  if (!qword_27C86C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C3C0);
  }

  return result;
}

unint64_t sub_20E2F6B34()
{
  result = qword_27C86C4B8;
  if (!qword_27C86C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C4B8);
  }

  return result;
}

unint64_t sub_20E2F6B8C()
{
  result = qword_27C86C4C0;
  if (!qword_27C86C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C4C0);
  }

  return result;
}

unint64_t sub_20E2F6F44()
{
  result = qword_27C86C508;
  if (!qword_27C86C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C508);
  }

  return result;
}

unint64_t sub_20E2F6F9C()
{
  result = qword_27C86C510;
  if (!qword_27C86C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C510);
  }

  return result;
}

unint64_t sub_20E2F8E54()
{
  result = qword_27C86C770;
  if (!qword_27C86C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C770);
  }

  return result;
}

unint64_t sub_20E2F8EAC()
{
  result = qword_27C86C778;
  if (!qword_27C86C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C778);
  }

  return result;
}

unint64_t sub_20E2F8F04()
{
  result = qword_27C86C780;
  if (!qword_27C86C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C780);
  }

  return result;
}

unint64_t sub_20E2F8F5C()
{
  result = qword_27C86C788;
  if (!qword_27C86C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C788);
  }

  return result;
}

unint64_t sub_20E2F8FB4()
{
  result = qword_27C86C790;
  if (!qword_27C86C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C790);
  }

  return result;
}

unint64_t sub_20E2F900C()
{
  result = qword_27C86C798;
  if (!qword_27C86C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C798);
  }

  return result;
}

unint64_t sub_20E2F9064()
{
  result = qword_27C86C7A0;
  if (!qword_27C86C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7A0);
  }

  return result;
}

unint64_t sub_20E2F90BC()
{
  result = qword_27C86C7A8;
  if (!qword_27C86C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7A8);
  }

  return result;
}

unint64_t sub_20E2F9234()
{
  result = qword_27C86C7C0;
  if (!qword_27C86C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7C0);
  }

  return result;
}

unint64_t sub_20E2F928C()
{
  result = qword_27C86C7C8;
  if (!qword_27C86C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7C8);
  }

  return result;
}

unint64_t sub_20E2F9E24()
{
  result = qword_27C86C8A8;
  if (!qword_27C86C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C8A8);
  }

  return result;
}

unint64_t sub_20E2F9E7C()
{
  result = qword_27C86C8B0;
  if (!qword_27C86C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C8B0);
  }

  return result;
}

unint64_t sub_20E2FA234()
{
  result = qword_27C86C900;
  if (!qword_27C86C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C900);
  }

  return result;
}

unint64_t sub_20E2FA28C()
{
  result = qword_27C86C908;
  if (!qword_27C86C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C908);
  }

  return result;
}

unint64_t sub_20E2FA524()
{
  result = qword_27C86C940;
  if (!qword_27C86C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C940);
  }

  return result;
}

unint64_t sub_20E2FA57C()
{
  result = qword_27C86C948;
  if (!qword_27C86C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C948);
  }

  return result;
}

unint64_t sub_20E2FA5D4()
{
  result = qword_27C86C950;
  if (!qword_27C86C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C950);
  }

  return result;
}

unint64_t sub_20E2FA62C()
{
  result = qword_27C86C958;
  if (!qword_27C86C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C958);
  }

  return result;
}

unint64_t sub_20E2FB524()
{
  result = qword_27C86CA88;
  if (!qword_27C86CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86CA88);
  }

  return result;
}

unint64_t sub_20E2FB57C()
{
  result = qword_27C86CA90;
  if (!qword_27C86CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86CA90);
  }

  return result;
}

uint64_t sub_20E2FB810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FB878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E2FB8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E2FB940()
{
  result = qword_27C86D1E8;
  if (!qword_27C86D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D1E0, &qword_20E3565A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D1E8);
  }

  return result;
}

uint64_t sub_20E2FB9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20E2FBF4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D57F28]) init];
  sub_20E2FC120(a1, v4);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) != 1)
  {
    sub_20E2FC190(v4);
    v7 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = sub_20E322860();
      [v9 setDomain_];
    }

    if (v5)
    {
      v11 = objc_allocWithZone(MEMORY[0x277D57F30]);
      v12 = v5;
      v13 = [v11 init];
      [v12 setPlanGenerationModelOutputError_];
    }

    v14 = [v5 planGenerationModelOutputError];
    [v14 setError_];
  }

  return v5;
}

uint64_t sub_20E2FC120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E2FC190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TranscriptProtoEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v46 - v9;
  v10 = sub_20E322010();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0x206E6F6973736553, 0xEC000000203A4449);
  MEMORY[0x20F32BF40](v1[2], v1[3]);
  MEMORY[0x20F32BF40](0xD000000000000014, 0x800000020E363D20);
  MEMORY[0x20F32BF40](v1[6], v1[7]);
  MEMORY[0x20F32BF40](0xD000000000000014, 0x800000020E363D40);
  MEMORY[0x20F32BF40](v1[4], v1[5]);
  MEMORY[0x20F32BF40](0x646574616572430ALL, 0xED0000203A746120);
  v19 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(v0 + v19[13], v15, &qword_27C8688C0, &qword_20E33B870);
  v20 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    v21 = &qword_27C8688C0;
    v22 = &qword_20E33B870;
    v23 = v15;
LABEL_5:
    sub_20E04875C(v23, v21, v22);
    v26 = 0xE300000000000000;
    v27 = 7104878;
    goto LABEL_7;
  }

  sub_20E0486F4(&v15[*(v20 + 28)], v18, &qword_27C868778, &unk_20E33C000);
  sub_20E2FFB7C(v15, type metadata accessor for TranscriptProtoTimepoint);
  v24 = sub_20E322150();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v18, 1, v24) == 1)
  {
    v21 = &qword_27C868778;
    v22 = &unk_20E33C000;
    v23 = v18;
    goto LABEL_5;
  }

  sub_20E322140();
  (*(v25 + 8))(v18, v24);
  v28 = sub_20E321F30();
  v26 = v29;
  (*(v47 + 8))(v12, v48);
  v27 = v28;
LABEL_7:
  MEMORY[0x20F32BF40](v27, v26);

  MEMORY[0x20F32BF40](0x64616F6C7961500ALL, 0xEA0000000000203ALL);
  sub_20E0486F4(v1 + v19[11], v7, &qword_27C863FC0, &unk_20E325F70);
  v30 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v30 - 8) + 48))(v7, 1, v30) == 1)
  {
    v31 = &qword_27C863FC0;
    v32 = &unk_20E325F70;
    v33 = v7;
LABEL_11:
    sub_20E04875C(v33, v31, v32);
    v36 = 0xE300000000000000;
    v37 = 7104878;
    goto LABEL_13;
  }

  v34 = v49;
  sub_20E0486F4(v7, v49, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E2FFB7C(v7, type metadata accessor for TranscriptProtoPayload);
  v35 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
    v31 = &qword_27C863FC8;
    v32 = &unk_20E33C1D0;
    v33 = v34;
    goto LABEL_11;
  }

  v38 = TranscriptProtoPayloadEnum.eventTypeString.getter();
  v36 = v39;
  sub_20E2FFB7C(v34, type metadata accessor for TranscriptProtoPayloadEnum);
  v37 = v38;
LABEL_13:
  MEMORY[0x20F32BF40](v37, v36);

  MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E363D60);
  sub_20E0486F4(v1 + v19[15], v4, &qword_27C8688A0, &qword_20E33B858);
  v40 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v40 - 8) + 48))(v4, 1, v40) == 1)
  {
    sub_20E04875C(v4, &qword_27C8688A0, &qword_20E33B858);
    v41 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    sub_20E2FC91C();
    v43 = sub_20E322470();
    v41 = v44;
    sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoSpanID);
    v42 = v43;
  }

  MEMORY[0x20F32BF40](v42, v41);

  return v50;
}

unint64_t sub_20E2FC91C()
{
  result = qword_280E0FDC8[0];
  if (!qword_280E0FDC8[0])
  {
    type metadata accessor for TranscriptProtoSpanID(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E0FDC8);
  }

  return result;
}

unint64_t TranscriptProtoPayloadEnum.eventTypeString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v1, v4, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616C50664F646E45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x74736575716552;
      break;
    case 2:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x616572436E616C50;
      break;
    case 3:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x72436E6F69746341;
      break;
    case 4:
    case 12:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000013;
      break;
    case 5:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4373656972657551;
      break;
    case 6:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x656C626169726156;
      break;
    case 7:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6C61636974697243;
      break;
    case 8:
    case 15:
    case 29:
    case 33:
    case 36:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000010;
      break;
    case 9:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4573656972657551;
      break;
    case 10:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000011;
      break;
    case 13:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      v7 = 9;
      goto LABEL_28;
    case 16:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x61436E6F69746341;
      break;
    case 17:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x746552736C6F6F54;
      break;
    case 18:
    case 35:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000017;
      break;
    case 19:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000012;
      break;
    case 20:
    case 21:
    case 27:
    case 34:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000014;
      break;
    case 22:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000023;
      break;
    case 23:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F7365526C6F6F54;
      break;
    case 24:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F6465526F646E55;
      break;
    case 25:
    case 26:
    case 28:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      v7 = 5;
LABEL_28:
      result = v7 | 0xD000000000000010;
      break;
    case 30:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001FLL;
      break;
    case 31:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x7461745370696B53;
      break;
    case 32:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000025;
      break;
    case 37:
      return result;
    case 38:
      result = 0x74616E696D726554;
      break;
    default:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x536E6F6973736553;
      break;
  }

  return result;
}

unint64_t TranscriptProtoStatementOutcomeEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v0, v3, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v9 = 0x6572756C696146;
    v10 = 0x5374657070696E53;
    if (EnumCaseMultiPayload == 10)
    {
      v10 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v9 = v10;
    }

    v11 = 0xD000000000000012;
    if (EnumCaseMultiPayload == 7)
    {
      v11 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v11 = 0xD00000000000001BLL;
    }

    if (EnumCaseMultiPayload <= 8)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x73736563637553;
    v6 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v6 = 0xD000000000000015;
    }

    v7 = 0xD000000000000012;
    if (EnumCaseMultiPayload != 1)
    {
      v7 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      v5 = v7;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }
  }

  sub_20E2FFB7C(v3, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  return v8;
}

unint64_t TranscriptProtoPayloadEnum.description.getter()
{
  v105 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v105);
  v107 = &v93 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v104);
  v106 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v103);
  v102 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v101);
  v100 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v99);
  v98 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v97);
  v96 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v94);
  v95 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = &v93 - v12;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v112 = *(v13 - 8);
  v113 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v108 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = &v93 - v16;
  v17 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v17);
  v118 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v115);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched - 8);
  v116 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v111 = *(Results - 8);
  MEMORY[0x28223BE20](Results - 8);
  v28 = (&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults - 8);
  v119 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v120, v42, type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x74736575716552;
    case 2u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x616572436E616C50;
    case 3u:
      sub_20E2FFAAC(v42, v39, type metadata accessor for TranscriptProtoAction);
      v45 = TranscriptProtoAction.description.getter();
      v47 = type metadata accessor for TranscriptProtoAction;
      v48 = v39;
      goto LABEL_29;
    case 4u:
      sub_20E2FFAAC(v42, v36, type metadata accessor for TranscriptProtoClientAction);
      v45 = TranscriptProtoClientAction.description.getter();
      v47 = type metadata accessor for TranscriptProtoClientAction;
      v48 = v36;
      goto LABEL_29;
    case 5u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x4373656972657551;
    case 6u:
      sub_20E2FFAAC(v42, v33, type metadata accessor for TranscriptProtoVariableStep);
      v69 = *v33;
      v70 = type metadata accessor for TranscriptProtoVariableSetter(0);
      v45 = MEMORY[0x20F32BFC0](v69, v70);
      v46 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_28;
    case 7u:
      sub_20E2FFAAC(v42, v25, type metadata accessor for TranscriptProtoSessionError);
      v122 = 0;
      v123 = 0xE000000000000000;
      MEMORY[0x20F32BF40](0x6F6261203A6D6C6CLL, 0xEC00000028207472);
      sub_20E322BA0();
      MEMORY[0x20F32BF40](41, 0xE100000000000000);
      v45 = v122;
      v47 = type metadata accessor for TranscriptProtoSessionError;
      v48 = v25;
      goto LABEL_29;
    case 8u:
    case 0x1Du:
    case 0x21u:
    case 0x24u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000010;
    case 9u:
      v49 = v119;
      sub_20E2FFAAC(v42, v119, type metadata accessor for TranscriptProtoQueryStepResults);
      v50 = *v49;
      v51 = *(*v49 + 16);
      v52 = MEMORY[0x277D84F90];
      if (v51)
      {
        v121 = MEMORY[0x277D84F90];
        sub_20E2FFA8C(0, v51, 0);
        v52 = v121;
        v53 = v50 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v54 = *(v111 + 72);
        do
        {
          sub_20E2FFB14(v53, v28, type metadata accessor for TranscriptProtoQueryResults);
          v122 = 0x203A646E756F66;
          v123 = 0xE700000000000000;
          v55 = *v28;
          v56 = type metadata accessor for TranscriptProtoCandidate(0);
          v57 = MEMORY[0x20F32BFC0](v55, v56);
          MEMORY[0x20F32BF40](v57);

          v59 = v122;
          v58 = v123;
          sub_20E2FFB7C(v28, type metadata accessor for TranscriptProtoQueryResults);
          v121 = v52;
          v61 = *(v52 + 16);
          v60 = *(v52 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_20E2FFA8C((v60 > 1), v61 + 1, 1);
            v52 = v121;
          }

          *(v52 + 16) = v61 + 1;
          v62 = v52 + 16 * v61;
          *(v62 + 32) = v59;
          *(v62 + 40) = v58;
          v53 += v54;
          --v51;
        }

        while (v51);
      }

      v122 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
      sub_20E19B638();
      v63 = sub_20E322830();

      v64 = type metadata accessor for TranscriptProtoQueryStepResults;
      v65 = v119;
      goto LABEL_14;
    case 0xAu:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001CLL;
    case 0xBu:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000011;
    case 0xCu:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000013;
    case 0xDu:
      v66 = type metadata accessor for TranscriptProtoPayloadEnum;
      v67 = v42;
      goto LABEL_26;
    case 0xEu:
      v33 = v116;
      sub_20E2FFAAC(v42, v116, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_20E322B00();

      v122 = 0x20646E756F66;
      v123 = 0xE600000000000000;
      v121 = *(*v33 + 16);
      v44 = sub_20E322D50();
      MEMORY[0x20F32BF40](v44);

      MEMORY[0x20F32BF40](0x616D206E61707320, 0xED00007365686374);
      v45 = v122;
      v46 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_28;
    case 0xFu:
      sub_20E2FFAAC(v42, v20, type metadata accessor for TranscriptProtoContextRetrieved);
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E364100);
      sub_20E322BA0();
      v45 = v122;
      v47 = type metadata accessor for TranscriptProtoContextRetrieved;
      v48 = v20;
      goto LABEL_29;
    case 0x10u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x43206E6F69746361;
    case 0x11u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x657220736C6F6F54;
    case 0x12u:
    case 0x23u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000017;
    case 0x13u:
      v33 = v118;
      sub_20E2FFAAC(v42, v118, type metadata accessor for TranscriptProtoStatementResult);
      v71 = v117;
      sub_20E0486F4(&v33[*(v17 + 20)], v117, &qword_27C863FB8, &unk_20E325F60);
      v72 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
      if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
      {
        sub_20E04875C(v71, &qword_27C863FB8, &unk_20E325F60);
        v73 = v113;
        v74 = v114;
LABEL_47:
        (*(v112 + 56))(v74, 1, 1, v73);
LABEL_48:
        sub_20E04875C(v74, &qword_27C863BA0, &unk_20E325F20);
        sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
        return 0x203A746C75736572;
      }

      v77 = v110;
      sub_20E0486F4(v71, v110, &qword_27C863BA8, &unk_20E345F00);
      sub_20E2FFB7C(v71, type metadata accessor for TranscriptProtoStatementResultPayload);
      v78 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
      v73 = v113;
      v74 = v114;
      if (v79 == 1)
      {
        sub_20E04875C(v77, &qword_27C863BA8, &unk_20E345F00);
        goto LABEL_47;
      }

      sub_20E0486F4(v77, v114, &qword_27C863BA0, &unk_20E325F20);
      sub_20E2FFB7C(v77, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v112 + 48))(v74, 1, v73) == 1)
      {
        goto LABEL_48;
      }

      v80 = v109;
      sub_20E2FFAAC(v74, v109, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v81 = v108;
      sub_20E2FFB14(v80, v108, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload > 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v81, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            return 0x203A746C75736572;
          }

          if (EnumCaseMultiPayload == 10)
          {
            sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v81, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            v68 = 11;
          }

          else
          {
            sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
            v76 = v81;
            v75 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_42:
            sub_20E2FFB7C(v76, v75);
            v68 = 5;
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 6)
          {
            v89 = v107;
            sub_20E2FFAAC(v81, v107, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
            v122 = 0;
            v123 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v63 = v122;
            v90 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
            goto LABEL_73;
          }

          if (EnumCaseMultiPayload == 7)
          {
            sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
            v67 = v81;
            v66 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_26:
            sub_20E2FFB7C(v67, v66);
            v68 = 9;
          }

          else
          {
            sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v33, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v81, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            v68 = 10;
          }
        }

        return v68 | 0xD000000000000010;
      }

      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v83 = v81;
            v84 = v96;
            sub_20E2FFAAC(v83, v96, type metadata accessor for TranscriptProtoActionConfirmation);
            v122 = 0;
            v123 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v45 = v122;
            v85 = type metadata accessor for TranscriptProtoActionConfirmation;
          }

          else
          {
            v92 = v81;
            v84 = v98;
            sub_20E2FFAAC(v92, v98, type metadata accessor for TranscriptProtoParameterNeedsValue);
            v122 = 0;
            v123 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v45 = v122;
            v85 = type metadata accessor for TranscriptProtoParameterNeedsValue;
          }
        }

        else
        {
          v87 = v81;
          v84 = v95;
          sub_20E2FFAAC(v87, v95, type metadata accessor for TranscriptProtoActionSuccess);
          v122 = 0x203A746C75736572;
          v123 = 0xE800000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
          v88 = sub_20E322A80();
          MEMORY[0x20F32BF40](v88);

          v45 = v122;
          v85 = type metadata accessor for TranscriptProtoActionSuccess;
        }

LABEL_70:
        sub_20E2FFB7C(v84, v85);
        sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v46 = type metadata accessor for TranscriptProtoStatementResult;
LABEL_28:
        v47 = v46;
        v48 = v33;
LABEL_29:
        sub_20E2FFB7C(v48, v47);
        return v45;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v91 = v81;
        v84 = v100;
        sub_20E2FFAAC(v91, v100, type metadata accessor for TranscriptProtoParameterConfirmation);
        v122 = 0;
        v123 = 0xE000000000000000;
        MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
        sub_20E322BA0();
        v45 = v122;
        v85 = type metadata accessor for TranscriptProtoParameterConfirmation;
        goto LABEL_70;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v86 = v81;
        v84 = v102;
        sub_20E2FFAAC(v86, v102, type metadata accessor for TranscriptProtoParameterDisambiguation);
        v122 = 0;
        v123 = 0xE000000000000000;
        MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
        sub_20E322BA0();
        v45 = v122;
        v85 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        goto LABEL_70;
      }

      v89 = v106;
      sub_20E2FFAAC(v81, v106, type metadata accessor for TranscriptProtoParameterNotAllowed);
      v122 = 0;
      v123 = 0xE000000000000000;
      MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
      sub_20E322BA0();
      v63 = v122;
      v90 = type metadata accessor for TranscriptProtoParameterNotAllowed;
LABEL_73:
      sub_20E2FFB7C(v89, v90);
      sub_20E2FFB7C(v80, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v64 = type metadata accessor for TranscriptProtoStatementResult;
      v65 = v33;
LABEL_14:
      sub_20E2FFB7C(v65, v64);
      return v63;
    case 0x14u:
    case 0x15u:
    case 0x1Bu:
    case 0x22u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000014;
    case 0x16u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000023;
    case 0x17u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F7365526C6F6F54;
    case 0x18u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F6465526F646E55;
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
      v75 = type metadata accessor for TranscriptProtoPayloadEnum;
      v76 = v42;
      goto LABEL_42;
    case 0x1Eu:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001FLL;
    case 0x1Fu:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x7461745370696B53;
    case 0x20u:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000025;
    case 0x25u:
      return 0xD00000000000001FLL;
    case 0x26u:
      return 0xD00000000000001CLL;
    default:
      sub_20E2FFB7C(v42, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x536E6F6973736553;
  }
}

uint64_t TranscriptProtoAction.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v23 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v23 - v6);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0x65286E6F69746341, 0xEF203A6449727078);
  v8 = type metadata accessor for TranscriptProtoAction(0);
  sub_20E0486F4(&v0[v8[6]], v7, &qword_27C8639D0, &unk_20E33C230);
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
    v10 = 0xE300000000000000;
    v11 = 4999502;
  }

  else
  {
    v24 = 101;
    v25 = 0xE100000000000000;
    v23[1] = *v7 - 1;
    v12 = sub_20E322D50();
    MEMORY[0x20F32BF40](v12);

    v11 = v24;
    v10 = v25;
    sub_20E2FFB7C(v7, type metadata accessor for TranscriptProtoStatementID);
  }

  MEMORY[0x20F32BF40](v11, v10);

  MEMORY[0x20F32BF40](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  sub_20E0486F4(&v0[v8[9]], v4, &qword_27C8639C8, &unk_20E323870);
  v13 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    sub_20E04875C(v4, &qword_27C8639C8, &unk_20E323870);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v4;
    v15 = v4[1];

    sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  }

  v24 = v14;
  v25 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D280, &qword_20E356678);
  sub_20E322BA0();

  MEMORY[0x20F32BF40](0x656C646E7562202CLL, 0xEC000000203A6449);
  v16 = &v1[v8[7]];
  if (v16[1])
  {
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x20F32BF40](v17, v18);

  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E364160);
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  v19 = sub_20E322800();
  MEMORY[0x20F32BF40](v19);

  MEMORY[0x20F32BF40](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*v1)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*v1)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x20F32BF40](v20, v21);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return v26;
}

unint64_t TranscriptProtoClientAction.description.getter()
{
  sub_20E322B00();

  MEMORY[0x20F32BF40](*v0, v0[1]);
  MEMORY[0x20F32BF40](0x656D61726170202CLL, 0xEE00203A73726574);
  type metadata accessor for ToolKitProtoTypedValue(0);
  v1 = sub_20E322800();
  MEMORY[0x20F32BF40](v1);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t TranscriptProtoPayloadEnum.PayloadType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

uint64_t TranscriptProtoPayloadEnum.payloadType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v2, v6, type metadata accessor for TranscriptProtoPayloadEnum);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v8 = 39;
      goto LABEL_41;
    case 2:
      v8 = 2;
      goto LABEL_41;
    case 3:
      v8 = 3;
      goto LABEL_41;
    case 4:
      v8 = 4;
      goto LABEL_41;
    case 5:
      v8 = 5;
      goto LABEL_41;
    case 6:
      v8 = 6;
      goto LABEL_41;
    case 7:
      v8 = 9;
      goto LABEL_41;
    case 8:
      v8 = 44;
      goto LABEL_41;
    case 9:
      v8 = 15;
      goto LABEL_41;
    case 10:
      v8 = 17;
      goto LABEL_41;
    case 11:
      v8 = 21;
      goto LABEL_41;
    case 12:
      v8 = 22;
      goto LABEL_41;
    case 13:
      v8 = 24;
      goto LABEL_41;
    case 14:
      v8 = 23;
      goto LABEL_41;
    case 15:
      v8 = 25;
      goto LABEL_41;
    case 16:
      v8 = 27;
      goto LABEL_41;
    case 17:
      v8 = 26;
      goto LABEL_41;
    case 18:
      v8 = 28;
      goto LABEL_41;
    case 19:
      v8 = 29;
      goto LABEL_41;
    case 20:
      v8 = 40;
      goto LABEL_41;
    case 21:
      v8 = 32;
      goto LABEL_41;
    case 22:
      v8 = 33;
      goto LABEL_41;
    case 23:
      v8 = 34;
      goto LABEL_41;
    case 24:
      v8 = 35;
      goto LABEL_41;
    case 25:
      v8 = 36;
      goto LABEL_41;
    case 26:
      v8 = 37;
      goto LABEL_41;
    case 27:
      v8 = 38;
      goto LABEL_41;
    case 28:
      v8 = 45;
      goto LABEL_41;
    case 29:
      v8 = 46;
      goto LABEL_41;
    case 30:
      v8 = 47;
      goto LABEL_41;
    case 31:
      v8 = 48;
      goto LABEL_41;
    case 32:
      v8 = 49;
      goto LABEL_41;
    case 33:
      v8 = 50;
      goto LABEL_41;
    case 34:
      v8 = 53;
      goto LABEL_41;
    case 35:
      v8 = 51;
      goto LABEL_41;
    case 36:
      v8 = 52;
      goto LABEL_41;
    case 37:
      *a1 = 11;
      return result;
    case 38:
      *a1 = 12;
      return result;
    default:
      v8 = 43;
LABEL_41:
      *a1 = v8;
      return sub_20E2FFB7C(v6, type metadata accessor for TranscriptProtoPayloadEnum);
  }
}

uint64_t TranscriptProtoStatementID.asExprID.getter()
{
  v0 = sub_20E322D50();
  MEMORY[0x20F32BF40](v0);

  return 101;
}

uint64_t TranscriptProtoSystemPromptResolution.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0xD000000000000020, 0x800000020E3641A0);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D280, &qword_20E356678);
  sub_20E322BA0();
  MEMORY[0x20F32BF40](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_20E0486F4(v0 + *(v4 + 24), v3, &qword_27C863F10, &unk_20E33C3B0);
  v5 = sub_20E3228D0();
  MEMORY[0x20F32BF40](v5);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return v8;
}

unint64_t TranscriptProtoActionFailureFailureEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v0, v3, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6173694469666977;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
    case 12:
      result = 0xD000000000000010;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x466B726F7774656ELL;
      break;
    case 8:
      result = 0x466C616974726170;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x6F4E797469746E65;
      break;
    case 13:
    case 17:
      result = 0x6F54656C62616E75;
      break;
    case 14:
      result = 0x61436E6F69746361;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0x69686374614D6F6ELL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    default:
      sub_20E2FFB7C(v3, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      result = 0xD000000000000015;
      break;
  }

  return result;
}

char *sub_20E2FFA8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2FFDA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_20E2FFAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FFB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FFB7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E2FFBE0()
{
  result = qword_27C86D288;
  if (!qword_27C86D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D288);
  }

  return result;
}

uint64_t _s11PayloadTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PayloadTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_20E2FFD84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2FFEB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20E2FFDA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20E2FFEB4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
  v10 = *(sub_20E322600() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_20E322600() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_20E30008C(unsigned __int8 a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E3001BC(uint64_t a1, unsigned __int8 a2)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

unint64_t ReliabilityCategory.name.getter()
{
  v1 = *v0 >> 4;
  if (v1 <= 3)
  {
    v6 = 0x617461444D424549;
    if (v1)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 >> 4 <= 1u)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v3 = 0xD00000000000001ALL;
    if (v1 != 7)
    {
      v3 = 0x745372657070614DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    if (v1 == 4)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (*v0 >> 4 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t IEBMDataIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6576457974706D65;
  v3 = 0x746E6576456C696ELL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x5364696C61766E69;
  if (v1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t DataEncodingError.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t FeaturizationError.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t IFTranscriptSELFMapperIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000024;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000013;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t MapperStats.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

LighthouseDataProcessor::IEBMDataIssues_optional __swiftcall IEBMDataIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E300744(uint64_t a1)
{
  sub_20E3228F0();
}

void sub_20E300870(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0079646F42746ELL;
  v4 = 0x6576457974706D65;
  v5 = 0xEF64616F6C796150;
  v6 = 0x746E6576456C696ELL;
  v7 = 0x800000020E359F70;
  if (v2 != 4)
  {
    v7 = 0x800000020E359F90;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000015;
    v5 = v7;
  }

  v8 = 0xED00006D61657274;
  v9 = 0x5364696C61766E69;
  if (v2 != 1)
  {
    v9 = 0xD000000000000016;
    v8 = 0x800000020E359F40;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t DataUploadIssues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E322C20();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_20E3009B0()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300A24(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300AB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "provisionalEventInitFailed";
  }

  else
  {
    v4 = "jsonEncodingError";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "jsonEncodingError";
  }

  else
  {
    v7 = "provisionalEventInitFailed";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E322D60();
  }

  return v9 & 1;
}

uint64_t sub_20E300B5C()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E300BDC(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E300C48(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E300CD0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "jsonEncodingError";
  }

  else
  {
    v3 = "provisionalEventInitFailed";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t DataDecodingError.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E322C20();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_20E300D68()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300DDC(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300E68@<X0>(char *a4@<X8>)
{
  v5 = sub_20E322C20();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_20E300EC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = "jsonDecodingError";
  }

  else
  {
    v4 = "emptyTranscriptEvent";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "emptyTranscriptEvent";
  }

  else
  {
    v7 = "jsonDecodingError";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E322D60();
  }

  return v9 & 1;
}

uint64_t sub_20E300F74()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E300FF4(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E301060(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E3010E8@<X0>(char *a3@<X8>)
{
  v4 = sub_20E322C20();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_20E301144(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "emptyTranscriptEvent";
  }

  else
  {
    v3 = "jsonDecodingError";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t AppIntentProcessingIssues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E322C20();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_20E3011DC()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E301250(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

LighthouseDataProcessor::IFTranscriptSELFMapperIssues_optional __swiftcall IFTranscriptSELFMapperIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E301338()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E301408(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E3014C4(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E30159C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "uuidConversionError";
  v4 = "undefinedIFSessionError";
  v5 = 0xD000000000000024;
  if (v2 != 3)
  {
    v5 = 0xD000000000000017;
    v4 = "anscriptEventPayload";
  }

  if (v2 == 2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v7 = 0xD000000000000013;
  if (*v1)
  {
    v8 = "selfMessageInstantiationError";
  }

  else
  {
    v7 = 0xD00000000000001DLL;
    v8 = "ntPayload";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v6;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t IFTelemetryTimestampIssues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E322C20();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_20E301684()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E3016F8(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E301758@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E322C20();

  *a3 = v4 != 0;
  return result;
}

LighthouseDataProcessor::MapperStats_optional __swiftcall MapperStats.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20E301828()
{
  result = qword_27C86D290;
  if (!qword_27C86D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D290);
  }

  return result;
}

unint64_t sub_20E301880()
{
  result = qword_27C86D298;
  if (!qword_27C86D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D298);
  }

  return result;
}

unint64_t sub_20E3018D8()
{
  result = qword_27C86D2A0;
  if (!qword_27C86D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2A0);
  }

  return result;
}

unint64_t sub_20E301930()
{
  result = qword_27C86D2A8;
  if (!qword_27C86D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2A8);
  }

  return result;
}

unint64_t sub_20E301988()
{
  result = qword_27C86D2B0;
  if (!qword_27C86D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2B0);
  }

  return result;
}

unint64_t sub_20E3019E0()
{
  result = qword_27C86D2B8;
  if (!qword_27C86D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2B8);
  }

  return result;
}

unint64_t sub_20E301A38()
{
  result = qword_27C86D2C0;
  if (!qword_27C86D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2C0);
  }

  return result;
}

unint64_t sub_20E301A90()
{
  result = qword_27C86D2C8;
  if (!qword_27C86D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2C8);
  }

  return result;
}

uint64_t sub_20E301AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "rawBiomeEventCount";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v6 = "rawBiomeEventCount";
  }

  else
  {
    v6 = "preMapperEventCount";
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
    v8 = "startTimeGreaterThanEndTime";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v3 = "preMapperEventCount";
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
    v10 = "startTimeGreaterThanEndTime";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E322D60();
  }

  return v11 & 1;
}

unint64_t sub_20E301BBC()
{
  result = qword_27C86D2D0;
  if (!qword_27C86D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2D0);
  }

  return result;
}

uint64_t sub_20E301C10()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E301CA8(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E301D2C(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E301DCC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "rawBiomeEventCount";
  v4 = 0xD000000000000014;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v3 = "preMapperEventCount";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "startTimeGreaterThanEndTime";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x18)
  {
    goto LABEL_17;
  }

  if (a2 + 232 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 232) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 232;
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

      return (*a1 | (v4 << 8)) - 232;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 232;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFFEF | (16 * ((*a1 >> 3) & 1))) ^ 0x1F;
  if (v6 >= 0x17)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReliabilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 232 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 232) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x18)
  {
    v4 = 0;
  }

  if (a2 > 0x17)
  {
    v5 = ((a2 - 24) >> 8) + 1;
    *result = a2 - 24;
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
    *result = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20E3020B4(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_20E3227C0();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_20E3227D0();
}

uint64_t sub_20E302140()
{
  sub_20E302210();
  result = sub_20E322A70();
  qword_280E12C68 = result;
  return result;
}

uint64_t sub_20E3021A8()
{
  sub_20E302210();
  result = sub_20E322A70();
  qword_27C8CC2A8 = result;
  return result;
}

unint64_t sub_20E302210()
{
  result = qword_280E12B50;
  if (!qword_280E12B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E12B50);
  }

  return result;
}

void *sub_20E30225C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D57D00]) init];
  v12 = v11;
  if (v11)
  {
    [v11 setExists_];
    v13 = objc_allocWithZone(MEMORY[0x277D57D10]);
    v14 = v12;
    v15 = [v13 init];
    [v14 setFailure_];
  }

  sub_20E0486F4(a1, v7, &qword_27C868560, &unk_20E33C2E0);
  v16 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    sub_20E302998(v7);
    v17 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  else
  {
    sub_20E0486F4(v7, v10, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E302A64(v7, type metadata accessor for TranscriptProtoActionFailureFailure);
    v18 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
    if ((*(*(v18 - 8) + 48))(v10, 1, v18) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v12)
          {
            v26 = [v12 failure];
            if (v26)
            {
              v27 = v26;
              [v26 setUnableToHandleRequest_];
            }
          }

          sub_20E302A64(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
          break;
        case 2u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setPreflightCheckFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 3u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setPreciseLocationDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 4u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setLocationDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 5u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setWifiDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 6u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setBluetoothDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 7u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setNetworkFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 8u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setPartialFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 9u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setUnsupportedOnDevice_;
              goto LABEL_69;
            }
          }

          break;
        case 0xAu:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setFeatureCurrentlyRestricted_;
              goto LABEL_69;
            }
          }

          break;
        case 0xBu:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setEntityNotFound_;
              goto LABEL_69;
            }
          }

          break;
        case 0xCu:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setActionNotAllowed_;
              goto LABEL_69;
            }
          }

          break;
        case 0xDu:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setUnableToUndo_;
              goto LABEL_69;
            }
          }

          break;
        case 0xEu:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setActionCanceled_;
              goto LABEL_69;
            }
          }

          break;
        case 0xFu:
          if (v12)
          {
            goto LABEL_67;
          }

          break;
        case 0x10u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setNoMatchingTool_;
              goto LABEL_69;
            }
          }

          break;
        case 0x11u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setUnableToCancel_;
              goto LABEL_69;
            }
          }

          break;
        case 0x12u:
          if (v12)
          {
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setSearchSucceededNoMatchingTool_;
              goto LABEL_69;
            }
          }

          break;
        case 0x13u:
          if (v12)
          {
LABEL_67:
            v24 = [v12 failure];
            if (v24)
            {
              v25 = sel_setValueDisambiguationRejected_;
LABEL_69:
              v28 = v24;
              [v24 v25];
            }
          }

          break;
        default:
          sub_20E302A00(v10, v4);
          v19 = [objc_allocWithZone(MEMORY[0x277D57D08]) init];
          if (v19)
          {
            v20 = v19;
            [v19 setCode_];
            v21 = sub_20E322860();
            [v20 setDomain_];

            if (v12)
            {
              v22 = [v12 failure];
              if (v22)
              {
                v23 = v22;
                [v22 setActionFailureDeveloperDefinedError_];
              }
            }

            sub_20E302A64(v4, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
          }

          else
          {

            sub_20E302A64(v4, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
            v12 = 0;
          }

          break;
      }
    }
  }

  return v12;
}

uint64_t sub_20E302998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E302A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E302A64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void CoreAnalyticsEmitter.sendSageMetrics(eventCategory:eventPayload:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v66 = a2;
  v5 = type metadata accessor for UsageMetricsDefinitions(0);
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v64 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_20E322010();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v65 = v5;
  sub_20E306D90(0, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20E04875C(v14, &qword_27C863F30, &qword_20E325D90);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v21 = sub_20E3227C0();
    __swift_project_value_buffer(v21, qword_27C8CC290);
    v22 = v59;
    sub_20E19CEF0(a3, v59);

    v23 = sub_20E3227B0();
    v24 = sub_20E322A40();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v67 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_20E31B6C4(a1, v66, &v67);
      *(v25 + 12) = 2080;
      sub_20E074360();
      v27 = sub_20E322D50();
      v29 = v28;
      sub_20E19CF54(v22);
      v30 = sub_20E31B6C4(v27, v29, &v67);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_20E031000, v23, v24, "Date can not be fuzzed for: %s, Date: %s, exiting CoreAnalytics logging", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v26, -1, -1);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    else
    {

      sub_20E19CF54(v22);
    }
  }

  else
  {
    v59 = v20;
    v60 = a1;
    v57 = *(v16 + 32);
    v58 = v16 + 32;
    v57(v20, v14, v15);
    v31 = v15;
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v32 = sub_20E3227C0();
    __swift_project_value_buffer(v32, qword_27C8CC290);
    sub_20E19CEF0(a3, v11);

    v33 = sub_20E3227B0();
    v34 = sub_20E322A40();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v60;
    v56 = v31;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v55 = a3;
      v38 = v37;
      v54 = swift_slowAlloc();
      v67 = v54;
      *v38 = 136315394;
      *(v38 + 4) = sub_20E31B6C4(v36, v66, &v67);
      *(v38 + 12) = 2080;
      v39 = v34;
      sub_20E074360();
      v40 = sub_20E322D50();
      v42 = v41;
      sub_20E19CF54(v11);
      v43 = sub_20E31B6C4(v40, v42, &v67);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_20E031000, v33, v39, "Logging CoreAnalytics event type: %s, Date: %s", v38, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v44, -1, -1);
      v45 = v38;
      a3 = v55;
      MEMORY[0x20F32CA80](v45, -1, -1);
    }

    else
    {

      sub_20E19CF54(v11);
    }

    v65 = *(v62 + 16);
    v46 = v64;
    sub_20E19CEF0(a3, v64);
    v47 = v61;
    v48 = v59;
    v49 = v56;
    (*(v16 + 16))(v61, v59, v56);
    v50 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v51 = (v6 + *(v16 + 80) + v50) & ~*(v16 + 80);
    v52 = swift_allocObject();
    sub_20E3041D4(v46, v52 + v50);
    v57((v52 + v51), v47, v49);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_20E304238;
    *(v53 + 24) = v52;
    v65(v60, v66, sub_20E304304, v53);

    (*(v16 + 8))(v48, v49);
  }
}

uint64_t sub_20E3031B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E3229F0();
  v11 = sub_20E322A10();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  sub_20E303CB8(0, 0, v10, &unk_20E356FD8, v12);

  return sub_20E04875C(v10, &qword_27C86D2E0, &qword_20E356FC8);
}

unint64_t sub_20E303308(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 16) = xmmword_20E356F20;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x6D61747365746164;
  *(inited + 64) = 0xE900000000000070;
  sub_20E321F20();
  *(inited + 72) = sub_20E322A20();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000020E35F3A0;
  type metadata accessor for UsageMetricsDefinitions(0);
  v2 = sub_20E322860();

  *(inited + 96) = v2;
  strcpy((inited + 104), "errorMessage");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = sub_20E322860();
  *(inited + 128) = 0x7475626972747461;
  *(inited + 136) = 0xEF687461506E6F69;
  *(inited + 144) = sub_20E322860();
  *(inited + 152) = 0x6F6F54726F727265;
  *(inited + 160) = 0xEB0000000064496CLL;
  *(inited + 168) = sub_20E322860();
  *(inited + 176) = 0x6F4364656C696166;
  *(inited + 184) = 0xEB00000000746E75;
  sub_20E074574(0, &qword_27C86D2D8, 0x277CCABB0);
  *(inited + 192) = sub_20E322A60();
  strcpy((inited + 200), "successCount");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = sub_20E322A60();
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000020E35F3E0;
  *(inited + 240) = sub_20E322AA0();
  *(inited + 248) = 0xD000000000000015;
  *(inited + 256) = 0x800000020E35F3C0;
  *(inited + 264) = sub_20E322AA0();
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x800000020E35F400;
  *(inited + 288) = sub_20E322AA0();
  v3 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  return v3;
}

Swift::Void __swiftcall CoreAnalyticsEmitter.sendCoreAnalytics(eventName:eventPayload:)(Swift::String eventName, Swift::OpaquePointer eventPayload)
{
  v3 = v2;
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v7 = sub_20E3227C0();
  __swift_project_value_buffer(v7, qword_27C8CC290);

  v8 = sub_20E3227B0();
  v9 = sub_20E322A40();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20E31B6C4(countAndFlagsBits, object, &v15);
    _os_log_impl(&dword_20E031000, v8, v9, "Logging CoreAnalytics for event type: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F32CA80](v11, -1, -1);
    MEMORY[0x20F32CA80](v10, -1, -1);
  }

  v12 = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2]._rawValue = eventPayload._rawValue;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20E30432C;
  *(v14 + 24) = v13;

  v12(countAndFlagsBits, object, sub_20E304650, v14);
}

uint64_t sub_20E303854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_20E303878, 0, 0);
}

uint64_t sub_20E303878()
{
  v29 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = sub_20E322860();
  v0[6] = v2;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20E3205CC;
  v0[5] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 2);

  LOBYTE(v1) = AnalyticsSendEventLazy();
  _Block_release(v4);

  if (v1)
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v5 = sub_20E3227C0();
    __swift_project_value_buffer(v5, qword_27C8CC290);

    v6 = sub_20E3227B0();
    v7 = sub_20E322A40();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[10];
      v10 = v0[8];
      v9 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20E31B6C4(v10, v9, &v28);
      *(v11 + 12) = 2080;
      if (!v8())
      {
        sub_20E048C98(MEMORY[0x277D84F90]);
      }

      sub_20E074574(0, &qword_280E03EE0, 0x277D82BB8);
      v13 = sub_20E322800();
      v15 = v14;

      v16 = sub_20E31B6C4(v13, v15, &v28);

      *(v11 + 14) = v16;
      v17 = "Logged CoreAnalytics event type: %s, payload: %s";
LABEL_14:
      _os_log_impl(&dword_20E031000, v6, v7, v17, v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v12, -1, -1);
      MEMORY[0x20F32CA80](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v18 = sub_20E3227C0();
    __swift_project_value_buffer(v18, qword_27C8CC290);

    v6 = sub_20E3227B0();
    v7 = sub_20E322A50();

    if (os_log_type_enabled(v6, v7))
    {
      v19 = v0[10];
      v21 = v0[8];
      v20 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20E31B6C4(v21, v20, &v28);
      *(v11 + 12) = 2080;
      if (!v19())
      {
        sub_20E048C98(MEMORY[0x277D84F90]);
      }

      sub_20E074574(0, &qword_280E03EE0, 0x277D82BB8);
      v22 = sub_20E322800();
      v24 = v23;

      v25 = sub_20E31B6C4(v22, v24, &v28);

      *(v11 + 14) = v25;
      v17 = "CoreAnalytics rejected event type: %s, payload: %s";
      goto LABEL_14;
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_20E303CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20E304458(a3, v25 - v10);
  v12 = sub_20E322A10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20E04875C(v11, &qword_27C86D2E0, &qword_20E356FC8);
  }

  else
  {
    sub_20E322A00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20E3229E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20E3228E0() + 32;
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

uint64_t CoreAnalyticsEmitter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20E303FE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20E3040DC;

  return v6(a1);
}

uint64_t sub_20E3040DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20E3041D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageMetricsDefinitions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E304238()
{
  v1 = *(type metadata accessor for UsageMetricsDefinitions(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_20E322010();

  return sub_20E303308(v0 + v2);
}

uint64_t sub_20E304384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20E04CC18;

  return sub_20E303854(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_20E304458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E3044C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20E04CE24;

  return sub_20E303FE4(a1, v4);
}

uint64_t sub_20E304580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20E04CC18;

  return sub_20E303FE4(a1, v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_20E304654(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v2);
  v72 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v66 - v5;
  v6 = sub_20E322060();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v66 - v12);
  v14 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v66 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D580C0]) init];
  sub_20E0486F4(a1, v19, &qword_27C863B80, &qword_20E323E70);
  v24 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  if ((*(*(v24 - 8) + 48))(v19, 1, v24) == 1)
  {

    sub_20E04875C(v19, &qword_27C863B80, &qword_20E323E70);
    v25 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    return 0;
  }

  sub_20E0486F4(v19, v22, &qword_27C865E08, &unk_20E33C3C0);
  sub_20E3050D4(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v26 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v26 - 8) + 48))(v22, 1, v26) == 1)
  {

    return 0;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v23;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (!v23)
      {
        return v27;
      }

      v38 = objc_allocWithZone(MEMORY[0x277D57FE0]);
      v39 = v23;
      v40 = [v38 init];
      [v39 setTouch_];

      v41 = [v39 touch];
    }

    else
    {
      if (!v23)
      {
        return v27;
      }

      v49 = objc_allocWithZone(MEMORY[0x277D57FB8]);
      v50 = v23;
      v51 = [v49 init];
      [v50 setHeadGesture_];

      v41 = [v50 headGesture];
    }

    v52 = v41;
    if (v52)
    {
      v53 = v52;
      [v52 setExists_];
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v42 = v72;
    sub_20E305008(v22, v72, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v43 = [objc_allocWithZone(MEMORY[0x277D57FC0]) init];
    v44 = [objc_allocWithZone(MEMORY[0x277D58070]) init];
    if (v44)
    {
      v45 = v44;
      v46 = *(v2 + 24);
      v47 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      sub_20E0486F4(v42 + v46, v11, &qword_27C8639D0, &unk_20E33C230);
      v48 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v48 - 8) + 48))(v11, 1, v48) == 1)
      {
        sub_20E04875C(v11, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v64 = *v11;
        sub_20E3050D4(v11, type metadata accessor for TranscriptProtoStatementID);
        [v47 setIndex_];
      }

      [v45 setStatementId_];

      v65 = v43;
      [v65 addCandidates_];
    }

    if (v23)
    {
      [v23 setSpeech_];

      sub_20E3050D4(v42, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    }

    else
    {
      sub_20E3050D4(v42, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    }
  }

  else
  {
    v30 = v16;
    sub_20E305008(v22, v16, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v31 = [objc_allocWithZone(MEMORY[0x277D57FD0]) init];
    v32 = v68;
    if (v31)
    {
      v33 = *(v68 + 20);
      v34 = objc_allocWithZone(MEMORY[0x277D58078]);
      v35 = v31;
      v36 = [v34 &off_277E1BB78];
      sub_20E0486F4(v30 + v33, v13, &qword_27C8639D0, &unk_20E33C230);
      v37 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v37 - 8) + 48))(v13, 1, v37) == 1)
      {
        sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v54 = *v13;
        sub_20E3050D4(v13, type metadata accessor for TranscriptProtoStatementID);
        [v36 setIndex_];
      }

      [v35 setStatementId_];
    }

    v55 = v69;
    sub_20E322050();
    v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v57 = sub_20E322030();
    v58 = [v56 initWithNSUUID_];

    (*(v70 + 8))(v55, v71);
    if (v31)
    {
      [v31 setLinkId_];
    }

    v59 = v73;
    sub_20E305070(v30, v73);
    (*(v67 + 56))(v59, 0, 1, v32);
    v60 = sub_20E31C960(v59, v58);
    v62 = v61;
    sub_20E04875C(v59, &qword_27C868288, &qword_20E33B318);
    v63 = v60;
    if (v27)
    {
      [v27 setText_];

      sub_20E3050D4(v30, type metadata accessor for TranscriptProtoRequestContentTextContent);
    }

    else
    {
      sub_20E3050D4(v30, type metadata accessor for TranscriptProtoRequestContentTextContent);
    }
  }

  return v27;
}

uint64_t sub_20E305008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E305070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E3050D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E305134()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8CC2B0);
  __swift_project_value_buffer(v0, qword_27C8CC2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "events";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E3052FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E322330();
      }

      else if (result == 2)
      {
        type metadata accessor for DillSessionEvent(0);
        sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent, &unk_20E3570E8);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E3053F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (type metadata accessor for DillSessionEvent(0), sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent, &unk_20E3570E8), result = sub_20E322570(), !v4))
  {
    type metadata accessor for DillSession(0);
    return sub_20E3221A0();
  }

  return result;
}

double sub_20E305534@<D0>(uint64_t a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E3055C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3060EC(&qword_27C86D328, type metadata accessor for DillSession, &unk_20E357218);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E305664(uint64_t a1)
{
  sub_20E3060EC(&qword_27C86D310, type metadata accessor for DillSession, &unk_20E357250);

  return sub_20E322470();
}

uint64_t sub_20E3056D0(uint64_t a1, uint64_t a2)
{
  sub_20E3060EC(&qword_27C86D310, type metadata accessor for DillSession, &unk_20E357250);

  return sub_20E322480();
}

uint64_t sub_20E30574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (sub_20E1577E4(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E3060EC(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E305808()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8CC2C8);
  __swift_project_value_buffer(v0, qword_27C8CC2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "transcript";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E3059D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E3223C0();
    }

    else if (result == 100)
    {
      sub_20E305A64(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E305B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_20E322530(), !v4))
  {
    if (*(v3 + 16) >> 60 == 15 || (result = sub_20E305C08(v3), !v4))
    {
      type metadata accessor for DillSessionEvent(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E305C08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 8);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E305C98@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = xmmword_20E323EA0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E305D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3060EC(&qword_27C86D330, type metadata accessor for DillSessionEvent, &unk_20E3570B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E305DC0(uint64_t a1)
{
  sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent, &unk_20E3570E8);

  return sub_20E322470();
}

uint64_t sub_20E305E2C(uint64_t a1, uint64_t a2)
{
  sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent, &unk_20E3570E8);

  return sub_20E322480();
}

uint64_t sub_20E3060EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20E306134(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      sub_20E1965BC(*(a1 + 8), v2);
      sub_20E1965BC(v5, v4);
      v9 = sub_20E15F7B0(v3, v2, v5, v4);
      sub_20E047D10(v5, v4);
      if (v9)
      {
        goto LABEL_10;
      }

      v6 = v3;
      v7 = v2;
      goto LABEL_7;
    }

LABEL_6:
    sub_20E1965BC(*(a1 + 8), v2);
    sub_20E1965BC(v5, v4);
    sub_20E047D10(v3, v2);
    v6 = v5;
    v7 = v4;
LABEL_7:
    sub_20E047D10(v6, v7);
    return 0;
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_20E1965BC(*(a1 + 8), v2);
  sub_20E1965BC(v5, v4);
LABEL_10:
  sub_20E047D10(v3, v2);
  type metadata accessor for DillSessionEvent(0);
  sub_20E3221C0();
  sub_20E3060EC(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

void sub_20E306334(uint64_t a1)
{
  if (!qword_27C86D348)
  {
    type metadata accessor for DillSessionEvent(255);
    v1 = sub_20E3229D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C86D348);
    }
  }
}

uint64_t sub_20E3063F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    result = sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E306484()
{
  if (!qword_27C86D360)
  {
    v0 = sub_20E322A90();
    if (!v1)
    {
      atomic_store(v0, &qword_27C86D360);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20E3064F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E306544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)(uint64_t a1)
{
  v2 = sub_20E3220B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_20E322780();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E322760();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x277D20610])
  {
    v14 = MEMORY[0x277D55298];
LABEL_5:
    (*(v10 + 96))(v12, v9);
    sub_20E322750();
    v15 = sub_20E322060();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    (*(v3 + 104))(v5, *v14, v2);
    sub_20E3220C0();
    v16 = sub_20E322770();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (v13 == *MEMORY[0x277D205F8])
  {
    v14 = MEMORY[0x277D55290];
    goto LABEL_5;
  }

  result = sub_20E322BB0();
  __break(1u);
  return result;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_20E3220B0();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20E322060();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = sub_20E3220D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 bootSessionUUID];
  if (v21)
  {
    v22 = v21;
    sub_20E322040();

    (*(v6 + 32))(v17, v8, v5);
    v23 = *(v6 + 56);
    v23(v17, 0, 1, v5);
    sub_20E06CC70(v17);
    v24 = [a1 value];
    if (v24)
    {
      v25 = v24;
      if (([v24 hasContinuousNanosecondsSinceBoot] & 1) != 0 || objc_msgSend(v25, sel_hasSuspendingNanosecondsSinceBoot))
      {
        if ([v25 hasSuspendingNanosecondsSinceBoot])
        {
          v26 = [a1 bootSessionUUID];
          if (v26)
          {
            v27 = v26;
            sub_20E322040();

            v28 = 0;
          }

          else
          {
            v28 = 1;
          }

          v23(v15, v28, 1, v5);
          v34 = MEMORY[0x277D55298];
          v35 = &selRef_suspendingNanosecondsSinceBoot;
LABEL_19:
          [v25 *v35];
          (*(v42 + 104))(v41, *v34, v43);
          v36 = v40;
          sub_20E3220C0();

          v37 = v44;
          (*(v19 + 32))(v44, v36, v18);
          v33 = v37;
          v29 = 0;
          return (*(v19 + 56))(v33, v29, 1, v18);
        }

        if ([v25 hasContinuousNanosecondsSinceBoot])
        {
          v30 = [a1 bootSessionUUID];
          if (v30)
          {
            v31 = v30;
            sub_20E322040();

            v32 = 0;
          }

          else
          {
            v32 = 1;
          }

          v23(v12, v32, 1, v5);
          v34 = MEMORY[0x277D55290];
          v35 = &selRef_continuousNanosecondsSinceBoot;
          goto LABEL_19;
        }
      }
    }

    v29 = 1;
  }

  else
  {

    v29 = 1;
    (*(v6 + 56))(v17, 1, 1, v5);
    sub_20E06CC70(v17);
  }

  v33 = v44;
  return (*(v19 + 56))(v33, v29, 1, v18);
}

uint64_t sub_20E306D90@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 1920298824;
    }

    else
    {
      v9 = 7954756;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_20E31B6C4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20E031000, v5, v6, "Applying time fuzzing to date with precision: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F32CA80](v8, -1, -1);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_20E322860();
  [v12 setDateFormat_];

  v14 = sub_20E321FB0();
  v15 = [v12 stringFromDate_];

  if (!v15)
  {
    sub_20E322890();
    v15 = sub_20E322860();
  }

  v16 = [v12 dateFromString_];

  if (v16)
  {
    sub_20E321FD0();

    v17 = 0;
    v12 = v16;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_20E322010();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, v17, 1, v18);
}

id sub_20E30705C(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D57F50]) init];
  sub_20E3075E0(a1, v10);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        [v11 setPrimitiveInt_];
        return v11;
      case 2u:
        [v11 setPrimitiveDouble_];
        return v11;
      case 3u:
        sub_20E307650(v10, v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        if (v11)
        {
          sub_20E307718();
          v17 = v11;
          sub_20E322470();
          v18 = sub_20E322860();

          [v17 setPrimitiveDecimal_];
        }

        v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        v20 = v7;
        goto LABEL_29;
      case 4u:
      case 5u:
      case 7u:
      case 8u:
      case 0x10u:
      case 0x11u:
        goto LABEL_28;
      case 6u:
        sub_20E3076B8(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        v26 = [objc_allocWithZone(MEMORY[0x277D57DD8]) &off_277E1BB78];
        v27 = v26;
        if (v26)
        {
          [v26 setExists_];
        }

        v28 = v11;
        [v28 setPrimitiveDateComponents_];

        return v11;
      case 9u:
        v21 = [objc_allocWithZone(MEMORY[0x277D57E90]) &off_277E1BB78];
        v14 = v21;
        if (v21)
        {
          [v21 setExists_];
        }

        v15 = v11;
        [v15 setMeasurement_];
        goto LABEL_27;
      case 0xAu:
        v24 = [objc_allocWithZone(MEMORY[0x277D57DC8]) &off_277E1BB78];
        v14 = v24;
        if (v24)
        {
          [v24 setExists_];
        }

        v15 = v11;
        [v15 setCurrencyAmount_];
        goto LABEL_27;
      case 0xBu:
        v16 = [objc_allocWithZone(MEMORY[0x277D57EF0]) &off_277E1BB78];
        v14 = v16;
        if (v16)
        {
          [v16 setExists_];
        }

        v15 = v11;
        [v15 setPaymentMethod_];
        goto LABEL_27;
      case 0xCu:
        v22 = [objc_allocWithZone(MEMORY[0x277D57F18]) &off_277E1BB78];
        v14 = v22;
        if (v22)
        {
          [v22 setExists_];
        }

        v15 = v11;
        [v15 setPlacemark_];
        goto LABEL_27;
      case 0xDu:
        v13 = [objc_allocWithZone(MEMORY[0x277D57F00]) &off_277E1BB78];
        v14 = v13;
        if (v13)
        {
          [v13 setExists_];
        }

        v15 = v11;
        [v15 setPerson_];
        goto LABEL_27;
      case 0xEu:
        v23 = [objc_allocWithZone(MEMORY[0x277D57E38]) &off_277E1BB78];
        v14 = v23;
        if (v23)
        {
          [v23 setExists_];
        }

        v15 = v11;
        [v15 setFile_];
LABEL_27:

LABEL_28:
        v19 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind;
        v20 = v10;
        goto LABEL_29;
      case 0xFu:
        sub_20E307650(v10, v4, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        if (v11)
        {
          v29 = objc_allocWithZone(MEMORY[0x277D57D40]);
          v30 = v11;
          v31 = [v29 &off_277E1BB78];
          v32 = v31;
          if (v31)
          {
            v33 = v31;
            v34 = sub_20E322860();
            [v33 setBundleId_];
          }

          [v30 setApp_];
        }

        v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        v20 = v4;
LABEL_29:
        sub_20E3076B8(v20, v19);
        break;
      case 0x12u:
        return v11;
      default:
        [v11 setPrimitiveBool_];
        break;
    }
  }

  return v11;
}

uint64_t sub_20E3075E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E307650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E3076B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E307718()
{
  result = qword_27C86BFA0;
  if (!qword_27C86BFA0)
  {
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFA0);
  }

  return result;
}

uint64_t sub_20E307770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "ntPayload";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD00000000000001DLL;
    }

    if (v4)
    {
      v5 = "selfMessageInstantiationError";
    }

    else
    {
      v5 = "ntPayload";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v7 = "undefinedIFSessionError";
    }

    else
    {
      if (a1 == 3)
      {
        v5 = "undefinedIFSessionError";
        v6 = 0xD000000000000024;
        goto LABEL_14;
      }

      v7 = "metaDataConversionError";
    }

    v5 = (v7 - 32);
    v6 = 0xD000000000000017;
  }

LABEL_14:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = "undefinedIFSessionError";
    }

    else
    {
      if (a2 == 3)
      {
        v3 = "undefinedIFSessionError";
        v2 = 0xD000000000000024;
        goto LABEL_27;
      }

      v8 = "metaDataConversionError";
    }

    v3 = (v8 - 32);
    goto LABEL_27;
  }

  if (a2)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a2)
  {
    v3 = "selfMessageInstantiationError";
  }

LABEL_27:
  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E322D60();
  }

  return v9 & 1;
}

uint64_t sub_20E3078D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xD000000000000012;
    v13 = 0x800000020E35A1B0;
    if (a1 != 2)
    {
      v12 = 0x72656E6E616C70;
      v13 = 0xE700000000000000;
    }

    v14 = 0x726568746FLL;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x746E65696C63;
    v5 = 0x6E65746E49707061;
    v6 = 0xE900000000000074;
    if (a1 != 7)
    {
      v5 = 0x696C707041746F6ELL;
      v6 = 0xED0000656C626163;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x726F747563657865;
    if (a1 != 4)
    {
      v8 = 0x74696B6C6F6F74;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x800000020E35A1B0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x72656E6E616C70)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x726F747563657865)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74696B6C6F6F74)
      {
LABEL_52:
        v16 = sub_20E322D60();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x746E65696C63)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE900000000000074;
    if (v9 != 0x6E65746E49707061)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xED0000656C626163;
    if (v9 != 0x696C707041746F6ELL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_20E307BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0079646F42746ELL;
  v3 = 0x6576457974706D65;
  v4 = a1;
  v5 = 0xEF64616F6C796150;
  v6 = 0xD000000000000015;
  v7 = 0x800000020E359F70;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x800000020E359F90;
  }

  if (a1 == 3)
  {
    v6 = 0x746E6576456C696ELL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x5364696C61766E69;
  if (a1 == 1)
  {
    v9 = 0xED00006D61657274;
  }

  else
  {
    v8 = 0xD000000000000016;
    v9 = 0x800000020E359F40;
  }

  if (!a1)
  {
    v8 = 0x6576457974706D65;
    v9 = 0xEE0079646F42746ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF64616F6C796150;
      if (v10 != 0x746E6576456C696ELL)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000020E359F70;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0x800000020E359F90;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00006D61657274;
        if (v10 != 0x5364696C61766E69)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v2 = 0x800000020E359F40;
      v3 = 0xD000000000000016;
    }

    if (v10 != v3)
    {
LABEL_33:
      v12 = sub_20E322D60();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_20E307DA0(uint64_t a1, unsigned __int8 a2)
{
  sub_20E3228F0();
}

double RequestSignature.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *&result = 3;
  *(a1 + 8) = xmmword_20E325EB0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 60) = 2049;
  return result;
}

unint64_t ErrorComponent.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0xD000000000000012;
    if (v1 != 2)
    {
      v7 = 0x72656E6E616C70;
    }

    if (*v0)
    {
      v6 = 0x726568746FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x746E65696C63;
    v3 = 0x6E65746E49707061;
    if (v1 != 7)
    {
      v3 = 0x696C707041746F6ELL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x726F747563657865;
    if (v1 != 4)
    {
      v4 = 0x74696B6C6F6F74;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t SessionSignature.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionSignature(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for AttributionTraits(0);
  v12 = *(*(v4 - 8) + 56);
  v12(v3, 1, 1, v4);
  *a1 = 769;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a1 + v2[8]) = sub_20E049AE4(MEMORY[0x277D84F90]);
  *(a1 + v2[9]) = &unk_282537420;
  *(a1 + v2[10]) = v5;
  sub_20E04875C(v3, &qword_27C8688E8, &unk_20E3573E0);
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v6 = *(v4 + 24);
  v7 = sub_20E322060();
  v8 = *(*(v7 - 8) + 56);
  v8(&v3[v6], 1, 1, v7);
  v9 = &v3[*(v4 + 28)];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_20E04875C(&v3[v6], &qword_27C863A90, &unk_20E33C020);
  v8(&v3[v6], 1, 1, v7);
  *v9 = 0;
  *(v9 + 1) = 0;
  result = (v12)(v3, 0, 1, v4);
  *(a1 + v2[11]) = MEMORY[0x277D84F90];
  v11 = (a1 + v2[12]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  return result;
}

uint64_t SessionView.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionView(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionView.end.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionView(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionView.numSessions.setter(uint64_t a1)
{
  result = type metadata accessor for SessionView(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

double SessionView.sessions.getter()
{
  type metadata accessor for SessionView(0);

  return result;
}

uint64_t SessionView.sessions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionView(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionData.sessionSignature.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionData(0) + 20);

  return sub_20E310F28(a1, v3);
}

uint64_t SessionData.clientSessionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionData(0) + 24));

  return v1;
}

uint64_t SessionData.clientSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionData(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionData.rawSessionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionData(0) + 28));

  return v1;
}

uint64_t SessionData.rawSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SessionData.requests.getter()
{
  type metadata accessor for SessionData(0);

  return result;
}

uint64_t SessionData.requests.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionData(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestData.requestID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestData(0) + 20));

  return v1;
}

uint64_t RequestData.requestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RequestData(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double RequestData.events.getter()
{
  type metadata accessor for RequestData(0);

  return result;
}

uint64_t RequestData.events.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RequestData(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

double RequestData.eventWrapper.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

__n128 RequestData.eventWrapper.setter(__n128 *a1)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 28));

  result = *a1;
  *v3 = *a1;
  return result;
}

uint64_t RequestData.requestSignature.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 14) = *(v3 + 46);
  v6 = *(v11 + 14);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 46) = v6;
  return sub_20E310FAC(&v9, &v8);
}

__n128 RequestData.requestSignature.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 32));
  v4 = v3[2];
  v7[1] = v3[1];
  v8[0] = v4;
  *(v8 + 14) = *(v3 + 46);
  v7[0] = *v3;
  sub_20E04875C(v7, &qword_27C868A80, &qword_20E3573F0);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 46);
  *(v3 + 46) = result;
  return result;
}

double RequestSignature.requestStatus.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_20E31101C(v2, v3, v4);
}

uint64_t RequestSignature.requestStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_20E07119C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t RequestSignature.requestStatusReason.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RequestSignature.requestStatusReason.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RequestSignature.executedToolIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t RequestSignature.originProgramStatementId.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_20E308E58()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x6465747563657865;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x6D6F43726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x5374736575716572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E308F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E3147F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E308F68(uint64_t a1)
{
  v2 = sub_20E311034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E308FA4(uint64_t a1)
{
  v2 = sub_20E311034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestSignature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D368, &qword_20E3573F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = v1[24];
  v11 = *(v1 + 5);
  v22 = *(v1 + 4);
  v23 = v8;
  v20 = *(v1 + 6);
  v21 = v11;
  v19 = *(v1 + 14);
  v28 = v1[60];
  HIDWORD(v18) = v1[61];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_20E311034();
  sub_20E322E40();
  LOBYTE(v25) = v7;
  v29 = 0;
  sub_20E311088();
  v16 = v24;
  sub_20E322D40();
  if (!v16)
  {
    v25 = v23;
    v26 = v9;
    v27 = v10;
    v29 = 1;
    sub_20E31101C(v23, v9, v10);
    sub_20E3110DC();
    sub_20E322D40();
    sub_20E07119C(v25, v26, v27);
    LOBYTE(v25) = 2;
    sub_20E322D10();
    v25 = v20;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E31122C(&qword_27C86D388, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_20E322D40();
    LOBYTE(v25) = 4;
    v29 = v28;
    sub_20E322D00();
    LOBYTE(v25) = BYTE4(v18);
    v29 = 5;
    sub_20E311130();
    sub_20E322D40();
  }

  return (*(v4 + 8))(v6, v15);
}

uint64_t RequestSignature.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D398, &qword_20E357408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311034();
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v26) = 0;
  sub_20E311184();
  sub_20E322CB0();
  v9 = v29;
  LOBYTE(v26) = 1;
  sub_20E3111D8();
  sub_20E322CB0();
  v24 = v29;
  v25 = v30;
  v39 = v31;
  LOBYTE(v29) = 2;
  v10 = sub_20E322C80();
  *(&v23 + 1) = v11;
  *&v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
  LOBYTE(v26) = 3;
  sub_20E31122C(&qword_27C86D3B0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_20E322CB0();
  v22 = v29;
  LOBYTE(v29) = 4;
  v21 = sub_20E322C70();
  v40 = BYTE4(v21) & 1;
  v41 = 5;
  sub_20E311298();
  sub_20E322CB0();
  (*(v6 + 8))(v8, v5);
  v20 = v42;
  LOBYTE(v26) = v9;
  v12 = v24;
  v13 = v25;
  *(&v26 + 1) = v24;
  *&v27 = v25;
  v14 = v39;
  BYTE8(v27) = v39;
  v15 = *(&v23 + 1);
  *v28 = v23;
  v16 = v22;
  *&v28[16] = v22;
  *&v28[24] = v21;
  v19 = v40;
  v28[28] = v40;
  v28[29] = v42;
  v17 = v27;
  *a2 = v26;
  a2[1] = v17;
  a2[2] = *v28;
  *(a2 + 46) = *&v28[14];
  sub_20E0711B4(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v29) = v9;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v23;
  v34 = v15;
  v35 = v16;
  v36 = v21;
  v37 = v19;
  v38 = v20;
  return sub_20E0710E0(&v29);
}

uint64_t static PromptType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E322D60();
  }
}

uint64_t sub_20E3097F8(uint64_t a1)
{
  v2 = sub_20E311394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309834(uint64_t a1)
{
  v2 = sub_20E311394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309870(uint64_t a1)
{
  v2 = sub_20E311490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E3098AC(uint64_t a1)
{
  v2 = sub_20E311490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E3098E8()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x74706D6F7270;
  v4 = 0x656E6F646E616261;
  if (v1 != 4)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0x64656C65636E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E30999C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E314A10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E3099C4(uint64_t a1)
{
  v2 = sub_20E3112EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309A00(uint64_t a1)
{
  v2 = sub_20E3112EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309A3C(uint64_t a1)
{
  v2 = sub_20E311538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309A78(uint64_t a1)
{
  v2 = sub_20E311538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309AC0(uint64_t a1)
{
  v2 = sub_20E3114E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309AFC(uint64_t a1)
{
  v2 = sub_20E3114E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E309BB8(uint64_t a1)
{
  v2 = sub_20E3113E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309BF4(uint64_t a1)
{
  v2 = sub_20E3113E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309C30(uint64_t a1)
{
  v2 = sub_20E311340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309C6C(uint64_t a1)
{
  v2 = sub_20E311340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IERequestStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3C0, &qword_20E357410);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3C8, &qword_20E357418);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3D0, &qword_20E357420);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3D8, &qword_20E357428);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3E0, &qword_20E357430);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3E8, &qword_20E357438);
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3F0, &qword_20E357440);
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = a1[3];
  v22 = a1;
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_20E3112EC();
  sub_20E322E40();
  if (!v20)
  {
    LOBYTE(v52) = 1;
    sub_20E3114E4();
    v26 = v51;
    sub_20E322CD0();
    LOBYTE(v52) = v18;
    sub_20E311130();
    v28 = v46;
    sub_20E322D40();
    (*(v45 + 8))(v13, v28);
    return (*(v50 + 8))(v24, v26);
  }

  if (v20 == 1)
  {
    LOBYTE(v52) = 3;
    sub_20E3113E8();
    v25 = v47;
    v26 = v51;
    sub_20E322CD0();
    v52 = v18;
    v53 = v19;
    sub_20E31143C();
    v27 = v49;
    sub_20E322D40();
    (*(v48 + 8))(v25, v27);
    return (*(v50 + 8))(v24, v26);
  }

  if (v18 > 1)
  {
    if (v18 ^ 2 | v19)
    {
      LOBYTE(v52) = 5;
      sub_20E311340();
      v16 = v42;
      v30 = v51;
      sub_20E322CD0();
      v32 = v43;
      v31 = v44;
    }

    else
    {
      LOBYTE(v52) = 4;
      sub_20E311394();
      v16 = v39;
      v30 = v51;
      sub_20E322CD0();
      v32 = v40;
      v31 = v41;
    }
  }

  else if (v18 | v19)
  {
    LOBYTE(v52) = 2;
    sub_20E311490();
    v16 = v36;
    v30 = v51;
    sub_20E322CD0();
    v32 = v37;
    v31 = v38;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_20E311538();
    v30 = v51;
    sub_20E322CD0();
    v32 = v34;
    v31 = v35;
  }

  (*(v32 + 8))(v16, v31);
  return (*(v50 + 8))(v24, v30);
}

uint64_t IERequestStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D438, &qword_20E357448);
  v55 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v65 = &v48 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D440, &qword_20E357450);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v61 = &v48 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D448, &qword_20E357458);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D450, &qword_20E357460);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D458, &qword_20E357468);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D460, &qword_20E357470);
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D468, &qword_20E357478);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20E3112EC();
  v20 = v66;
  sub_20E322E20();
  if (!v20)
  {
    v49 = v12;
    v21 = v11;
    v23 = v64;
    v22 = v65;
    v66 = v16;
    v24 = v18;
    v25 = sub_20E322CC0();
    if (*(v25 + 16) != 1 || (v26 = *(v25 + 32), v26 == 6))
    {
      v34 = sub_20E322B30();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480);
      *v36 = &type metadata for IERequestStatus;
      sub_20E322C40();
      sub_20E322B20();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v66 + 8))(v24, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v25 + 32) > 2u)
      {
        if (v26 == 3)
        {
          LOBYTE(v67) = 3;
          sub_20E3113E8();
          v41 = v23;
          sub_20E322C30();
          v42 = v63;
          v43 = v66;
          sub_20E31158C();
          v44 = v58;
          sub_20E322CB0();
          (*(v56 + 8))(v41, v44);
          (*(v43 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v32 = v67;
          v30 = v68;
          v31 = 1;
          v33 = v42;
        }

        else
        {
          v38 = v63;
          v39 = v66;
          if (v26 == 4)
          {
            v33 = v63;
            LOBYTE(v67) = 4;
            sub_20E311394();
            v40 = v61;
            sub_20E322C30();
            (*(v57 + 8))(v40, v59);
            (*(v39 + 8))(v18, v15);
            swift_unknownObjectRelease();
            v30 = 0;
            v32 = 2;
            v31 = 2;
          }

          else
          {
            LOBYTE(v67) = 5;
            sub_20E311340();
            v47 = v22;
            sub_20E322C30();
            v33 = v38;
            (*(v55 + 8))(v47, v60);
            (*(v39 + 8))(v18, v15);
            swift_unknownObjectRelease();
            v30 = 0;
            v31 = 2;
            v32 = 3;
          }
        }
      }

      else if (*(v25 + 32))
      {
        if (v26 == 1)
        {
          LOBYTE(v67) = 1;
          sub_20E3114E4();
          v27 = v21;
          sub_20E322C30();
          v28 = v66;
          sub_20E311298();
          v29 = v51;
          sub_20E322CB0();
          (*(v52 + 8))(v27, v29);
          (*(v28 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 0;
          v32 = v67;
        }

        else
        {
          LOBYTE(v67) = 2;
          sub_20E311490();
          v45 = v62;
          sub_20E322C30();
          v46 = v66;
          (*(v53 + 8))(v45, v54);
          (*(v46 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 2;
          v32 = 1;
        }

        v33 = v63;
      }

      else
      {
        LOBYTE(v67) = 0;
        sub_20E311538();
        sub_20E322C30();
        (*(v50 + 8))(v14, v49);
        (*(v66 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v32 = 0;
        v30 = 0;
        v31 = 2;
        v33 = v63;
      }

      *v33 = v32;
      *(v33 + 8) = v30;
      *(v33 + 16) = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_20E30AD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E30ADB4(uint64_t a1)
{
  v2 = sub_20E3115E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30ADF0(uint64_t a1)
{
  v2 = sub_20E3115E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D480, &qword_20E357488);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E40();
  sub_20E322D10();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PromptType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D490, &qword_20E357490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E20();
  if (!v2)
  {
    v9 = sub_20E322C80();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E30B0F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D480, &qword_20E357488);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E40();
  sub_20E322D10();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20E30B230(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E322D60();
  }
}

uint64_t sub_20E30B260(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E65696C63;
    v6 = 0x6552737574617473;
    if (a1 != 2)
    {
      v6 = 0x7475626972747461;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x747461506E617073;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_20E30B3B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E314C14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E30B3D8(uint64_t a1)
{
  v2 = sub_20E311634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30B414(uint64_t a1)
{
  v2 = sub_20E311634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionSignature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D498, &qword_20E357498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311634();
  sub_20E322E40();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_20E311088();
  sub_20E322D40();
  if (!v2)
  {
    LOBYTE(v12) = v3[1];
    v13 = 1;
    sub_20E19C87C();
    sub_20E322D40();
    LOBYTE(v12) = 2;
    sub_20E322D10();
    v9 = type metadata accessor for SessionSignature(0);
    LOBYTE(v12) = 3;
    type metadata accessor for AttributionTraits(0);
    sub_20E3116DC(&qword_27C86D4A8, type metadata accessor for AttributionTraits, &protocol conformance descriptor for AttributionTraits);
    sub_20E322CF0();
    v12 = *&v3[v9[8]];
    v13 = 4;
    sub_20E311688();

    sub_20E322D40();

    v12 = *&v3[v9[9]];
    v13 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E31122C(&qword_27C86D388, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_20E322D40();
    v12 = *&v3[v9[10]];
    v13 = 6;
    sub_20E322D40();
    v12 = *&v3[v9[11]];
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4B8, &qword_20E3574A0);
    sub_20E311798(&qword_27C86D4C0, &qword_27C86D4C8, &protocol conformance descriptor for ParticipantInfo, MEMORY[0x277D83948]);
    sub_20E322D40();
    LOBYTE(v12) = 8;
    sub_20E322D10();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SessionSignature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4D0, &qword_20E3574A8);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for SessionSignature(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = type metadata accessor for AttributionTraits(0);
  v16 = *(*(v15 - 8) + 56);
  v35 = v14;
  v36 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_20E311634();
  sub_20E322E20();
  if (v2)
  {
    v19 = v36;
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_20E04875C(&v19[v35], &qword_27C8688E8, &unk_20E3573E0);
  }

  else
  {
    v18 = v32;
    v38 = 0;
    sub_20E311184();
    sub_20E322CB0();
    v20 = v36;
    *v36 = v37;
    v38 = 1;
    sub_20E19CE9C();
    sub_20E322CB0();
    v20[1] = v37;
    LOBYTE(v37) = 2;
    *(v20 + 1) = sub_20E322C80();
    *(v20 + 2) = v21;
    LOBYTE(v37) = 3;
    sub_20E3116DC(&qword_27C86D4D8, type metadata accessor for AttributionTraits, &protocol conformance descriptor for AttributionTraits);
    sub_20E322C60();
    sub_20E05EC5C(v6, &v20[v35], &qword_27C8688E8, &unk_20E3573E0);
    v38 = 4;
    sub_20E311744();
    sub_20E322CB0();
    *&v20[v10[8]] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    v38 = 5;
    sub_20E31122C(&qword_27C86D3B0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_20E322CB0();
    *&v20[v10[9]] = v37;
    v38 = 6;
    sub_20E322CB0();
    *&v20[v10[10]] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4B8, &qword_20E3574A0);
    v38 = 7;
    sub_20E311798(&qword_27C86D4E8, &qword_27C86D4F0, &protocol conformance descriptor for ParticipantInfo, MEMORY[0x277D83978]);
    v22 = v33;
    sub_20E322CB0();
    *&v20[v10[11]] = v37;
    LOBYTE(v37) = 8;
    v23 = sub_20E322C80();
    v25 = v24;
    (*(v18 + 8))(v9, v22);
    v26 = v10[12];
    v27 = v36;
    v28 = &v36[v26];
    *v28 = v23;
    v28[1] = v25;
    sub_20E3118E8(v27, v31, type metadata accessor for SessionSignature);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_20E311888(v27, type metadata accessor for SessionSignature);
  }
}

uint64_t SessionSignature.description.getter()
{
  v0 = sub_20E3228C0();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27C8627C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SessionSignature(0);
  sub_20E3116DC(&qword_27C86D4F8, type metadata accessor for SessionSignature, &protocol conformance descriptor for SessionSignature);
  v1 = sub_20E321E90();
  v3 = v2;
  sub_20E3228B0();
  v4 = sub_20E3228A0();
  if (v5)
  {
    v6 = v4;
    sub_20E05E888(v1, v3);
    return v6;
  }

  else
  {
    sub_20E05E888(v1, v3);
    return 0;
  }
}

unint64_t sub_20E30C120()
{
  v1 = 0x7475626972747461;
  v2 = 0x75716552746F6F72;
  if (*v0 != 2)
  {
    v2 = 0x526572756C696166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E30C1C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E314F0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E30C1EC(uint64_t a1)
{
  v2 = sub_20E311834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30C228(uint64_t a1)
{
  v2 = sub_20E311834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionTraits.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D500, &qword_20E3574B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311834();
  sub_20E322E40();
  v8[15] = 0;
  sub_20E322CE0();
  if (!v1)
  {
    v8[14] = 1;
    sub_20E322CE0();
    type metadata accessor for AttributionTraits(0);
    v8[13] = 2;
    sub_20E322060();
    sub_20E3116DC(&qword_27C863AD8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_20E322CF0();
    v8[12] = 3;
    sub_20E322CE0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AttributionTraits.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v25 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D510, &qword_20E3574B8);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - v5;
  v7 = type metadata accessor for AttributionTraits(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = *(v8 + 32);
  v12 = sub_20E322060();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[*(v8 + 36)];
  *v13 = 0;
  *(v13 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311834();
  v30 = v6;
  v14 = v32;
  sub_20E322E20();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v25 = v13;
    v26 = v11;
    v32 = a1;
    v15 = v28;
    v16 = v29;
    v36 = 0;
    v17 = v30;
    *v10 = sub_20E322C50();
    *(v10 + 1) = v18;
    v35 = 1;
    *(v10 + 2) = sub_20E322C50();
    *(v10 + 3) = v19;
    v34 = 2;
    sub_20E3116DC(&qword_27C863AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_20E322C60();
    sub_20E05EC5C(v16, &v10[v26], &qword_27C863A90, &unk_20E33C020);
    v33 = 3;
    v21 = sub_20E322C50();
    v23 = v22;
    (*(v15 + 8))(v17, v31);
    v24 = v25;
    *v25 = v21;
    v24[1] = v23;
    sub_20E3118E8(v10, v27, type metadata accessor for AttributionTraits);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  return sub_20E311888(v10, type metadata accessor for AttributionTraits);
}

uint64_t sub_20E30C894()
{
  if (*v0)
  {
    return 0x6D617453656D6974;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_20E30C8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617453656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30C9C4(uint64_t a1)
{
  v2 = sub_20E311950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30CA00(uint64_t a1)
{
  v2 = sub_20E311950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D518, &qword_20E3574C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311950();
  sub_20E322E40();
  v8[15] = 0;
  sub_20E322CE0();
  if (!v1)
  {
    type metadata accessor for ParticipantInfo(0);
    v8[14] = 1;
    sub_20E322010();
    sub_20E3116DC(&qword_27C868920, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_20E322D40();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ParticipantInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_20E322010();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D528, &qword_20E3574C8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ParticipantInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311950();
  sub_20E322E20();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v19 = v8;
    v12 = v22;
    v11 = v23;
    v26 = 0;
    *v10 = sub_20E322C50();
    v10[1] = v13;
    v18 = v10;
    v25 = 1;
    sub_20E3116DC(&qword_27C868938, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v14 = v24;
    sub_20E322CB0();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(v18 + *(v19 + 20), v5, v11);
    sub_20E3118E8(v15, v21, type metadata accessor for ParticipantInfo);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_20E311888(v15, type metadata accessor for ParticipantInfo);
  }
}

uint64_t sub_20E30CF48()
{
  sub_20E322DE0();
  MEMORY[0x20F32C430](0);
  return sub_20E322E00();
}

uint64_t sub_20E30CF8C(uint64_t a1)
{
  sub_20E322DE0();
  MEMORY[0x20F32C430](0);
  return sub_20E322E00();
}

uint64_t sub_20E30CFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974616974696E69 && a2 == 0xEF736E617053676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E30D080(uint64_t a1)
{
  v2 = sub_20E3119A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D0BC(uint64_t a1)
{
  v2 = sub_20E3119A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpanRespresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D530, &qword_20E3574D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3119A4();

  sub_20E322E40();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D540, &qword_20E3574D8);
  sub_20E3119F8();
  sub_20E322D40();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SpanRespresentation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D550, &qword_20E3574E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3119A4();
  sub_20E322E20();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E311AB4();
    sub_20E322CB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E30D41C(uint64_t a1)
{
  v2 = sub_20E311C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D458(uint64_t a1)
{
  v2 = sub_20E311C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D494()
{
  v1 = 0x6574656C706D6F63;
  v2 = 0x64656C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64656C696166;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E30D510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E315090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E30D538(uint64_t a1)
{
  v2 = sub_20E311B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D574(uint64_t a1)
{
  v2 = sub_20E311B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D5B0(uint64_t a1)
{
  v2 = sub_20E311CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D5EC(uint64_t a1)
{
  v2 = sub_20E311CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D628(uint64_t a1)
{
  v2 = sub_20E311C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D664(uint64_t a1)
{
  v2 = sub_20E311C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D6A0(uint64_t a1)
{
  v2 = sub_20E311BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D6DC(uint64_t a1)
{
  v2 = sub_20E311BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskCompletionStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D560, &qword_20E3574E8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D568, &qword_20E3574F0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D570, &qword_20E3574F8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D578, &qword_20E357500);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D580, &qword_20E357508);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311B70();
  sub_20E322E40();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_20E311C18();
      v18 = v27;
      sub_20E322CD0();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_20E311BC4();
      v18 = v30;
      sub_20E322CD0();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_20E311C6C();
    v18 = v24;
    sub_20E322CD0();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_20E311CC0();
  sub_20E322CD0();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t TaskCompletionStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5B0, &qword_20E357510);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5B8, &qword_20E357518);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5C0, &qword_20E357520);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5C8, &qword_20E357528);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5D0, &qword_20E357530);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20E311B70();
  v17 = v48;
  sub_20E322E20();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_20E322CC0();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_20E322B30();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480);
      *v27 = &type metadata for TaskCompletionStatus;
      sub_20E322C40();
      sub_20E322B20();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_20E311C6C();
          v32 = v37;
          sub_20E322C30();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_20E311CC0();
          v28 = v37;
          sub_20E322C30();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_0(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_20E311C18();
        v31 = v37;
        sub_20E322C30();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_20E311BC4();
        v33 = v37;
        sub_20E322C30();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_20E30E218()
{
  v1 = 0x6769626D61736964;
  if (*v0 != 1)
  {
    v1 = 0x616D7269666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_20E30E284@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E3151F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E30E2B8(uint64_t a1)
{
  v2 = sub_20E311D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E2F4(uint64_t a1)
{
  v2 = sub_20E311D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E330(uint64_t a1)
{
  v2 = sub_20E311D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E36C(uint64_t a1)
{
  v2 = sub_20E311D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E3A8(uint64_t a1)
{
  v2 = sub_20E311DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E3E4(uint64_t a1)
{
  v2 = sub_20E311DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E420(uint64_t a1)
{
  v2 = sub_20E311E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E45C(uint64_t a1)
{
  v2 = sub_20E311E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInteractionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5D8, &qword_20E357538);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5E0, &qword_20E357540);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5E8, &qword_20E357548);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5F0, &qword_20E357550);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311D14();
  sub_20E322E40();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20E311DBC();
      v9 = v21;
      sub_20E322CD0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20E311D68();
      v9 = v24;
      sub_20E322CD0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20E311E10();
    sub_20E322CD0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t UserInteractionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D618, &qword_20E357558);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D620, &qword_20E357560);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D628, &qword_20E357568);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D630, &qword_20E357570);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311D14();
  v13 = v43;
  sub_20E322E20();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_20E322CC0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_20E311DBC();
          v27 = v34;
          sub_20E322C30();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_20E311D68();
          v31 = v34;
          sub_20E322C30();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_20E311E10();
        v29 = v34;
        sub_20E322C30();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  v21 = sub_20E322B30();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480);
  *v23 = &type metadata for UserInteractionType;
  sub_20E322C40();
  sub_20E322B20();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_20E30EE3C()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x30303169726973;
  }
}

uint64_t sub_20E30EE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x30303169726973 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30EF4C(uint64_t a1)
{
  v2 = sub_20E311E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30EF88(uint64_t a1)
{
  v2 = sub_20E311E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30EFC4(uint64_t a1)
{
  v2 = sub_20E311F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F000(uint64_t a1)
{
  v2 = sub_20E311F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30F03C(uint64_t a1)
{
  v2 = sub_20E311EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F078(uint64_t a1)
{
  v2 = sub_20E311EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SageClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D638, &qword_20E357578);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D640, &qword_20E357580);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D648, &qword_20E357588);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311E64();
  sub_20E322E40();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20E311EB8();
    v14 = v18;
    sub_20E322CD0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20E311F0C();
    sub_20E322CD0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t SageClient.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D668, &qword_20E357590);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D670, &qword_20E357598);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D678, &qword_20E3575A0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311E64();
  v13 = v31;
  sub_20E322E20();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_20E322CC0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_20E322B30();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480);
    *v21 = &type metadata for SageClient;
    sub_20E322C40();
    sub_20E322B20();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_20E311EB8();
    sub_20E322C30();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_20E311F0C();
    sub_20E322C30();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_20E30F818()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 1769105779;
  }
}

uint64_t sub_20E30F84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1769105779 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30F928(uint64_t a1)
{
  v2 = sub_20E311F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F964(uint64_t a1)
{
  v2 = sub_20E311F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30F9A0(uint64_t a1)
{
  v2 = sub_20E312008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F9DC(uint64_t a1)
{
  v2 = sub_20E312008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30FA18(uint64_t a1)
{
  v2 = sub_20E311FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30FA54(uint64_t a1)
{
  v2 = sub_20E311FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IEClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D680, &qword_20E3575A8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D688, &qword_20E3575B0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D690, &qword_20E3575B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311F60();
  sub_20E322E40();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20E311FB4();
    v14 = v18;
    sub_20E322CD0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20E312008();
    sub_20E322CD0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t IEClient.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6B0, &qword_20E3575C0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6B8, &qword_20E3575C8);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6C0, &qword_20E3575D0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311F60();
  v13 = v31;
  sub_20E322E20();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_20E322CC0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_20E322B30();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480);
    *v21 = &type metadata for IEClient;
    sub_20E322C40();
    sub_20E322B20();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_20E311FB4();
    sub_20E322C30();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_20E312008();
    sub_20E322C30();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

LighthouseDataProcessor::ErrorComponent_optional __swiftcall ErrorComponent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E310220()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E307DA0(v3, v1);
  return sub_20E322E00();
}

uint64_t sub_20E310270(uint64_t a1)
{
  v2 = *v1;
  sub_20E322DE0();
  sub_20E307DA0(v4, v2);
  return sub_20E322E00();
}

unint64_t sub_20E3102C0@<X0>(unint64_t *a1@<X8>)
{
  result = ErrorComponent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20E3103A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20E322250();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoParticipantID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_20E31205C();
    sub_20E322D70();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_20E322240();
    sub_20E3116DC(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
    sub_20E322450();
    sub_20E315318(v8, a2, type metadata accessor for TranscriptProtoParticipantID);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E3105AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20E322250();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_20E31205C();
    sub_20E322D70();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_20E322240();
    sub_20E3116DC(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
    sub_20E322450();
    sub_20E315318(v8, a2, type metadata accessor for TranscriptProtoEvent);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t CodableMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v17 = a4;
  v7 = sub_20E322250();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v4)
  {
    v15 = v9;
    v16 = a2;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_20E31205C();
    sub_20E322D70();
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_20E322240();
    v12 = v16;
    sub_20E322450();
    (*(v15 + 32))(v17, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E3109BC(void *a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_20E3116DC(a3, a4, a5);
  result = sub_20E322460();
  if (!v5)
  {
    v12 = a1[3];
    v13 = result;
    v14 = a1;
    v15 = v11;
    __swift_project_boxed_opaque_existential_1(v14, v12);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_20E3120B0();
    sub_20E322D90();
    sub_20E05E888(v13, v15);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t CodableMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E322460();
  if (!v3)
  {
    v7 = a1[3];
    v8 = result;
    v9 = a1;
    v10 = v6;
    __swift_project_boxed_opaque_existential_1(v9, v7);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_20E3120B0();
    sub_20E322D90();
    sub_20E05E888(v8, v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

BOOL _s23LighthouseDataProcessor15IERequestStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v12 = sub_20E3078D0(*a1, *a2);
      sub_20E07119C(v3, v2, 0);
      sub_20E07119C(v6, v5, 0);
      return v12 & 1;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_17;
        }

        sub_20E07119C(*a1, v2, 2);
        v14 = 3;
      }

      else
      {
        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_17;
        }

        sub_20E07119C(*a1, v2, 2);
        v14 = 2;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_20E07119C(*a1, v2, 2);
          v11 = 1;
          sub_20E07119C(1, 0, 2);
          return v11;
        }

        goto LABEL_17;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_17:
        sub_20E31101C(v6, v5, v7);
        sub_20E07119C(v3, v2, v4);
        sub_20E07119C(v6, v5, v7);
        return 0;
      }

      sub_20E07119C(*a1, v2, 2);
      v14 = 0;
    }

    v15 = 0;
    v16 = 2;
    goto LABEL_33;
  }

  if (v7 != 1)
  {

    goto LABEL_17;
  }

  v8 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_20E31101C(v8, v2, 1);
    sub_20E31101C(v3, v2, 1);
    sub_20E07119C(v3, v2, 1);
    v14 = v3;
    v15 = v2;
    v16 = 1;
LABEL_33:
    sub_20E07119C(v14, v15, v16);
    return 1;
  }

  v10 = sub_20E322D60();
  sub_20E31101C(v6, v5, 1);
  sub_20E31101C(v3, v2, 1);
  sub_20E07119C(v3, v2, 1);
  sub_20E07119C(v6, v5, 1);
  return (v10 & 1) != 0;
}

uint64_t sub_20E310F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSignature(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E310FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A80, &qword_20E3573F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_20E31101C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_20E311034()
{
  result = qword_27C86D370;
  if (!qword_27C86D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D370);
  }

  return result;
}

unint64_t sub_20E311088()
{
  result = qword_27C86D378;
  if (!qword_27C86D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D378);
  }

  return result;
}

unint64_t sub_20E3110DC()
{
  result = qword_27C86D380;
  if (!qword_27C86D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D380);
  }

  return result;
}

unint64_t sub_20E311130()
{
  result = qword_27C86D390;
  if (!qword_27C86D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D390);
  }

  return result;
}

unint64_t sub_20E311184()
{
  result = qword_27C86D3A0;
  if (!qword_27C86D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3A0);
  }

  return result;
}

unint64_t sub_20E3111D8()
{
  result = qword_27C86D3A8;
  if (!qword_27C86D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3A8);
  }

  return result;
}

uint64_t sub_20E31122C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C868900, &qword_20E357400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E311298()
{
  result = qword_27C86D3B8;
  if (!qword_27C86D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3B8);
  }

  return result;
}

unint64_t sub_20E3112EC()
{
  result = qword_27C86D3F8;
  if (!qword_27C86D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3F8);
  }

  return result;
}

unint64_t sub_20E311340()
{
  result = qword_27C86D400;
  if (!qword_27C86D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D400);
  }

  return result;
}

unint64_t sub_20E311394()
{
  result = qword_27C86D408;
  if (!qword_27C86D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D408);
  }

  return result;
}

unint64_t sub_20E3113E8()
{
  result = qword_27C86D410;
  if (!qword_27C86D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D410);
  }

  return result;
}

unint64_t sub_20E31143C()
{
  result = qword_27C86D418;
  if (!qword_27C86D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D418);
  }

  return result;
}

unint64_t sub_20E311490()
{
  result = qword_27C86D420;
  if (!qword_27C86D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D420);
  }

  return result;
}

unint64_t sub_20E3114E4()
{
  result = qword_27C86D428;
  if (!qword_27C86D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D428);
  }

  return result;
}

unint64_t sub_20E311538()
{
  result = qword_27C86D430;
  if (!qword_27C86D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D430);
  }

  return result;
}

unint64_t sub_20E31158C()
{
  result = qword_27C86D478;
  if (!qword_27C86D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D478);
  }

  return result;
}

unint64_t sub_20E3115E0()
{
  result = qword_27C86D488;
  if (!qword_27C86D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D488);
  }

  return result;
}

unint64_t sub_20E311634()
{
  result = qword_27C86D4A0;
  if (!qword_27C86D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4A0);
  }

  return result;
}

unint64_t sub_20E311688()
{
  result = qword_27C86D4B0;
  if (!qword_27C86D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4B0);
  }

  return result;
}

uint64_t sub_20E3116DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20E311744()
{
  result = qword_27C86D4E0;
  if (!qword_27C86D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4E0);
  }

  return result;
}

uint64_t sub_20E311798(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D4B8, &qword_20E3574A0);
    sub_20E3116DC(a2, type metadata accessor for ParticipantInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E311834()
{
  result = qword_27C86D508;
  if (!qword_27C86D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D508);
  }

  return result;
}

uint64_t sub_20E311888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E3118E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E311950()
{
  result = qword_27C86D520;
  if (!qword_27C86D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D520);
  }

  return result;
}

unint64_t sub_20E3119A4()
{
  result = qword_27C86D538;
  if (!qword_27C86D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D538);
  }

  return result;
}

unint64_t sub_20E3119F8()
{
  result = qword_27C86D548;
  if (!qword_27C86D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E3116DC(&qword_27C86D4C8, type metadata accessor for ParticipantInfo, &protocol conformance descriptor for ParticipantInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D548);
  }

  return result;
}

unint64_t sub_20E311AB4()
{
  result = qword_27C86D558;
  if (!qword_27C86D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E3116DC(&qword_27C86D4F0, type metadata accessor for ParticipantInfo, &protocol conformance descriptor for ParticipantInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D558);
  }

  return result;
}

unint64_t sub_20E311B70()
{
  result = qword_27C86D588;
  if (!qword_27C86D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D588);
  }

  return result;
}

unint64_t sub_20E311BC4()
{
  result = qword_27C86D590;
  if (!qword_27C86D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D590);
  }

  return result;
}

unint64_t sub_20E311C18()
{
  result = qword_27C86D598;
  if (!qword_27C86D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D598);
  }

  return result;
}

unint64_t sub_20E311C6C()
{
  result = qword_27C86D5A0;
  if (!qword_27C86D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5A0);
  }

  return result;
}

unint64_t sub_20E311CC0()
{
  result = qword_27C86D5A8;
  if (!qword_27C86D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5A8);
  }

  return result;
}

unint64_t sub_20E311D14()
{
  result = qword_27C86D5F8;
  if (!qword_27C86D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5F8);
  }

  return result;
}

unint64_t sub_20E311D68()
{
  result = qword_27C86D600;
  if (!qword_27C86D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D600);
  }

  return result;
}

unint64_t sub_20E311DBC()
{
  result = qword_27C86D608;
  if (!qword_27C86D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D608);
  }

  return result;
}

unint64_t sub_20E311E10()
{
  result = qword_27C86D610;
  if (!qword_27C86D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D610);
  }

  return result;
}

unint64_t sub_20E311E64()
{
  result = qword_27C86D650;
  if (!qword_27C86D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D650);
  }

  return result;
}

unint64_t sub_20E311EB8()
{
  result = qword_27C86D658;
  if (!qword_27C86D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D658);
  }

  return result;
}

unint64_t sub_20E311F0C()
{
  result = qword_27C86D660;
  if (!qword_27C86D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D660);
  }

  return result;
}

unint64_t sub_20E311F60()
{
  result = qword_27C86D698;
  if (!qword_27C86D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D698);
  }

  return result;
}

unint64_t sub_20E311FB4()
{
  result = qword_27C86D6A0;
  if (!qword_27C86D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6A0);
  }

  return result;
}

unint64_t sub_20E312008()
{
  result = qword_27C86D6A8;
  if (!qword_27C86D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6A8);
  }

  return result;
}

unint64_t sub_20E31205C()
{
  result = qword_27C86D6C8;
  if (!qword_27C86D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6C8);
  }

  return result;
}

unint64_t sub_20E3120B0()
{
  result = qword_27C86D6D0;
  if (!qword_27C86D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6D0);
  }

  return result;
}

unint64_t sub_20E312108()
{
  result = qword_27C86D6D8;
  if (!qword_27C86D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6D8);
  }

  return result;
}

unint64_t sub_20E312160()
{
  result = qword_27C86D6E0;
  if (!qword_27C86D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6E0);
  }

  return result;
}

unint64_t sub_20E3121B8()
{
  result = qword_27C86D6E8;
  if (!qword_27C86D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6E8);
  }

  return result;
}

unint64_t sub_20E312210()
{
  result = qword_27C86D6F0;
  if (!qword_27C86D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6F0);
  }

  return result;
}

unint64_t sub_20E312268()
{
  result = qword_27C86D6F8;
  if (!qword_27C86D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6F8);
  }

  return result;
}

uint64_t sub_20E3122BC(void *a1)
{
  a1[1] = sub_20E3116DC(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  a1[2] = sub_20E3116DC(&qword_27C86D700, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  result = sub_20E3116DC(&qword_27C86D708, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  a1[3] = result;
  return result;
}

uint64_t sub_20E312368(void *a1)
{
  a1[1] = sub_20E3116DC(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
  a1[2] = sub_20E3116DC(&qword_27C86D710, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
  result = sub_20E3116DC(&qword_27C86D718, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
  a1[3] = result;
  return result;
}

void sub_20E31243C(uint64_t a1)
{
  sub_20E322010();
  if (v1 <= 0x3F)
  {
    sub_20E3125DC(319, &qword_27C86D720, type metadata accessor for SessionData);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E312514(uint64_t a1)
{
  sub_20E322010();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SessionSignature(319);
    if (v2 <= 0x3F)
    {
      sub_20E3125DC(319, &qword_27C86D728, type metadata accessor for RequestData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E3125DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322810();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20E312668(uint64_t a1)
{
  sub_20E322010();
  if (v1 <= 0x3F)
  {
    sub_20E312B10(319, &qword_280E04048, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E312C78(319, &qword_27C86D740, &type metadata for RequestSignature, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_23LighthouseDataProcessor15IERequestStatusO(uint64_t a1)
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

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20E3127A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20E3127E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20E31284C(uint64_t a1, unsigned int a2)
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

uint64_t sub_20E312894(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20E3128D8(uint64_t result, unsigned int a2)
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

uint64_t sub_20E312900(uint64_t a1, int a2)
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

uint64_t sub_20E312948(uint64_t result, int a2, int a3)
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

void sub_20E3129BC(uint64_t a1)
{
  sub_20E312B10(319, &qword_27C86D748, type metadata accessor for AttributionTraits, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E312C78(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E312B10(319, &qword_27C86D750, type metadata accessor for ParticipantInfo, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E312B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E312B9C(uint64_t a1)
{
  sub_20E312C78(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E312B10(319, &qword_27C86D768, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E312C78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20E312CF0(uint64_t a1)
{
  sub_20E312C78(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E322010();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for IFRequestTelemetryRequestLinkMapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for IFRequestTelemetryRequestLinkMapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20E313040()
{
  result = qword_27C86D780;
  if (!qword_27C86D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D780);
  }

  return result;
}

unint64_t sub_20E313098()
{
  result = qword_27C86D788;
  if (!qword_27C86D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D788);
  }

  return result;
}

unint64_t sub_20E3130F0()
{
  result = qword_27C86D790;
  if (!qword_27C86D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D790);
  }

  return result;
}

unint64_t sub_20E313148()
{
  result = qword_27C86D798;
  if (!qword_27C86D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D798);
  }

  return result;
}

unint64_t sub_20E3131A0()
{
  result = qword_27C86D7A0;
  if (!qword_27C86D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7A0);
  }

  return result;
}

unint64_t sub_20E3131F8()
{
  result = qword_27C86D7A8;
  if (!qword_27C86D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7A8);
  }

  return result;
}

unint64_t sub_20E313250()
{
  result = qword_27C86D7B0;
  if (!qword_27C86D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7B0);
  }

  return result;
}

unint64_t sub_20E3132A8()
{
  result = qword_27C86D7B8;
  if (!qword_27C86D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7B8);
  }

  return result;
}

unint64_t sub_20E313300()
{
  result = qword_27C86D7C0;
  if (!qword_27C86D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7C0);
  }

  return result;
}

unint64_t sub_20E313358()
{
  result = qword_27C86D7C8;
  if (!qword_27C86D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7C8);
  }

  return result;
}

unint64_t sub_20E3133B0()
{
  result = qword_27C86D7D0;
  if (!qword_27C86D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7D0);
  }

  return result;
}

unint64_t sub_20E313408()
{
  result = qword_27C86D7D8;
  if (!qword_27C86D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7D8);
  }

  return result;
}

unint64_t sub_20E313460()
{
  result = qword_27C86D7E0;
  if (!qword_27C86D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7E0);
  }

  return result;
}

unint64_t sub_20E3134B8()
{
  result = qword_27C86D7E8;
  if (!qword_27C86D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7E8);
  }

  return result;
}

unint64_t sub_20E313510()
{
  result = qword_27C86D7F0;
  if (!qword_27C86D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7F0);
  }

  return result;
}

unint64_t sub_20E313568()
{
  result = qword_27C86D7F8;
  if (!qword_27C86D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7F8);
  }

  return result;
}

unint64_t sub_20E3135C0()
{
  result = qword_27C86D800;
  if (!qword_27C86D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D800);
  }

  return result;
}

unint64_t sub_20E313618()
{
  result = qword_27C86D808;
  if (!qword_27C86D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D808);
  }

  return result;
}

unint64_t sub_20E313670()
{
  result = qword_27C86D810;
  if (!qword_27C86D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D810);
  }

  return result;
}

unint64_t sub_20E3136C8()
{
  result = qword_27C86D818;
  if (!qword_27C86D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D818);
  }

  return result;
}

unint64_t sub_20E313720()
{
  result = qword_27C86D820;
  if (!qword_27C86D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D820);
  }

  return result;
}

unint64_t sub_20E313778()
{
  result = qword_27C86D828;
  if (!qword_27C86D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D828);
  }

  return result;
}

unint64_t sub_20E3137D0()
{
  result = qword_27C86D830;
  if (!qword_27C86D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D830);
  }

  return result;
}

unint64_t sub_20E313828()
{
  result = qword_27C86D838;
  if (!qword_27C86D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D838);
  }

  return result;
}

unint64_t sub_20E313880()
{
  result = qword_27C86D840;
  if (!qword_27C86D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D840);
  }

  return result;
}

unint64_t sub_20E3138D8()
{
  result = qword_27C86D848;
  if (!qword_27C86D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D848);
  }

  return result;
}

unint64_t sub_20E313930()
{
  result = qword_27C86D850;
  if (!qword_27C86D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D850);
  }

  return result;
}

unint64_t sub_20E313988()
{
  result = qword_27C86D858;
  if (!qword_27C86D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D858);
  }

  return result;
}

unint64_t sub_20E3139E0()
{
  result = qword_27C86D860;
  if (!qword_27C86D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D860);
  }

  return result;
}

unint64_t sub_20E313A38()
{
  result = qword_27C86D868;
  if (!qword_27C86D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D868);
  }

  return result;
}

unint64_t sub_20E313A90()
{
  result = qword_27C86D870;
  if (!qword_27C86D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D870);
  }

  return result;
}

unint64_t sub_20E313AE8()
{
  result = qword_27C86D878;
  if (!qword_27C86D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D878);
  }

  return result;
}

unint64_t sub_20E313B40()
{
  result = qword_27C86D880;
  if (!qword_27C86D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D880);
  }

  return result;
}

unint64_t sub_20E313B98()
{
  result = qword_27C86D888;
  if (!qword_27C86D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D888);
  }

  return result;
}

unint64_t sub_20E313BF0()
{
  result = qword_27C86D890;
  if (!qword_27C86D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D890);
  }

  return result;
}

unint64_t sub_20E313C48()
{
  result = qword_27C86D898;
  if (!qword_27C86D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D898);
  }

  return result;
}

unint64_t sub_20E313CA0()
{
  result = qword_27C86D8A0;
  if (!qword_27C86D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8A0);
  }

  return result;
}

unint64_t sub_20E313CF8()
{
  result = qword_27C86D8A8;
  if (!qword_27C86D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8A8);
  }

  return result;
}

unint64_t sub_20E313D50()
{
  result = qword_27C86D8B0;
  if (!qword_27C86D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8B0);
  }

  return result;
}

unint64_t sub_20E313DA8()
{
  result = qword_27C86D8B8;
  if (!qword_27C86D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8B8);
  }

  return result;
}

unint64_t sub_20E313E00()
{
  result = qword_27C86D8C0;
  if (!qword_27C86D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8C0);
  }

  return result;
}

unint64_t sub_20E313E58()
{
  result = qword_27C86D8C8;
  if (!qword_27C86D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8C8);
  }

  return result;
}

unint64_t sub_20E313EB0()
{
  result = qword_27C86D8D0;
  if (!qword_27C86D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8D0);
  }

  return result;
}

unint64_t sub_20E313F08()
{
  result = qword_27C86D8D8;
  if (!qword_27C86D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8D8);
  }

  return result;
}

unint64_t sub_20E313F60()
{
  result = qword_27C86D8E0;
  if (!qword_27C86D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8E0);
  }

  return result;
}

unint64_t sub_20E313FB8()
{
  result = qword_27C86D8E8;
  if (!qword_27C86D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8E8);
  }

  return result;
}

unint64_t sub_20E314010()
{
  result = qword_27C86D8F0;
  if (!qword_27C86D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8F0);
  }

  return result;
}

unint64_t sub_20E314068()
{
  result = qword_27C86D8F8;
  if (!qword_27C86D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8F8);
  }

  return result;
}

unint64_t sub_20E3140C0()
{
  result = qword_27C86D900;
  if (!qword_27C86D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D900);
  }

  return result;
}

unint64_t sub_20E314118()
{
  result = qword_27C86D908;
  if (!qword_27C86D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D908);
  }

  return result;
}

unint64_t sub_20E314170()
{
  result = qword_27C86D910;
  if (!qword_27C86D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D910);
  }

  return result;
}

unint64_t sub_20E3141C8()
{
  result = qword_27C86D918;
  if (!qword_27C86D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D918);
  }

  return result;
}

unint64_t sub_20E314220()
{
  result = qword_27C86D920;
  if (!qword_27C86D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D920);
  }

  return result;
}

unint64_t sub_20E314278()
{
  result = qword_27C86D928;
  if (!qword_27C86D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D928);
  }

  return result;
}

unint64_t sub_20E3142D0()
{
  result = qword_27C86D930;
  if (!qword_27C86D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D930);
  }

  return result;
}

unint64_t sub_20E314328()
{
  result = qword_27C86D938;
  if (!qword_27C86D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D938);
  }

  return result;
}

unint64_t sub_20E314380()
{
  result = qword_27C86D940;
  if (!qword_27C86D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D940);
  }

  return result;
}

unint64_t sub_20E3143D8()
{
  result = qword_27C86D948;
  if (!qword_27C86D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D948);
  }

  return result;
}

unint64_t sub_20E314430()
{
  result = qword_27C86D950;
  if (!qword_27C86D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D950);
  }

  return result;
}

unint64_t sub_20E314488()
{
  result = qword_27C86D958;
  if (!qword_27C86D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D958);
  }

  return result;
}

unint64_t sub_20E3144E0()
{
  result = qword_27C86D960;
  if (!qword_27C86D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D960);
  }

  return result;
}

unint64_t sub_20E314538()
{
  result = qword_27C86D968;
  if (!qword_27C86D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D968);
  }

  return result;
}

unint64_t sub_20E314590()
{
  result = qword_27C86D970;
  if (!qword_27C86D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D970);
  }

  return result;
}

unint64_t sub_20E3145E8()
{
  result = qword_27C86D978;
  if (!qword_27C86D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D978);
  }

  return result;
}

unint64_t sub_20E314640()
{
  result = qword_27C86D980;
  if (!qword_27C86D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D980);
  }

  return result;
}

unint64_t sub_20E314698()
{
  result = qword_27C86D988;
  if (!qword_27C86D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D988);
  }

  return result;
}

unint64_t sub_20E3146F0()
{
  result = qword_27C86D990;
  if (!qword_27C86D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D990);
  }

  return result;
}

unint64_t sub_20E314748()
{
  result = qword_27C86D998;
  if (!qword_27C86D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D998);
  }

  return result;
}

unint64_t sub_20E3147A0()
{
  result = qword_27C86D9A0;
  if (!qword_27C86D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9A0);
  }

  return result;
}

uint64_t sub_20E3147F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xED00007375746174 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020E364380 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xEF7344496C6F6F54 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020E35D1A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F43726F727265 && a2 == 0xEE00746E656E6F70)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20E314A10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20E314C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F3A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E3643A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E3643C0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E3643E0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E364400 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747461506E617073 && a2 == 0xEB000000006E7265)
  {

    return 8;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_20E314F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF687461506E6F69;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E364420 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20E315090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20E3151F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20E315318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E315380()
{
  result = qword_27C86D9A8;
  if (!qword_27C86D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9A8);
  }

  return result;
}

void *sub_20E315438(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = 0x277E1B000uLL;
  v6 = [objc_allocWithZone(MEMORY[0x277D58110]) init];
  v7 = v6;
  if (v6)
  {
    v8 = a1[2];
    v9 = v6;
    if (v8)
    {
      v8 = sub_20E322860();
    }

    [v7 setAssistantSchemaKind_];

    sub_20E31587C();
    v10 = v7;
    v11 = sub_20E322960();
    [v10 setTools_];
  }

  v12 = *a1;
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
    v15 = *(v14 - 8);
    v16 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    v18 = (v15 + 56);
    v19 = 0x277D58000uLL;
    v31 = v14;
    v32 = v17;
    do
    {
      sub_20E3157B0(v16, v4);
      (*v18)(v4, 0, 1, v14);
      sub_20E315814(v4);
      v20 = [objc_allocWithZone(*(v19 + 264)) *(v5 + 3936)];
      if (v20)
      {
        v21 = v20;
        if (v7)
        {
          v22 = v7;
          v23 = [v22 tools];
          if (v23)
          {
            v24 = v23;
            sub_20E31587C();
            v25 = sub_20E322970();

            v33 = v25;
            v26 = v21;
            MEMORY[0x20F32BF90]();
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20E322990();
            }

            sub_20E3229B0();
            if (v33)
            {
              v27 = sub_20E322960();
            }

            else
            {
              v27 = 0;
            }

            v14 = v31;
            [v22 setTools_];

            v5 = 0x277E1B000;
          }

          else
          {
            [v22 setTools_];
          }

          v17 = v32;
          v19 = 0x277D58000;
        }

        else
        {
        }
      }

      v16 += v17;
      --v13;
    }

    while (v13);
  }

  v28 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  return v7;
}

uint64_t sub_20E3157B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E315814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E31587C()
{
  result = qword_27C86D9B0;
  if (!qword_27C86D9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C86D9B0);
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppIntentMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppIntentMetricsDefinitions.executedToolId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 20));

  return v1;
}

uint64_t type metadata accessor for AppIntentMetricsDefinitions(uint64_t a1)
{
  result = qword_27C86D9D0;
  if (!qword_27C86D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.executedToolId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppIntentMetricsDefinitions.runtimeErrorComponent.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppIntentMetricsDefinitions(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppIntentMetricsDefinitions.runtimeErrorComponent.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AppIntentMetricsDefinitions(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

double AppIntentMetricsDefinitions.toolCompletionStatus.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_20E31101C(v4, v5, v6);
}

uint64_t AppIntentMetricsDefinitions.toolCompletionStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 28);
  result = sub_20E07119C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AppIntentMetricsDefinitions.errorMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 32));

  return v1;
}

uint64_t AppIntentMetricsDefinitions.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppIntentMetricsDefinitions(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_20E315D44()
{
  v1 = *v0;
  v2 = 0x6D61745365746164;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x73654D726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465747563657865;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E315E04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E3168E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E315E38(uint64_t a1)
{
  v2 = sub_20E316130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E315E74(uint64_t a1)
{
  v2 = sub_20E316130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppIntentMetricsDefinitions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9B8, &qword_20E359880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E316130();
  sub_20E322E40();
  LOBYTE(v15) = 0;
  sub_20E322010();
  sub_20E19CE58(&qword_27C868920, MEMORY[0x277CC9580]);
  sub_20E322D40();
  if (!v2)
  {
    v9 = type metadata accessor for AppIntentMetricsDefinitions(0);
    LOBYTE(v15) = 1;
    sub_20E322D10();
    LOBYTE(v15) = *(v3 + *(v9 + 24));
    v18 = 2;
    sub_20E311130();
    sub_20E322D40();
    v10 = v3 + *(v9 + 28);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v18 = 3;
    sub_20E31101C(v15, v11, v12);
    sub_20E3110DC();
    sub_20E322D40();
    sub_20E07119C(v15, v16, v17);
    LOBYTE(v15) = 4;
    sub_20E322D10();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20E316130()
{
  result = qword_27C86D9C0;
  if (!qword_27C86D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9C0);
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_20E322010();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9C8, &qword_20E359888);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AppIntentMetricsDefinitions(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E316130();
  v29 = v8;
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v25;
  LOBYTE(v30) = 0;
  sub_20E19CE58(&qword_27C868938, MEMORY[0x277CC95A0]);
  v13 = v26;
  sub_20E322CB0();
  (*(v12 + 32))(v11, v13, v4);
  LOBYTE(v30) = 1;
  v14 = sub_20E322C80();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v32 = 2;
  sub_20E311298();
  sub_20E322CB0();
  v11[v9[6]] = v30;
  v32 = 3;
  sub_20E3111D8();
  sub_20E322CB0();
  v17 = v31;
  v18 = &v11[v9[7]];
  *v18 = v30;
  v18[16] = v17;
  LOBYTE(v30) = 4;
  v19 = sub_20E322C80();
  v21 = v20;
  (*(v27 + 8))(v29, v28);
  v22 = &v11[v9[8]];
  *v22 = v19;
  v22[1] = v21;
  sub_20E316628(v11, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_20E31668C(v11);
}

uint64_t sub_20E316628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentMetricsDefinitions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31668C(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentMetricsDefinitions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E316740(uint64_t a1)
{
  result = sub_20E322010();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E3167E4()
{
  result = qword_27C86D9E0;
  if (!qword_27C86D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9E0);
  }

  return result;
}

unint64_t sub_20E31683C()
{
  result = qword_27C86D9E8;
  if (!qword_27C86D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9E8);
  }

  return result;
}

unint64_t sub_20E316894()
{
  result = qword_27C86D9F0;
  if (!qword_27C86D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9F0);
  }

  return result;
}

uint64_t sub_20E3168E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61745365746164 && a2 == 0xE900000000000070;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xEE0064496C6F6F54 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E364440 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020E364460 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    return 4;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void IFRequestTelemetryRequestLinkMapper.init(bookmarkSuite:)(void *a3@<X8>)
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_20E322860();

  v7 = [v5 initWithSuiteName_];

  v4[2] = v7;
  v4[3] = 0xD000000000000023;
  v4[4] = 0x800000020E364480;
  v4[5] = 0xD000000000000038;
  v4[6] = 0x800000020E3644B0;
  *a3 = v4;
}

uint64_t IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(uint64_t a1)
{
  v2[7] = a1;
  v3 = sub_20E3220A0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v2[12] = swift_task_alloc();
  v5 = sub_20E322010();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v1;
  v2[19] = v7;
  v2[20] = v8;

  return MEMORY[0x2822009F8](sub_20E316D18, 0, 0);
}

uint64_t sub_20E316D18(uint64_t a1)
{
  v48 = v1;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1[19]);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[13];
  v5 = v1[14];
  v6 = sub_20E3227C0();
  __swift_project_value_buffer(v6, qword_280E12C48);
  v45 = *(v5 + 16);
  v45(v2, v3, v4);
  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[18];
  v11 = v1[13];
  v12 = v1[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136315138;
    sub_20E317CA8(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v15 = sub_20E322D50();
    v17 = v16;
    v46 = *(v12 + 8);
    v46(v10, v11);
    v18 = sub_20E31B6C4(v15, v17, &v47);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20E031000, v7, v8, "Bookmark: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F32CA80](v14, -1, -1);
    MEMORY[0x20F32CA80](v13, -1, -1);
  }

  else
  {

    v46 = *(v12 + 8);
    v46(v10, v11);
  }

  v19 = v1[13];
  v20 = v1[14];
  v21 = v1[12];
  sub_20E321FE0();
  (*(v20 + 56))(v21, 1, 1, v19);
  v22 = sub_20E321FB0();
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    v23 = 0;
  }

  else
  {
    v24 = v1[13];
    v25 = v1[12];
    v23 = sub_20E321FB0();
    v46(v25, v24);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v22 endDate:v23 maxEvents:0 lastN:0 reversed:0];

  sub_20E322720();
  sub_20E317CA8(qword_280E040E8, MEMORY[0x277D20308], MEMORY[0x277D20300]);
  v27 = v26;
  sub_20E322740();

  v28 = v1[20];
  v29 = v1[17];
  v44 = v1[19];
  v43 = v27;
  v31 = v1[13];
  v30 = v1[14];
  v32 = v1[11];
  v33 = v1[9];
  v41 = v1[8];
  v40 = v1[7];
  v42 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v45(v42, v29, v31);
  v34 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  (*(v30 + 32))(v35 + v34, v42, v31);
  (*(v33 + 16))(v32, v40, v41);
  v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v36, v32, v41);

  sub_20E3227E0();

  v46(v29, v31);
  v46(v44, v31);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v38 = v1[1];

  return v38();
}

void sub_20E31732C(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20E322010();
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v10 = sub_20E3227C0();
    __swift_project_value_buffer(v10, qword_280E12C48);
    v11 = v9;
    v18 = sub_20E3227B0();
    v12 = sub_20E322A50();
    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_20E031000, v18, v12, "Error, sink failed: %@", v13, 0xCu);
      sub_20E04875C(v14, &qword_27C863F48, &qword_20E325DA8);
      MEMORY[0x20F32CA80](v14, -1, -1);
      MEMORY[0x20F32CA80](v13, -1, -1);
      v16 = v18;
    }

    else
    {

      v16 = v9;
    }
  }

  else
  {
    (*(v6 + 16))(v8, a3);
    DataProcessorBookmarkProvider.lastCollectionDate.setter(v8);
  }
}

void sub_20E317564(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9F8, &qword_20E359AE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_20E3220D0();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_20E322770();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37 = &v32 - v15;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v16 = sub_20E3227C0();
  __swift_project_value_buffer(v16, qword_280E12C48);
  v17 = sub_20E3227B0();
  v18 = sub_20E322A40();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v14;
    v20 = v5;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_20E031000, v17, v18, "event received", v19, 2u);
    v22 = v21;
    v5 = v20;
    v14 = v33;
    MEMORY[0x20F32CA80](v22, -1, -1);
  }

  sub_20E322670();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20E04875C(v9, &qword_27C863FF8, &qword_20E359AF0);
    v23 = sub_20E3227B0();
    v24 = sub_20E322A50();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20E31B6C4(0xD00000000000001ALL, 0x800000020E3644F0, &v38);
      _os_log_impl(&dword_20E031000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F32CA80](v26, -1, -1);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    LOBYTE(v38) = 5;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v38, 0xD00000000000001ALL, 0x800000020E3644F0);
  }

  else
  {
    v27 = v37;
    (*(v11 + 32))(v37, v9, v10);
    v28 = sub_20E319298();
    if (v28)
    {
      v29 = v28;
      (*(v11 + 16))(v14, v27, v10);
      v30 = v36;
      MonotonicTimestamp.init(biomeTimestamp:)(v14);
      v31 = v35;
      (*(v35 + 16))(v4, v30, v5);
      (*(v31 + 56))(v4, 0, 1, v5);
      sub_20E322090();

      sub_20E04875C(v4, &qword_27C86D9F8, &qword_20E359AE8);
      (*(v31 + 8))(v30, v5);
      (*(v11 + 8))(v37, v10);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
    }
  }
}

void sub_20E317B64(NSObject **a1)
{
  v3 = *(sub_20E322010() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20E31732C(a1, v4, v5);
}

void sub_20E317BD8(uint64_t a1)
{
  v3 = *(sub_20E3220A0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_20E317564(a1, v4);
}

uint64_t sub_20E317C48(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20E317CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_20E317DA8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_20E317E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_20E3226D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  sub_20E3197AC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20E04875C(v4, &qword_27C86DA18, &qword_20E359B10);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v12 = (*(v6 + 88))(v9, v5);
    if (v12 == *MEMORY[0x277D1FA98])
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v13 = sub_20E3227C0();
      __swift_project_value_buffer(v13, qword_280E12C48);
      v14 = sub_20E3227B0();
      v15 = sub_20E322A50();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20E031000, v14, v15, "Unknown participant", v16, 2u);
        MEMORY[0x20F32CA80](v16, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
    }

    else
    {
      if (v12 == *MEMORY[0x277D1FA88])
      {
        (*(v6 + 8))(v11, v5);
        v18 = 0;
        v17 = 59;
        goto LABEL_10;
      }

      if (v12 == *MEMORY[0x277D1FA90])
      {
        (*(v6 + 8))(v11, v5);
        v18 = 0;
        v17 = 57;
        goto LABEL_10;
      }

      if (v12 == *MEMORY[0x277D1FAA0])
      {
        (*(v6 + 8))(v11, v5);
        v18 = 0;
        v17 = 58;
        goto LABEL_10;
      }

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v20 = sub_20E3227C0();
      __swift_project_value_buffer(v20, qword_280E12C48);
      v21 = sub_20E3227B0();
      v22 = sub_20E322A50();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20E031000, v21, v22, "Unknown unknown participant", v23, 2u);
        MEMORY[0x20F32CA80](v23, -1, -1);
      }

      v24 = *(v6 + 8);
      v24(v11, v5);
      v24(v9, v5);
    }
  }

  v17 = 0;
  v18 = 1;
LABEL_10:
  v25[12] = v18;
  return v17 | (v18 << 32);
}

id sub_20E31826C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA20, &qword_20E359B18);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v66 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v61 - v13;
  v15 = sub_20E322060();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = a1;
  v69 = v61 - v19;
  sub_20E322700();
  v20 = sub_20E3227A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v9, 1, v20) == 1)
  {
    sub_20E04875C(v9, &qword_27C86DA20, &qword_20E359B18);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_4:
    sub_20E04875C(v14, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v24 = sub_20E3227C0();
    __swift_project_value_buffer(v24, qword_280E12C48);
    v25 = sub_20E3227B0();
    v26 = sub_20E322A50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20E031000, v25, v26, "Missing sourceId", v27, 2u);
      MEMORY[0x20F32CA80](v27, -1, -1);
    }

    return 0;
  }

  sub_20E322790();
  v23 = *(v21 + 8);
  v23(v9, v20);
  v63 = *(v16 + 48);
  if (v63(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v62 = v16;
  v28 = *(v16 + 32);
  v64 = v15;
  v61[0] = v28;
  v61[1] = v16 + 32;
  v28(v69, v14);
  v29 = v67;
  sub_20E3226E0();
  v30 = sub_20E317E1C(v29);
  sub_20E04875C(v29, &qword_27C86DA18, &qword_20E359B10);
  if ((v30 & 0x100000000) != 0)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v32 = sub_20E3227C0();
    __swift_project_value_buffer(v32, qword_280E12C48);
    v33 = sub_20E3227B0();
    v34 = sub_20E322A50();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_22;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Missing/invalid source participant";
    goto LABEL_21;
  }

  sub_20E3226C0();
  if (v22(v7, 1, v20) == 1)
  {
    sub_20E04875C(v7, &qword_27C86DA20, &qword_20E359B18);
    v31 = v66;
    (*(v62 + 56))(v66, 1, 1, v64);
LABEL_17:
    sub_20E04875C(v31, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v38 = sub_20E3227C0();
    __swift_project_value_buffer(v38, qword_280E12C48);
    v33 = sub_20E3227B0();
    v34 = sub_20E322A50();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_22;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Missing targetId";
LABEL_21:
    _os_log_impl(&dword_20E031000, v33, v34, v36, v35, 2u);
    MEMORY[0x20F32CA80](v35, -1, -1);
LABEL_22:

    (*(v62 + 8))(v69, v64);
    return 0;
  }

  v31 = v66;
  sub_20E322790();
  v23(v7, v20);
  v37 = v64;
  if (v63(v31, 1, v64) == 1)
  {
    goto LABEL_17;
  }

  v40 = v65;
  (v61[0])(v65, v31, v37);
  v41 = v67;
  sub_20E3226F0();
  v42 = sub_20E317E1C(v41);
  sub_20E04875C(v41, &qword_27C86DA18, &qword_20E359B10);
  if ((v42 & 0x100000000) != 0)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v55 = sub_20E3227C0();
    __swift_project_value_buffer(v55, qword_280E12C48);
    v56 = sub_20E3227B0();
    v57 = sub_20E322A50();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_20E031000, v56, v57, "Missing/invalid target participant", v58, 2u);
      MEMORY[0x20F32CA80](v58, -1, -1);
    }

    v59 = *(v62 + 8);
    v60 = v64;
    v59(v40, v64);
    v59(v69, v60);
    return 0;
  }

  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v43 = result;
  [result setComponent_];
  v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v45 = sub_20E322030();
  v46 = [v44 initWithNSUUID_];

  [v43 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v47 = result;
  [result setComponent_];
  v48 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v49 = v65;
  v50 = sub_20E322030();
  v51 = [v48 initWithNSUUID_];

  [v47 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (result)
  {
    v52 = result;
    [result setSource_];
    [v52 setTarget_];

    v53 = *(v62 + 8);
    v54 = v64;
    v53(v49, v64);
    v53(v69, v54);
    return v52;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_20E318B94(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA20, &qword_20E359B18);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = sub_20E322060();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v46 - v16;
  sub_20E322640();
  v17 = sub_20E3227A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v6, 1, v17) == 1)
  {
    sub_20E04875C(v6, &qword_27C86DA20, &qword_20E359B18);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_20E04875C(v11, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v22 = sub_20E3227C0();
    __swift_project_value_buffer(v22, qword_280E12C48);
    v23 = sub_20E3227B0();
    v24 = sub_20E322A50();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20E031000, v23, v24, "Missing sourceId", v25, 2u);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    return 0;
  }

  sub_20E322790();
  v49 = *(v18 + 8);
  v49(v6, v17);
  v20 = v13;
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v47 = *(v20 + 32);
  v48 = v20;
  v47(v53, v11, v12);
  sub_20E322640();
  if (v19(v4, 1, v17) == 1)
  {
    sub_20E04875C(v4, &qword_27C86DA20, &qword_20E359B18);
    v27 = v48;
    v28 = v52;
    v29 = v12;
    (*(v48 + 56))(v52, 1, 1, v12);
LABEL_13:
    sub_20E04875C(v28, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v31 = sub_20E3227C0();
    __swift_project_value_buffer(v31, qword_280E12C48);
    v32 = sub_20E3227B0();
    v33 = sub_20E322A50();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20E031000, v32, v33, "Missing targetId", v34, 2u);
      MEMORY[0x20F32CA80](v34, -1, -1);
    }

    (*(v27 + 8))(v53, v29);
    return 0;
  }

  v28 = v52;
  sub_20E322790();
  v49(v4, v17);
  v29 = v12;
  v30 = v21(v28, 1, v12);
  v27 = v48;
  if (v30 == 1)
  {
    goto LABEL_13;
  }

  v47(v50, v28, v12);
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = result;
  [result setComponent_];
  v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v37 = sub_20E322030();
  v38 = [v36 initWithNSUUID_];

  [v35 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = result;
  [result setComponent_];
  v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v41 = v50;
  v42 = sub_20E322030();
  v43 = [v40 initWithNSUUID_];

  [v39 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (result)
  {
    v44 = result;
    [result setSource_];
    [v44 setTarget_];

    v45 = *(v48 + 8);
    v45(v41, v12);
    v45(v53, v12);
    return v44;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_20E319298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA00, &qword_20E359AF8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v31 - v1;
  v3 = sub_20E322650();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA08, &qword_20E359B00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_20E322690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA10, &qword_20E359B08);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_20E322710();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E3226B0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20E04875C(v14, &qword_27C86DA10, &qword_20E359B08);
    sub_20E3226A0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v19 = &qword_27C86DA08;
      v20 = &qword_20E359B00;
      v21 = v7;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_20E322660();
      v28 = v33;
      v27 = v34;
      if ((*(v33 + 48))(v2, 1, v34) != 1)
      {
        v29 = v32;
        (*(v28 + 32))(v32, v2, v27);
        v26 = sub_20E318B94(v11);
        (*(v28 + 8))(v29, v27);
        (*(v9 + 8))(v11, v8);
        return v26;
      }

      (*(v9 + 8))(v11, v8);
      v19 = &qword_27C86DA00;
      v20 = &qword_20E359AF8;
      v21 = v2;
    }

    sub_20E04875C(v21, v19, v20);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v22 = sub_20E3227C0();
    __swift_project_value_buffer(v22, qword_280E12C48);
    v23 = sub_20E3227B0();
    v24 = sub_20E322A40();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20E031000, v23, v24, "Event missing sessionCoordinatorLoop", v25, 2u);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    v26 = sub_20E31826C(v18);
    (*(v16 + 8))(v18, v15);
  }

  return v26;
}

uint64_t sub_20E3197AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E319834()
{
  v1 = 0x757165725F6D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E6576655F6D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365735F6D756ELL;
  }
}

uint64_t sub_20E3198A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E31A6A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E3198CC(uint64_t a1)
{
  v2 = sub_20E319AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E319908(uint64_t a1)
{
  v2 = sub_20E319AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SampleMetricsProducer.SessionStats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA28, &qword_20E359B20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E319AF4();
  sub_20E322E40();
  v13 = 0;
  sub_20E322D20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_20E322D20();
  v11 = 2;
  sub_20E322D20();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20E319AF4()
{
  result = qword_27C86DA30;
  if (!qword_27C86DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA30);
  }

  return result;
}

uint64_t SampleMetricsProducer.SessionStats.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA38, &qword_20E359B28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E319AF4();
  sub_20E322E20();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_20E322C90();
    v16 = 1;
    v14 = sub_20E322C90();
    v15 = 2;
    v11 = sub_20E322C90();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void static SampleMetricsProducer.createSessionStats(sessionView:_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for RequestData(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionData(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SessionView(0);
  v36 = a1;
  v7 = *(a1 + *(v35 + 28));
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v43 = *(a1 + *(v35 + 28));

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v38 = v12;
  v39 = v8;
LABEL_6:
  if (v11)
  {
    v17 = v16;
LABEL_11:
    v18 = v40;
    sub_20E31A0AC(*(v43 + 56) + *(v41 + 72) * (__clz(__rbit64(v11)) | (v17 << 6)), v40, type metadata accessor for SessionData);
    v19 = *(v18 + *(v42 + 32));

    sub_20E31A114(v18, type metadata accessor for SessionData);
    v20 = *(v19 + 16);
    v21 = __OFADD__(v14, v20);
    v22 = v14 + v20;
    if (v21)
    {
      goto LABEL_29;
    }

    v44 = v22;
    v14 = 0;
    v11 &= v11 - 1;
    v48 = v19;
    v23 = v19 + 64;
    v24 = 1 << *(v19 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v19 + 64);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = v14;
      v29 = v48;
LABEL_23:
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v31 = v45;
      sub_20E31A0AC(*(v29 + 56) + *(v46 + 72) * (v30 | (v28 << 6)), v45, type metadata accessor for RequestData);
      v32 = *(v31 + *(v47 + 24));

      sub_20E31A114(v31, type metadata accessor for RequestData);
      v33 = *(v32 + 16);

      v21 = __OFADD__(v15, v33);
      v13 = v15 + v33;
      v15 += v33;
      if (v21)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    v29 = v48;
    while (1)
    {
      v28 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v16 = v17;
        v12 = v38;
        v8 = v39;
        v14 = v44;
        goto LABEL_6;
      }

      v26 = *(v23 + 8 * v28);
      ++v14;
      if (v26)
      {
        v14 = v28;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
LABEL_26:

        v34 = v37;
        *v37 = *(v36 + *(v35 + 24));
        v34[1] = v14;
        v34[2] = v13;
        return;
      }

      v11 = *(v8 + 8 * v17);
      ++v16;
      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_20E31A0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E31A114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::SampleMetricsProducer::DateRange_optional __swiftcall SampleMetricsProducer.DateRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

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

  *v2 = v5;
  return result;
}

uint64_t SampleMetricsProducer.DateRange.rawValue.getter()
{
  if (*v0)
  {
    return 0x796C6B656577;
  }

  else
  {
    return 0x796C696164;
  }
}

uint64_t sub_20E31A20C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C6B656577;
  }

  else
  {
    v3 = 0x796C696164;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C6B656577;
  }

  else
  {
    v5 = 0x796C696164;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20E322D60();
  }

  return v8 & 1;
}

unint64_t sub_20E31A2B0()
{
  result = qword_27C86DA40;
  if (!qword_27C86DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA40);
  }

  return result;
}

uint64_t sub_20E31A304()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E31A380(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E31A3E8(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E31A460@<X0>(char *a2@<X8>)
{
  v3 = sub_20E322C20();

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

void sub_20E31A4C0(uint64_t *a1@<X8>)
{
  v2 = 0x796C696164;
  if (*v1)
  {
    v2 = 0x796C6B656577;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleMetricsProducer.SessionStats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SampleMetricsProducer.SessionStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_20E31A59C()
{
  result = qword_27C86DA48;
  if (!qword_27C86DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA48);
  }

  return result;
}

unint64_t sub_20E31A5F4()
{
  result = qword_27C86DA50;
  if (!qword_27C86DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA50);
  }

  return result;
}

unint64_t sub_20E31A64C()
{
  result = qword_27C86DA58;
  if (!qword_27C86DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA58);
  }

  return result;
}

uint64_t sub_20E31A6A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365735F6D756ELL && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x757165725F6D756ELL && a2 == 0xEC00000073747365 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6576655F6D756ELL && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DataProcessorBookmarkProvider.lastCollectionDate.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    sub_20E321F20();
    v7 = v6;
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v8 = sub_20E3227C0();
    __swift_project_value_buffer(v8, qword_280E12C48);

    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = sub_20E31B6C4(v13, v14, v35);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_20E031000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F32CA80](v12, -1, -1);
      MEMORY[0x20F32CA80](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      v17 = v16;
      v18 = sub_20E322A20();
      swift_beginAccess();

      v19 = sub_20E322860();

      [v17 setValue:v18 forKey:v19];
    }

    else
    {

      v27 = sub_20E3227B0();
      v28 = sub_20E322A40();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v32 = v5[5];
        v31 = v5[6];

        v33 = sub_20E31B6C4(v32, v31, &v36);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_20E031000, v27, v28, "Fail to set key %s due to empty userdefaults", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x20F32CA80](v30, -1, -1);
        MEMORY[0x20F32CA80](v29, -1, -1);
      }
    }

    v34 = sub_20E322010();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v20 = sub_20E3227C0();
    __swift_project_value_buffer(v20, qword_280E12C48);
    v21 = sub_20E3227B0();
    v22 = sub_20E322A40();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20E031000, v21, v22, "Skip userDefault set due to empty identifier", v23, 2u);
      MEMORY[0x20F32CA80](v23, -1, -1);
    }

    v24 = sub_20E322010();
    v25 = *(*(v24 - 8) + 8);

    return v25(a1, v24);
  }
}

uint64_t DataProcessorBookmarkProvider.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20E322010();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  sub_20E321FC0();
  v11 = *(v1 + 16);
  if (v11)
  {
    swift_beginAccess();

    v12 = sub_20E322860();

    v13 = [v11 valueForKey_];

    if (v13)
    {
      sub_20E322AB0();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      sub_20E31BC7C(&v42);

      v14 = sub_20E322860();

      [v11 doubleForKey_];
      v16 = v15;

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v17 = sub_20E3227C0();
      __swift_project_value_buffer(v17, qword_280E12C48);

      v18 = sub_20E3227B0();
      v19 = sub_20E322A40();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v42 = v21;
        *v20 = 136315394;
        v39 = v4;
        v22 = a1;
        v24 = *(v2 + 40);
        v23 = *(v2 + 48);

        v25 = sub_20E31B6C4(v24, v23, &v42);

        *(v20 + 4) = v25;
        a1 = v22;
        v4 = v39;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v16;
        _os_log_impl(&dword_20E031000, v18, v19, "The userdefault has key %s with the value %f", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x20F32CA80](v21, -1, -1);
        MEMORY[0x20F32CA80](v20, -1, -1);
      }

      sub_20E321F10();
      sub_20E31BCE4();
      v26 = sub_20E322840();
      v27 = *(v5 + 8);
      v28 = (v5 + 32);
      if (v26)
      {
        v27(v10, v4);
        return (*v28)(a1, v8, v4);
      }

      else
      {
        v27(v8, v4);
        return (*v28)(a1, v10, v4);
      }
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_20E31BC7C(&v42);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v30 = sub_20E3227C0();
  __swift_project_value_buffer(v30, qword_280E12C48);

  v31 = sub_20E3227B0();
  v32 = sub_20E322A40();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v40 = v34;
    *v33 = 136315138;
    swift_beginAccess();
    v36 = *(v2 + 40);
    v35 = *(v2 + 48);

    v37 = sub_20E31B6C4(v36, v35, &v40);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_20E031000, v31, v32, "The userdefault contained no value for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x20F32CA80](v34, -1, -1);
    MEMORY[0x20F32CA80](v33, -1, -1);
  }

  return (*(v5 + 32))(a1, v10, v4);
}

uint64_t DataProcessorBookmarkProvider.__allocating_init(streamIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DataProcessorBookmarkProvider.init(streamIdentifier:domain:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DataProcessorBookmarkProvider.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void *DataProcessorBookmarkProvider.init(streamIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_20E322860();

  v10 = [v8 initWithSuiteName_];

  v5[2] = v10;
  v5[3] = a1;
  v5[4] = a2;

  MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E35F6E0);
  v5[5] = a1;
  v5[6] = a2;
  return v5;
}

uint64_t sub_20E31B2F4(uint64_t a1)
{
  v2 = sub_20E322010();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return DataProcessorBookmarkProvider.lastCollectionDate.setter(v4);
}

void (*DataProcessorBookmarkProvider.lastCollectionDate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_20E322010();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v9);
  return sub_20E31B4C8;
}

void sub_20E31B4C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    DataProcessorBookmarkProvider.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    DataProcessorBookmarkProvider.lastCollectionDate.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataProcessorBookmarkProvider.deinit()
{

  return v0;
}

uint64_t DataProcessorBookmarkProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20E31B5F4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20E31B668(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_20E31B6C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_20E31B6C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20E31B790(v11, 0, 0, 1, a1, a2);
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
    sub_20E31BD8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20E31B790(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20E31B89C(a5, a6);
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
    result = sub_20E322B40();
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

void *sub_20E31B89C(uint64_t a1, unint64_t a2)
{
  v3 = sub_20E31B8E8(a1, a2);
  sub_20E31BA18(&unk_282536FE0);
  return v3;
}

void *sub_20E31B8E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_20E31BB04(v5, 0);
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

  result = sub_20E322B40();
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
        v10 = sub_20E322910();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20E31BB04(v10, 0);
        result = sub_20E322AF0();
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

uint64_t sub_20E31BA18(uint64_t result)
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

  result = sub_20E31BB78(result, v11, 1, v3);
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

void *sub_20E31BB04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA68, qword_20E359E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20E31BB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA68, qword_20E359E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

_BYTE **sub_20E31BC6C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_20E31BC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA60, &qword_20E359DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E31BCE4()
{
  result = qword_280E12B38;
  if (!qword_280E12B38)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E12B38);
  }

  return result;
}

uint64_t sub_20E31BD8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_20E31BDE8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = (&v62 - v5);
  v64 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v64);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v62 - v21;
  v23 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v22, &qword_27C863F88, &unk_20E33C200);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v27 = &qword_27C863F88;
    v28 = &unk_20E33C200;
    v29 = v22;
LABEL_12:
    sub_20E04875C(v29, v27, v28);
    return 0;
  }

  sub_20E31C898(v22, v26, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  v30 = [objc_allocWithZone(MEMORY[0x277D57FE8]) init];
  if (!v30)
  {
    sub_20E31C900(v26, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
    return 0;
  }

  v63 = v30;
  sub_20E0486F4(v26, v19, &qword_27C8659F8, &unk_20E33C240);
  v31 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
  {
    goto LABEL_5;
  }

  sub_20E0486F4(v19, v17, &qword_27C8659F8, &unk_20E33C240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v38 = v67;
        sub_20E31C898(v17, v67, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
        v46 = [objc_allocWithZone(MEMORY[0x277D57FF8]) init];
        if (v46)
        {
          v47 = v46;
          [v46 setIsExplicit_];
          [v63 setKnowledgeTool_];

          v41 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
          goto LABEL_50;
        }

        v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
        break;
      case 6:
        v38 = v69;
        sub_20E31C898(v17, v69, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
        v52 = [objc_allocWithZone(MEMORY[0x277D58008]) init];
        if (v52)
        {
          v53 = v52;
          v54 = v38 + *(v64 + 20);
          if ((*(v54 + 8) & 1) == 0)
          {
            [v52 setElementAtIndex_];
          }

          v55 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v56 = v65;
          sub_20E0486F4(v38, v65, &qword_27C8639D0, &unk_20E33C230);
          v57 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
          {
            sub_20E04875C(v56, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v61 = *v56;
            sub_20E31C900(v56, type metadata accessor for TranscriptProtoStatementID);
            [v55 setIndex_];
          }

          [v53 setResultStatementId_];

          [v63 setOpenTool_];
          v41 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
          goto LABEL_50;
        }

        v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
        break;
      case 7:
        v38 = v68;
        sub_20E31C898(v17, v68, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
        v42 = [objc_allocWithZone(MEMORY[0x277D58000]) init];
        if (v42)
        {
          v43 = v42;
          if ((*(v38 + 8) & 1) == 0)
          {
            [v42 setElementAtIndex_];
          }

          [v63 setOpenSuccessValueFromLatestRequestTool_];

          v41 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
          goto LABEL_50;
        }

        v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        break;
      default:
        goto LABEL_32;
    }

LABEL_46:
    v59 = v58;
    v60 = v38;
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E31C898(v17, v13, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v48 = [objc_allocWithZone(MEMORY[0x277D58018]) init];
      if (v48)
      {
        v49 = v48;
        [v48 setIsExplicit_];
        [v63 setTextTool_];

        v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
        v51 = v13;
LABEL_51:
        sub_20E31C900(v51, v50);
        goto LABEL_52;
      }

      v59 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      v60 = v13;
LABEL_47:
      sub_20E31C900(v60, v59);
LABEL_10:
      sub_20E31C900(v26, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
LABEL_11:
      v27 = &qword_27C8659F8;
      v28 = &unk_20E33C240;
      v29 = v19;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v38 = v66;
      sub_20E31C898(v17, v66, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v39 = [objc_allocWithZone(MEMORY[0x277D57FF0]) init];
      if (v39)
      {
        v40 = v39;
        [v39 setIsExplicit_];
        [v63 setConvertTool_];

        v41 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_50:
        v50 = v41;
        v51 = v38;
        goto LABEL_51;
      }

      v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
      goto LABEL_46;
    }

LABEL_32:
    sub_20E31C900(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_5:
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v32 = sub_20E3227C0();
    __swift_project_value_buffer(v32, qword_280E12C48);
    v33 = sub_20E3227B0();
    v34 = sub_20E322A40();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20E031000, v33, v34, "#IFTPrscribedPlanConverter - unmapped plan values", v35, 2u);
      MEMORY[0x20F32CA80](v35, -1, -1);
    }

    goto LABEL_10;
  }

  sub_20E31C900(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v44 = [objc_allocWithZone(MEMORY[0x277D58010]) init];
  if (!v44)
  {
    sub_20E31C900(v26, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

    goto LABEL_11;
  }

  v45 = v44;
  [v44 setExists_];
  [v63 setSearchTool_];

LABEL_52:
  sub_20E31C900(v26, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_20E04875C(v19, &qword_27C8659F8, &unk_20E33C240);
  return v63;
}

uint64_t sub_20E31C898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E31C900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E31C960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_20E31CB64(a1, &v19 - v8);
  v10 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v9, 1, v10);
  sub_20E31CBD4(v9);
  if (v12 == 1)
  {
    return 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D57FD8]) init];
  if (v13)
  {
    sub_20E31CB64(a1, v7);
    if (v11(v7, 1, v10) == 1)
    {
      v14 = v13;
      sub_20E31CBD4(v7);
      v15 = 0;
    }

    else
    {
      v16 = v13;

      sub_20E31CC3C(v7);
      v15 = sub_20E322860();
    }

    [v13 setTextQuery_];

    [v13 setLinkId_];
    v17 = [v13 linkId];
  }

  return v13;
}

uint64_t sub_20E31CB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31CBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E31CC3C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20E31CC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = &v75 - v3;
  v80 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v83 = *(v80 - 8);
  v4 = MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v82 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  v10 = sub_20E322060();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v75 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v75 - v19;
  v21 = type metadata accessor for TranscriptProtoAction(0);
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v20, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_20E04875C(v20, &qword_27C867F10, &qword_20E33AFE0);
    return;
  }

  sub_20E31D8C4(v20, v24, type metadata accessor for TranscriptProtoAction);
  v25 = [objc_allocWithZone(MEMORY[0x277D57CD8]) init];
  if (v25)
  {
    v26 = v21[6];
    v27 = objc_allocWithZone(MEMORY[0x277D58078]);
    v28 = v25;
    v29 = [v27 init];
    sub_20E0486F4(&v24[v26], v17, &qword_27C8639D0, &unk_20E33C230);
    v30 = type metadata accessor for TranscriptProtoStatementID(0);
    if ((*(*(v30 - 8) + 48))(v17, 1, v30) == 1)
    {
      sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v31 = *v17;
      sub_20E31D978(v17, type metadata accessor for TranscriptProtoStatementID);
      [v29 setIndex_];
    }

    [v28 setStatementId_];

    sub_20E0486F4(&v24[v21[9]], v14, &qword_27C8639C8, &unk_20E323870);
    v32 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    if ((*(*(v32 - 8) + 48))(v14, 1, v32) == 1)
    {
      v33 = v28;
      sub_20E04875C(v14, &qword_27C8639C8, &unk_20E323870);
      v34 = 0;
    }

    else
    {
      v35 = v28;

      sub_20E31D978(v14, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v34 = sub_20E322860();
    }

    [v28 setToolId_];

    v36 = *&v24[v21[7] + 8];
    v37 = v28;
    if (v36)
    {
      v36 = sub_20E322860();
    }

    [v28 setBundleId_];

    [v28 setIsConfirmed_];
  }

  sub_20E06C5DC(5, v9);
  v39 = v77;
  v38 = v78;
  v40 = (v77)[6](v9, 1, v78);
  v41 = v76;
  if (v40 == 1)
  {
    sub_20E04875C(v9, &qword_27C863A90, &unk_20E33C020);
    v42 = &selRef_setPayload_;
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    (v39)[4](v76, v9, v38);
    if (v25)
    {
      v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v44 = v25;
      v45 = sub_20E322030();
      v46 = [v43 initWithNSUUID_];

      [v44 setPlanEventId_];
    }

    (v39[1])(v41, v38);
    v42 = &selRef_setPayload_;
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  sub_20E31D92C();
  v47 = v25;
  v48 = sub_20E322960();
  [v47 v42[274]];

LABEL_20:
  v77 = v25;
  v75 = v24;
  v49 = *(v24 + 1);
  v50 = v49 + 64;
  v51 = 1 << v49[32];
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 8);
  v54 = (v51 + 63) >> 6;

  v55 = 0;
  v56 = 0x277D57000uLL;
  v57 = v79;
  v76 = v49;
  v78 = v54;
  while (v53)
  {
LABEL_29:
    v59 = v82;
    sub_20E31D860(*(v49 + 7) + *(v83 + 72) * (__clz(__rbit64(v53)) | (v55 << 6)), v82);
    sub_20E31D8C4(v59, v57, type metadata accessor for TranscriptProtoActionParameterValue);
    v60 = [objc_allocWithZone(*(v56 + 3360)) init];
    if (!v60)
    {
      sub_20E31D978(v57, type metadata accessor for TranscriptProtoActionParameterValue);

      sub_20E31D978(v75, type metadata accessor for TranscriptProtoAction);
      return;
    }

    v61 = v60;
    v62 = v49;
    v63 = v56;
    v53 &= v53 - 1;
    v64 = v81;
    sub_20E0486F4(v57 + *(v80 + 20), v81, &qword_27C863B58, &qword_20E323E68);
    v65 = type metadata accessor for TranscriptProtoPromptSelection(0);
    if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
    {
      sub_20E31D978(v57, type metadata accessor for TranscriptProtoActionParameterValue);

      sub_20E04875C(v64, &qword_27C863B58, &qword_20E323E68);
      v49 = v62;
      v54 = v78;
    }

    else
    {
      v66 = *v64;
      v67 = *(v64 + 8);
      v68 = *(v64 + 9);
      sub_20E31D978(v64, type metadata accessor for TranscriptProtoPromptSelection);
      if (v68)
      {
        v57 = v79;
        sub_20E31D978(v79, type metadata accessor for TranscriptProtoActionParameterValue);

        v56 = v63;
        goto LABEL_49;
      }

      if (v67)
      {
        if (v66)
        {
          [v61 setDenied_];
        }

        else
        {
          [v61 setConfirmed_];
        }
      }

      else
      {
        [v61 setSelectedInDisambiguation_];
      }

      v56 = v63;
      if (!v77)
      {
        v57 = v79;
        sub_20E31D978(v79, type metadata accessor for TranscriptProtoActionParameterValue);

        goto LABEL_46;
      }

      v69 = v77;
      v70 = [v69 actionParameterValues];
      if (v70)
      {
        v71 = v70;
        sub_20E31D92C();
        v72 = sub_20E322970();

        v84 = v72;
        v73 = v61;
        MEMORY[0x20F32BF90]();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();
        if (v84)
        {
          v74 = sub_20E322960();
        }

        else
        {
          v74 = 0;
        }

        v56 = v63;
        [v69 setActionParameterValues_];

        v57 = v79;
        sub_20E31D978(v79, type metadata accessor for TranscriptProtoActionParameterValue);
LABEL_49:
        v49 = v76;
        v54 = v78;
      }

      else
      {
        [v69 setActionParameterValues_];

        v57 = v79;
        sub_20E31D978(v79, type metadata accessor for TranscriptProtoActionParameterValue);
LABEL_46:
        v49 = v76;
        v54 = v78;
      }
    }
  }

  while (1)
  {
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v58 >= v54)
    {

      sub_20E31D978(v75, type metadata accessor for TranscriptProtoAction);
      return;
    }

    v53 = *&v50[8 * v58];
    ++v55;
    if (v53)
    {
      v55 = v58;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_20E31D860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31D8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E31D92C()
{
  result = qword_27C86DA70;
  if (!qword_27C86DA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C86DA70);
  }

  return result;
}

uint64_t sub_20E31D978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E31D9E8(char *a1, uint64_t a2)
{
  v231 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v3 - 8);
  v193 = &v188 - v4;
  v192 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v189 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v198 = &v188 - v7;
  v196 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v190 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v9 - 8);
  v197 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v11 - 8);
  v215 = &v188 - v12;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v213 = *(v13 - 8);
  v214 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v207 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v208 = &v188 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v17 - 8);
  v224 = &v188 - v18;
  v19 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v222 = *(v19 - 8);
  v223 = v19;
  MEMORY[0x28223BE20](v19);
  v219 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v21 - 8);
  v229 = &v188 - v22;
  v23 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v227 = *(v23 - 8);
  v228 = v23;
  MEMORY[0x28223BE20](v23);
  v225 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v226);
  v230 = &v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v203 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v220 = &v188 - v29;
  v206 = type metadata accessor for TranscriptProtoExecutorError(0);
  v30 = MEMORY[0x28223BE20](v206);
  v205 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v217 = &v188 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v202 = &v188 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v218 = &v188 - v36;
  v204 = type metadata accessor for TranscriptProtoPlannerError(0);
  v37 = MEMORY[0x28223BE20](v204);
  v210 = &v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v216 = &v188 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v201 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v211 = &v188 - v43;
  v199 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v44 = MEMORY[0x28223BE20](v199);
  v209 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v212 = &v188 - v46;
  v47 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v200 = *(v47 - 8);
  v48 = MEMORY[0x28223BE20](v47);
  v194 = &v188 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v221 = &v188 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v54 = &v188 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v188 - v55;
  v57 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v188 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v62 = &v188 - v61;
  v63 = type metadata accessor for TranscriptProtoSessionError(0);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v188 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v68 = &v188 - v67;
  sub_20E320504(a2, v62, type metadata accessor for TranscriptProtoPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_20E32056C(v62, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E320504(a2, v60, type metadata accessor for TranscriptProtoPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 19)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v60, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_20:
      v95 = 1;
      v96 = v231;
      goto LABEL_21;
    }

    v81 = v230;
    sub_20E32049C(v60, v230, type metadata accessor for TranscriptProtoStatementResult);
    v82 = v229;
    sub_20E0486F4(v81 + *(v226 + 20), v229, &qword_27C863FB8, &unk_20E325F60);
    if ((*(v227 + 48))(v82, 1, v228) == 1)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      v84 = &qword_27C863FB8;
      v85 = &unk_20E325F60;
LABEL_19:
      sub_20E04875C(v82, v84, v85);
      goto LABEL_20;
    }

    v97 = v225;
    sub_20E32049C(v82, v225, type metadata accessor for TranscriptProtoStatementResultPayload);
    v82 = v224;
    sub_20E0486F4(v97, v224, &qword_27C863BA8, &unk_20E345F00);
    if ((*(v222 + 48))(v82, 1, v223) == 1)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      v84 = &qword_27C863BA8;
      v85 = &unk_20E345F00;
      goto LABEL_19;
    }

    v130 = v219;
    sub_20E32049C(v82, v219, type metadata accessor for TranscriptProtoStatementOutcome);
    v131 = v215;
    sub_20E0486F4(v130, v215, &qword_27C863BA0, &unk_20E325F20);
    v132 = (*(v213 + 48))(v131, 1, v214);
    v96 = v231;
    if (v132 == 1)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v130, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E04875C(v131, &qword_27C863BA0, &unk_20E325F20);
      v95 = 1;
      goto LABEL_21;
    }

    v148 = v208;
    sub_20E32049C(v131, v208, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v149 = v207;
    sub_20E320504(v148, v207, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v148, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v130, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E32056C(v149, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v95 = 1;
      goto LABEL_21;
    }

    v150 = v149;
    v151 = v197;
    sub_20E32049C(v150, v197, type metadata accessor for TranscriptProtoActionFailure);
    v152 = v198;
    sub_20E0486F4(v151, v198, &qword_27C868560, &unk_20E33C2E0);
    if ((*(v195 + 48))(v152, 1, v196) == 1)
    {
      v83 = 0xD000000000000015;
      sub_20E32056C(v151, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E32056C(v148, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v130, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      v153 = &qword_27C868560;
      v154 = &unk_20E33C2E0;
    }

    else
    {
      v185 = v190;
      sub_20E32049C(v152, v190, type metadata accessor for TranscriptProtoActionFailureFailure);
      v152 = v193;
      sub_20E0486F4(v185, v193, &qword_27C865BD0, &qword_20E3263A8);
      if ((*(v191 + 48))(v152, 1, v192) != 1)
      {
        v186 = v152;
        v187 = v189;
        sub_20E32049C(v186, v189, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        v83 = TranscriptProtoActionFailureFailureEnum.description.getter();
        sub_20E32056C(v187, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        sub_20E32056C(v185, type metadata accessor for TranscriptProtoActionFailureFailure);
        sub_20E32056C(v151, type metadata accessor for TranscriptProtoActionFailure);
        sub_20E32056C(v148, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E32056C(v130, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
        goto LABEL_69;
      }

      v83 = 0xD000000000000015;
      sub_20E32056C(v185, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E32056C(v151, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E32056C(v148, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v130, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v97, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoStatementResult);
      v153 = &qword_27C865BD0;
      v154 = &qword_20E3263A8;
    }

    sub_20E04875C(v152, v153, v154);
LABEL_69:
    v95 = 7;
    goto LABEL_21;
  }

  sub_20E32049C(v62, v68, type metadata accessor for TranscriptProtoSessionError);
  sub_20E0486F4(v68, v56, &qword_27C863EE0, &qword_20E325D18);
  v69 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v70 = v56;
  if ((*(*(v69 - 8) + 48))(v56, 1, v69) == 1)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v71 = sub_20E3227C0();
    __swift_project_value_buffer(v71, qword_280E12C48);
    v72 = v68;
    sub_20E320504(v68, v66, type metadata accessor for TranscriptProtoSessionError);
    v73 = sub_20E3227B0();
    v74 = sub_20E322A40();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v232 = v76;
      *v75 = 136315138;
      sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
      v77 = sub_20E322470();
      v79 = v78;
      sub_20E32056C(v66, type metadata accessor for TranscriptProtoSessionError);
      v80 = sub_20E31B6C4(v77, v79, &v232);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_20E031000, v73, v74, "Unrecognized error from sessionError: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x20F32CA80](v76, -1, -1);
      MEMORY[0x20F32CA80](v75, -1, -1);
    }

    else
    {

      sub_20E32056C(v66, type metadata accessor for TranscriptProtoSessionError);
    }

    v96 = v231;
    sub_20E32056C(v72, type metadata accessor for TranscriptProtoSessionError);
    v83 = 0xD000000000000020;
    v95 = 1;
    goto LABEL_16;
  }

  sub_20E0486F4(v56, v54, &qword_27C863EE0, &qword_20E325D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v133 = v217;
      sub_20E32049C(v54, v217, type metadata accessor for TranscriptProtoExecutorError);
      v134 = v220;
      sub_20E0486F4(v133, v220, &qword_27C863EC8, &unk_20E359E90);
      v135 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
      if ((*(*(v135 - 8) + 48))(v134, 1, v135) == 1)
      {
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v136 = v68;
        v137 = sub_20E3227C0();
        __swift_project_value_buffer(v137, qword_280E12C48);
        v138 = v205;
        sub_20E320504(v133, v205, type metadata accessor for TranscriptProtoExecutorError);
        v139 = sub_20E3227B0();
        v140 = sub_20E322A40();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v232 = v142;
          *v141 = 136315138;
          sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
          v143 = sub_20E322470();
          v144 = v138;
          v146 = v145;
          sub_20E32056C(v144, type metadata accessor for TranscriptProtoExecutorError);
          v147 = sub_20E31B6C4(v143, v146, &v232);

          *(v141 + 4) = v147;
          _os_log_impl(&dword_20E031000, v139, v140, "Unrecognized error from executorError: %s", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v142);
          MEMORY[0x20F32CA80](v142, -1, -1);
          MEMORY[0x20F32CA80](v141, -1, -1);
        }

        else
        {

          sub_20E32056C(v138, type metadata accessor for TranscriptProtoExecutorError);
        }

        v96 = v231;
        sub_20E32056C(v133, type metadata accessor for TranscriptProtoExecutorError);
        sub_20E32056C(v136, type metadata accessor for TranscriptProtoSessionError);
        v83 = 0xD000000000000020;
      }

      else
      {
        v155 = v203;
        sub_20E0486F4(v134, v203, &qword_27C863EC8, &unk_20E359E90);
        if ((*(v200 + 48))(v155, 1, v47) == 1)
        {
          sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
          v83 = sub_20E322470();
          sub_20E32056C(v133, type metadata accessor for TranscriptProtoExecutorError);
          v156 = type metadata accessor for TranscriptProtoSessionError;
          v157 = v68;
        }

        else
        {
          v169 = v221;
          sub_20E32049C(v155, v221, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v170 = v68;
          v171 = *(v169 + 16);
          v172 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v173 = sub_20E322860();
          v174 = [v172 initWithDomain:v173 code:v171 userInfo:0];

          v175 = [v174 debugDescription];
          v83 = sub_20E322890();

          sub_20E32056C(v133, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E32056C(v170, type metadata accessor for TranscriptProtoSessionError);
          v156 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v157 = v169;
        }

        sub_20E32056C(v157, v156);
        v96 = v231;
      }

      sub_20E04875C(v134, &qword_27C863EC8, &unk_20E359E90);
      v95 = 4;
      goto LABEL_16;
    }

    v99 = v216;
    sub_20E32049C(v54, v216, type metadata accessor for TranscriptProtoPlannerError);
    v100 = v218;
    sub_20E0486F4(v99, v218, &qword_27C863ED0, &unk_20E33C2C0);
    v101 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
    v102 = (*(*(v101 - 8) + 48))(v100, 1, v101);
    v103 = v210;
    if (v102 == 1)
    {
      goto LABEL_27;
    }

    v104 = v202;
    sub_20E0486F4(v100, v202, &qword_27C863ED0, &unk_20E33C2C0);
    v105 = swift_getEnumCaseMultiPayload();
    if (v105)
    {
      if (v105 == 1)
      {
        sub_20E32056C(v104, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_27:
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v106 = v68;
        v107 = sub_20E3227C0();
        __swift_project_value_buffer(v107, qword_280E12C48);
        sub_20E320504(v99, v103, type metadata accessor for TranscriptProtoPlannerError);
        v108 = sub_20E3227B0();
        v109 = sub_20E322A40();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v232 = v111;
          *v110 = 136315138;
          sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
          v112 = sub_20E322470();
          v113 = v103;
          v115 = v114;
          sub_20E32056C(v113, type metadata accessor for TranscriptProtoPlannerError);
          v116 = sub_20E31B6C4(v112, v115, &v232);

          *(v110 + 4) = v116;
          _os_log_impl(&dword_20E031000, v108, v109, "Unrecognized error from plannerError: %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          MEMORY[0x20F32CA80](v111, -1, -1);
          MEMORY[0x20F32CA80](v110, -1, -1);
        }

        else
        {

          sub_20E32056C(v103, type metadata accessor for TranscriptProtoPlannerError);
        }

        v96 = v231;
        sub_20E32056C(v99, type metadata accessor for TranscriptProtoPlannerError);
        sub_20E32056C(v106, type metadata accessor for TranscriptProtoSessionError);
        v83 = 0xD00000000000001FLL;
        goto LABEL_64;
      }

      sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
      v83 = sub_20E322470();
      sub_20E32056C(v99, type metadata accessor for TranscriptProtoPlannerError);
      v183 = type metadata accessor for TranscriptProtoSessionError;
      v184 = v68;
    }

    else
    {
      v176 = v221;
      sub_20E32049C(v104, v221, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v177 = v68;
      v178 = *(v176 + 16);
      v179 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v180 = sub_20E322860();
      v181 = [v179 initWithDomain:v180 code:v178 userInfo:0];

      v182 = [v181 debugDescription];
      v83 = sub_20E322890();

      sub_20E32056C(v99, type metadata accessor for TranscriptProtoPlannerError);
      sub_20E32056C(v177, type metadata accessor for TranscriptProtoSessionError);
      v183 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v184 = v176;
    }

    sub_20E32056C(v184, v183);
    v96 = v231;
LABEL_64:
    sub_20E04875C(v100, &qword_27C863ED0, &unk_20E33C2C0);
    v95 = 3;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v117 = v212;
    sub_20E32049C(v54, v212, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v118 = v211;
    sub_20E0486F4(v117, v211, &qword_27C863ED8, &unk_20E33C2B0);
    v119 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
    v120 = (*(*(v119 - 8) + 48))(v118, 1, v119);
    v121 = v209;
    if (v120 != 1)
    {
      v122 = v201;
      sub_20E0486F4(v118, v201, &qword_27C863ED8, &unk_20E33C2B0);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        v123 = v194;
        sub_20E32049C(v122, v194, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E04875C(v118, &qword_27C863ED8, &unk_20E33C2B0);
        v124 = v68;
        v125 = *(v123 + 16);
        v126 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v127 = sub_20E322860();
        v128 = [v126 initWithDomain:v127 code:v125 userInfo:0];

        v129 = [v128 debugDescription];
        v83 = sub_20E322890();

        sub_20E32056C(v117, type metadata accessor for TranscriptProtoSessionCoordinatorError);
        sub_20E32056C(v124, type metadata accessor for TranscriptProtoSessionError);
        sub_20E32056C(v123, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v95 = 2;
        v96 = v231;
        goto LABEL_16;
      }

      sub_20E32056C(v122, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    }

    v158 = v68;
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v159 = sub_20E3227C0();
    __swift_project_value_buffer(v159, qword_280E12C48);
    sub_20E320504(v117, v121, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v160 = sub_20E3227B0();
    v161 = sub_20E322A40();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v232 = v163;
      *v162 = 136315138;
      sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
      v164 = sub_20E322470();
      v165 = v121;
      v167 = v166;
      sub_20E32056C(v165, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v168 = sub_20E31B6C4(v164, v167, &v232);

      *(v162 + 4) = v168;
      _os_log_impl(&dword_20E031000, v160, v161, "Unrecognized error from sessionCoordinatorError: %s", v162, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v163);
      MEMORY[0x20F32CA80](v163, -1, -1);
      MEMORY[0x20F32CA80](v162, -1, -1);
    }

    else
    {

      sub_20E32056C(v121, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    }

    v96 = v231;
    sub_20E32056C(v117, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_20E32056C(v158, type metadata accessor for TranscriptProtoSessionError);
    sub_20E04875C(v118, &qword_27C863ED8, &unk_20E33C2B0);
    v83 = 0xD00000000000002ALL;
    v95 = 2;
    goto LABEL_16;
  }

  v87 = v54;
  v88 = v221;
  sub_20E32049C(v87, v221, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v89 = v68;
  v90 = *(v88 + 16);
  v91 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v92 = sub_20E322860();
  v93 = [v91 initWithDomain:v92 code:v90 userInfo:0];

  v94 = [v93 debugDescription];
  v83 = sub_20E322890();

  sub_20E32056C(v89, type metadata accessor for TranscriptProtoSessionError);
  sub_20E32056C(v88, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v95 = 1;
  v96 = v231;
LABEL_16:
  sub_20E04875C(v70, &qword_27C863EE0, &qword_20E325D18);
LABEL_21:
  *v96 = v95;
  return v83;
}

uint64_t sub_20E31FCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v47 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v9 = *(v47 - 8);
  v10 = MEMORY[0x28223BE20](v47);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v40 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v48 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 32);
  v46 = *(v22 + 16);
  if (!v46)
  {
LABEL_13:
    v29 = type metadata accessor for TranscriptProtoStatementID(0);
    return (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  }

  v23 = 0;
  v45 = v22 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v24 = *(v19 + 20);
  v43 = (v9 + 48);
  v44 = v24;
  v42 = (v9 + 56);
  v38 = v22;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_20E320504(v45 + *(v48 + 72) * v23, v21, type metadata accessor for TranscriptProtoProgramStatement);
    sub_20E0486F4(v21, v17, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(&v21[v44], v5, &qword_27C864168, &unk_20E33C440);
    sub_20E32056C(v21, type metadata accessor for TranscriptProtoProgramStatement);
    v25 = type metadata accessor for TranscriptProtoExpression(0);
    if ((*(*(v25 - 8) + 48))(v5, 1, v25) != 1)
    {
      break;
    }

    sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
    sub_20E04875C(v5, &qword_27C864168, &unk_20E33C440);
    (*v42)(v8, 1, 1, v47);
LABEL_4:
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
LABEL_5:
    if (v46 == ++v23)
    {
      goto LABEL_13;
    }
  }

  sub_20E0486F4(v5, v8, &qword_27C864160, &unk_20E33C410);
  sub_20E32056C(v5, type metadata accessor for TranscriptProtoExpression);
  if ((*v43)(v8, 1, v47) == 1)
  {
    sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
    goto LABEL_4;
  }

  v22 = v40;
  sub_20E32049C(v8, v40, type metadata accessor for TranscriptProtoExpressionEnum);
  v26 = v41;
  sub_20E320504(v22, v41, type metadata accessor for TranscriptProtoExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20E32056C(v26, type metadata accessor for TranscriptProtoExpressionEnum);
  if (EnumCaseMultiPayload == 6)
  {
    if (qword_280E12B88 == -1)
    {
LABEL_15:
      v31 = sub_20E3227C0();
      __swift_project_value_buffer(v31, qword_280E12C48);
      v32 = sub_20E3227B0();
      v33 = sub_20E322A40();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_22;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Derive valid originalStatementID from PlanCreated Call expression";
      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  v28 = v39;
  sub_20E320504(v22, v39, type metadata accessor for TranscriptProtoExpressionEnum);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_20E32056C(v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
    sub_20E32056C(v28, type metadata accessor for TranscriptProtoExpressionEnum);
    v22 = v38;
    goto LABEL_5;
  }

  sub_20E32056C(v28, type metadata accessor for TranscriptProtoExpressionEnum);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v36 = sub_20E3227C0();
  __swift_project_value_buffer(v36, qword_280E12C48);
  v32 = sub_20E3227B0();
  v33 = sub_20E322A40();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Derive valid originalStatementID from PlanCreated Search expression";
LABEL_21:
    _os_log_impl(&dword_20E031000, v32, v33, v35, v34, 2u);
    MEMORY[0x20F32CA80](v34, -1, -1);
  }

LABEL_22:

  sub_20E32056C(v22, type metadata accessor for TranscriptProtoExpressionEnum);
  return sub_20E32042C(v17, v37);
}

uint64_t sub_20E32042C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E32049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E320504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E32056C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E3205CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_20E321DD4();
    v4 = sub_20E3227F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t AppIntentMetricsProducer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000023;
  *(result + 24) = 0x800000020E364640;
  return result;
}

uint64_t AppIntentMetricsProducer.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000023;
  *(v0 + 24) = 0x800000020E364640;
  return result;
}

void AppIntentMetricsProducer.produce(from:with:)(uint64_t a1, Swift::OpaquePointer a2)
{
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20E031000, v5, v6, "#AppIntentMetricsProducer producing metrics", v7, 2u);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  _s23LighthouseDataProcessor24AppIntentMetricsProducerC09formulateF04fromSayAA0deF11DefinitionsVGAA11SessionViewV_tF_0(a1);
  if (*(v8._rawValue + 2))
  {
    AppIntentMetricsProducer.produceMetricsFor(results:reportTypes:)(v8, a2);
  }

  else
  {

    oslog = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20E031000, oslog, v9, "#AppIntentMetricsProducer No metrics formulated for reporting", v10, 2u);
      MEMORY[0x20F32CA80](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall AppIntentMetricsProducer.produceMetricsFor(results:reportTypes:)(Swift::OpaquePointer results, Swift::OpaquePointer reportTypes)
{
  v2 = *(reportTypes._rawValue + 2);
  if (v2)
  {
    v4 = 0;
    v5 = reportTypes._rawValue + 32;
    do
    {
      if (v5[v4])
      {
        if (qword_27C863978 != -1)
        {
          swift_once();
        }

        v6 = sub_20E3227C0();
        __swift_project_value_buffer(v6, qword_27C8CC290);
        v7 = sub_20E3227B0();
        v8 = sub_20E322A40();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20E031000, v7, v8, "#AppIntentMetricsProducer TODO: Implement SELF", v9, 2u);
          MEMORY[0x20F32CA80](v9, -1, -1);
        }
      }

      else
      {
        if (qword_27C863978 != -1)
        {
          swift_once();
        }

        v10 = sub_20E3227C0();
        __swift_project_value_buffer(v10, qword_27C8CC290);
        v11 = sub_20E3227B0();
        v12 = sub_20E322A40();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_20E031000, v11, v12, "#AppIntentMetricsProducer Uploading to CoreAnalytics", v13, 2u);
          MEMORY[0x20F32CA80](v13, -1, -1);
        }

        v14 = *(results._rawValue + 2);
        if (v14)
        {
          v15 = *(type metadata accessor for AppIntentMetricsDefinitions(0) - 8);
          v16 = results._rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          v17 = *(v15 + 72);
          do
          {
            sub_20E320AD4(v16);
            v16 += v17;
            --v14;
          }

          while (v14);
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_20E320AD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E326320;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000020E3646D0;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x44496C6F6F74;
  *(inited + 64) = 0xE600000000000000;
  type metadata accessor for AppIntentMetricsDefinitions(0);
  *(inited + 72) = sub_20E322860();
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000020E364460;
  v3 = sub_20E322860();

  *(inited + 96) = v3;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020E364440;
  v4 = sub_20E322860();

  *(inited + 120) = v4;
  strcpy((inited + 128), "errorMessage");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_20E322860();
  v5 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  type metadata accessor for CoreAnalyticsEmitter();
  swift_initStaticObject();
  CoreAnalyticsEmitter.sendCoreAnalytics(eventName:eventPayload:)(v1[1], v5);
}

uint64_t AppIntentMetricsProducer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s23LighthouseDataProcessor24AppIntentMetricsProducerC09formulateF04fromSayAA0deF11DefinitionsVGAA11SessionViewV_tF_0(uint64_t a1)
{
  v130 = sub_20E322010();
  v2 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AppIntentMetricsDefinitions(0);
  v117 = *(v118 - 8);
  v4 = MEMORY[0x28223BE20](v118);
  v116 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v128 = &v97 - v6;
  v7 = type metadata accessor for RequestData(0);
  v114 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v97 - v12;
  MEMORY[0x28223BE20](v11);
  v113 = &v97 - v14;
  v15 = type metadata accessor for SessionData(0);
  v99 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v103 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v98 = &v97 - v21;
  v22 = *(a1 + *(type metadata accessor for SessionView(0) + 28));
  v23 = *(v22 + 64);
  v102 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v119 = v25 & v23;
  v101 = (v24 + 63) >> 6;
  v112 = 0x800000020E3646F0;
  v107 = 0x800000020E35A9F0;
  v106 = "DataDecodingError";
  v105 = v132;
  v111 = (v2 + 16);
  v110 = (v2 + 32);
  v100 = v22;

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  *&v28 = 136315138;
  v109 = v28;
  v120 = v10;
  v125 = v13;
  v115 = v7;
  v97 = v15;
  v108 = v20;
LABEL_6:
  v29 = v119;
  if (v119)
  {
    v30 = v26;
    v31 = v103;
LABEL_12:
    v119 = v29;
    v104 = v30;
    v32 = v98;
    sub_20E321CA4(*(v100 + 56) + *(v99 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v98, type metadata accessor for SessionData);
    v33 = v32;
    v34 = v108;
    sub_20E321D6C(v33, v108, type metadata accessor for SessionData);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v35 = sub_20E3227C0();
    v36 = __swift_project_value_buffer(v35, qword_27C8CC290);
    sub_20E321CA4(v34, v31, type metadata accessor for SessionData);
    v124 = v36;
    v37 = sub_20E3227B0();
    v38 = sub_20E322A40();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v27;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = v109;
      v42 = (v31 + *(v15 + 24));
      v44 = *v42;
      v43 = v42[1];

      sub_20E321D0C(v31, type metadata accessor for SessionData);
      v45 = sub_20E31B6C4(v44, v43, aBlock);

      *(v39 + 4) = v45;
      v10 = v120;
      _os_log_impl(&dword_20E031000, v37, v38, "#AppIntentMetricsProducer Formulating metrics from sessionId:  %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v46 = v41;
      v27 = v40;
      MEMORY[0x20F32CA80](v46, -1, -1);
      v47 = v39;
      v13 = v125;
      MEMORY[0x20F32CA80](v47, -1, -1);
    }

    else
    {

      sub_20E321D0C(v31, type metadata accessor for SessionData);
    }

    v48 = *&v108[*(v15 + 32)];
    v119 &= v119 - 1;
    v49 = v48 + 64;
    v50 = 1 << *(v48 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v48 + 64);
    v53 = (v50 + 63) >> 6;
    v123 = v48;

    v54 = 0;
    v121 = v53;
    for (i = v49; v52; v53 = v121)
    {
      v126 = v27;
LABEL_26:
      v56 = v113;
      sub_20E321CA4(*(v123 + 56) + *(v114 + 72) * (__clz(__rbit64(v52)) | (v54 << 6)), v113, type metadata accessor for RequestData);
      sub_20E321D6C(v56, v13, type metadata accessor for RequestData);
      sub_20E321CA4(v13, v10, type metadata accessor for RequestData);
      v57 = sub_20E3227B0();
      v58 = sub_20E322A40();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v59 = v109;
        v61 = &v10[*(v7 + 20)];
        v62 = v10;
        v64 = *v61;
        v63 = v61[1];

        sub_20E321D0C(v62, type metadata accessor for RequestData);
        v65 = sub_20E31B6C4(v64, v63, aBlock);
        v13 = v125;

        *(v59 + 4) = v65;
        _os_log_impl(&dword_20E031000, v57, v58, "#AppIntentMetricsProducer Formulating metrics from requestId:  %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x20F32CA80](v60, -1, -1);
        MEMORY[0x20F32CA80](v59, -1, -1);
      }

      else
      {

        sub_20E321D0C(v10, type metadata accessor for RequestData);
      }

      v66 = &v13[*(v7 + 32)];
      v67 = v112;
      if (*(v66 + 5) && (v68 = *(v66 + 6), v68[2]))
      {
        v69 = v68[4];
        v70 = v68[5];
      }

      else
      {
        v71 = sub_20E3227B0();
        v72 = sub_20E322A40();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          aBlock[0] = v74;
          *v73 = v109;
          *(v73 + 4) = sub_20E31B6C4(0xD000000000000024, v67, aBlock);
          _os_log_impl(&dword_20E031000, v71, v72, "%s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          v75 = v74;
          v13 = v125;
          MEMORY[0x20F32CA80](v75, -1, -1);
          MEMORY[0x20F32CA80](v73, -1, -1);
        }

        v76 = sub_20E322860();
        v77 = swift_allocObject();
        v78 = v107;
        v77[2] = 0xD000000000000019;
        v77[3] = v78;
        v77[4] = 0x496C6F6F546C696ELL;
        v77[5] = 0xE900000000000044;
        v77[6] = 0xD000000000000024;
        v77[7] = v67;
        v132[2] = sub_20E06AE28;
        v132[3] = v77;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v132[0] = sub_20E3205CC;
        v132[1] = &block_descriptor_3;
        v79 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v79);

        v69 = 0;
        v70 = 0;
      }

      (*v111)(v129, v13, v130);
      v80 = 0x6E776F6E6B6E75;
      if (v70)
      {
        v80 = v69;
      }

      v127 = v80;
      if (v70)
      {
        v81 = v70;
      }

      else
      {
        v81 = 0xE700000000000000;
      }

      v82 = *(v66 + 5);
      if (v82)
      {
        v83 = v66[61];
      }

      else
      {
        v83 = 0;
      }

      if (v82)
      {
        v84 = v66[24];
        v86 = *(v66 + 1);
        v85 = *(v66 + 2);
        sub_20E31101C(v86, v85, v84);
        v87 = *(v66 + 5);
        if (v87)
        {
          v88 = *(v66 + 4);
        }

        else
        {
          v88 = 0;
          v87 = 0xE000000000000000;
        }
      }

      else
      {
        v85 = 0;
        v88 = 0;
        v87 = 0xE000000000000000;
        v84 = 2;
        v86 = 3;
      }

      v89 = v128;
      (*v110)(v128, v129, v130);
      v90 = v118;
      v91 = (v89 + *(v118 + 20));
      *v91 = v127;
      v91[1] = v81;
      *(v89 + v90[6]) = v83;
      v92 = v89 + v90[7];
      *v92 = v86;
      *(v92 + 8) = v85;
      *(v92 + 16) = v84;
      v93 = (v89 + v90[8]);
      *v93 = v88;
      v93[1] = v87;
      v94 = v116;
      sub_20E321CA4(v89, v116, type metadata accessor for AppIntentMetricsDefinitions);
      v27 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_20E22558C(0, v27[2] + 1, 1, v27);
      }

      v7 = v115;
      v10 = v120;
      v49 = i;
      v96 = v27[2];
      v95 = v27[3];
      if (v96 >= v95 >> 1)
      {
        v27 = sub_20E22558C((v95 > 1), v96 + 1, 1, v27);
      }

      v52 &= v52 - 1;
      sub_20E321D0C(v128, type metadata accessor for AppIntentMetricsDefinitions);
      v27[2] = v96 + 1;
      sub_20E321D6C(v94, v27 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v96, type metadata accessor for AppIntentMetricsDefinitions);
      v13 = v125;
      sub_20E321D0C(v125, type metadata accessor for RequestData);
    }

    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {

        sub_20E321D0C(v108, type metadata accessor for SessionData);
        v26 = v104;
        v15 = v97;
        goto LABEL_6;
      }

      v52 = *(v49 + 8 * v55);
      ++v54;
      if (v52)
      {
        v126 = v27;
        v54 = v55;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = v103;
    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v30 >= v101)
      {

        return;
      }

      v29 = *(v102 + 8 * v30);
      ++v26;
      if (v29)
      {
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E321CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E321D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E321D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E321DD4()
{
  result = qword_280E03EE0;
  if (!qword_280E03EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E03EE0);
  }

  return result;
}