uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV0def5ValueJ4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v49 = (&v49 - v5);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v12 = MEMORY[0x28223BE20](v11);
  v51 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v49 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v49 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v49 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4B8, &qword_20E34A138);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v49 - v27;
  v29 = (&v49 + *(v26 + 56) - v27);
  sub_20E24F914(v53, &v49 - v27, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E24F914(v54, v29, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v52;
    if (EnumCaseMultiPayload)
    {
      sub_20E24F914(v28, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E24F8AC(v29, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v39 = v28;
        V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(v22, v36);
        v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
        sub_20E24F84C(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v42 = v22;
        goto LABEL_20;
      }

      v37 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    }

    else
    {
      v22 = v24;
      sub_20E24F914(v28, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        v31 = v28;
        sub_20E24F8AC(v29, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        if ((*v22 != *v10 || v22[1] != v10[1]) && (sub_20E322D60() & 1) == 0 || (v22[2] != v10[2] || v22[3] != v10[3]) && (sub_20E322D60() & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          sub_20E24F84C(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
          sub_20E24F84C(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_40:
          sub_20E24F84C(v31, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          goto LABEL_29;
        }

        sub_20E24F84C(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        sub_20E24F84C(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_42:
        sub_20E24F84C(v31, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
        V2eeoiySbAI_AItFZ_0 = 1;
        return V2eeoiySbAI_AItFZ_0 & 1;
      }

      v37 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration;
    }

    v46 = v37;
    v47 = v22;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E24F914(v28, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v46 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
      v47 = v19;
LABEL_27:
      sub_20E24F84C(v47, v46);
      goto LABEL_28;
    }

    v38 = v49;
    sub_20E24F8AC(v29, v49, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v39 = v28;
    V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(v19, v38);
    v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    sub_20E24F84C(v38, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v42 = v19;
LABEL_20:
    v45 = v41;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = v28;
    sub_20E24F914(v28, v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v33 = *v16;
    v32 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v33 != *v29 || v32 != v29[1])
      {
        v35 = sub_20E322D60();

        if (v35)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v28 = v31;
LABEL_28:
    sub_20E04875C(v28, &qword_27C86A4B8, &qword_20E34A138);
LABEL_29:
    V2eeoiySbAI_AItFZ_0 = 0;
    return V2eeoiySbAI_AItFZ_0 & 1;
  }

  v43 = v51;
  sub_20E24F914(v28, v51, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v46 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    v47 = v43;
    goto LABEL_27;
  }

  v44 = v50;
  sub_20E24F8AC(v29, v50, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v39 = v28;
  V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(v43, v44);
  sub_20E24F84C(v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v42 = v43;
  v45 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
LABEL_21:
  sub_20E24F84C(v42, v45);
  sub_20E24F84C(v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  return V2eeoiySbAI_AItFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v34 - v14);
  v16 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = v22 >> 61;
  if ((v22 >> 61) <= 1)
  {
    if (v24)
    {
      if (v23 >> 61 == 1)
      {
        v30 = swift_projectBox();
        v31 = swift_projectBox();
        sub_20E24F914(v30, v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        sub_20E24F914(v31, v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        if (sub_20E1494E0(*v15, *v13))
        {
          sub_20E3221C0();
          sub_20E1EF2E8();

          v32 = sub_20E322850();
          sub_20E24F84C(v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_20E24F84C(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

          if (v32)
          {
            v27 = 1;
            return v27 & 1;
          }
        }

        else
        {

          sub_20E24F84C(v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_20E24F84C(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        }
      }
    }

    else if (!(v23 >> 61))
    {
      v25 = swift_projectBox();
      v26 = swift_projectBox();
      sub_20E24F914(v25, v21, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_20E24F914(v26, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

      v27 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(v21, v19);
      sub_20E24F84C(v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_20E24F84C(v21, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
LABEL_13:

      return v27 & 1;
    }

LABEL_19:
    v27 = 0;
    return v27 & 1;
  }

  if (v24 != 2)
  {
    if (v24 == 3)
    {
      if (v23 >> 61 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v23 >> 61 == 4)
    {
      v28 = swift_projectBox();
      v29 = swift_projectBox();
      sub_20E24F914(v28, v9, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_20E24F914(v29, v7, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

      v27 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(v9, v7);
      sub_20E24F84C(v7, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_20E24F84C(v9, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v23 >> 61 != 2)
  {
    goto LABEL_19;
  }

LABEL_10:
  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return v27 & 1;
}

BOOL _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V0deF11StorageKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4C0, &qword_20E34A140);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_20E24F914(a1, &v18 - v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E24F914(a2, &v13[v14], type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E24F8AC(v13, v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E24F8AC(&v13[v14], v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v16 = 0;
  if (sub_20E15F7B0(*v9, v9[1], *v7, v7[1]))
  {
    v15 = v9[2] == v7[2] && v9[3] == v7[3];
    if (v15 || (sub_20E322D60() & 1) != 0)
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v16 = 1;
      }
    }
  }

  sub_20E24F84C(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E24F84C(v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  return v16;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF12SubtitleKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x28223BE20](v28);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A460, &qword_20E34A0E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_20E24F914(a1, &v27 - v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E24F914(a2, &v17[v18], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v17, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v17[v18], v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v19 = *v11 == *v5 && v11[1] == v5[1];
      if (v19 || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
          sub_20E24F84C(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
          v21 = v11;
LABEL_17:
          sub_20E24F84C(v21, v20);
          sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
          return 1;
        }
      }

      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
      sub_20E24F84C(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v26 = v11;
LABEL_20:
      sub_20E24F84C(v26, v25);
      sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      return 0;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
    v23 = v11;
  }

  else
  {
    sub_20E24F914(v17, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v17[v18], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v13, *(v13 + 1), *v7, *(v7 + 1)))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          v21 = v13;
          goto LABEL_17;
        }
      }

      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v26 = v13;
      goto LABEL_20;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v23 = v13;
  }

  sub_20E24F84C(v23, v22);
  sub_20E04875C(v17, &qword_27C86A460, &qword_20E34A0E0);
  return 0;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV0deF16AnyPredicateKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x28223BE20](valid - 8);
  v75 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x28223BE20](v66);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x28223BE20](v69);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x28223BE20](v68);
  v72 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x28223BE20](v65);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v78 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v77 = &v65 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v65 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v65 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = (&v65 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A498, &qword_20E34A118);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v65 - v38;
  v40 = *(v37 + 56);
  sub_20E24F914(v79, &v65 - v38, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E24F914(v80, &v39[v40], type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v51 = v78;
        sub_20E24F914(v39, v78, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v52 = v76;
          sub_20E24F8AC(&v39[v40], v76, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          if (sub_20E15F7B0(*v51, *(v51 + 8), *v52, *(v52 + 8)))
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v53 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_35:
              v49 = v53;
              sub_20E24F84C(v52, v53);
              v50 = v51;
              goto LABEL_36;
            }
          }

          v63 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_55:
          v59 = v63;
          sub_20E24F84C(v52, v63);
          v60 = v51;
          goto LABEL_56;
        }

        v58 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_47:
        v42 = v58;
        v43 = v51;
        goto LABEL_49;
      }

      sub_20E24F914(v39, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v42 = type metadata accessor for ToolKitProtoValidPredicate;
        v43 = v17;
        goto LABEL_49;
      }

      v56 = v75;
      sub_20E24F8AC(&v39[v40], v75, type metadata accessor for ToolKitProtoValidPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v45 = sub_20E322850();
      v46 = type metadata accessor for ToolKitProtoValidPredicate;
      sub_20E24F84C(v56, type metadata accessor for ToolKitProtoValidPredicate);
      v47 = v17;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E24F914(v39, v25, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v42 = type metadata accessor for ToolKitProtoAllPredicate;
        v43 = v25;
        goto LABEL_49;
      }

      v44 = v71;
      sub_20E24F8AC(&v39[v40], v71, type metadata accessor for ToolKitProtoAllPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v45 = sub_20E322850();
      v46 = type metadata accessor for ToolKitProtoAllPredicate;
      sub_20E24F84C(v44, type metadata accessor for ToolKitProtoAllPredicate);
      v47 = v25;
    }

    else
    {
      sub_20E24F914(v39, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v42 = type metadata accessor for ToolKitProtoSuggestedPredicate;
        v43 = v22;
        goto LABEL_49;
      }

      v55 = v73;
      sub_20E24F8AC(&v39[v40], v73, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v45 = sub_20E322850();
      v46 = type metadata accessor for ToolKitProtoSuggestedPredicate;
      sub_20E24F84C(v55, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v47 = v22;
    }

    v57 = v46;
LABEL_40:
    sub_20E24F84C(v47, v57);
    sub_20E24F84C(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E24F914(v39, v35, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v42 = type metadata accessor for ToolKitProtoComparisonPredicate;
        v43 = v35;
LABEL_49:
        sub_20E24F84C(v43, v42);
        sub_20E04875C(v39, &qword_27C86A498, &qword_20E34A118);
LABEL_57:
        v45 = 0;
        return v45 & 1;
      }

      v61 = &v39[v40];
      v62 = v67;
      sub_20E24F8AC(v61, v67, type metadata accessor for ToolKitProtoComparisonPredicate);
      v45 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(v35, v62);
      sub_20E24F84C(v62, type metadata accessor for ToolKitProtoComparisonPredicate);
      v47 = v35;
      v57 = type metadata accessor for ToolKitProtoComparisonPredicate;
      goto LABEL_40;
    }

    sub_20E24F914(v39, v33, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v42 = type metadata accessor for ToolKitProtoCompoundPredicate;
      v43 = v33;
      goto LABEL_49;
    }

    v54 = v70;
    sub_20E24F8AC(&v39[v40], v70, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (*v33 == *v54 && (sub_20E154DAC(*(v33 + 1), *(v54 + 1)) & 1) != 0)
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v49 = type metadata accessor for ToolKitProtoCompoundPredicate;
        sub_20E24F84C(v54, type metadata accessor for ToolKitProtoCompoundPredicate);
        v50 = v33;
        goto LABEL_36;
      }
    }

    v59 = type metadata accessor for ToolKitProtoCompoundPredicate;
    sub_20E24F84C(v54, type metadata accessor for ToolKitProtoCompoundPredicate);
    v60 = v33;
LABEL_56:
    sub_20E24F84C(v60, v59);
    sub_20E24F84C(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v51 = v77;
    sub_20E24F914(v39, v77, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v52 = v74;
      sub_20E24F8AC(&v39[v40], v74, type metadata accessor for ToolKitProtoIdSearchPredicate);
      if (*v51 == *v52 && *(v51 + 8) == *(v52 + 8) || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v53 = type metadata accessor for ToolKitProtoIdSearchPredicate;
          goto LABEL_35;
        }
      }

      v63 = type metadata accessor for ToolKitProtoIdSearchPredicate;
      goto LABEL_55;
    }

    v58 = type metadata accessor for ToolKitProtoIdSearchPredicate;
    goto LABEL_47;
  }

  sub_20E24F914(v39, v30, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v42 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    v43 = v30;
    goto LABEL_49;
  }

  v48 = v72;
  sub_20E24F8AC(&v39[v40], v72, type metadata accessor for ToolKitProtoStringSearchPredicate);
  if ((*v30 != *v48 || v30[1] != v48[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
  {
    v59 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    sub_20E24F84C(v48, type metadata accessor for ToolKitProtoStringSearchPredicate);
    v60 = v30;
    goto LABEL_56;
  }

  v49 = type metadata accessor for ToolKitProtoStringSearchPredicate;
  sub_20E24F84C(v48, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v50 = v30;
LABEL_36:
  sub_20E24F84C(v50, v49);
  sub_20E24F84C(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v45 = 1;
  return v45 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD12ProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  v81 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x28223BE20](v81);
  v89 = (&v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x28223BE20](v80);
  v87 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x28223BE20](v77);
  v88 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x28223BE20](v79);
  v84 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x28223BE20](v76);
  v83 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x28223BE20](v75);
  v82 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x28223BE20](v74);
  v78 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v92 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v74 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v90 = (&v74 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v91 = (&v74 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v74 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v74 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v74 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v74 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A478, &qword_20E34A0F8);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v74 - v39;
  v41 = *(v38 + 56);
  sub_20E24F914(v93, &v74 - v39, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v93 = v41;
  sub_20E24F914(v94, &v40[v41], type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v40, v34, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v60 = v93;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
        v44 = v34;
        goto LABEL_159;
      }

      v61 = v82;
      sub_20E24F8AC(&v40[v60], v82, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      if (sub_20E1494E0(*v34, *v61))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
          sub_20E24F84C(v61, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
          v52 = v34;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
      sub_20E24F84C(v61, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v69 = v34;
      goto LABEL_172;
    case 2u:
      sub_20E24F914(v40, v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v49 = v93;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
        v44 = v31;
        goto LABEL_159;
      }

      v50 = v83;
      sub_20E24F8AC(&v40[v49], v83, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      if (sub_20E1494E0(*v31, *v50))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
          sub_20E24F84C(v50, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
          v52 = v31;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
      sub_20E24F84C(v50, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v69 = v31;
      goto LABEL_172;
    case 3u:
      sub_20E24F914(v40, v28, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v53 = v93;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
        v44 = v28;
        goto LABEL_159;
      }

      v54 = v84;
      sub_20E24F8AC(&v40[v53], v84, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      if (*v28 == *v54 && v28[1] == v54[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
          sub_20E24F84C(v54, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
          v52 = v28;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
      sub_20E24F84C(v54, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v69 = v28;
      goto LABEL_172;
    case 4u:
      v45 = v91;
      sub_20E24F914(v40, v91, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v46 = v93;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
        goto LABEL_158;
      }

      v47 = v88;
      sub_20E24F8AC(&v40[v46], v88, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_20E322D60()) && (v45[2] == v47[2] && v45[3] == v47[3] || (sub_20E322D60()))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
          goto LABEL_110;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
      goto LABEL_171;
    case 5u:
      v45 = v90;
      sub_20E24F914(v40, v90, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v62 = v93;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
        goto LABEL_158;
      }

      v47 = v87;
      sub_20E24F8AC(&v40[v62], v87, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
          goto LABEL_110;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
      goto LABEL_171;
    case 6u:
      sub_20E24F914(v40, v21, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v63 = v93;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v64 = v85;
        sub_20E24F8AC(&v40[v63], v85, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v57 = _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(v21, v64);
        v58 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
        sub_20E24F84C(v64, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v59 = v21;
        goto LABEL_99;
      }

      v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
      v44 = v21;
      goto LABEL_159;
    case 7u:
      sub_20E24F914(v40, v18, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v55 = v93;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
        v44 = v18;
        goto LABEL_159;
      }

      v56 = v86;
      sub_20E24F8AC(&v40[v55], v86, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v57 = _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(v18, v56);
      v58 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
      sub_20E24F84C(v56, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v59 = v18;
LABEL_99:
      sub_20E24F84C(v59, v58);
      sub_20E24F84C(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      return v57 & 1;
    case 8u:
      v45 = v92;
      sub_20E24F914(v40, v92, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v65 = v93;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_158:
        v43 = v66;
        v44 = v45;
        goto LABEL_159;
      }

      v47 = v89;
      sub_20E24F8AC(&v40[v65], v89, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_110:
          v51 = v48;
          sub_20E24F84C(v47, v48);
          v52 = v45;
LABEL_111:
          sub_20E24F84C(v52, v51);
          goto LABEL_149;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_171:
      v68 = v71;
      sub_20E24F84C(v47, v71);
      v69 = v45;
LABEL_172:
      v72 = v68;
      goto LABEL_173;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x30u:
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x31u:
      if (swift_getEnumCaseMultiPayload() != 49)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x32u:
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x33u:
      if (swift_getEnumCaseMultiPayload() == 51)
      {
        goto LABEL_149;
      }

      goto LABEL_160;
    case 0x34u:
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x35u:
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x36u:
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x37u:
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x38u:
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() != 60)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    default:
      sub_20E24F914(v40, v36, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v42 = v93;
      if (swift_getEnumCaseMultiPayload())
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v44 = v36;
LABEL_159:
        sub_20E24F84C(v44, v43);
LABEL_160:
        sub_20E04875C(v40, &qword_27C86A478, &qword_20E34A0F8);
LABEL_161:
        v57 = 0;
        return v57 & 1;
      }

      v70 = v78;
      sub_20E24F8AC(&v40[v42], v78, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if (*v36 != *v70)
      {
        sub_20E24F84C(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        goto LABEL_176;
      }

      sub_20E3221C0();
      sub_20E1EF2E8();
      v73 = sub_20E322850();
      sub_20E24F84C(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if ((v73 & 1) == 0)
      {
LABEL_176:
        v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v69 = v36;
LABEL_173:
        sub_20E24F84C(v69, v72);
        sub_20E24F84C(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        goto LABEL_161;
      }

      sub_20E24F84C(v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
LABEL_149:
      sub_20E24F84C(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v57 = 1;
      return v57 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV0deF12Version1KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v41 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v41 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4D0, &qword_20E34A150);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v41 - v26;
  v28 = *(v25 + 56);
  sub_20E24F914(v43, &v41 - v26, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E24F914(v44, &v27[v28], type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E24F914(v27, v18, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v41;
      sub_20E24F8AC(v32, v41, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(v18, v33);
      v35 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
      sub_20E24F84C(v33, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v36 = v18;
    }

    else
    {
      sub_20E24F914(v27, v15, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
        v31 = v15;
        goto LABEL_15;
      }

      v38 = &v27[v28];
      v39 = v42;
      sub_20E24F8AC(v38, v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(v15, v39);
      v35 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
      sub_20E24F84C(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v36 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E24F914(v27, v21, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
      v31 = v21;
      goto LABEL_15;
    }

    sub_20E24F8AC(&v27[v28], v8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(v21, v8);
    sub_20E24F84C(v8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    v36 = v21;
    v37 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
LABEL_18:
    sub_20E24F84C(v36, v37);
    sub_20E24F84C(v27, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    return V2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_20E24F914(v27, v23, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E24F8AC(&v27[v28], v11, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    V2eeoiySbAG_AGtFZ_0 = static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)(v23, v11);
    v35 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    sub_20E24F84C(v11, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    v36 = v23;
LABEL_17:
    v37 = v35;
    goto LABEL_18;
  }

  v30 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
  v31 = v23;
LABEL_15:
  sub_20E24F84C(v31, v30);
  sub_20E04875C(v27, &qword_27C86A4D0, &qword_20E34A150);
  V2eeoiySbAG_AGtFZ_0 = 0;
  return V2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  MEMORY[0x28223BE20](v27);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4E0, &unk_20E34A160);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_20E24F914(a1, &v26 - v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E24F914(a2, &v18[v19], type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v18, v14, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v18[v19], v8, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v22 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(v14, v8);
      sub_20E24F84C(v8, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E24F84C(v14, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E24F84C(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      return v22 & 1;
    }

    v23 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    v24 = v14;
    goto LABEL_18;
  }

  sub_20E24F914(v18, v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
    v24 = v12;
LABEL_18:
    sub_20E24F84C(v24, v23);
    sub_20E04875C(v18, &qword_27C86A4E0, &unk_20E34A160);
LABEL_21:
    v22 = 0;
    return v22 & 1;
  }

  sub_20E24F8AC(&v18[v19], v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v20 = *v12 == *v5 && v12[1] == v5[1];
  if (!v20 && (sub_20E322D60() & 1) == 0 || (v12[2] == v5[2] ? (v21 = v12[3] == v5[3]) : (v21 = 0), !v21 && (sub_20E322D60() & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0)))
  {
    sub_20E24F84C(v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E24F84C(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E24F84C(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    goto LABEL_21;
  }

  sub_20E24F84C(v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_20E24F84C(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_20E24F84C(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v66 = (&v62 - v7);
  v8 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v62 - v11);
  v13 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v14 = MEMORY[0x28223BE20](v13);
  v64 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v65 = (&v62 - v16);
  v17 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = (&v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = (&v62 - v27);
  v29 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v35 = *a2;
  v36 = *a1 >> 61;
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      if (v35 >> 61 == 3)
      {
        v49 = swift_projectBox();
        v50 = swift_projectBox();
        v51 = v65;
        sub_20E24F914(v49, v65, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v52 = v64;
        sub_20E24F914(v50, v64, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v53 = *v51;
        v54 = *v52;

        if (sub_20E1571C4(v53, v54) & 1) != 0 && (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850()))
        {
          sub_20E24F84C(v52, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_20E24F84C(v51, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v39 = 1;
        }

        else
        {
          sub_20E24F84C(v52, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_20E24F84C(v51, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v39 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v36 != 4)
    {
      if (v35 >> 61 == 5)
      {
        v58 = swift_projectBox();
        v59 = swift_projectBox();
        v28 = v66;
        sub_20E24F914(v58, v66, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
        v60 = v59;
        v26 = v67;
        sub_20E24F914(v60, v67, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

        v39 = _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(v28, v26);
        v40 = type metadata accessor for ToolKitProtoTypeInstance.Deferred;
        goto LABEL_20;
      }

LABEL_24:
      v39 = 0;
      return v39 & 1;
    }

    if (v35 >> 61 != 4)
    {
      goto LABEL_24;
    }

    v41 = swift_projectBox();
    v42 = swift_projectBox();
    sub_20E24F914(v41, v12, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v43 = v42;
    v44 = v63;
    sub_20E24F914(v43, v63, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

    v39 = sub_20E2E5408(v12, v44);
    v45 = type metadata accessor for ToolKitProtoTypeInstance.Restricted;
    sub_20E24F84C(v44, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v46 = v12;
LABEL_21:
    v57 = v45;
    goto LABEL_22;
  }

  if (!v36)
  {
    if (v35 >> 61)
    {
      goto LABEL_24;
    }

    v47 = swift_projectBox();
    v48 = swift_projectBox();
    sub_20E24F914(v47, v34, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E24F914(v48, v32, type metadata accessor for ToolKitProtoTypeIdentifier);

    v39 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v34, v32);
    v45 = type metadata accessor for ToolKitProtoTypeIdentifier;
    sub_20E24F84C(v32, type metadata accessor for ToolKitProtoTypeIdentifier);
    v46 = v34;
    goto LABEL_21;
  }

  if (v36 == 1)
  {
    if (v35 >> 61 == 1)
    {
      v37 = swift_projectBox();
      v38 = swift_projectBox();
      sub_20E24F914(v37, v28, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E24F914(v38, v26, type metadata accessor for ToolKitProtoTypeInstance);

      v39 = static ToolKitProtoTypeInstance.== infix(_:_:)(v28, v26);
      v40 = type metadata accessor for ToolKitProtoTypeInstance;
LABEL_20:
      v45 = v40;
      sub_20E24F84C(v26, v40);
      v46 = v28;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v35 >> 61 != 2)
  {
    goto LABEL_24;
  }

  v55 = swift_projectBox();
  v56 = swift_projectBox();
  sub_20E24F914(v55, v22, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  sub_20E24F914(v56, v20, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  v39 = _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(v22, v20);
  sub_20E24F84C(v20, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v46 = v22;
  v57 = type metadata accessor for ToolKitProtoTypeInstance.Optional;
LABEL_22:
  sub_20E24F84C(v46, v57);
LABEL_23:

  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV0def9PrimitiveH4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v143 = a1;
  v144 = a2;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  MEMORY[0x28223BE20](v2 - 8);
  v128 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  MEMORY[0x28223BE20](v118);
  v124 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20E322150();
  v141 = *(v17 - 8);
  v142 = v17;
  MEMORY[0x28223BE20](v17);
  v120 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  MEMORY[0x28223BE20](v19 - 8);
  v119 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v22 = MEMORY[0x28223BE20](v21);
  v139 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v134 = (&v118 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v118 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v137 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v136 = &v118 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v135 = &v118 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v133 = &v118 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v132 = &v118 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v140 = &v118 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v130 = (&v118 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = (&v118 - v43);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (&v118 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v131 = &v118 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = (&v118 - v51);
  v53 = MEMORY[0x28223BE20](v50);
  v129 = &v118 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = (&v118 - v56);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = (&v118 - v59);
  MEMORY[0x28223BE20](v58);
  v62 = &v118 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4C8, &qword_20E34A148);
  v64 = MEMORY[0x28223BE20](v63 - 8);
  v66 = &v118 - v65;
  v67 = &v118 + *(v64 + 56) - v65;
  sub_20E24F914(v143, &v118 - v65, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v68 = v144;
  v144 = v67;
  sub_20E24F914(v68, v67, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v66, v60, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v98 = v144;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_68;
      }

      v95 = *v60 == *v98;
      goto LABEL_34;
    case 2u:
      sub_20E24F914(v66, v57, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v94 = v144;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_68;
      }

      v95 = *v57 == *v94;
LABEL_34:
      v71 = v95;
      goto LABEL_51;
    case 3u:
      v81 = v129;
      sub_20E24F914(v66, v129, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v97 = v144;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v83 = v119;
        sub_20E24F8AC(v97, v119, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        v71 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
      goto LABEL_67;
    case 4u:
      sub_20E24F914(v66, v52, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v87 = *v52;
      v86 = v52[1];
      v88 = v144;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    case 5u:
      v100 = v131;
      sub_20E24F914(v66, v131, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v101 = v144;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v103 = v141;
        v102 = v142;
        v104 = v120;
        (*(v141 + 32))(v120, v101, v142);
        v71 = sub_20E322120();
        v105 = *(v103 + 8);
        v105(v104, v102);
        v105(v100, v102);
        goto LABEL_51;
      }

      (*(v141 + 8))(v100, v142);
      goto LABEL_68;
    case 6u:
      sub_20E24F914(v66, v47, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v108 = *v47;
      v107 = v47[1];
      v109 = v144;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v76 = v66;
        v110 = *v109;
        v111 = v109[1];
        v71 = sub_20E15F7B0(v108, v107, *v109, v111);
        sub_20E05E888(v110, v111);
        v79 = v108;
        v80 = v107;
        goto LABEL_45;
      }

      sub_20E05E888(v108, v107);
      goto LABEL_68;
    case 7u:
      sub_20E24F914(v66, v44, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v87 = *v44;
      v86 = v44[1];
      v88 = v144;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_31:

        goto LABEL_68;
      }

LABEL_11:
      v89 = *v88;
      v90 = v88[1];
      if (v87 == v89 && v86 == v90)
      {

        goto LABEL_60;
      }

      v116 = sub_20E322D60();

      if (v116)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    case 8u:
      v114 = v130;
      sub_20E24F914(v66, v130, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v73 = *v114;
      v74 = v114[1];
      v75 = v144;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_5;
    case 9u:
      v81 = v140;
      sub_20E24F914(v66, v140, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v92 = v144;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement;
        goto LABEL_67;
      }

      v93 = v124;
      sub_20E24F8AC(v92, v124, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      if (*v81 == *v93 && *(v81 + 8) == *(v93 + 8) || (sub_20E322D60()) && *(v81 + 16) == *(v93 + 16) && *(v81 + 24) == *(v93 + 24))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E24F84C(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
          sub_20E24F84C(v81, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_60:
          sub_20E24F84C(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
          v71 = 1;
          return v71 & 1;
        }
      }

      sub_20E24F84C(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_20E24F84C(v81, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_72:
      sub_20E24F84C(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      goto LABEL_69;
    case 0xAu:
      v81 = v132;
      sub_20E24F914(v66, v132, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v112 = v144;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v83 = v121;
        sub_20E24F8AC(v112, v121, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
        v71 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
      goto LABEL_67;
    case 0xBu:
      v81 = v133;
      sub_20E24F914(v66, v133, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = v144;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v83 = v122;
        sub_20E24F8AC(v85, v122, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
        v71 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
      goto LABEL_67;
    case 0xCu:
      v81 = v135;
      sub_20E24F914(v66, v135, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v91 = v144;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v83 = v123;
        sub_20E24F8AC(v91, v123, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
        v71 = sub_20E2E5800(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
      goto LABEL_67;
    case 0xDu:
      v81 = v136;
      sub_20E24F914(v66, v136, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v106 = v144;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v83 = v125;
        sub_20E24F8AC(v106, v125, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
        v71 = sub_20E2E5818(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
      goto LABEL_67;
    case 0xEu:
      v81 = v137;
      sub_20E24F914(v66, v137, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v82 = v144;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v83 = v126;
        sub_20E24F8AC(v82, v126, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        v71 = sub_20E2E5830(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
      goto LABEL_67;
    case 0xFu:
      v81 = v138;
      sub_20E24F914(v66, v138, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v96 = v144;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v83 = v127;
        sub_20E24F8AC(v96, v127, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        v71 = sub_20E2E5BCC(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
      goto LABEL_67;
    case 0x10u:
      v72 = v134;
      sub_20E24F914(v66, v134, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v73 = *v72;
      v74 = v72[1];
      v75 = v144;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_53:
        sub_20E05E888(v73, v74);
        goto LABEL_68;
      }

LABEL_5:
      v76 = v66;
      v77 = *v75;
      v78 = v75[1];
      v71 = sub_20E15F7B0(v73, v74, *v75, v78);
      sub_20E05E888(v77, v78);
      v79 = v73;
      v80 = v74;
LABEL_45:
      sub_20E05E888(v79, v80);
      sub_20E24F84C(v76, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      break;
    case 0x11u:
      v81 = v139;
      sub_20E24F914(v66, v139, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = v144;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v83 = v128;
        sub_20E24F8AC(v99, v128, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
        v71 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_50:
        v113 = v84;
        sub_20E24F84C(v83, v84);
        sub_20E24F84C(v81, v113);
LABEL_51:
        sub_20E24F84C(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      }

      else
      {
        v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_67:
        sub_20E24F84C(v81, v115);
LABEL_68:
        sub_20E04875C(v66, &qword_27C86A4C8, &qword_20E34A148);
LABEL_69:
        v71 = 0;
      }

      break;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    default:
      sub_20E24F914(v66, v62, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v69 = v144;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_68;
      }

      v70 = *v62 ^ *v69;
      sub_20E24F84C(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v71 = v70 ^ 1;
      return v71 & 1;
  }

  return v71 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v68 = a2;
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v67 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v66 = (&v63 - v6);
  v7 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v65 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v64 = (&v63 - v10);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v12 = MEMORY[0x28223BE20](Value - 8);
  v63 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v63 - v20);
  v22 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = (&v63 - v26);
  v28 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = (&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = (&v63 - v32);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v63 - v38;
  v40 = *v68;
  v41 = *a1 >> 61;
  if (v41 > 2)
  {
    if (v41 <= 4)
    {
      if (v41 == 3)
      {
        if (v40 >> 61 == 3)
        {
          v42 = swift_projectBox();
          v43 = swift_projectBox();
          sub_20E24F914(v42, v21, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_20E24F914(v43, v19, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

          H0V2eeoiySbAE_AEtFZ_0 = sub_20E2EA91C(v21, v19);
          v45 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue;
          sub_20E24F84C(v19, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          v46 = v21;
LABEL_22:
          v49 = v45;
          goto LABEL_23;
        }
      }

      else if (v40 >> 61 == 4)
      {
        v57 = swift_projectBox();
        v58 = swift_projectBox();
        sub_20E24F914(v57, v15, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v59 = v63;
        sub_20E24F914(v58, v63, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

        H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV05QueryH0V2eeoiySbAE_AEtFZ_0(v15, v59);
        v45 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
        sub_20E24F84C(v59, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v46 = v15;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v41 == 5)
    {
      if (v40 >> 61 != 5)
      {
        goto LABEL_24;
      }

      v50 = swift_projectBox();
      v51 = swift_projectBox();
      v27 = v64;
      sub_20E24F914(v50, v64, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
      v25 = v65;
      sub_20E24F914(v51, v65, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV016EntityIdentifierH0V2eeoiySbAE_AEtFZ_0(v27, v25);
      v52 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue;
    }

    else
    {
      if (v40 >> 61 != 6)
      {
        goto LABEL_24;
      }

      v60 = swift_projectBox();
      v61 = swift_projectBox();
      v27 = v66;
      sub_20E24F914(v60, v66, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
      v25 = v67;
      sub_20E24F914(v61, v67, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V2eeoiySbAE_AEtFZ_0(v27, v25);
      v52 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue;
    }

LABEL_21:
    v45 = v52;
    sub_20E24F84C(v25, v52);
    v46 = v27;
    goto LABEL_22;
  }

  if (!v41)
  {
    if (!(v40 >> 61))
    {
      v53 = swift_projectBox();
      v54 = swift_projectBox();
      sub_20E24F914(v53, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      sub_20E24F914(v54, v37, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V2eeoiySbAE_AEtFZ_0(v39, v37);
      v45 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
      sub_20E24F84C(v37, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      v46 = v39;
      goto LABEL_22;
    }

LABEL_24:
    H0V2eeoiySbAE_AEtFZ_0 = 0;
    return H0V2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (v41 != 1)
  {
    if (v40 >> 61 != 2)
    {
      goto LABEL_24;
    }

    v55 = swift_projectBox();
    v56 = swift_projectBox();
    sub_20E24F914(v55, v27, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E24F914(v56, v25, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

    H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV06EntityH0V2eeoiySbAE_AEtFZ_0(v27, v25);
    v52 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
    goto LABEL_21;
  }

  if (v40 >> 61 != 1)
  {
    goto LABEL_24;
  }

  v47 = swift_projectBox();
  v48 = swift_projectBox();
  sub_20E24F914(v47, v33, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  sub_20E24F914(v48, v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV011EnumerationH0V2eeoiySbAE_AEtFZ_0(v33, v31);
  sub_20E24F84C(v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v46 = v33;
  v49 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
LABEL_23:
  sub_20E24F84C(v46, v49);

  return H0V2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV0deF12RelationKindO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x28223BE20](DoesNotContain);
  v56 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x28223BE20](v49);
  v55 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x28223BE20](v46);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x28223BE20](v45);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x28223BE20](v48);
  v52 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x28223BE20](v47);
  v51 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v45 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v45 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v45 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A470, &qword_20E34A0F0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v45 - v28;
  v30 = *(v27 + 56);
  sub_20E24F914(v57, &v45 - v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E24F914(v58, &v29[v30], type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_20E24F914(v29, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          v33 = v20;
          goto LABEL_41;
        }

        v37 = v53;
        sub_20E24F8AC(&v29[v30], v53, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        if ((sub_20E1484A4(*v20, *v37) & 1) == 0 || v20[8] != *(v37 + 8) || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          sub_20E24F84C(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
          v42 = v20;
          goto LABEL_54;
        }

        v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
        sub_20E24F84C(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        v36 = v20;
      }

      else
      {
        sub_20E24F914(v29, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          v33 = v17;
          goto LABEL_41;
        }

        v40 = v54;
        sub_20E24F8AC(&v29[v30], v54, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        if ((sub_20E1484A4(*v17, *v40) & 1) == 0 || v17[8] != *(v40 + 8) || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          sub_20E24F84C(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
          v42 = v17;
          goto LABEL_54;
        }

        v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
        sub_20E24F84C(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        v36 = v17;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E24F914(v29, v25, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload())
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
          v33 = v25;
LABEL_41:
          sub_20E24F84C(v33, v32);
          goto LABEL_42;
        }

        v43 = v51;
        sub_20E24F8AC(&v29[v30], v51, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        if (sub_20E1484A4(*v25, *v43))
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
            sub_20E24F84C(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
            v36 = v25;
            goto LABEL_48;
          }
        }

        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
        sub_20E24F84C(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        v42 = v25;
LABEL_54:
        sub_20E24F84C(v42, v41);
        sub_20E24F84C(v29, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        return 0;
      }

      sub_20E24F914(v29, v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        v33 = v23;
        goto LABEL_41;
      }

      v38 = v52;
      sub_20E24F8AC(&v29[v30], v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      if ((sub_20E1484A4(*v23, *v38) & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        sub_20E24F84C(v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
        v42 = v23;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
      sub_20E24F84C(v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v36 = v23;
    }

LABEL_48:
    sub_20E24F84C(v36, v35);
LABEL_49:
    sub_20E24F84C(v29, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    return 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E24F914(v29, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        v33 = v14;
        goto LABEL_41;
      }

      v34 = v55;
      sub_20E24F8AC(&v29[v30], v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      if ((sub_20E1484A4(*v14, *v34) & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        sub_20E24F84C(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
        v42 = v14;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
      sub_20E24F84C(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v36 = v14;
    }

    else
    {
      sub_20E24F914(v29, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        v33 = v11;
        goto LABEL_41;
      }

      v39 = v56;
      sub_20E24F8AC(&v29[v30], v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      if ((sub_20E1484A4(*v11, *v39) & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        sub_20E24F84C(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
        v42 = v11;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
      sub_20E24F84C(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v36 = v11;
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_49;
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_49;
  }

LABEL_42:
  sub_20E04875C(v29, &qword_27C86A470, &qword_20E34A0F0);
  return 0;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0defD8IconKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A468, &qword_20E34A0E8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = (&v24 + *(v14 + 56) - v15);
  sub_20E24F914(a1, &v24 - v15, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E24F914(a2, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v16, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v20 = *v12;
    v19 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v20 == *v17 && v19 == v17[1])
      {
      }

      else
      {
        v22 = sub_20E322D60();

        if ((v22 & 1) == 0)
        {
          sub_20E24F84C(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
          goto LABEL_8;
        }
      }

      sub_20E24F84C(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v18 = 1;
      return v18 & 1;
    }

LABEL_7:
    sub_20E04875C(v16, &qword_27C86A468, &qword_20E34A0E8);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  sub_20E24F914(v16, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F84C(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    goto LABEL_7;
  }

  sub_20E24F8AC(v17, v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v18 = static ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)(v10, v6);
  sub_20E24F84C(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_20E24F84C(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_20E24F84C(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  return v18 & 1;
}

unint64_t sub_20E246D00()
{
  result = qword_27C869DA0;
  if (!qword_27C869DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DA0);
  }

  return result;
}

unint64_t sub_20E246D88()
{
  result = qword_27C869DB8;
  if (!qword_27C869DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DB8);
  }

  return result;
}

unint64_t sub_20E246E10()
{
  result = qword_27C869DD0;
  if (!qword_27C869DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DD0);
  }

  return result;
}

unint64_t sub_20E246E98()
{
  result = qword_27C869DE8;
  if (!qword_27C869DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DE8);
  }

  return result;
}

unint64_t sub_20E246F20()
{
  result = qword_27C869E00;
  if (!qword_27C869E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E00);
  }

  return result;
}

unint64_t sub_20E246FA8()
{
  result = qword_27C869E18;
  if (!qword_27C869E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E18);
  }

  return result;
}

unint64_t sub_20E247030()
{
  result = qword_27C869E30;
  if (!qword_27C869E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E30);
  }

  return result;
}

unint64_t sub_20E2470B8()
{
  result = qword_27C869E48;
  if (!qword_27C869E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E48);
  }

  return result;
}

unint64_t sub_20E247140()
{
  result = qword_27C869E60;
  if (!qword_27C869E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E60);
  }

  return result;
}

unint64_t sub_20E2471C8()
{
  result = qword_27C869E78;
  if (!qword_27C869E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E78);
  }

  return result;
}

unint64_t sub_20E247250()
{
  result = qword_27C869E90;
  if (!qword_27C869E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E90);
  }

  return result;
}

unint64_t sub_20E2472D8()
{
  result = qword_27C869EA8;
  if (!qword_27C869EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EA8);
  }

  return result;
}

unint64_t sub_20E247360()
{
  result = qword_27C869EC0;
  if (!qword_27C869EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EC0);
  }

  return result;
}

unint64_t sub_20E2473E8()
{
  result = qword_27C869ED8;
  if (!qword_27C869ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869ED8);
  }

  return result;
}

unint64_t sub_20E247470()
{
  result = qword_27C869EF0;
  if (!qword_27C869EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EF0);
  }

  return result;
}

unint64_t sub_20E2474F8()
{
  result = qword_27C869F08;
  if (!qword_27C869F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F08);
  }

  return result;
}

unint64_t sub_20E247580()
{
  result = qword_27C869F20;
  if (!qword_27C869F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F20);
  }

  return result;
}

unint64_t sub_20E247608()
{
  result = qword_27C869F38;
  if (!qword_27C869F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F38);
  }

  return result;
}

unint64_t sub_20E247690()
{
  result = qword_27C869F50;
  if (!qword_27C869F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F50);
  }

  return result;
}

unint64_t sub_20E247718()
{
  result = qword_27C869F68;
  if (!qword_27C869F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F68);
  }

  return result;
}

unint64_t sub_20E2477A0()
{
  result = qword_27C869F80;
  if (!qword_27C869F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F80);
  }

  return result;
}

unint64_t sub_20E247828()
{
  result = qword_27C869F98;
  if (!qword_27C869F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F98);
  }

  return result;
}

unint64_t sub_20E2478B0()
{
  result = qword_27C869FB0;
  if (!qword_27C869FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FB0);
  }

  return result;
}

unint64_t sub_20E247938()
{
  result = qword_27C869FC8;
  if (!qword_27C869FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FC8);
  }

  return result;
}

unint64_t sub_20E2479C0()
{
  result = qword_27C869FE0;
  if (!qword_27C869FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FE0);
  }

  return result;
}

void sub_20E247B00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E24E518(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 40;
  if (a2 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 40;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 40;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x17)
  {
    v8 = v7 - 22;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 40;
  if (a3 + 40 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xD8)
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20E247E38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x17)
  {
    return v1 - 22;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20E247E4C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 22;
  }

  return result;
}

void sub_20E247F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20E247FF8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_20E24814C(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E03FF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E03F68, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_20E24E518(319, &qword_280E03FF8, &type metadata for ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E03F78, type metadata accessor for ToolKitProtoCoercionDefinition, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_20E3221C0();
                  if (v9 <= 0x3F)
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
}

void sub_20E248478(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04000, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E03F68, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
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

void sub_20E2486B4(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DF08, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E2487D8(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E03F58, type metadata accessor for ToolKitProtoComparisonPredicate.Template, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E08CF8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E0C210, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E247F1C(319, &qword_280E0ED80, type metadata accessor for ToolKitProtoAllPredicate, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E0B1B8, type metadata accessor for ToolKitProtoSuggestedPredicate, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E247F1C(319, &qword_280E08030, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E247F1C(319, &qword_280E0DA20, type metadata accessor for ToolKitProtoValidPredicate, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_20E3221C0();
                  if (v9 <= 0x3F)
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
}

uint64_t sub_20E248A84(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_20E248C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_20E247F1C(319, a6, a7, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_20E3221C0();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E248DAC(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0F470, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E248EE0(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_268Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E24931C(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0F7A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E2495E8(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E2496AC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(319);
  if (v2 <= 0x3F)
  {
    result = sub_20E322150();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

void sub_20E24984C(uint64_t a1)
{
  sub_20E24C1EC(319, &unk_280E040D0, type metadata accessor for ToolKitProtoTypedValue);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E2499F0(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E249B14(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_27C86A058, type metadata accessor for ToolKitProtoQuery, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_310Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a4[5];
LABEL_7:
    v15 = *(v12 + 56);

    return v15(v7 + v13, a2, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a4[6];
    goto LABEL_7;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 56);
  v18 = v7 + a4[7];

  return v17(v18, a2, a2, v16);
}

void sub_20E249F58(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_27C86A080, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E24A120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_1288Tm_0);
}

uint64_t sub_20E24A178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_1289Tm_0);
}

uint64_t sub_20E24A204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24A260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_20E24A338(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24A4B8(uint64_t a1)
{
  sub_20E247F1C(319, &qword_27C86A0F8, type metadata accessor for ToolKitProtoRestrictionContext, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24A610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24A66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_20E24A764(uint64_t a1)
{
  sub_20E247F1C(319, &qword_27C86A138, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DF08, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24A888(uint64_t a1)
{
  sub_20E247F1C(319, &qword_27C86A150, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24AA40(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20E24AB24(uint64_t a1)
{
  result = sub_20E3221C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E24ABF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24AC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_20E24AD5C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E24AEA8(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24AFB8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypeInstance(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E24B030(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_696Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a3[5];
LABEL_11:
    v18 = *(v14 + 48);

    return v18(a1 + v15, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a3[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v19 = sub_20E3221C0();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[8];

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_697Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[5];
LABEL_9:
    v18 = *(v14 + 56);

    return v18(v7 + v15, a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_20E3221C0();
  v20 = *(*(v19 - 8) + 56);
  v21 = v7 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_20E24B4D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E247F1C(319, qword_280E0DDD0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_20E247F1C(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E06B38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        sub_20E3221C0();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E24B824(uint64_t a1)
{
  sub_20E247F1C(319, &qword_27C86A260, type metadata accessor for ToolKitProtoQuery.AnyPredicate, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24B990(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoComparisonPredicate(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoCompoundPredicate(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoStringSearchPredicate(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoIdSearchPredicate(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoAllPredicate(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSuggestedPredicate(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSearchableItemPredicate(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoValidPredicate(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
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

uint64_t sub_20E24BAA4(uint64_t a1)
{
  result = sub_20E3221C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24BBC0(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E08810, type metadata accessor for ToolKitProtoRuntimePlatformVersion, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24BD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_443Tm_1_4);
}

uint64_t sub_20E24BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_444Tm_1_3);
}

uint64_t sub_20E24BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_20E24BEE4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20E24C040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20E24C088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_20E24C110(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E24C1EC(319, &qword_27C86A2D0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24C1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_991Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_992Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E24C424(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_20E3221C0();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24C64C(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04078, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E07030, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E3221C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E24C880(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E247F1C(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E07030, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        sub_20E3221C0();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1054Tm(char *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_20E3221C0();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *__swift_store_extra_inhabitant_index_1055Tm(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_20E3221C0();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20E24CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_20E24CFA8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20E24CFC4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_20E24D044(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(319);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
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

void sub_20E24D1B4(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04078, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E04090, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_20E24E518(319, &qword_280E04098, &type metadata for ToolKitProtoToolDefinition.Version1.Flag, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_20E247F1C(319, &qword_280E04068, type metadata accessor for ToolKitProtoSystemToolProtocol, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_20E24E518(319, &qword_280E040A0, &type metadata for ToolKitProtoToolDefinition.Version1.VisibilityFlag, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_20E247F1C(319, qword_280E0E408, type metadata accessor for ToolKitProtoAppDefinition, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_20E247F1C(319, qword_280E127F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
                        {
                          sub_20E247F1C(319, qword_280E12948, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            sub_20E247F1C(319, qword_280E0A760, type metadata accessor for ToolKitProtoContainerDefinition, MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_20E3221C0();
                              if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_20E24D684(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E04088, &type metadata for ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
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

void sub_20E24D9C0(uint64_t a1)
{
  sub_20E247F1C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24DACC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E24DBB8(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24DCFC(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24DDBC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24DE78(uint64_t a1)
{
  sub_20E247F1C(319, qword_280E0E4B8, type metadata accessor for ToolKitProtoAppDefinition.Device, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1227Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 40);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 44);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_1228Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 40);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 44);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E24E238(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0A810, type metadata accessor for ToolKitProtoContainerDefinition.Device, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1389Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1390Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E24E518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20E24E568(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20E24E5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

void sub_20E24E644(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24E780(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08E40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E08FF8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E247F1C(319, qword_280E09120, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E10F60, type metadata accessor for ToolKitProtoPluginModelData, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
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

void sub_20E24EB90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E247F1C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24EC48(uint64_t a1)
{
  sub_20E24E518(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24ED00(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_20E247F1C(319, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_20E3221C0();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24EF1C(uint64_t a1)
{
  sub_20E247F1C(319, &qword_27C86A378, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20E24F018()
{
  result = qword_27C86A380;
  if (!qword_27C86A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A380);
  }

  return result;
}

unint64_t sub_20E24F06C()
{
  result = qword_27C86A388;
  if (!qword_27C86A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A388);
  }

  return result;
}

unint64_t sub_20E24F0C0()
{
  result = qword_27C86A390;
  if (!qword_27C86A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A390);
  }

  return result;
}

unint64_t sub_20E24F114()
{
  result = qword_27C86A398;
  if (!qword_27C86A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A398);
  }

  return result;
}

unint64_t sub_20E24F168()
{
  result = qword_27C86A3A0;
  if (!qword_27C86A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3A0);
  }

  return result;
}

unint64_t sub_20E24F1BC()
{
  result = qword_27C86A3A8;
  if (!qword_27C86A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3A8);
  }

  return result;
}

unint64_t sub_20E24F210()
{
  result = qword_27C86A3B0;
  if (!qword_27C86A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3B0);
  }

  return result;
}

unint64_t sub_20E24F264()
{
  result = qword_27C86A3B8;
  if (!qword_27C86A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3B8);
  }

  return result;
}

unint64_t sub_20E24F2B8()
{
  result = qword_27C86A3C0;
  if (!qword_27C86A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3C0);
  }

  return result;
}

unint64_t sub_20E24F30C()
{
  result = qword_27C86A3C8;
  if (!qword_27C86A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3C8);
  }

  return result;
}

unint64_t sub_20E24F360()
{
  result = qword_27C86A3D0;
  if (!qword_27C86A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3D0);
  }

  return result;
}

unint64_t sub_20E24F3B4()
{
  result = qword_27C86A3D8;
  if (!qword_27C86A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3D8);
  }

  return result;
}

unint64_t sub_20E24F408()
{
  result = qword_27C86A3E0;
  if (!qword_27C86A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3E0);
  }

  return result;
}

unint64_t sub_20E24F45C()
{
  result = qword_27C86A3E8;
  if (!qword_27C86A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3E8);
  }

  return result;
}

unint64_t sub_20E24F4B0()
{
  result = qword_27C86A3F0;
  if (!qword_27C86A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3F0);
  }

  return result;
}

unint64_t sub_20E24F504()
{
  result = qword_27C86A3F8;
  if (!qword_27C86A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3F8);
  }

  return result;
}

unint64_t sub_20E24F558()
{
  result = qword_27C86A400;
  if (!qword_27C86A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A400);
  }

  return result;
}

unint64_t sub_20E24F5AC()
{
  result = qword_27C86A408;
  if (!qword_27C86A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A408);
  }

  return result;
}

unint64_t sub_20E24F600()
{
  result = qword_27C86A410;
  if (!qword_27C86A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A410);
  }

  return result;
}

unint64_t sub_20E24F654()
{
  result = qword_27C86A418;
  if (!qword_27C86A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A418);
  }

  return result;
}

unint64_t sub_20E24F6A8()
{
  result = qword_27C86A420;
  if (!qword_27C86A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A420);
  }

  return result;
}

unint64_t sub_20E24F6FC()
{
  result = qword_27C86A428;
  if (!qword_27C86A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A428);
  }

  return result;
}

unint64_t sub_20E24F750()
{
  result = qword_27C86A430;
  if (!qword_27C86A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A430);
  }

  return result;
}

unint64_t sub_20E24F7A4()
{
  result = qword_27C86A438;
  if (!qword_27C86A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A438);
  }

  return result;
}

unint64_t sub_20E24F7F8()
{
  result = qword_27C86A440;
  if (!qword_27C86A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A440);
  }

  return result;
}

uint64_t sub_20E24F84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E24F8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E24F914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_20E24FF14(uint64_t a1)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  MEMORY[0x28223BE20](Value);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v47 - v17);
  v19 = [objc_allocWithZone(MEMORY[0x277D58158]) init];
  sub_20E06E698(a1, v18);
  v20 = type metadata accessor for ToolKitProtoTypedValue(0);
  if ((*(*(v20 - 8) + 48))(v18, 1, v20) != 1)
  {
    v22 = *v18;
    sub_20E047CF8(*v18);
    sub_20E250550(v18, type metadata accessor for ToolKitProtoTypedValue);
    v21 = v19;
    if ((~v22 & 0xF000000000000007) == 0)
    {
      return v21;
    }

    v23 = v22 >> 61;
    if ((v22 >> 61) <= 2)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          v37 = swift_projectBox();
          sub_20E2504E8(v37, v12, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
          if (v19)
          {
            v38 = v19;
            v39 = sub_20E04CE28(v12);
            [v38 setEnumeration_];
          }

          v35 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
          v36 = v12;
        }

        else
        {
          v43 = swift_projectBox();
          sub_20E2504E8(v43, v9, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
          if (v19)
          {
            sub_20E2504E8(v9, v6, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
            (*(v47 + 56))(v6, 0, 1, v7);
            v44 = v19;
            v45 = sub_20E064060(v6);
            sub_20E04875C(v6, &qword_27C863EC0, &qword_20E325D10);
            [v44 setEntity_];
          }

          v35 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
          v36 = v9;
        }
      }

      else
      {
        v40 = swift_projectBox();
        sub_20E2504E8(v40, v15, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
        if (v19)
        {
          v41 = v19;
          v42 = sub_20E30705C(v15);
          [v41 setPrimitive_];
        }

        v35 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
        v36 = v15;
      }
    }

    else
    {
      if (v23 > 4 || v23 == 3)
      {
        goto LABEL_25;
      }

      v24 = swift_projectBox();
      v25 = v48;
      sub_20E2504E8(v24, v48, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
      if (v21)
      {
        v26 = objc_allocWithZone(MEMORY[0x277D57F90]);
        v27 = v21;
        v28 = [v26 init];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          v31 = sub_20E04EA80(v25);
          [v30 setTypeIdentifier_];

          v32 = *(Value + 20);
          v33 = v30;
          v34 = sub_20E0674F4(v25 + v32);
          [v33 setQuery_];
        }

        [v27 setQuery_];
      }

      v35 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
      v36 = v25;
    }

    sub_20E250550(v36, v35);
LABEL_25:
    sub_20E047CA8(v22);
    return v21;
  }

  sub_20E04875C(v18, &qword_27C863B18, &qword_20E323EB0);
  return v19;
}

uint64_t sub_20E2504E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E250550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E2505B0(uint64_t *a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D57ED0]) init];
  if (result)
  {
    v3 = result;
    v4 = result;
    v5 = sub_20E322860();
    [v4 setParameterId_];

    v6 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
    v7 = v4;
    v8 = sub_20E06E458(a1 + v6);
    [v7 setValue_];

    [v7 setReason_];
    return v3;
  }

  return result;
}

uint64_t sub_20E250970(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E250A88(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t static ToolKitProtoCompoundPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_20E154DAC(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E250CD0(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t static ToolKitProtoSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2510DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_20E1484A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E251214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  sub_20E3221E0();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

void *sub_20E2513B4@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  result = sub_20E3221E0();
  v3 = v4;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_20E251478(int *a1)
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  return sub_20E322200();
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.setter(int a1)
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  return sub_20E322200();
}

void (*Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v4[1] = qword_27C86A500;
  v4[2] = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);
  sub_20E3221E0();
  v5 = *(v4 + 6);
  if (*(v4 + 28))
  {
    v5 = 0;
  }

  *(v4 + 8) = v5;
  return sub_20E2516F0;
}

void sub_20E2516F0(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 32);
  sub_20E322200();

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C86A500;
  v1 = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);

  return MEMORY[0x28217E180](v0, v1);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearToolKitPrototoolKitProtoVersion()()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C86A500;
  v1 = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8], MEMORY[0x277D215A0]);

  MEMORY[0x28217E190](v0, v1);
}

uint64_t sub_20E25187C()
{
  v0 = sub_20E322230();
  __swift_allocate_value_buffer(v0, qword_27C86A4E8);
  __swift_project_value_buffer(v0, qword_27C86A4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1D8, &qword_20E3565A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20E326380;
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C86A500;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1E0, &qword_20E3565A8);
  *(v1 + 64) = sub_20E2FB940();
  *(v1 + 32) = v2;

  return sub_20E322220();
}

uint64_t sub_20E2519A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1E0, &qword_20E3565A8);
  swift_allocObject();
  result = sub_20E3221D0();
  qword_27C86A500 = result;
  return result;
}

uint64_t ToolKitProtoExtensions_ToolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20E251A68()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A508);
  __swift_project_value_buffer(v0, qword_27C86A508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RuntimePlatform_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimePlatform_PHONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RuntimePlatform_PAD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RuntimePlatform_MACINTOSH";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RuntimePlatform_WATCH";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RuntimePlatform_TV";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RuntimePlatform_VISION";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E251DE8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A520);
  __swift_project_value_buffer(v0, qword_27C86A520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E252028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D198, &qword_20E356560);
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
  sub_20E0486F4(a1, v12, &qword_27C863B68, &unk_20E346230);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863B68, &unk_20E346230);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D198, &qword_20E356560);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
    return sub_20E04875C(v32, &qword_27C86D198, &qword_20E356560);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863B68, &unk_20E346230);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2525E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1D0, &qword_20E356598);
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
  sub_20E0486F4(a1, v12, &qword_27C863B68, &unk_20E346230);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863B68, &unk_20E346230);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D1D0, &qword_20E356598);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1D0, &qword_20E356598);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1D0, &qword_20E356598);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1D0, &qword_20E356598);
    return sub_20E04875C(v32, &qword_27C86D1D0, &qword_20E356598);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1D0, &qword_20E356598);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863B68, &unk_20E346230);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoTypeIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C863B68, &unk_20E346230);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E252F68(v3, a1, a2, a3);
  }

  else
  {
    sub_20E252D30(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoTypeIdentifier(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E252D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863B68, &unk_20E346230);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863B68, &unk_20E346230);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_20E252F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863B68, &unk_20E346230);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863B68, &unk_20E346230);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25324C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEC8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2532EC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return sub_20E322470();
}

uint64_t sub_20E253358(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);

  return sub_20E322480();
}

uint64_t sub_20E253428()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A548);
  __swift_project_value_buffer(v0, qword_27C86A548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "none_p";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_20E322590();
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
  *v24 = "dictionary";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "attributedString";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "measurement";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "currencyAmount";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "paymentMethod";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "placemark";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "person";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "file";
  *(v37 + 8) = 4;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "app";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "searchableItem";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_23;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_23;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_23;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_23;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_23;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_23;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_23;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_23;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_23;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_23;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_23;
        case 12:
          sub_20E253EE0(a1, v5, a2, a3);
          break;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_23;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_23;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_23;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_23;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_23;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_23;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
LABEL_23:
          sub_20E253C94(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E253C94(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_20E322110();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v20 = a2;
  sub_20E0486F4(v12, v10, &qword_27C867FE0, &qword_20E33B098);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_20E04875C(v10, &qword_27C867FE0, &qword_20E33B098);
  if (v15 == 1)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v16 = v20;
  if (*v20 != 41)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*v3)
  {
    case 0x17u:
      result = sub_20E25421C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x18u:
      result = sub_20E25436C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x19u:
      result = sub_20E2544BC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Au:
      result = sub_20E25460C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Bu:
      result = sub_20E25475C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Cu:
      result = sub_20E2548AC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Du:
      result = sub_20E2549FC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Eu:
      result = sub_20E254B4C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Fu:
      result = sub_20E254C9C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x20u:
      result = sub_20E254DEC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x21u:
      result = sub_20E254F3C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x22u:
      result = sub_20E255108(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x23u:
      result = sub_20E255258(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x24u:
      result = sub_20E2553A8(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x25u:
      result = sub_20E2554F8(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x26u:
      result = sub_20E255648(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x27u:
      result = sub_20E255798(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x28u:
      result = sub_20E2558E8(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_5;
      }

      break;
    case 0x29u:
      goto LABEL_5;
    default:
      result = sub_20E25508C(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_5:
        type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
        result = sub_20E3221A0();
      }

      break;
  }

  return result;
}

uint64_t sub_20E25421C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 23)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25436C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 24)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2544BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 25)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25460C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 26)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25475C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 27)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2548AC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 28)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2549FC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 29)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254B4C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 30)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254C9C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 31)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254DEC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 32)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254F3C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 33)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_20E25508C(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result - 23 < 0x13)
  {
    __break(1u);
  }

  else
  {
    sub_20E24F7A4();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E255108(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 34)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255258(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 35)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2553A8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 36)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2554F8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 37)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255648(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 38)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255798(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 39)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2558E8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 40)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255A80(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_20E322DE0();
  a1(0);
  sub_20E2FB9A4(a2, a3, a4);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E255B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEC0, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E255C28(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_20E322470();
}

uint64_t sub_20E255C94(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_20E322480();
}

uint64_t sub_20E255D14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A560);
  __swift_project_value_buffer(v0, qword_27C86A560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20E3421C0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 0;
  *v5 = "MeasurementUnitType_UNSPECIFIED";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MeasurementUnitType_LENGTH";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MeasurementUnitType_MASS";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MeasurementUnitType_TEMPERATURE";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MeasurementUnitType_VOLUME";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MeasurementUnitType_SPEED";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MeasurementUnitType_ENERGY";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MeasurementUnitType_DURATION";
  *(v21 + 1) = 28;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MeasurementUnitType_ACCELERATION";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MeasurementUnitType_ANGLE";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MeasurementUnitType_AREA";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "MeasurementUnitType_CONCENTRATION_MASS";
  *(v28 + 1) = 38;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MeasurementUnitType_DISPERSION";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MeasurementUnitType_ELECTRIC_CHARGE";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "MeasurementUnitType_ELECTRIC_CURRENT";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "MeasurementUnitType_ELECTRIC_POTENTIAL_DIFFERENCE";
  *(v36 + 1) = 49;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "MeasurementUnitType_ELECTRIC_RESISTANCE";
  *(v37 + 8) = 39;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "MeasurementUnitType_FREQUENCY";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "MeasurementUnitType_FUEL_EFFICIENCY";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "MeasurementUnitType_ILLUMINANCE";
  *(v43 + 1) = 31;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "MeasurementUnitType_INFORMATION_STORAGE";
  *(v45 + 1) = 39;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "MeasurementUnitType_POWER";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "MeasurementUnitType_PRESSURE";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E256464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000020E361540;
  return result;
}

uint64_t sub_20E2564F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A588);
  __swift_project_value_buffer(v0, qword_27C86A588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2567B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEB8, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E256854(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return sub_20E322470();
}

uint64_t sub_20E2568C0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Custom);

  return sub_20E322480();
}

uint64_t sub_20E256958()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A5A0);
  __swift_project_value_buffer(v0, qword_27C86A5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mailAccount";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mailAddressee";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mailMessage";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mailbox";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "intentMessage";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageGroup";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "messageParticipants";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "uniqueEntity";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentUpdatableEntity";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "urlRepresentable";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "visualSearch";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "visualSearchOcr";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "assistantSchema";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "updatableEntity";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "persistentFileIdentifiable";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemTypeProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_5;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_5;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_5;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_5;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_5;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_5;
        case 10:
          sub_20E2575D0(v5, a1, a2, a3);
          break;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_5;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 14:
          sub_20E257B80(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C867EA0, &qword_20E33AF78, type metadata accessor for ToolKitProtoSystemTypeProtocolKind, v15);
          break;
        case 16:
          sub_20E25813C(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E257248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v37 = a8;
  v35 = a7;
  v36 = a6;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = sub_20E322110();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  v21 = v39;
  sub_20E322300();
  v39 = v21;
  if (v21)
  {
    return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  }

  v32[1] = a4;
  v33 = v12;
  v34 = a5;
  sub_20E0486F4(v18, v16, &qword_27C867FE0, &qword_20E33B098);
  v22 = (*(v20 + 48))(v16, 1, v19);
  sub_20E04875C(v16, &qword_27C867FE0, &qword_20E33B098);
  if (v22 == 1)
  {
    return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  }

  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_20E0486F4(v38, v33, v34, v36);
  v27 = v35(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v24, 1, v27);
  sub_20E04875C(v24, v25, v26);
  if (v29 != 1)
  {
    v30 = v39;
    sub_20E3222C0();
    if (v30)
    {
      return sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
    }
  }

  sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  v31 = v38;
  sub_20E04875C(v38, v34, v26);
  swift_storeEnumTagMultiPayload();
  return (*(v28 + 56))(v31, 0, 1, v27);
}

uint64_t sub_20E2575D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1B8, &qword_20E356580);
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
  sub_20E0486F4(a1, v12, &qword_27C867EA0, &qword_20E33AF78);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EA0, &qword_20E33AF78);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86D1B8, &qword_20E356580);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1B8, &qword_20E356580);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1B8, &qword_20E356580);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1B8, &qword_20E356580);
    return sub_20E04875C(v32, &qword_27C86D1B8, &qword_20E356580);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1B8, &qword_20E356580);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E257B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1C0, &qword_20E356588);
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
  sub_20E0486F4(a1, v12, &qword_27C867EA0, &qword_20E33AF78);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EA0, &qword_20E33AF78);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D1C0, &qword_20E356588);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1C0, &qword_20E356588);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1C0, &qword_20E356588);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1C0, &qword_20E356588);
    return sub_20E04875C(v32, &qword_27C86D1C0, &qword_20E356588);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1C0, &qword_20E356588);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E25813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1C8, &qword_20E356590);
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
  sub_20E0486F4(a1, v12, &qword_27C867EA0, &qword_20E33AF78);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867EA0, &qword_20E33AF78);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D1C8, &qword_20E356590);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1C8, &qword_20E356590);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1C8, &qword_20E356590);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1C8, &qword_20E356590);
    return sub_20E04875C(v32, &qword_27C86D1C8, &qword_20E356590);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1C8, &qword_20E356590);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoSystemTypeProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C867EA0, &qword_20E33AF78);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E25A824(v3, a1, a2, a3);
        goto LABEL_22;
      case 2u:
        sub_20E25ACA8(v3, a1, a2, a3);
        goto LABEL_22;
      case 3u:
        result = sub_20E258A60(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_20E258CAC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_20E258EF8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_20E259144(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_20E259390(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_20E2595DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_20E259828(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E259A74(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E259CC0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E25A140(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E25A38C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E25A5D8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E25AA5C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E259F0C(v3, a1, a2, a3);
LABEL_22:
        result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  return sub_20E3221A0();
}

uint64_t sub_20E258A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 3)
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

uint64_t sub_20E258CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_20E258EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_20E259144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_20E259390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 7)
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

uint64_t sub_20E2595DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 8)
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

uint64_t sub_20E259828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 9)
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

uint64_t sub_20E259A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 10)
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

uint64_t sub_20E259CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 11)
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

uint64_t sub_20E259F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EA0, &qword_20E33AF78);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 12)
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

uint64_t sub_20E25A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_20E25A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_20E25A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EA0, &qword_20E33AF78);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_20E25ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EA0, &qword_20E33AF78);
  v11 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25AF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEB0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B030(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return sub_20E322470();
}

uint64_t sub_20E25B09C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);

  return sub_20E322480();
}

uint64_t sub_20E25B11C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000016, 0x800000020E363760);
  qword_27C86A5B8 = 0xD00000000000001ALL;
  qword_27C86A5C0 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEA8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B364(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_20E322470();
}

uint64_t sub_20E25B3D0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_20E322480();
}

uint64_t sub_20E25B44C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362160);
  qword_27C86A5E0 = 0xD00000000000001ALL;
  *algn_27C86A5E8 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B608(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEA0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B6A8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_20E322470();
}

uint64_t sub_20E25B714(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_20E322480();
}

uint64_t sub_20E25B794()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E363740);
  qword_27C86A608 = 0xD00000000000001ALL;
  qword_27C86A610 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B930(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B9D0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_20E322470();
}

uint64_t sub_20E25BA3C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_20E322480();
}

uint64_t sub_20E25BB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE90, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25BC1C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BEB0, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return sub_20E322470();
}

uint64_t sub_20E25BC88(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BEB0, type metadata accessor for ToolKitProtoTypeDefinition, &protocol conformance descriptor for ToolKitProtoTypeDefinition);

  return sub_20E322480();
}

uint64_t sub_20E25BD04()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86A648 = 0xD000000000000016;
  qword_27C86A650 = 0x800000020E361580;
  return result;
}

uint64_t sub_20E25BD9C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A658);
  __swift_project_value_buffer(v0, qword_27C86A658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enumeration";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E25CC6C(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_20E25D228(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E25C100(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E25C6B0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E25C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D198, &qword_20E356560);
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
  sub_20E0486F4(a1, v12, &qword_27C867E50, &qword_20E33AF30);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E50, &qword_20E33AF30);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D198, &qword_20E356560);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
    return sub_20E04875C(v32, &qword_27C86D198, &qword_20E356560);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D198, &qword_20E356560);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E25C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1A0, &qword_20E356568);
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
  sub_20E0486F4(a1, v12, &qword_27C867E50, &qword_20E33AF30);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E50, &qword_20E33AF30);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86D1A0, &qword_20E356568);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1A0, &qword_20E356568);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1A0, &qword_20E356568);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1A0, &qword_20E356568);
    return sub_20E04875C(v32, &qword_27C86D1A0, &qword_20E356568);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1A0, &qword_20E356568);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E25CC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1A8, &qword_20E356570);
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
  sub_20E0486F4(a1, v12, &qword_27C867E50, &qword_20E33AF30);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E50, &qword_20E33AF30);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86D1A8, &qword_20E356570);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1A8, &qword_20E356570);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1A8, &qword_20E356570);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1A8, &qword_20E356570);
    return sub_20E04875C(v32, &qword_27C86D1A8, &qword_20E356570);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1A8, &qword_20E356570);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E25D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1B0, &qword_20E356578);
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
  sub_20E0486F4(a1, v12, &qword_27C867E50, &qword_20E33AF30);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E50, &qword_20E33AF30);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C86D1B0, &qword_20E356578);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D1B0, &qword_20E356578);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D1B0, &qword_20E356578);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D1B0, &qword_20E356578);
    return sub_20E04875C(v32, &qword_27C86D1B0, &qword_20E356578);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D1B0, &qword_20E356578);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}