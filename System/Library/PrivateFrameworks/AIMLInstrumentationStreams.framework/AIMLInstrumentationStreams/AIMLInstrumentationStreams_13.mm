uint64_t sub_23C67C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  return sub_23C8711A4();
}

uint64_t sub_23C67C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  return sub_23C8711A4();
}

uint64_t sub_23C67CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate.Template(0), sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C67CD80(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C67CF9C(v3, a1, a2, a3);
      sub_23C67D1B8(v3, a1, a2, a3);
      sub_23C67D3D4(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
        sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
        sub_23C8712F4();
      }

      sub_23C67D5F0(v3, a1, a2, a3);
      sub_23C67D80C(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C67CD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF90, &qword_23C889B70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FEF90, &qword_23C889B70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEF90, &qword_23C889B70);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
}

uint64_t sub_23C67CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF80, &unk_23C889C70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FEF80, &unk_23C889C70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEF80, &unk_23C889C70);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
}

uint64_t sub_23C67D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E1FED30, &qword_23C889980);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED30, &qword_23C889980);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAllPredicate);
}

uint64_t sub_23C67D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E1FED38, &unk_23C889C80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED38, &unk_23C889C80);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
}

uint64_t sub_23C67D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF60, &qword_23C889B48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FEF60, &qword_23C889B48);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEF60, &qword_23C889B48);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
}

uint64_t sub_23C67D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v9 = *(valid - 8);
  MEMORY[0x28223BE20](valid);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v12 + 44), v7, &qword_27E1FED48, &unk_23C889C90);
  if ((*(v9 + 48))(v7, 1, valid) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED48, &unk_23C889C90);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoValidPredicate);
}

uint64_t sub_23C67DA74@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[10];
  v13 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a2[v14], 1, 1, valid);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v17 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v17;
  return result;
}

uint64_t sub_23C67DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C67DCEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C67DD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAC0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67DE30(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_23C8711F4();
}

uint64_t sub_23C67DE9C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_23C871204();
}

uint64_t sub_23C67DF38()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2C8);
  __swift_project_value_buffer(v0, qword_27E1FC2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875590;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "collection";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entityIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "deferred";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_23C67E3CC(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C67E7AC(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C67EB94(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_23C67F74C(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_23C67FB38(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_23C67EF7C(v5, a1, a2, a3);
    }

    else
    {
      sub_23C67F364(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C67E3CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF20, &qword_23C889B08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_23C585C34(v16, &qword_27E1FEF20, &qword_23C889B08);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF20, &qword_23C889B08);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF20, &qword_23C889B08);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF20, &qword_23C889B08);
    return sub_23C585C34(v14, &qword_27E1FEF20, &qword_23C889B08);
  }

  else
  {
    v22 = v28;
    sub_23C716FA0(v14, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    if (v29 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF20, &qword_23C889B08);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v25 = *v27;
    *v27 = v23;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67E7AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF28, &qword_23C889B10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF28, &qword_23C889B10);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF28, &qword_23C889B10);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF28, &qword_23C889B10);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF28, &qword_23C889B10);
    return sub_23C585C34(v14, &qword_27E1FEF28, &qword_23C889B10);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF28, &qword_23C889B10);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67EB94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF30, &qword_23C889B18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF30, &qword_23C889B18);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF30, &qword_23C889B18);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF30, &qword_23C889B18);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF30, &qword_23C889B18);
    return sub_23C585C34(v14, &qword_27E1FEF30, &qword_23C889B18);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF30, &qword_23C889B18);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v25 = *v27;
    *v27 = v23 | 0x4000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67EF7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF38, &qword_23C889B20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF38, &qword_23C889B20);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF38, &qword_23C889B20);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF38, &qword_23C889B20);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF38, &qword_23C889B20);
    return sub_23C585C34(v14, &qword_27E1FEF38, &qword_23C889B20);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF38, &qword_23C889B20);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v25 = *v27;
    *v27 = v23 | 0x6000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67F364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v6 = *(Value - 8);
  v7 = MEMORY[0x28223BE20](Value);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF40, &qword_23C889B28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, Value);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF40, &qword_23C889B28);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v17(v16, 0, 1, Value);
  }

  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF40, &qword_23C889B28);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF40, &qword_23C889B28);
  if ((*(v6 + 48))(v14, 1, Value) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF40, &qword_23C889B28);
    return sub_23C585C34(v14, &qword_27E1FEF40, &qword_23C889B28);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF40, &qword_23C889B28);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67F74C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF48, &qword_23C889B30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF48, &qword_23C889B30);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF48, &qword_23C889B30);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF48, &qword_23C889B30);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF48, &qword_23C889B30);
    return sub_23C585C34(v14, &qword_27E1FEF48, &qword_23C889B30);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF48, &qword_23C889B30);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v25 = *v27;
    *v27 = v23 | 0xA000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C67FB38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF50, &qword_23C889B38);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEF50, &qword_23C889B38);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEF50, &qword_23C889B38);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEF50, &qword_23C889B38);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEF50, &qword_23C889B38);
    return sub_23C585C34(v14, &qword_27E1FEF50, &qword_23C889B38);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEF50, &qword_23C889B38);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v25 = *v27;
    *v27 = v23 | 0xC000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t ToolKitProtoTypedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        result = sub_23C680174(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = sub_23C6802CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      result = sub_23C680024(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      result = sub_23C6806D4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C68082C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 == 3)
  {
    result = sub_23C680424(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoTypedValue(0);
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C68057C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C680024(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C871304();
    return sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t sub_23C680174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6802CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C680424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C68057C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  result = MEMORY[0x28223BE20](Value);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6806D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C68082C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C680A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAB8, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C680B24(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return sub_23C8711F4();
}

uint64_t sub_23C680B90(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return sub_23C871204();
}

uint64_t sub_23C680C54()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2F0);
  __swift_project_value_buffer(v0, qword_27E1FC2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C680E94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C680F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.ID(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C681030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C681308(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAB0, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6813A8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDBD8, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return sub_23C8711F4();
}

uint64_t sub_23C681414(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDBD8, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return sub_23C871204();
}

uint64_t sub_23C6814EC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC318);
  __swift_project_value_buffer(v0, qword_27E1FC318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "noneVariant";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "url";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "app";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchableItem";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "encodedDateComponents";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_23C670A2C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 0x12u);
          break;
        case 2:
          sub_23C681E58(a1, v5, a2, a3);
          break;
        case 3:
          sub_23C68202C(a1, v5, a2, a3);
          break;
        case 4:
          sub_23C682208(a1, v5, a2, a3);
          break;
        case 5:
          sub_23C6823E4(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 4u);
          break;
        case 7:
          sub_23C6829A0(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 9:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 7u);
          break;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 11:
          sub_23C683360(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C68391C(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C683ED8(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C684494(v5, a1, a2, a3);
          break;
        case 15:
          sub_23C684A50(v5, a1, a2, a3);
          break;
        case 16:
          sub_23C68500C(v5, a1, a2, a3);
          break;
        case 17:
          sub_23C6855C8(v5, a1, a2, a3);
          break;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
LABEL_5:
          sub_23C683138(v11, v12, v13, v14, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, v15);
          break;
        case 19:
          sub_23C685B84(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C681E58(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 2;
  result = sub_23C871074();
  if (!v4)
  {
    v10 = v17;
    if (v17 != 2)
    {
      v16 = 0;
      sub_23C5855B0(a2, v8, &qword_27E1FD578, &qword_23C87D740);
      v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
      if (v13 != 1)
      {
        v14 = v16;
        result = sub_23C871054();
        if (v14)
        {
          return result;
        }

        v16 = 0;
      }

      sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_23C68202C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 1;
  result = sub_23C871104();
  if (!v4 && (v17 & 1) == 0)
  {
    v18 = 0;
    v15 = v16;
    sub_23C5855B0(a2, v8, &qword_27E1FD578, &qword_23C87D740);
    v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    if (v12 != 1)
    {
      v13 = v18;
      result = sub_23C871054();
      if (v13)
      {
        return result;
      }

      v18 = 0;
    }

    sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
    *a2 = v15;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_23C682208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 0;
  v18 = 1;
  result = sub_23C871134();
  if (!v4 && (v18 & 1) == 0)
  {
    v16 = 0;
    v10 = v17;
    sub_23C5855B0(a2, v8, &qword_27E1FD578, &qword_23C87D740);
    v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    if (v13 != 1)
    {
      v14 = v16;
      result = sub_23C871054();
      if (v14)
      {
        return result;
      }

      v16 = 0;
    }

    sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_23C6823E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEEA0, &qword_23C889AA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
    return sub_23C585C34(v32, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6829A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v46 = a1;
  v4 = sub_23C870EC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v38 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  v40 = v5;
  v24 = *(v5 + 56);
  v42 = v4;
  v24(&v34 - v22, 1, 1, v4);
  sub_23C5855B0(v46, v11, &qword_27E1FD578, &qword_23C87D740);
  v35 = v13;
  v36 = (*(v13 + 48))(v11, 1, v12);
  if (v36 == 1)
  {
    sub_23C585C34(v11, &qword_27E1FD578, &qword_23C87D740);
  }

  else
  {
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v18, v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v23, &unk_27E1F9D10, &qword_23C874E00);
      v25 = *(v40 + 32);
      v26 = v37;
      v27 = v42;
      v25(v37, v16, v42);
      v25(v23, v26, v27);
      v24(v23, 0, 1, v27);
      goto LABEL_7;
    }

    sub_23C717008(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  v27 = v42;
LABEL_7:
  sub_23C716EF0(&qword_27E1FEED8, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  v28 = v41;
  sub_23C8711A4();
  if (v28)
  {
    return sub_23C585C34(v23, &unk_27E1F9D10, &qword_23C874E00);
  }

  v30 = v38;
  sub_23C5855B0(v23, v38, &unk_27E1F9D10, &qword_23C874E00);
  v31 = v40;
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_23C585C34(v23, &unk_27E1F9D10, &qword_23C874E00);
    return sub_23C585C34(v30, &unk_27E1F9D10, &qword_23C874E00);
  }

  else
  {
    v32 = *(v31 + 32);
    v32(v39, v30, v27);
    if (v36 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &unk_27E1F9D10, &qword_23C874E00);
    v33 = v46;
    sub_23C585C34(v46, &qword_27E1FD578, &qword_23C87D740);
    v32(v33, v39, v27);
    swift_storeEnumTagMultiPayload();
    return (*(v35 + 56))(v33, 0, 1, v12);
  }
}

uint64_t sub_23C682F3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v35 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v33 = 0;
  v34 = 0;
  result = sub_23C871154();
  if (v8)
  {
  }

  v30 = a3;
  v31 = a4;
  v32 = a2;
  if (v34)
  {
    v29 = v34;
    v27 = v33;
    sub_23C5855B0(v32, v17, a5, a6);
    v19 = a7(0);
    v26 = *(v19 - 8);
    v20 = *(v26 + 48);
    v28 = v19;
    v21 = v20(v17, 1);
    sub_23C585C34(v17, a5, a6);
    if (v21 != 1)
    {
      sub_23C871054();
    }

    v22 = v32;
    sub_23C585C34(v32, a5, a6);
    v23 = v28;
    v24 = v29;
    *v22 = v27;
    v22[1] = v24;
    swift_storeEnumTagMultiPayload();
    return (*(v26 + 56))(v22, 0, 1, v23);
  }

  return result;
}

uint64_t sub_23C683138(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v30 = a8;
  v28 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v29 = xmmword_23C879130;
  sub_23C8710B4();
  v17 = *(&v29 + 1);
  if (v8)
  {
    return sub_23C5AD0AC(v29, *(&v29 + 1));
  }

  v25 = a3;
  v26 = a4;
  v27 = a2;
  if (*(&v29 + 1) >> 60 == 15)
  {
    return sub_23C5AD0AC(v29, *(&v29 + 1));
  }

  v18 = v29;
  sub_23C5855B0(v27, v16, a5, a6);
  v19 = v28(0);
  v23 = *(v19 - 8);
  v24 = v19;
  LODWORD(v28) = (*(v23 + 48))(v16, 1);
  sub_23C5ACFC8(v18, v17);
  sub_23C585C34(v16, a5, a6);
  if (v28 != 1)
  {
    sub_23C871054();
  }

  sub_23C5AD0AC(v18, v17);
  v21 = v27;
  sub_23C585C34(v27, a5, a6);
  *v21 = v18;
  v21[1] = v17;
  v22 = v24;
  swift_storeEnumTagMultiPayload();
  return (*(v23 + 56))(v21, 0, 1, v22);
}

uint64_t sub_23C683360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEE0, &qword_23C889AC8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E1FEEE0, &qword_23C889AC8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEEE0, &qword_23C889AC8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEEE0, &qword_23C889AC8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEEE0, &qword_23C889AC8);
    return sub_23C585C34(v32, &qword_27E1FEEE0, &qword_23C889AC8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEEE0, &qword_23C889AC8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C68391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEE8, &qword_23C889AD0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E1FEEE8, &qword_23C889AD0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEEE8, &qword_23C889AD0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEEE8, &qword_23C889AD0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEEE8, &qword_23C889AD0);
    return sub_23C585C34(v32, &qword_27E1FEEE8, &qword_23C889AD0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEEE8, &qword_23C889AD0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C683ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEF0, &qword_23C889AD8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E1FEEF0, &qword_23C889AD8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEEF0, &qword_23C889AD8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEEF0, &qword_23C889AD8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEEF0, &qword_23C889AD8);
    return sub_23C585C34(v32, &qword_27E1FEEF0, &qword_23C889AD8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEEF0, &qword_23C889AD8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C684494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEF8, &qword_23C889AE0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v24, &qword_27E1FEEF8, &qword_23C889AE0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEEF8, &qword_23C889AE0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEEF8, &qword_23C889AE0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEEF8, &qword_23C889AE0);
    return sub_23C585C34(v32, &qword_27E1FEEF8, &qword_23C889AE0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEEF8, &qword_23C889AE0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C684A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF00, &qword_23C889AE8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v24, &qword_27E1FEF00, &qword_23C889AE8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEF00, &qword_23C889AE8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEF00, &qword_23C889AE8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEF00, &qword_23C889AE8);
    return sub_23C585C34(v32, &qword_27E1FEF00, &qword_23C889AE8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEF00, &qword_23C889AE8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C68500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF08, &qword_23C889AF0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v24, &qword_27E1FEF08, &qword_23C889AF0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEF08, &qword_23C889AF0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEF08, &qword_23C889AF0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEF08, &qword_23C889AF0);
    return sub_23C585C34(v32, &qword_27E1FEF08, &qword_23C889AF0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEF08, &qword_23C889AF0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6855C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF10, &qword_23C889AF8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v24, &qword_27E1FEF10, &qword_23C889AF8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEF10, &qword_23C889AF8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEF10, &qword_23C889AF8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEF10, &qword_23C889AF8);
    return sub_23C585C34(v32, &qword_27E1FEF10, &qword_23C889AF8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEF10, &qword_23C889AF8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C685B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF18, &qword_23C889B00);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD578, &qword_23C87D740);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD578, &qword_23C87D740);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v24, &qword_27E1FEF18, &qword_23C889B00);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEF18, &qword_23C889B00);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEF18, &qword_23C889B00);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEF18, &qword_23C889B00);
    return sub_23C585C34(v32, &qword_27E1FEF18, &qword_23C889B00);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEF18, &qword_23C889B00);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        result = sub_23C686980(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        result = sub_23C686AE4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        sub_23C686C48(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C686E80(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        sub_23C686FF8(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C68725C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C6873DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C687554(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        sub_23C6876D4(v3, a1, a2, a3);
        goto LABEL_35;
      case 0xAu:
        sub_23C68790C(v3, a1, a2, a3);
LABEL_35:
        result = sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        sub_23C687B44(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xCu:
        sub_23C687D7C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xDu:
        sub_23C687FB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xEu:
        sub_23C6881EC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

        goto LABEL_10;
      case 0xFu:
        sub_23C688424(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0x10u:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C68865C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        sub_23C6887DC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

LABEL_10:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        break;
      case 0x12u:
        result = sub_23C6865D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        result = sub_23C686820(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  return sub_23C870F14();
}

uint64_t sub_23C6865D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD578, &qword_23C87D740);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD578, &qword_23C87D740);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C686820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_23C871244();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23C871294();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_23C8712B4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_23C870EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_23C716EF0(&qword_27E1FEED8, MEMORY[0x277D21570], MEMORY[0x277D21568]);
    sub_23C871304();
    return (*(v9 + 8))(v11, v8);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_23C5855B0(a1, &v12 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v10 = *v7;
    v9 = v7[1];
    sub_23C871264();
    return sub_23C595090(v10, v9);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6873DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_23C5855B0(a1, &v12 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    v10 = *v7;
    v9 = v7[1];
    sub_23C871264();
    return sub_23C595090(v10, v9);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6876D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6881EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C688424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_23C5855B0(a1, &v12 - v6, &qword_27E1FD578, &qword_23C87D740);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    v10 = *v7;
    v9 = v7[1];
    sub_23C871264();
    return sub_23C595090(v10, v9);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6887DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD578, &qword_23C87D740);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C688AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C688B70(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_23C8711F4();
}

uint64_t sub_23C688BDC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_23C871204();
}

uint64_t sub_23C688C5C()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6C616D696365442ELL, 0xE800000000000000);

  qword_27E1FC330 = v1;
  *algn_27E1FC338 = v2;
  return result;
}

uint64_t sub_23C688D28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC340);
  __swift_project_value_buffer(v0, qword_27E1FC340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "significand";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C689054(a1, v5, a2, a3);
          break;
        case 2:
          sub_23C871114();
          break;
        case 1:
          sub_23C70BFA8();
          sub_23C8710A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C689054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_23C870ED4();
  sub_23C716EF0(&qword_27E1FEEC8, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_23C70BFA8(), result = sub_23C871254(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_23C871294(), !v4))
    {
      result = sub_23C6891EC(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6891EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB0, &unk_23C889CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_23C870ED4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FEEB0, &unk_23C889CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEEB0, &unk_23C889CA0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_23C716EF0(&qword_27E1FEEC8, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_23C871304();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23C689454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = sub_23C870ED4();
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C689530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6895D0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_23C8711F4();
}

uint64_t sub_23C68963C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_23C871204();
}

uint64_t sub_23C6896BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC358);
  __swift_project_value_buffer(v0, qword_27E1FC358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Sign_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Sign_MINUS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Sign_PLUS";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68992C()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_27E1FC370 = v1;
  *algn_27E1FC378 = v2;
  return result;
}

uint64_t sub_23C689A00()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC380);
  __swift_project_value_buffer(v0, qword_27E1FC380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "unitType";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C70BFFC();
          sub_23C8710A4();
          break;
        case 2:
          sub_23C871144();
          break;
        case 1:
          sub_23C871164();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) == 0.0 || (result = sub_23C8712B4(), !v4))
    {
      if (!*(v3 + 24) || (sub_23C70BFFC(), result = sub_23C871254(), !v4))
      {
        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C689E78@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_23C689F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C689FAC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_23C8711F4();
}

uint64_t sub_23C68A018(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_23C871204();
}

uint64_t sub_23C68A098()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_27E1FC398 = v1;
  unk_27E1FC3A0 = v2;
  return result;
}

uint64_t sub_23C68A170()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3A8);
  __swift_project_value_buffer(v0, qword_27E1FC3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  return sub_23C8711A4();
}

uint64_t sub_23C68A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68A5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FEEA0, &qword_23C889AA8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
}

uint64_t sub_23C68A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68AAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68AB4C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_23C8711F4();
}

uint64_t sub_23C68ABB8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_23C871204();
}

uint64_t sub_23C68AC38()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_27E1FC3C0 = v1;
  *algn_27E1FC3C8 = v2;
  return result;
}

uint64_t sub_23C68AD10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3D0);
  __swift_project_value_buffer(v0, qword_27E1FC3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C68B03C(a1, v5, a2, a3);
          break;
        case 2:
          sub_23C871154();
          break;
        case 1:
          sub_23C70C050();
          sub_23C8710A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C68B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (!*v3 || (sub_23C70C050(), result = sub_23C871254(), !v4))
  {
    if (*(v3 + 16))
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      sub_23C68B1D8(v3, v7, a2, a3);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C68B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68B440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C68B51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68B5BC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_23C8711F4();
}

uint64_t sub_23C68B628(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_23C871204();
}

uint64_t sub_23C68B6A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3E8);
  __swift_project_value_buffer(v0, qword_27E1FC3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23C875060;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Type_UNSPECIFIED";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Type_CHECKING";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Type_SAVINGS";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Type_BROKERAGE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Type_DEBIT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Type_CREDIT";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Type_PREPAID";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "Type_STORE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Type_APPLE_PAY";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C68BA88()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_27E1FC400 = v1;
  *algn_27E1FC408 = v2;
  return result;
}

uint64_t sub_23C68BB58()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC410);
  __swift_project_value_buffer(v0, qword_27E1FC410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_23C871264();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C68BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68C268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68C308(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_23C8711F4();
}

uint64_t sub_23C68C374(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_23C871204();
}

uint64_t sub_23C68C420()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6E6F737265502ELL, 0xE700000000000000);

  qword_27E1FC428 = v1;
  unk_27E1FC430 = v2;
  return result;
}

uint64_t sub_23C68C4EC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC438);
  __swift_project_value_buffer(v0, qword_27E1FC438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68CB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68CBAC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_23C8711F4();
}

uint64_t sub_23C68CC18(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_23C871204();
}

uint64_t sub_23C68CCC4()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x656C69462ELL, 0xE500000000000000);

  qword_27E1FC450 = v1;
  *algn_27E1FC458 = v2;
  return result;
}

uint64_t sub_23C68CD8C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC460);
  __swift_project_value_buffer(v0, qword_27E1FC460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

double sub_23C68D354@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a3 = xmmword_23C87D700;
  return result;
}

uint64_t sub_23C68D438(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA70, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68D4D8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_23C8711F4();
}

uint64_t sub_23C68D544(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_23C871204();
}

uint64_t sub_23C68D5F0()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](1886404910, 0xE400000000000000);

  qword_27E1FC478 = v1;
  unk_27E1FC480 = v2;
  return result;
}

uint64_t sub_23C68D6B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC488);
  __swift_project_value_buffer(v0, qword_27E1FC488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = v5[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_23C8712C4(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      a5(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C68DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68DD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA68, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68DE38(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_23C8711F4();
}

uint64_t sub_23C68DEA4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_23C871204();
}

uint64_t sub_23C68DF50()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_27E1FC4A0 = v1;
  *algn_27E1FC4A8 = v2;
  return result;
}

uint64_t sub_23C68E028()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4B0);
  __swift_project_value_buffer(v0, qword_27E1FC4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "second";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nanosecond";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekday";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "weekdayOrdinal";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "quarter";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weekOfMonth";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "weekOfYear";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "yearForWeekOfYear";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
          sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
          sub_23C8711A4();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
          sub_23C871154();
          break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
          sub_23C871104();
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C68E9B4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C69EF38(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, 2);
    sub_23C6B9E1C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C68EBC4(v3, a1, a2, a3);
    sub_23C68EC3C(v3, a1, a2, a3);
    sub_23C68ECB4(v3, a1, a2, a3);
    sub_23C68ED2C(v3, a1, a2, a3);
    sub_23C68EDA4(v3, a1, a2, a3);
    sub_23C68EE1C(v3, a1, a2, a3);
    sub_23C68EE94(v3, a1, a2, a3);
    sub_23C68EF0C(v3, a1, a2, a3);
    sub_23C68EF84(v3, a1, a2, a3);
    sub_23C68EFFC(v3, a1, a2, a3);
    sub_23C68F074(v3, a1, a2, a3);
    sub_23C68F0EC(v3, a1, a2, a3);
    sub_23C68F164(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C68E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE90, &unk_23C889CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FEE90, &unk_23C889CB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEE90, &unk_23C889CB0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_23C68EBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68ECB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 68) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 72) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 76) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C68F2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C68F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68F430(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_23C8711F4();
}

uint64_t sub_23C68F49C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_23C871204();
}

uint64_t sub_23C68F51C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4C8);
  __swift_project_value_buffer(v0, qword_27E1FC4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23C87D710;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GREGORIAN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BUDDHIST";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CHINESE";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "COPTIC";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ETHIOPIC_AMETE_MIHRET";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ETHIOPIC_AMETE_ALEM";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HEBREW";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ISO8601";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INDIAN";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ISLAMIC";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ISLAMIC_CIVIL";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "JAPANESE";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PERSIAN";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "REPUBLIC_OF_CHINA";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ISLAMIC_TABULAR";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ISLAMIC_UMM_AL_QURA";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C68FAE0()
{
  if (qword_27E1F8520 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC4A0;
  v2 = *algn_27E1FC4A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x61646E656C61432ELL, 0xE900000000000072);

  qword_27E1FC4E0 = v1;
  *algn_27E1FC4E8 = v2;
  return result;
}

uint64_t sub_23C68FBB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4F0);
  __swift_project_value_buffer(v0, qword_27E1FC4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "minimumDaysInFirstWeek";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C70C0A4();
          sub_23C8710A4();
        }

        else if (result == 2)
        {
          sub_23C871164();
        }
      }

      else if (result == 3)
      {
        sub_23C871154();
      }

      else if (result == 4 || result == 5)
      {
        sub_23C871114();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_23C70C0A4(), result = sub_23C871254(), !v4))
  {
    result = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 48))
      {
        result = sub_23C8712C4();
      }

      if (!v4)
      {
        if (*(v3 + 24))
        {
          sub_23C871294();
        }

        if (*(v3 + 32))
        {
          sub_23C871294();
        }

        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C690120@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6901B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA58, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C690258(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_23C8711F4();
}

uint64_t sub_23C6902C4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_23C871204();
}

uint64_t sub_23C690344()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AECD0);
  qword_27E1FC508 = 0xD000000000000012;
  unk_27E1FC510 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C6903E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC518);
  __swift_project_value_buffer(v0, qword_27E1FC518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69066C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        sub_23C871164();
        break;
      case 1:
        a4(a1, v9, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_23C690738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6907EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C6908F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    v14 = v6[1];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_23C8712C4();
    }

    a5(v6, a1, a2, a3);
    a6(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6909DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C690BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C690EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA50, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C690F58(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_23C8711F4();
}

uint64_t sub_23C690FC4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_23C871204();
}

uint64_t sub_23C691098()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC540);
  __swift_project_value_buffer(v0, qword_27E1FC540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "properties";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "hydratedAppEntity";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C691478(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C871164();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C69152C(a1, v5, a2, a3);
          break;
        case 4:
          sub_23C691624(a1, v5, a2, a3);
          break;
        case 5:
          type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
          sub_23C8710B4();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C691478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C69152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t sub_23C691624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C691890(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_23C8712C4();
    }

    if (*(v3[2] + 16))
    {
      sub_23C870EE4();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_23C716EF0(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_23C871214();
    }

    sub_23C691AAC(v3, a1, a2, a3);
    sub_23C691CC8(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C691890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C691AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C691CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_23C5ACFC8(*v6, *(v6 + 8));
    sub_23C871264();
    return sub_23C5AD0AC(v8, v7);
  }

  return result;
}

unint64_t sub_23C691DB4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  *&a2[a1[8]] = xmmword_23C879130;
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  result = sub_23C599478(MEMORY[0x277D84F90]);
  *(a2 + 2) = result;
  return result;
}

uint64_t sub_23C691EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA48, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C691F90(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return sub_23C8711F4();
}

uint64_t sub_23C691FFC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return sub_23C871204();
}

uint64_t sub_23C69207C()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AEC90);
  qword_27E1FC558 = 0xD000000000000012;
  unk_27E1FC560 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C692118()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC568);
  __swift_project_value_buffer(v0, qword_27E1FC568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C692418(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C692418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6925C8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6925C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C6928C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA40, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C692968(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return sub_23C8711F4();
}

uint64_t sub_23C6929D4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return sub_23C871204();
}

uint64_t sub_23C692AE8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC590);
  __swift_project_value_buffer(v0, qword_27E1FC590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C692D14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_23C871044();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        a4(a1, v7, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C692E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  return sub_23C8711A4();
}

uint64_t sub_23C692F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    a6(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C692FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE80, &qword_23C889A90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  sub_23C5855B0(a1 + *(Value + 20), v7, &qword_27E1FEE80, &qword_23C889A90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEE80, &qword_23C889A90);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoQuery);
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_23C6932B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA38, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C693358(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return sub_23C8711F4();
}

uint64_t sub_23C6933C4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return sub_23C871204();
}

uint64_t sub_23C693444()
{
  result = MEMORY[0x23EED7100](0xD000000000000016, 0x800000023C8AEC70);
  qword_27E1FC5A8 = 0xD000000000000012;
  unk_27E1FC5B0 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C6934D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC5B8);
  __swift_project_value_buffer(v0, qword_27E1FC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C693764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C693818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C693920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C693B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C693DA4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C693EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA30, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C693F68(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_23C8711F4();
}

uint64_t sub_23C693FD4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_23C871204();
}

uint64_t sub_23C694084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000012;
  *a5 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C694118()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC5E0);
  __swift_project_value_buffer(v0, qword_27E1FC5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "storage";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C69453C(a1, v5, a2, a3);
          break;
        case 2:
          sub_23C694488(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypeIdentifier(0);
          sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C694488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C69453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C573D90(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C694698(v3, a1, a2, a3);
    sub_23C6948B4(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C694698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6948B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE70, &unk_23C889CC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FEE70, &unk_23C889CC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEE70, &unk_23C889CC0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_23C694B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 20);
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C694C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA28, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C694D14(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return sub_23C8711F4();
}

uint64_t sub_23C694D80(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return sub_23C871204();
}

uint64_t sub_23C694E00()
{
  if (qword_27E1F8598 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC5D0;
  v2 = *algn_27E1FC5D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x656761726F74532ELL, 0xE800000000000000);

  qword_27E1FC5F8 = v1;
  unk_27E1FC600 = v2;
  return result;
}

uint64_t sub_23C694F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE68, &qword_23C889A80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E1FEE58, &qword_23C889A70);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E1FEE58, &qword_23C889A70);
    v26 = v40;
  }

  else
  {
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_23C716FA0(v18, v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_23C585C34(v23, &qword_27E1FEE68, &qword_23C889A80);
    v27 = v38;
    sub_23C716FA0(v16, v38, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    sub_23C716FA0(v27, v23, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E1FEE68, &qword_23C889A80);
  }

  sub_23C5855B0(v23, v39, &qword_27E1FEE68, &qword_23C889A80);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E1FEE68, &qword_23C889A80);
    return sub_23C585C34(v29, &qword_27E1FEE68, &qword_23C889A80);
  }

  else
  {
    v31 = v36;
    sub_23C716FA0(v29, v36, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E1FEE68, &qword_23C889A80);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E1FEE58, &qword_23C889A70);
    sub_23C716FA0(v31, v32, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C6954D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C695560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FEE58, &qword_23C889A70);
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEE58, &qword_23C889A70);
  }

  sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C871304();
  return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
}

uint64_t sub_23C69581C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6958BC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_23C8711F4();
}

uint64_t sub_23C695928(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_23C871204();
}

uint64_t sub_23C6959A8()
{
  if (qword_27E1F85A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC5F8;
  v2 = qword_27E1FC600;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AEC10);

  qword_27E1FC620 = v1;
  *algn_27E1FC628 = v2;
  return result;
}

uint64_t sub_23C695A78()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC630);
  __swift_project_value_buffer(v0, qword_27E1FC630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C695D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C695E3C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_23C8711F4();
}

uint64_t sub_23C695EA8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_23C871204();
}

uint64_t sub_23C695F70()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC648);
  __swift_project_value_buffer(v0, qword_27E1FC648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "collection";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "optionalVariant";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "union";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "restricted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "deferred";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C696F44(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C69732C(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C697714(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C696394(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C696774(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C696B5C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C696394(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeIdentifier);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
    return sub_23C585C34(v14, &qword_27E1FAB38, &unk_23C8791E0);
  }

  else
  {
    v22 = v28;
    sub_23C716FA0(v14, v28, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (v29 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeIdentifier);
    v25 = *v27;
    *v27 = v23;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C696774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeInstance);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v14, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeInstance);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C696B5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE38, &qword_23C889A50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE38, &qword_23C889A50);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE38, &qword_23C889A50);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE38, &qword_23C889A50);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE38, &qword_23C889A50);
    return sub_23C585C34(v14, &qword_27E1FEE38, &qword_23C889A50);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE38, &qword_23C889A50);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v25 = *v27;
    *v27 = v23 | 0x4000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C696F44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE40, &qword_23C889A58);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE40, &qword_23C889A58);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE40, &qword_23C889A58);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE40, &qword_23C889A58);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE40, &qword_23C889A58);
    return sub_23C585C34(v14, &qword_27E1FEE40, &qword_23C889A58);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Union);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE40, &qword_23C889A58);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v25 = *v27;
    *v27 = v23 | 0x6000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C69732C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE48, &qword_23C889A60);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE48, &qword_23C889A60);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE48, &qword_23C889A60);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE48, &qword_23C889A60);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE48, &qword_23C889A60);
    return sub_23C585C34(v14, &qword_27E1FEE48, &qword_23C889A60);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE48, &qword_23C889A60);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C697714(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE50, &qword_23C889A68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE50, &qword_23C889A68);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE50, &qword_23C889A68);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE50, &qword_23C889A68);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE50, &qword_23C889A68);
    return sub_23C585C34(v14, &qword_27E1FEE50, &qword_23C889A68);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE50, &qword_23C889A68);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v25 = *v27;
    *v27 = v23 | 0xA000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t ToolKitProtoTypeInstance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      result = sub_23C697FF0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else if (v6 == 4)
    {
      result = sub_23C698148(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C6982A0(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      result = sub_23C697D40(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for ToolKitProtoTypeInstance(0);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C697E98(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C697BF0(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C697BF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v7, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
    sub_23C871304();
    return sub_23C717008(v7, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

uint64_t sub_23C697D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C697E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C697FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C698148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6982A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6984F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA10, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C698598(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return sub_23C8711F4();
}

uint64_t sub_23C698604(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return sub_23C871204();
}

uint64_t sub_23C6986D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC670);
  __swift_project_value_buffer(v0, qword_27E1FC670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeInstance(0);
        sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C6989D4(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6989D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C698ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C698DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA08, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C698E68(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return sub_23C8711F4();
}

uint64_t sub_23C698ED4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return sub_23C871204();
}

uint64_t ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypeInstance(0), sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoTypeInstance.Union(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C69915C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6992B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA00, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C699354(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return sub_23C8711F4();
}

uint64_t sub_23C6993C0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return sub_23C871204();
}

uint64_t sub_23C699454(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C699554()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC6C0);
  __swift_project_value_buffer(v0, qword_27E1FC6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.Restricted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C699854(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoRestrictionContext(0);
        sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C699854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeInstance.Restricted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C699A04(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C699A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C699D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9F8, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C699DA4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return sub_23C8711F4();
}

uint64_t sub_23C699E10(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return sub_23C871204();
}

uint64_t sub_23C699EF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x800000023C8AD010;
  return result;
}

uint64_t sub_23C69A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_23C716EF0(a5, a6, a7);
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C69A214(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9F0, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69A2B4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return sub_23C8711F4();
}

uint64_t sub_23C69A320(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return sub_23C871204();
}

uint64_t sub_23C69A3BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC700);
  __swift_project_value_buffer(v0, qword_27E1FC700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "inSet";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "representableAs";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "personReachableAs";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dateExpressibleAs";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "textTypedWith";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C69A788(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C69AB68(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C69AF50(a1, v5, a2, a3);
          break;
        case 4:
          sub_23C69B01C(a1, v5, a2, a3);
          break;
        case 5:
          sub_23C69B0E8(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C69A788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE20, &qword_23C889A38);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_23C585C34(v16, &qword_27E1FEE20, &qword_23C889A38);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE20, &qword_23C889A38);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE20, &qword_23C889A38);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE20, &qword_23C889A38);
    return sub_23C585C34(v14, &qword_27E1FEE20, &qword_23C889A38);
  }

  else
  {
    v22 = v28;
    sub_23C716FA0(v14, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    if (v29 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE20, &qword_23C889A38);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v25 = *v27;
    *v27 = v23;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C69AB68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE28, &qword_23C889A40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE28, &qword_23C889A40);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE28, &qword_23C889A40);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE28, &qword_23C889A40);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE28, &qword_23C889A40);
    return sub_23C585C34(v14, &qword_27E1FEE28, &qword_23C889A40);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE28, &qword_23C889A40);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t sub_23C69B0E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE30, &qword_23C889A48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v16, &qword_27E1FEE30, &qword_23C889A48);
    v19 = swift_projectBox();
    sub_23C716F38(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C56F2D8(v18);
    sub_23C716FA0(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v17(v16, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
  v20 = v30;
  sub_23C8711A4();
  if (v20)
  {
    return sub_23C585C34(v16, &qword_27E1FEE30, &qword_23C889A48);
  }

  sub_23C5855B0(v16, v14, &qword_27E1FEE30, &qword_23C889A48);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_23C585C34(v16, &qword_27E1FEE30, &qword_23C889A48);
    return sub_23C585C34(v14, &qword_27E1FEE30, &qword_23C889A48);
  }

  else
  {
    v22 = v29;
    sub_23C716FA0(v14, v29, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    if (v28 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v16, &qword_27E1FEE30, &qword_23C889A48);
    v23 = swift_allocBox();
    sub_23C716FA0(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_23C56F2D8(v25);
  }
}

uint64_t ToolKitProtoRestrictionContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 <= 1)
  {
    if (v6)
    {
      result = sub_23C69B6FC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C69B5AC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 == 2)
  {
    result = sub_23C69B854(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  else if (v6 == 3)
  {
    result = sub_23C69B8E8(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C69B97C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C69B5AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
    sub_23C871304();
    return sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

uint64_t sub_23C69B6FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_23C69B854(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    sub_23C716E48();
    return sub_23C871254();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_23C69B8E8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    sub_23C716E9C();
    return sub_23C871254();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C69B97C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_23C716F38(v10, v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C871304();
    return sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C69BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9E8, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69BC74(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return sub_23C8711F4();
}

uint64_t sub_23C69BCE0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return sub_23C871204();
}

uint64_t sub_23C69BDC8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC718);
  __swift_project_value_buffer(v0, qword_27E1FC718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "PersonReachableAs_UNSPECIFIED";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PersonReachableAs_CONTACT";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PersonReachableAs_PHONE";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PersonReachableAs_EMAIL";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "PersonReachableAs_EMAILORPHONE";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C69C0B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC730);
  __swift_project_value_buffer(v0, qword_27E1FC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAs_DATE";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAs_TIME";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAs_DATE_AND_TIME";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69C3A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC758);
  __swift_project_value_buffer(v0, qword_27E1FC758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
        sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C69C6A0(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C69C6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_23C8711A4();
}

uint64_t sub_23C69C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE00, &qword_23C889A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FEE00, &qword_23C889A28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEE00, &qword_23C889A28);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_23C69C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FEDF0, &unk_23C889C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEDF0, &unk_23C889C60);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_23C69CC4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C69CD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9E0, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69CE0C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return sub_23C8711F4();
}

uint64_t sub_23C69CE78(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return sub_23C871204();
}

uint64_t sub_23C69CEF8()
{
  if (qword_27E1F8628 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC748;
  v2 = qword_27E1FC750;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x655365756C61562ELL, 0xE900000000000074);

  qword_27E1FC770 = v1;
  *algn_27E1FC778 = v2;
  return result;
}

uint64_t sub_23C69CFC8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC780);
  __swift_project_value_buffer(v0, qword_27E1FC780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C69DF7C(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C69E538(a1, v5, a2, a3);
          break;
        case 6:
          sub_23C69E72C(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
          sub_23C871154();
          break;
        case 2:
          sub_23C69D410(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C69D9C0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C69D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDD8, &qword_23C889A08);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD678, &unk_23C889CD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD678, &unk_23C889CD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEDD8, &qword_23C889A08);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDD8, &qword_23C889A08);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDD8, &qword_23C889A08);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDD8, &qword_23C889A08);
    return sub_23C585C34(v32, &qword_27E1FEDD8, &qword_23C889A08);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDD8, &qword_23C889A08);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C69D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE0, &qword_23C889A10);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD678, &unk_23C889CD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD678, &unk_23C889CD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEDE0, &qword_23C889A10);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDE0, &qword_23C889A10);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDE0, &qword_23C889A10);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDE0, &qword_23C889A10);
    return sub_23C585C34(v32, &qword_27E1FEDE0, &qword_23C889A10);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDE0, &qword_23C889A10);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C69DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE8, &qword_23C889A18);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD678, &unk_23C889CD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD678, &unk_23C889CD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDE8, &qword_23C889A18);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
    return sub_23C585C34(v32, &qword_27E1FEDE8, &qword_23C889A18);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C69E538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0;
  result = sub_23C871154();
  if (v4)
  {
  }

  if (v17)
  {
    v18 = v17;
    v15 = v16;
    sub_23C5855B0(a2, v8, &qword_27E1FD678, &unk_23C889CD0);
    v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_23C585C34(v8, &qword_27E1FD678, &unk_23C889CD0);
    if (v12 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(a2, &qword_27E1FD678, &unk_23C889CD0);
    v13 = v18;
    *a2 = v15;
    a2[1] = v13;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_23C69E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE8, &qword_23C889A18);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD678, &unk_23C889CD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD678, &unk_23C889CD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDE8, &qword_23C889A18);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
    return sub_23C585C34(v32, &qword_27E1FEDE8, &qword_23C889A18);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDE8, &qword_23C889A18);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_23C69EF38(v3, a1, a2, a3, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, 1);
  if (!v4)
  {
    sub_23C5855B0(v3, v10, &qword_27E1FD678, &unk_23C889CD0);
    v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_23C69F1F0(v3, a1, a2, a3);
        }

        else
        {
          sub_23C69EFBC(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_23C69F428(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          sub_23C69F660(v3, a1, a2, a3);
          goto LABEL_13;
        }

        sub_23C69F7D8(v3, a1, a2, a3);
      }

      sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

LABEL_13:
    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C69EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C69EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD678, &unk_23C889CD0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD678, &unk_23C889CD0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD678, &unk_23C889CD0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD678, &unk_23C889CD0);
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD678, &unk_23C889CD0);
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69FA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C69FB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9D8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69FBCC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_23C8711F4();
}

uint64_t sub_23C69FC38(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_23C871204();
}

uint64_t sub_23C69FCB8()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AE960);

  qword_27E1FC798 = v1;
  unk_27E1FC7A0 = v2;
  return result;
}

uint64_t sub_23C69FD88()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7A8);
  __swift_project_value_buffer(v0, qword_27E1FC7A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69FFD4(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6A0144(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9D0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A01E4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C6A0250(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_23C871204();
}

uint64_t sub_23C6A02CC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6A03A8()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD00000000000001ELL, 0x800000023C8AE930);

  qword_27E1FC7C0 = v1;
  *algn_27E1FC7C8 = v2;
  return result;
}

uint64_t sub_23C6A0478()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7D0);
  __swift_project_value_buffer(v0, qword_27E1FC7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C6A0708(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6A0708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6A0868(v3, a1, a2, a3);
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
      sub_23C8712C4();
    }

    type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6A0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FED60, &qword_23C889998);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6A0B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9C8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A0BE0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_23C8711F4();
}

uint64_t sub_23C6A0C4C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_23C871204();
}

uint64_t sub_23C6A0CCC()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_27E1FC7E8 = v1;
  unk_27E1FC7F0 = v2;
  return result;
}

uint64_t sub_23C6A0D9C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7F8);
  __swift_project_value_buffer(v0, qword_27E1FC7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      sub_23C871164();
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

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_23C8712C4(), !v4))
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6A11B8@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6A124C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9C0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A12EC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C6A1358(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_23C871204();
}

uint64_t sub_23C6A13D8()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AE8E0);
  qword_27E1FC810 = 0xD00000000000001ALL;
  *algn_27E1FC818 = 0x800000023C8AD030;
  return result;
}

uint64_t sub_23C6A15AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9B8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A164C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_23C8711F4();
}

uint64_t sub_23C6A16B8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_23C871204();
}

uint64_t sub_23C6A1764(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000023C8AD030;
  return result;
}

uint64_t sub_23C6A17F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC848);
  __swift_project_value_buffer(v0, qword_27E1FC848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "multiline_allowed";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
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
            sub_23C70C0F8();
            break;
          case 5:
            v6 = v3;
            sub_23C70C14C();
            break;
          case 6:
            v6 = v3;
            sub_23C70C1A0();
            break;
          default:
            goto LABEL_5;
        }

        v3 = v6;
        sub_23C8710A4();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_23C871084();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (v5 = sub_23C871244(), !v4))
  {
    if (v3[1] != 1 || (v5 = sub_23C871244(), !v4))
    {
      if (v3[2] != 1 || (v5 = sub_23C871244(), !v4))
      {
        v6 = v4;
        if (v3[3])
        {
          sub_23C70C0F8();
          v5 = sub_23C871254();
          if (v4)
          {
            return v5;
          }

          v6 = 0;
        }

        if (v3[4])
        {
          sub_23C70C14C();
          v7 = v6;
          v5 = sub_23C871254();
          if (v6)
          {
            return v5;
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
            return sub_23C870F14();
          }
        }

        sub_23C70C1A0();
        v5 = sub_23C871254();
        if (v7)
        {
          return v5;
        }

        goto LABEL_16;
      }
    }
  }

  return v5;
}

uint64_t sub_23C6A1E2C@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a2 + 4) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_23C6A1EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A1F58(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_23C8711F4();
}

uint64_t sub_23C6A1FC4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_23C871204();
}

uint64_t sub_23C6A2044()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC860);
  __swift_project_value_buffer(v0, qword_27E1FC860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C6A22B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC878);
  __swift_project_value_buffer(v0, qword_27E1FC878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875580;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}