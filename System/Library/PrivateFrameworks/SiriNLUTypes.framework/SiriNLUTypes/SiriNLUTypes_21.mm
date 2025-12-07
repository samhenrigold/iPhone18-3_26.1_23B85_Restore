uint64_t sub_1C8990164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD718, &qword_1C8C0A5C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8778ED8(v21, &qword_1EC2BD718, &qword_1C8C0A5C0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBEF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD718, &qword_1C8C0A5C0);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD718, &qword_1C8C0A5C0);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C899068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE8, &qword_1C8BFAA08);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAAE8, &qword_1C8BFAA08);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAAE8, &qword_1C8BFAA08);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAAE8, &qword_1C8BFAA08);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8990BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF0, &qword_1C8BFAA10);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAAF0, &qword_1C8BFAA10);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAAF0, &qword_1C8BFAA10);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAAF0, &qword_1C8BFAA10);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C89910DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD720, &qword_1C8C0A5C8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v21, &qword_1EC2BD720, &qword_1C8C0A5C8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBF18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD720, &qword_1C8C0A5C8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD720, &qword_1C8C0A5C8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8991604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](valid);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB00, &unk_1C8BFAA20);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, valid);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAB00, &unk_1C8BFAA20);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, valid);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAB00, &unk_1C8BFAA20);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, valid) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAB00, &unk_1C8BFAA20);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8991B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  swift_beginAccess();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C8991FCC(a1, a2, a3, a4);
        break;
      case 2u:
        sub_1C8992200(a1, a2, a3, a4);
        break;
      case 3u:
        sub_1C8992434(a1, a2, a3, a4);
        break;
      case 4u:
        sub_1C8992668(a1, a2, a3, a4);
        break;
      case 5u:
        sub_1C899289C(a1, a2, a3, a4);
        break;
      case 6u:
        sub_1C8992AD0(a1, a2, a3, a4);
        break;
      case 7u:
        sub_1C8992D04(a1, a2, a3, a4);
        break;
      default:
        sub_1C8991D9C(a1, a2, a3, a4);
        break;
    }

    return sub_1C88E3C58();
  }

  return result;
}

uint64_t sub_1C8991D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8991FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBEB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8992200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBEC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8992434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBEF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8992668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C899289C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8992AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBF18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8992D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  MEMORY[0x1EEE9AC00](valid);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

BOOL sub_1C8992F64(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v2);
  v17[0] = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6F8, &qword_1C8C0A5A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v17[1] = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v13 = *(v5 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v7[v13], 1, v2) != 1)
    {
      sub_1C88E3EC4();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind.== infix(_:_:)();
      v16 = v15;
      sub_1C88E3C58();
      sub_1C8778ED8(v12, &qword_1EC2BAD30, &qword_1C8BFAB50);
      sub_1C88E3C58();
      sub_1C8778ED8(v7, &qword_1EC2BAD30, &qword_1C8BFAB50);
      return (v16 & 1) != 0;
    }

    sub_1C8778ED8(v12, &qword_1EC2BAD30, &qword_1C8BFAB50);
    sub_1C88E3C58();
LABEL_6:
    sub_1C8778ED8(v7, &qword_1EC2BD6F8, &qword_1C8C0A5A0);
    return 0;
  }

  sub_1C8778ED8(v12, &qword_1EC2BAD30, &qword_1C8BFAB50);
  if (__swift_getEnumTagSinglePayload(&v7[v13], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v7, &qword_1EC2BAD30, &qword_1C8BFAB50);
  return 1;
}

uint64_t sub_1C8993348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD370, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89933C8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBF88, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8993438(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBF88, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89934B8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000017, 0x80000001C8C24860);
  qword_1EC2BA008 = 0xD00000000000002BLL;
  unk_1EC2BA010 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899354C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA018);
  __swift_project_value_buffer(v0, qword_1EC2BA018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BAC();
        break;
      case 4:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4B3C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*v0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
      {
        if (*(v2 + 12) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
        {
          type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
          return OUTLINED_FUNCTION_69();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_0();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v9 = sub_1C8776818(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v9) & 1;
}

uint64_t sub_1C8993A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8993AD8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8993B48(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8993BC8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24840);
  qword_1EC2BA030 = 0xD00000000000002BLL;
  *algn_1EC2BA038 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8993C5C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA040);
  __swift_project_value_buffer(v0, qword_1EC2BA040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

void sub_1C8993F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_567();
  while (1)
  {
    OUTLINED_FUNCTION_88();
    v9 = sub_1C8BD4AFC();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        v11 = OUTLINED_FUNCTION_536();
        v8(v11);
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_536();
        v7(v14);
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_536();
        v6(v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_536();
        v4(v13);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8993FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6E0, &qword_1C8C0A588);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6E0, &qword_1C8C0A588);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBFC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6E0, &qword_1C8C0A588);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6E0, &qword_1C8C0A588);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B60F8, &qword_1C8BFAB60);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89944AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6E8, &qword_1C8C0A590);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6E8, &qword_1C8C0A590);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6E8, &qword_1C8C0A590);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6E8, &qword_1C8C0A590);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B60F8, &qword_1C8BFAB60);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8994968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6F0, &qword_1C8C0A598);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6F0, &qword_1C8C0A598);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6F0, &qword_1C8C0A598);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6F0, &qword_1C8C0A598);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B60F8, &qword_1C8BFAB60);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8994E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v16 = a1;
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1C8778ED8(v8, &qword_1EC2B60F8, &qword_1C8BFAB60);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v4))
  {
    v14 = 0;
    v15 = 256;
    sub_1C89DF25C();
    result = sub_1C8BD4B4C();
    if (!v4 && (v15 & 0x100) == 0)
    {
      v11 = v15;
      v12 = v14;
      v13 = v16;
      sub_1C8778ED8(v16, &qword_1EC2B60F8, &qword_1C8BFAB60);
      *v13 = v12;
      *(v13 + 8) = v11 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v22 = OUTLINED_FUNCTION_9_4();
        sub_1C89952E8(v22, v23, v24, v25);
        goto LABEL_8;
      case 2u:
        v14 = OUTLINED_FUNCTION_9_4();
        sub_1C89954FC(v14, v15, v16, v17);
        goto LABEL_8;
      case 3u:
        v18 = OUTLINED_FUNCTION_9_4();
        sub_1C8995710(v18, v19, v20, v21);
        if (!v3)
        {
          break;
        }

        goto LABEL_10;
      default:
        v10 = OUTLINED_FUNCTION_9_4();
        sub_1C89950D8(v10, v11, v12, v13);
LABEL_8:
        OUTLINED_FUNCTION_244_1();
        sub_1C88E3C58();
        if (!v3)
        {
          break;
        }

        goto LABEL_10;
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
  OUTLINED_FUNCTION_113_1();
LABEL_10:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89950D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBFC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89952E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89954FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8995710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B60F8, &qword_1C8BFAB60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_1C89DF25C();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6100, &unk_1C8BE6DB0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60F8, &qword_1C8BFAB60);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_244_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6100, &unk_1C8BE6DB0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B60F8, &qword_1C8BFAB60);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8995AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD360, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8995B74(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8995BE4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8995C64()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA058);
  __swift_project_value_buffer(v0, qword_1EC2BA058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DeviceState_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceState_UNLOCKED";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8995E68()
{
  if (qword_1EC2B5770 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA030;
  v2 = *algn_1EC2BA038;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000017, 0x80000001C8C247B0);

  qword_1EC2BA070 = v1;
  *algn_1EC2BA078 = v2;
  return result;
}

uint64_t sub_1C8995F30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA080);
  __swift_project_value_buffer(v0, qword_1EC2BA080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8996248(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C89962B0(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8996364(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8996418(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89962B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
  sub_1C8776818(&qword_1EC2BB2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8996364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
  sub_1C8776818(&qword_1EC2BB2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8996418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
  sub_1C8776818(&qword_1EC2BB2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD48, &qword_1C8BFAB70);
  v6 = OUTLINED_FUNCTION_80(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_0();
  v27 = v7;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_783();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_920();
  if (!*v0 || (OUTLINED_FUNCTION_946(*v0), sub_1C89CC208(), OUTLINED_FUNCTION_1146(), OUTLINED_FUNCTION_781(), sub_1C8BD4D4C(), (v4 = v1) == 0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(0);
    sub_1C89CBE2C();
    v14 = OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_76(v14, v15, v10);
    if (v16)
    {
      sub_1C8778ED8(v3, &qword_1EC2BAD48, &qword_1C8BFAB70);
    }

    else
    {
      OUTLINED_FUNCTION_26_7();
      OUTLINED_FUNCTION_292();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_495();
      sub_1C8776818(v17, v18, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
      OUTLINED_FUNCTION_930();
      OUTLINED_FUNCTION_781();
      sub_1C8BD4E2C();
      v4 = v1;
      OUTLINED_FUNCTION_99_3();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    sub_1C89CBE2C();
    v19 = OUTLINED_FUNCTION_400();
    OUTLINED_FUNCTION_76(v19, v20, v10);
    if (v16)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAD48, &qword_1C8BFAB70);
    }

    else
    {
      OUTLINED_FUNCTION_26_7();
      OUTLINED_FUNCTION_1035();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_495();
      sub_1C8776818(v21, v22, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
      OUTLINED_FUNCTION_768();
      OUTLINED_FUNCTION_781();
      sub_1C8BD4E2C();
      v4 = v1;
      OUTLINED_FUNCTION_99_3();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    sub_1C89CBE2C();
    v23 = OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_76(v23, v24, v10);
    if (v16)
    {
      sub_1C8778ED8(v27, &qword_1EC2BAD48, &qword_1C8BFAB70);
LABEL_15:
      OUTLINED_FUNCTION_787();
      sub_1C8BD49DC();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_26_7();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_495();
    sub_1C8776818(v25, v26, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion);
    OUTLINED_FUNCTION_130_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_99_3();
    sub_1C88E3C58();
    if (!v4)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C899691C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899699C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBFC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8996A0C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBFC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8996A8C()
{
  if (qword_1EC2B5770 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA030;
  v2 = *algn_1EC2BA038;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C24730);

  qword_1EC2BA098 = v1;
  unk_1EC2BA0A0 = v2;
  return result;
}

uint64_t sub_1C8996BD4()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_254_0();
      OUTLINED_FUNCTION_638();
      v0();
    }
  }

  return result;
}

uint64_t sub_1C8996C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD58, &qword_1C8BFAB80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.OneOf_DeviceCapabilityKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D8, &qword_1C8C0A580);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  __swift_storeEnumTagSinglePayload(&v23 - v19, 1, 1, v6);
  v27 = a1;
  sub_1C89CBE2C();
  v25 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v24 = v18;
    sub_1C8778ED8(v12, &qword_1EC2BAD58, &qword_1C8BFAB80);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      return sub_1C8778ED8(v20, &qword_1EC2BD6D8, &qword_1C8C0A580);
    }

    v24 = v18;
    sub_1C88E3EC4();
    sub_1C8778ED8(v20, &qword_1EC2BD6D8, &qword_1C8C0A580);
    sub_1C88E3EC4();
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v6);
  }

  sub_1C8776818(&qword_1EC2BB2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v20, &qword_1EC2BD6D8, &qword_1C8C0A580);
  }

  v20 = v24;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    return sub_1C8778ED8(v20, &qword_1EC2BD6D8, &qword_1C8C0A580);
  }

  sub_1C88E3EC4();
  v22 = v27;
  sub_1C8778ED8(v27, &qword_1EC2BAD58, &qword_1C8BFAB80);
  sub_1C88E3EC4();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1060(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_1022();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_954();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.OneOf_DeviceCapabilityKind(0);
  v11 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v11, v12, v13);
  if (v14)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAD58, &qword_1C8BFAB80);
LABEL_5:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability(0);
    OUTLINED_FUNCTION_548();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_243_3();
  OUTLINED_FUNCTION_88();
  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_504(v15, v16, v17, v18, v19);
  sub_1C88E3C58();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89972C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD350, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8997340(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89973B0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8997430()
{
  if (qword_1EC2B5798 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA098;
  v2 = unk_1EC2BA0A0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_1EC2BA0C0 = v1;
  *algn_1EC2BA0C8 = v2;
  return result;
}

uint64_t sub_1C8997500()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA0D0);
  __swift_project_value_buffer(v0, qword_1EC2BA0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4B3C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v0))
    {
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt(0);
      return OUTLINED_FUNCTION_69();
    }
  }

  return result;
}

uint64_t sub_1C8997874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD348, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89978F4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8997964(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89979E4()
{
  if (qword_1EC2B5770 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA030;
  v2 = *algn_1EC2BA038;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x657275746165462ELL, 0xEC00000067616C46);

  qword_1EC2BA0E8 = v1;
  unk_1EC2BA0F0 = v2;
  return result;
}

uint64_t sub_1C8997AB0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA0F8);
  __swift_project_value_buffer(v0, qword_1EC2BA0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4B3C();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v4 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v0))
      {
        type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag(0);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t sub_1C8997E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD340, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8997F18(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8997F88(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8998008()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C24700);
  qword_1EC2BA110 = 0xD00000000000002BLL;
  *algn_1EC2BA118 = 0x80000001C8C22BA0;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component(0), sub_1C8776818(&qword_1EC2BB308, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89982A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8998328(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8998398(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8998418()
{
  if (qword_1EC2B57C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA110;
  v2 = *algn_1EC2BA118;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);

  qword_1EC2BA138 = v1;
  unk_1EC2BA140 = v2;
  return result;
}

uint64_t sub_1C89984E0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA148);
  __swift_project_value_buffer(v0, qword_1EC2BA148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_33_4();
      v7 = 1;
LABEL_8:
      sub_1C8998744(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_33_4();
      v7 = 0;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C8998744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 16) == 255 || (OUTLINED_FUNCTION_516(), result = sub_1C8BD4B0C(), !v5))
  {
    OUTLINED_FUNCTION_627();
    sub_1C8BD4C1C();
    result = 0;
    if (v5)
    {
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_1073();
  if (v1 || ((v2 = OUTLINED_FUNCTION_9_4(), (v6 & 1) == 0) ? (result = sub_1C8998864(v2, v3, v4, v5)) : (result = sub_1C89988B0(v2, v3, v4, v5)), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component(0);
    return OUTLINED_FUNCTION_113_1();
  }

  return result;
}

uint64_t sub_1C8998864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_1C8BD4DDC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89988B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return sub_1C8BD4DDC();
  }

  __break(1u);
  return result;
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v52[0] = *v0;
    v52[1] = v1;
    v53 = v2;
    if (v6 != 255)
    {
      v50[0] = v5;
      v50[1] = v4;
      v51 = v6 & 1;
      v7 = OUTLINED_FUNCTION_577();
      sub_1C87E4490(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_516();
      sub_1C87E4490(v10, v11, v6);
      v12 = OUTLINED_FUNCTION_577();
      sub_1C87E4490(v12, v13, v14);
      v15 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.OneOf_ComponentKind.== infix(_:_:)(v52, v50);
      v16 = OUTLINED_FUNCTION_516();
      sub_1C87E44C8(v16, v17);
      v18 = OUTLINED_FUNCTION_184();
      sub_1C87E44C8(v18, v19);
      v20 = OUTLINED_FUNCTION_577();
      sub_1C87E44B0(v20, v21, v22);
      if (v15)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v27 = OUTLINED_FUNCTION_577();
    sub_1C87E4490(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_516();
    sub_1C87E4490(v30, v31, 255);
    v32 = OUTLINED_FUNCTION_577();
    sub_1C87E4490(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_184();
    sub_1C87E44C8(v35, v36);
LABEL_8:
    v37 = OUTLINED_FUNCTION_577();
    sub_1C87E44B0(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_516();
    sub_1C87E44B0(v40, v41, v6);
    return 0;
  }

  v23 = OUTLINED_FUNCTION_184();
  sub_1C87E4490(v23, v24, 255);
  if (v6 != 255)
  {
    v25 = OUTLINED_FUNCTION_516();
    sub_1C87E4490(v25, v26, v6);
    goto LABEL_8;
  }

  v43 = OUTLINED_FUNCTION_516();
  sub_1C87E4490(v43, v44, 255);
  v45 = OUTLINED_FUNCTION_184();
  sub_1C87E44B0(v45, v46, 255);
LABEL_11:
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component(0);
  OUTLINED_FUNCTION_716();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v49 = sub_1C8776818(v47, v48, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v49) & 1;
}

uint64_t sub_1C8998B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8998B94(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB308, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8998C04(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB308, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8998C84()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C246C0);
  qword_1EC2BA160 = 0xD00000000000002BLL;
  *algn_1EC2BA168 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8998D18()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA170);
  __swift_project_value_buffer(v0, qword_1EC2BA170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "valueConstraints";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8998FD0(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t sub_1C8998FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8BD49CC();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations(0);
  sub_1C8776818(&qword_1EC2BB320, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);
  sub_1C8776818(&qword_1EC2BB328, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);
  return sub_1C8BD4AEC();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (sub_1C8BD49CC(), type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations(0), sub_1C8776818(&qword_1EC2BB320, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations), sub_1C8776818(&qword_1EC2BB328, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations), OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4D0C(), !v1))
      {
        type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature(0);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_413(a1);
  if ((sub_1C87D2814(v3, *v4) & 1) == 0 || (sub_1C87D2814(*(v2 + 8), *(v1 + 8)) & 1) == 0 || (sub_1C89CC25C(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature(0);
  OUTLINED_FUNCTION_1123();
  OUTLINED_FUNCTION_1_14();
  v7 = sub_1C8776818(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v7) & 1;
}

uint64_t sub_1C8999344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD328, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89993C4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC040, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8999434(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC040, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89994B4()
{
  if (qword_1EC2B57E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA160;
  v2 = *algn_1EC2BA168;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24640);

  qword_1EC2BA188 = v1;
  unk_1EC2BA190 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0), OUTLINED_FUNCTION_827(), sub_1C8776818(v2, v3, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89996F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_413(a1);
  if ((v7(v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_716();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v10 = sub_1C8776818(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v10) & 1;
}

uint64_t sub_1C8999800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD320, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8999880(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB320, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89998F0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB320, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8999970()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C24620);
  qword_1EC2BA1B0 = 0xD00000000000002BLL;
  *algn_1EC2BA1B8 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8999A04()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA1C0);
  __swift_project_value_buffer(v0, qword_1EC2BA1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negativePhrases";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89C0130();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
    }
  }
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v1))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0);
    OUTLINED_FUNCTION_513();
    if (!v4 || (OUTLINED_FUNCTION_512(v3), OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v1))
      {
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_413(a1);
  if ((sub_1C87D2814(v3, *v4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0);
  OUTLINED_FUNCTION_1();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_1C87D2814(*(v2 + 8), *(v1 + 8)))
  {
    OUTLINED_FUNCTION_1013();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_1_14();
    v13 = sub_1C8776818(v11, v12, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_64_0(v13) & 1;
  }

  return 0;
}

uint64_t sub_1C8999ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8999F58(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8999FC8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899A048()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000017, 0x80000001C8C245E0);
  qword_1EC2BA1D8 = 0xD00000000000002BLL;
  unk_1EC2BA1E0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899A0DC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA1E8);
  __swift_project_value_buffer(v0, qword_1EC2BA1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C5C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*v0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DFC(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DFC(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DFC(), !v1))
      {
        type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_0();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
  OUTLINED_FUNCTION_1123();
  OUTLINED_FUNCTION_1_14();
  v8 = sub_1C8776818(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v8) & 1;
}

uint64_t sub_1C899A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD310, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion, "!n(&");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899A5C8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB350, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899A638(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB350, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899A6B8()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ALL, 0x80000001C8C245B0);
  qword_1EC2BA200 = 0xD00000000000002BLL;
  *algn_1EC2BA208 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899A74C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA210);
  __swift_project_value_buffer(v0, qword_1EC2BA210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C899A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
  sub_1C8776818(&qword_1EC2BB350, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD70, &qword_1C8BFAB98);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v0))
  {
    v7 = OUTLINED_FUNCTION_1142();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v7);
    OUTLINED_FUNCTION_994();
    OUTLINED_FUNCTION_915(v8);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v9)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAD70, &qword_1C8BFAB98);
LABEL_7:
      OUTLINED_FUNCTION_688();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB350, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_504_0();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(v4);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD70, &qword_1C8BFAB98);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB358, &qword_1C8BFAD38);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_761();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_724(v12);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (v11)
  {
    OUTLINED_FUNCTION_19(v0 + v3);
    if (v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAD70, &qword_1C8BFAB98);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v0 + v3);
  if (v17)
  {
    OUTLINED_FUNCTION_504_0();
    sub_1C88E3C58();
LABEL_15:
    v18 = &qword_1EC2BB358;
    v19 = &qword_1C8BFAD38;
LABEL_22:
    sub_1C8778ED8(v0, v18, v19);
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_1122();
  if (*v2 != *v1 || v2[1] != v1[1] || v2[2] != v1[2])
  {
    sub_1C88E3C58();
    OUTLINED_FUNCTION_221();
    sub_1C88E3C58();
    v18 = &qword_1EC2BAD70;
    v19 = &qword_1C8BFAB98;
    goto LABEL_22;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v20, v21, MEMORY[0x1E69AAC10]);
  v22 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAD70, &qword_1C8BFAB98);
  if ((v22 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  OUTLINED_FUNCTION_878();
  OUTLINED_FUNCTION_1_14();
  v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
  v16 = OUTLINED_FUNCTION_746(v15);
LABEL_24:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C899AF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD308, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899AF88(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899AFF8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899B078()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ELL, 0x80000001C8C24580);
  qword_1EC2BA228 = 0xD00000000000002BLL;
  unk_1EC2BA230 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899B10C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA238);
  __swift_project_value_buffer(v0, qword_1EC2BA238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C899B534(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C899B5E8();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C899B63C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C899B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

void sub_1C899B5E8()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v3(v2);
  v4 = OUTLINED_FUNCTION_254_0();
  v6 = sub_1C8776818(v4, v5, v0);
  OUTLINED_FUNCTION_163_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_190();
}

void sub_1C899B63C()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v3(v2);
  v4 = OUTLINED_FUNCTION_254_0();
  v6 = sub_1C8776818(v4, v5, v0);
  OUTLINED_FUNCTION_163_1(v1 + 24, v7, v6);
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1060(v3, v4, v5);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_253();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v12);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_211_3();
  v29 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  OUTLINED_FUNCTION_947(v29);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v14, v15, v16);
  if (v17)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v18, v19, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_504(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_88_0();
  if (!v25 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v1))
  {
    OUTLINED_FUNCTION_513();
    if (!v26 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v1))
    {
      if (!*(*(v0 + 16) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0), sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
      {
        if (!*(*(v0 + 24) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v27, v28, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
        {
          OUTLINED_FUNCTION_770(v7);
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v7 = OUTLINED_FUNCTION_233();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA90, &unk_1C8BFA9A0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v31 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  v12 = *(v2 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v1);
  if (!v13)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_17_6(v1 + v12);
    if (!v13)
    {
      OUTLINED_FUNCTION_28_10();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.== infix(_:_:)();
      v16 = v15;
      sub_1C88E3C58();
      OUTLINED_FUNCTION_229();
      sub_1C88E3C58();
      sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BAA90, &unk_1C8BFA9A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
LABEL_13:
  v17 = *v0 == *v4 && v0[1] == v4[1];
  if (!v17 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = *(v31 + 36);
  v19 = *(v4 + v18 + 8);
  if (*(v0 + v18 + 8))
  {
    if (!v19)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v0 + v18);
    v22 = v13 && v20 == v21;
    if (!v22 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v19)
  {
    goto LABEL_10;
  }

  sub_1C87DC550();
  if (v23)
  {
    sub_1C87D9370();
    if (v24)
    {
      v25 = *(v31 + 28);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v26, v27, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_775();
      v14 = OUTLINED_FUNCTION_232_1(v28, v4 + v25, v29, v30);
      goto LABEL_11;
    }
  }

LABEL_10:
  v14 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v14);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C899BC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899BCDC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899BD4C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899BDCC()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ELL, 0x80000001C8C24560);
  qword_1EC2BA250 = 0xD00000000000002BLL;
  *algn_1EC2BA258 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899BE60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA260);
  __swift_project_value_buffer(v0, qword_1EC2BA260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C899C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6B8, &qword_1C8C0A560);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6B8, &qword_1C8C0A560);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6B8, &qword_1C8C0A560);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6B8, &qword_1C8C0A560);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAD78, &qword_1C8BFABA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C899C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6C0, &qword_1C8C0A568);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6C0, &qword_1C8C0A568);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6C0, &qword_1C8C0A568);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6C0, &qword_1C8C0A568);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAD78, &qword_1C8BFABA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_9_4();
    sub_1C899CCF8(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_4();
    sub_1C899CAE4(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_503_0();
  sub_1C88E3C58();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C899CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C899CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB378, &unk_1C8BFAD40);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_503_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB378, &unk_1C8BFAD40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C899D18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899D20C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899D27C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC0B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899D2FC()
{
  if (qword_1EC2B5848 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA250;
  v2 = *algn_1EC2BA258;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x797469746E452ELL, 0xE700000000000000);

  qword_1EC2BA278 = v1;
  unk_1EC2BA280 = v2;
  return result;
}

uint64_t sub_1C899D3C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA288);
  __swift_project_value_buffer(v0, qword_1EC2BA288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C899D770(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_857();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C899D6BC(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C899D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C899D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1053(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = OUTLINED_FUNCTION_405_0(v19);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_115_3(v22, v39);
  v23 = OUTLINED_FUNCTION_233();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_80(v25);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_217_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v27);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v29);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v13);
  if (v30)
  {
    sub_1C8778ED8(v13, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v31, v32, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!*(*v10 + 16) || (v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0), OUTLINED_FUNCTION_516_0(), sub_1C8776818(v33, v34, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_718(), sub_1C8BD4E0C(), !v11))
  {
    OUTLINED_FUNCTION_1035();
    sub_1C89CBE2C();
    v35 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_41_2(v35, v36);
    if (v30)
    {
      sub_1C8778ED8(v12, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
LABEL_11:
      OUTLINED_FUNCTION_787();
      sub_1C8BD49DC();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_1131();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_346_0();
    sub_1C8776818(v37, v38, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
    OUTLINED_FUNCTION_768();
    OUTLINED_FUNCTION_1078();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C899DBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899DC20(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899DC90(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899DD10()
{
  if (qword_1EC2B5848 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA250;
  v2 = *algn_1EC2BA258;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_1EC2BA2A0 = v1;
  *algn_1EC2BA2A8 = v2;
  return result;
}

uint64_t sub_1C899DDDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA2B0);
  __swift_project_value_buffer(v0, qword_1EC2BA2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C899E18C(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_846();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C899E0D8(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C899E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C899E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1053(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = OUTLINED_FUNCTION_405_0(v19);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_115_3(v22, v39);
  v23 = OUTLINED_FUNCTION_233();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_80(v25);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_217_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v27);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v29);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v13);
  if (v30)
  {
    sub_1C8778ED8(v13, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v31, v32, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!*(*v10 + 16) || (v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(0), OUTLINED_FUNCTION_845(), sub_1C8776818(v33, v34, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_718(), sub_1C8BD4E0C(), !v11))
  {
    OUTLINED_FUNCTION_1035();
    sub_1C89CBE2C();
    v35 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_41_2(v35, v36);
    if (v30)
    {
      sub_1C8778ED8(v12, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
LABEL_11:
      OUTLINED_FUNCTION_787();
      sub_1C8BD49DC();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_1131();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_346_0();
    sub_1C8776818(v37, v38, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
    OUTLINED_FUNCTION_768();
    OUTLINED_FUNCTION_1078();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C899E5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899E63C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899E6AC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899E72C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24510);
  qword_1EC2BA2C8 = 0xD00000000000002BLL;
  unk_1EC2BA2D0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899E7C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA2D8);
  __swift_project_value_buffer(v0, qword_1EC2BA2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1C8BFA950;
  v4 = v128 + v3 + v1[14];
  *(v128 + v3) = 1;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v128 + v3 + v2 + v1[14];
  *(v128 + v3 + v2) = 2;
  *v8 = "undoable";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v128 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sessionStarting";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v128 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urlRepresentable";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v128 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conditionallyEnabled";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v128 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "foregroundContinuable";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v128 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "changeBinarySetting";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v128 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "requiresMdmChecks";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v128 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "cut";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v7();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v128 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "closeEntity";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v128 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "createEntity";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v128 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "cutEntity";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v128 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "deleteEntity";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v128 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "duplicateEntity";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v128 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "favoriteEntity";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v128 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "openEntity";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v128 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "previewEntity";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v128 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "saveEntity";
  *(v54 + 1) = 10;
  v54[16] = 2;
  v7();
  v55 = (v128 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "putEntityInContainer";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v128 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "playVideo";
  *(v58 + 1) = 9;
  v58[16] = 2;
  v7();
  v59 = (v128 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audioStarting";
  *(v60 + 1) = 13;
  v60[16] = 2;
  v7();
  v61 = (v128 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "audioRecording";
  *(v62 + 1) = 14;
  v62[16] = 2;
  v7();
  v63 = (v128 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "pushToTalkTransmission";
  *(v64 + 1) = 22;
  v64[16] = 2;
  v7();
  v65 = (v128 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "startDive";
  *(v66 + 1) = 9;
  v66[16] = 2;
  v7();
  v67 = (v128 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "startWorkout";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v128 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "pauseWorkout";
  *(v70 + 1) = 12;
  v70[16] = 2;
  v7();
  v71 = (v128 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "resumeWorkout";
  *(v72 + 1) = 13;
  v72[16] = 2;
  v7();
  v73 = (v128 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "enterMarkup";
  *(v74 + 1) = 11;
  v74[16] = 2;
  v7();
  v75 = (v128 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "exitMarkup";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v7();
  v77 = (v128 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "focusConfiguration";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v128 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "widgetConfiguration";
  *(v80 + 1) = 19;
  v80[16] = 2;
  v7();
  v81 = (v128 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "search";
  *(v82 + 1) = 6;
  v82[16] = 2;
  v7();
  v83 = (v128 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "showSearchResultsInApp";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v128 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "showStringSearchResultsInApp";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v7();
  v87 = (v128 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "showInAppSearchResults";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v128 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "showInAppStringSearchResults";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v128 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "moveSpatial";
  *(v92 + 1) = 11;
  v92[16] = 2;
  v7();
  v93 = (v128 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "navigateSequentially";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v128 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "sting";
  *(v96 + 1) = 5;
  v96[16] = 2;
  v7();
  v97 = (v128 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "toggle";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v7();
  v99 = (v128 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "cameraCapture";
  *(v100 + 1) = 13;
  v100[16] = 2;
  v7();
  v101 = (v128 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "staccatoLongPress";
  *(v102 + 1) = 17;
  v102[16] = 2;
  v7();
  v103 = (v128 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "entityUpdating";
  *(v104 + 1) = 14;
  v104[16] = 2;
  v7();
  v105 = (v128 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "propertyUpdater";
  *(v106 + 1) = 15;
  v106[16] = 2;
  v7();
  v107 = (v128 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "sendMail";
  *(v108 + 1) = 8;
  v108[16] = 2;
  v7();
  v109 = (v128 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "setMailMessageIsRead";
  *(v110 + 1) = 20;
  v110[16] = 2;
  v7();
  v111 = (v128 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "siriKitIntent";
  *(v112 + 1) = 13;
  v112[16] = 2;
  v7();
  v113 = (v128 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "intentSideEffect";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v7();
  v115 = (v128 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "assistantSchema";
  *(v116 + 1) = 15;
  v116[16] = 2;
  v7();
  v117 = (v128 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "rewriteWritingTool";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v7();
  v119 = (v128 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "proofreadWritingTool";
  *(v120 + 1) = 20;
  v120[16] = 2;
  v7();
  v121 = (v128 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "assistantInvocable";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v7();
  v123 = (v128 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "appIntent";
  *(v124 + 1) = 9;
  v124[16] = 2;
  v7();
  v125 = (v128 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "systemFrameworkIntent";
  *(v126 + 1) = 21;
  v126[16] = 2;
  v7();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
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
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 61:
        OUTLINED_FUNCTION_0_18();
        sub_1C89BF374();
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C899FE64(v15, v16, v17, v18);
        break;
      case 27:
        v27 = OUTLINED_FUNCTION_33_4();
        sub_1C89A0320(v27, v28, v29, v30);
        break;
      case 43:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C89A07DC(v19, v20, v21, v22);
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C89A0C98(v11, v12, v13, v14);
        break;
      case 51:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1154(v3, v4, v5, v6);
        break;
      case 54:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1610(v7, v8, v9, v10);
        break;
      case 55:
        v31 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1ACC(v31, v32, v33, v34);
        break;
      case 56:
        v35 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1F88(v35, v36, v37, v38);
        break;
      case 60:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C89A2444(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C899FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD670, &qword_1C8C0A518);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD670, &qword_1C8C0A518);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD670, &qword_1C8C0A518);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD670, &qword_1C8C0A518);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD678, &qword_1C8C0A520);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD678, &qword_1C8C0A520);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD678, &qword_1C8C0A520);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD678, &qword_1C8C0A520);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD680, &qword_1C8C0A528);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD680, &qword_1C8C0A528);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD680, &qword_1C8C0A528);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD680, &qword_1C8C0A528);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD688, &qword_1C8C0A530);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD688, &qword_1C8C0A530);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD688, &qword_1C8C0A530);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD688, &qword_1C8C0A530);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A1154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD690, &qword_1C8C0A538);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD690, &qword_1C8C0A538);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD690, &qword_1C8C0A538);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD690, &qword_1C8C0A538);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A1610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD698, &qword_1C8C0A540);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD698, &qword_1C8C0A540);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD698, &qword_1C8C0A540);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD698, &qword_1C8C0A540);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6A0, &qword_1C8C0A548);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6A0, &qword_1C8C0A548);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6A0, &qword_1C8C0A548);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6A0, &qword_1C8C0A548);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6A8, &qword_1C8C0A550);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6A8, &qword_1C8C0A550);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6A8, &qword_1C8C0A550);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6A8, &qword_1C8C0A550);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89A2444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6B0, &qword_1C8C0A558);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD6B0, &qword_1C8C0A558);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD6B0, &qword_1C8C0A558);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD6B0, &qword_1C8C0A558);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_72_2(v3);
  if (v9)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_377();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_3();
      sub_1C89B7434();
      break;
    case 2u:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A2FF0();
      break;
    case 3u:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A312C();
      break;
    case 4u:
      v70 = OUTLINED_FUNCTION_69_3();
      sub_1C89A3268(v70, v71, v72, v73);
      break;
    case 5u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A347C();
      break;
    case 6u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A35B8();
      break;
    case 7u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A36F4();
      break;
    case 8u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3830();
      break;
    case 9u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A396C();
      break;
    case 0xAu:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3AA8();
      break;
    case 0xBu:
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3BE4();
      break;
    case 0xCu:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3D20();
      break;
    case 0xDu:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3E5C();
      break;
    case 0xEu:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3F98();
      break;
    case 0xFu:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A40D4();
      break;
    case 0x10u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A4210();
      break;
    case 0x11u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A434C();
      break;
    case 0x12u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A4488();
      break;
    case 0x13u:
      v126 = OUTLINED_FUNCTION_69_3();
      sub_1C89A45C4(v126, v127, v128, v129);
      break;
    case 0x14u:
      v98 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4804(v98, v99, v100, v101);
      break;
    case 0x15u:
      v102 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4A44(v102, v103, v104, v105);
      break;
    case 0x16u:
      v118 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4C84(v118, v119, v120, v121);
      break;
    case 0x17u:
      v142 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4EC4(v142, v143, v144, v145);
      break;
    case 0x18u:
      v86 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5104(v86, v87, v88, v89);
      break;
    case 0x19u:
      v82 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5344(v82, v83, v84, v85);
      break;
    case 0x1Au:
      v158 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5584(v158, v159, v160, v161);
      break;
    case 0x1Bu:
      v42 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5798(v42, v43, v44, v45);
      break;
    case 0x1Cu:
      v146 = OUTLINED_FUNCTION_69_3();
      sub_1C89A59D8(v146, v147, v148, v149);
      break;
    case 0x1Du:
      v150 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5C18(v150, v151, v152, v153);
      break;
    case 0x1Eu:
      v106 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5E58(v106, v107, v108, v109);
      break;
    case 0x1Fu:
      v90 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6098(v90, v91, v92, v93);
      break;
    case 0x20u:
      v110 = OUTLINED_FUNCTION_69_3();
      sub_1C89A62D8(v110, v111, v112, v113);
      break;
    case 0x21u:
      v54 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6518(v54, v55, v56, v57);
      break;
    case 0x22u:
      v46 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6758(v46, v47, v48, v49);
      break;
    case 0x23u:
      v34 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6998(v34, v35, v36, v37);
      break;
    case 0x24u:
      v38 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6BD8(v38, v39, v40, v41);
      break;
    case 0x25u:
      v18 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6E18(v18, v19, v20, v21);
      break;
    case 0x26u:
      v154 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7058(v154, v155, v156, v157);
      break;
    case 0x27u:
      v122 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7298(v122, v123, v124, v125);
      break;
    case 0x28u:
      v74 = OUTLINED_FUNCTION_69_3();
      sub_1C89A74D8(v74, v75, v76, v77);
      break;
    case 0x29u:
      v94 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7718(v94, v95, v96, v97);
      break;
    case 0x2Au:
      v134 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7958(v134, v135, v136, v137);
      break;
    case 0x2Bu:
      v14 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7B6C(v14, v15, v16, v17);
      break;
    case 0x2Cu:
      v50 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7DAC(v50, v51, v52, v53);
      break;
    case 0x2Du:
      v114 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7FEC(v114, v115, v116, v117);
      break;
    case 0x2Eu:
      v174 = OUTLINED_FUNCTION_69_3();
      sub_1C89A822C(v174, v175, v176, v177);
      break;
    case 0x2Fu:
      v26 = OUTLINED_FUNCTION_69_3();
      sub_1C89A846C(v26, v27, v28, v29);
      break;
    case 0x30u:
      v58 = OUTLINED_FUNCTION_69_3();
      sub_1C89A86AC(v58, v59, v60, v61);
      break;
    case 0x31u:
      v66 = OUTLINED_FUNCTION_69_3();
      sub_1C89A88EC(v66, v67, v68, v69);
      break;
    case 0x32u:
      v10 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8B00(v10, v11, v12, v13);
      break;
    case 0x33u:
      v178 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8D14(v178, v179, v180, v181);
      break;
    case 0x34u:
      v170 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8F54(v170, v171, v172, v173);
      break;
    case 0x35u:
      v22 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9194(v22, v23, v24, v25);
      break;
    case 0x36u:
      v162 = OUTLINED_FUNCTION_69_3();
      sub_1C89A93A8(v162, v163, v164, v165);
      break;
    case 0x37u:
      v166 = OUTLINED_FUNCTION_69_3();
      sub_1C89A95BC(v166, v167, v168, v169);
      break;
    case 0x38u:
      v30 = OUTLINED_FUNCTION_69_3();
      sub_1C89A97D0(v30, v31, v32, v33);
      break;
    case 0x39u:
      v130 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9A10(v130, v131, v132, v133);
      break;
    case 0x3Au:
      v62 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9C50(v62, v63, v64, v65);
      break;
    case 0x3Bu:
      v138 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9E90(v138, v139, v140, v141);
      break;
    case 0x3Cu:
      v78 = OUTLINED_FUNCTION_69_3();
      sub_1C89AA0A4(v78, v79, v80, v81);
      break;
    default:
      OUTLINED_FUNCTION_69_3();
      sub_1C89B72FC();
      break;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_157_3();
    sub_1C88E3C58();
LABEL_67:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0);
    OUTLINED_FUNCTION_55();
    sub_1C8BD49DC();
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_157_3();
  sub_1C88E3C58();
LABEL_68:
  OUTLINED_FUNCTION_1066();
}

void sub_1C89A2FF0()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 3, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A312C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 4, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89A3268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void sub_1C89A347C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 6, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A35B8()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 7, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A36F4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 8, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3830()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 9, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A396C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 10, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3AA8()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 11, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3BE4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 12, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3D20()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 13, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3E5C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 14, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3F98()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 15, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A40D4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 16, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A4210()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 17, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A434C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 18, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A4488()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 19, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89A45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A62D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A74D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A86AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A88EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89AA0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6090, &unk_1C8BE6D40);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_157_3();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6090, &unk_1C8BE6D40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89AA564(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AA5E4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AA654(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AA6D4()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000015, 0x80000001C8C240E0);

  qword_1EC2BA2F0 = v1;
  *algn_1EC2BA2F8 = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4B3C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (*v0 != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C89AA930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AA9B0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AAA20(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AAAA0()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x64695679616C502ELL, 0xEA00000000006F65);

  qword_1EC2BA318 = v1;
  unk_1EC2BA320 = v2;
  return result;
}

uint64_t sub_1C89AAC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AACD8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AAD48(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AADC8()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001DLL, 0x80000001C8C240B0);

  qword_1EC2BA340 = v1;
  *algn_1EC2BA348 = v2;
  return result;
}

uint64_t sub_1C89AAEFC()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t sub_1C89AAFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB064(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB0D4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB154()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x55797469746E452ELL, 0xEF676E6974616470);

  qword_1EC2BA368 = v1;
  unk_1EC2BA370 = v2;
  return result;
}

uint64_t sub_1C89AB33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB3BC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB42C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB4AC()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24090);

  qword_1EC2BA390 = v1;
  *algn_1EC2BA398 = v2;
  return result;
}

uint64_t sub_1C89AB574()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA3A0);
  __swift_project_value_buffer(v0, qword_1EC2BA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89AB838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB8B8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB928(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB9A8()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74694B697269532ELL, 0xEE00746E65746E49);

  qword_1EC2BA3B8 = v1;
  unk_1EC2BA3C0 = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t sub_1C89ABBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ABC50(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ABCC0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89ABD40()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C24040);

  qword_1EC2BA3E0 = v1;
  *algn_1EC2BA3E8 = v2;
  return result;
}

uint64_t sub_1C89ABE08()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA3F0);
  __swift_project_value_buffer(v0, qword_1EC2BA3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stateChange";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      v3 = OUTLINED_FUNCTION_33_4();
      sub_1C89AC0FC(v3, v4, v5, v6);
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_36_6();
      sub_1C89BF374();
    }
  }
}

uint64_t sub_1C89AC0FC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD90, &qword_1C8BFABC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v14 = a1;
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1C8778ED8(v8, &qword_1EC2BAD90, &qword_1C8BFABC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v4))
  {
    v15 = 0;
    v16 = 1;
    result = sub_1C8BD4B9C();
    if (!v4 && (v16 & 1) == 0)
    {
      v11 = v15;
      v12 = v14;
      sub_1C8778ED8(v14, &qword_1EC2BAD90, &qword_1C8BFABC0);
      *v12 = v11;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_235_2();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_144_2(v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v12 = v3;
      sub_1C89B72FC();
LABEL_8:
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v12)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = v3;
      sub_1C89B7434();
      goto LABEL_8;
    }

    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C89AC408(v13, v14, v15, v16);
    if (v4)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  OUTLINED_FUNCTION_113_1();
LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89AC408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD90, &qword_1C8BFABC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAD90, &qword_1C8BFABC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C8BD4D8C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89AC5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AC650(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AC6C0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AC740()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24010);

  qword_1EC2BA408 = v1;
  unk_1EC2BA410 = v2;
  return result;
}

void sub_1C89AC878()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_638();
      sub_1C89AC8D4();
    }
  }
}

void sub_1C89AC8D4()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_9_2();
  v0(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_240_3();
  sub_1C8776818(v1, v2, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  OUTLINED_FUNCTION_1141();
  OUTLINED_FUNCTION_195();
  sub_1C8BD4C7C();
  OUTLINED_FUNCTION_177_0();
}

void sub_1C89AC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_189();
  v15 = v14;
  OUTLINED_FUNCTION_1053(v16, v17, v18);
  v19 = OUTLINED_FUNCTION_299_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v23);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v25 = OUTLINED_FUNCTION_402();
  v15(v25);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v13);
  if (v26)
  {
    sub_1C8778ED8(v13, &qword_1EC2BAA88, &qword_1C8BFA998);
LABEL_5:
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_240_3();
  sub_1C8776818(v27, v28, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  v29 = OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_504(v29, 1, v12, v30, v11);
  OUTLINED_FUNCTION_169_3();
  sub_1C88E3C58();
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89ACB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ACC04(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ACC74(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89ACCF4()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x65746E497070412ELL, 0xEA0000000000746ELL);

  qword_1EC2BA430 = v1;
  *algn_1EC2BA438 = v2;
  return result;
}

uint64_t sub_1C89ACEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD298, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ACF28(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ACF98(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_121();
    result = sub_1C8BD4AFC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C89AD154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD290, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AD1D4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AD244(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AD2C0()
{
  if (qword_1EC2B5918 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA458;
  v2 = qword_1EC2BA460;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F69737265562ELL, 0xE900000000000031);

  qword_1EC2BA480 = v1;
  *algn_1EC2BA488 = v2;
  return result;
}

uint64_t sub_1C89AD388()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA490);
  __swift_project_value_buffer(v0, qword_1EC2BA490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C8BFA960;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "toolType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "outputType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "outputResultName";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sourceApplication";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "descriptionSummary";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "categories";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "searchKeywords";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "deprecationDefinition";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "requirements";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "flags";
  *(v31 + 1) = 5;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "authenticationPolicy";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "sampleInvocations";
  *(v35 + 1) = 17;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "systemProtocols";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "customIcon";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "hiddenParameters";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "sourceContainer";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "attributionContainer";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "visibilityFlags";
  *(v47 + 1) = 15;
  v47[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C89ADA34()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords) = v1;
  v8 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags) = v1;
  v10 = v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols) = v1;
  v11 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters) = v1;
  v13 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer;
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags) = v1;
  return v0;
}

uint64_t sub_1C89ADBE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69[2] = v69 - v12;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v69[0] = v1 + 48;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 1;
  *(v1 + 64) = v13;
  v14 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v69[1] = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v69[3] = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  v70 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  *v19 = 0;
  v19[1] = 0;
  v71 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories) = v13;
  v73 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords) = v13;
  v20 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v74 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v75 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements) = v13;
  v76 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags) = v13;
  v22 = v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  v77 = v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  *v22 = 0;
  *(v22 + 8) = 1;
  v78 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations) = v13;
  v80 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols) = v13;
  v23 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v81 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v24 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v82 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters) = v13;
  v25 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer;
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v83 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, 1, 1, v26);
  v84 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags) = v13;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v27;
  *(v1 + 24) = v28;
  swift_beginAccess();
  v30 = *(a1 + 32);
  v29 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v30;
  *(v1 + 40) = v29;

  swift_beginAccess();
  v31 = *(a1 + 48);
  LOBYTE(v30) = *(a1 + 56);
  v32 = v69[0];
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 56) = v30;
  swift_beginAccess();
  v33 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v33;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  *v16 = v36;
  v16[1] = v35;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v70;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  v41 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = v71;
  swift_beginAccess();
  *(v1 + v43) = v42;

  v44 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v73;
  swift_beginAccess();
  *(v1 + v46) = v45;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v47 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = v75;
  swift_beginAccess();
  *(v1 + v49) = v48;

  v50 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v76;
  swift_beginAccess();
  *(v1 + v52) = v51;

  v53 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy);
  swift_beginAccess();
  v54 = *v53;
  LOBYTE(v53) = *(v53 + 8);
  v55 = v77;
  swift_beginAccess();
  *v55 = v54;
  *(v55 + 8) = v53;
  v56 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v78;
  swift_beginAccess();
  *(v1 + v58) = v57;

  v59 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = v80;
  swift_beginAccess();
  *(v1 + v61) = v60;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
  swift_beginAccess();
  v63 = *(a1 + v62);
  v64 = v82;
  swift_beginAccess();
  *(v1 + v64) = v63;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v65 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
  swift_beginAccess();
  v66 = *(a1 + v65);

  v67 = v84;
  swift_beginAccess();
  *(v1 + v67) = v66;

  return v1;
}

void *sub_1C89AE6D4()
{

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType, &qword_1EC2B60D8, &qword_1C8BE6D88);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication, &qword_1EC2BADB8, &qword_1C8BFABD8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition, &qword_1EC2BADE0, &qword_1C8BFABE0);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon, &qword_1EC2BAE18, &qword_1C8BFABE8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer, &qword_1EC2BAE30, &unk_1C8BFABF0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, &qword_1EC2BAE30, &unk_1C8BFABF0);

  return v0;
}

uint64_t sub_1C89AE894(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C89AE954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C89AECD0();
        break;
      case 2:
        sub_1C89AED2C();
        break;
      case 3:
        sub_1C89AED88(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C89AEE1C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C89AEEE8(a2, a1, a3, a4);
        break;
      case 6:
      case 8:
        sub_1C89AF0A0();
        break;
      case 7:
        sub_1C89AEFC4(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C89AF10C(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C89AF1E8(a2, a1, a3, a4);
        break;
      case 11:
        sub_1C89AF274(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C89AF350(a2, a1, a3, a4);
        break;
      case 13:
      case 21:
        sub_1C89AF9CC();
        break;
      case 14:
        sub_1C89AF42C();
        break;
      case 15:
        sub_1C89AF4A4(a2, a1, a3, a4);
        break;
      case 16:
        sub_1C89AF580(a2, a1, a3, a4);
        break;
      case 17:
        sub_1C89AF65C(a2, a1, a3, a4);
        break;
      case 18:
        sub_1C89AF738(a2, a1, a3, a4);
        break;
      case 19:
        sub_1C89AF814(a2, a1, a3, a4);
        break;
      case 20:
        sub_1C89AF8F0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89AECD0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  v0 = sub_1C8BD4C2C();
  return OUTLINED_FUNCTION_53_1(v0);
}

uint64_t sub_1C89AED2C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  v0 = sub_1C8BD4C2C();
  return OUTLINED_FUNCTION_53_1(v0);
}

uint64_t sub_1C89AED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C89DF208();
  sub_1C8BD4B5C();
  return swift_endAccess();
}

uint64_t sub_1C89AEE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AEEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AEFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF0A0()
{
  OUTLINED_FUNCTION_534_0();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  v1 = v0();
  return OUTLINED_FUNCTION_53_1(v1);
}

uint64_t sub_1C89AF10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category(0);
  sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4BDC();
  return swift_endAccess();
}

uint64_t sub_1C89AF274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
  sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF42C()
{
  OUTLINED_FUNCTION_1152();
  OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_540();
  v1 = swift_beginAccess();
  v0(v1);
  OUTLINED_FUNCTION_991();
  v2 = sub_1C8BD4B5C();
  return OUTLINED_FUNCTION_53_1(v2);
}

uint64_t sub_1C89AF4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0);
  sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0);
  sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF9CC()
{
  OUTLINED_FUNCTION_1152();
  OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_540();
  v1 = swift_beginAccess();
  v0(v1);
  OUTLINED_FUNCTION_991();
  v2 = sub_1C8BD4B1C();
  return OUTLINED_FUNCTION_53_1(v2);
}

uint64_t sub_1C89AFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_696();
  v7(0);
  OUTLINED_FUNCTION_119();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89AFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = v63 - v11;
  v67 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v12 = MEMORY[0x1EEE9AC00](v67);
  v63[2] = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63[3] = v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = v63 - v16;
  v69 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = v63 - v19;
  v72 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = v63 - v22;
  v75 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v63 - v25;
  v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v27);
  swift_beginAccess();
  v80 = a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_1C8BD4DDC();
    if (v5)
    {
    }
  }

  v31 = v80;
  swift_beginAccess();
  v32 = *(v31 + 32);
  v33 = *(v31 + 40);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1C8BD4DDC();
    if (!v5)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  v35 = v80;
  swift_beginAccess();
  if (*(v35 + 48))
  {
    v36 = *(v35 + 56);
    v78 = *(v35 + 48);
    v79 = v36;
    sub_1C89DF208();
    result = sub_1C8BD4D4C();
    if (v5)
    {
      return result;
    }
  }

  v63[1] = a3;
  swift_beginAccess();
  if (*(*(v35 + 64) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
    sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

    sub_1C8BD4E0C();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C8778ED8(v26, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
    sub_1C8BD4E2C();
    if (v5)
    {
      return sub_1C88E3C58();
    }

    sub_1C88E3C58();
  }

  v38 = v80 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName;
  swift_beginAccess();
  if (*(v38 + 8))
  {

    sub_1C8BD4DDC();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v39 = v74;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v39, 1, v75) == 1)
  {
    sub_1C8778ED8(v39, &qword_1EC2BADB8, &qword_1C8BFABD8);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);
    sub_1C8BD4E2C();
    if (v5)
    {
      return sub_1C88E3C58();
    }

    sub_1C88E3C58();
  }

  v40 = v80 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary;
  swift_beginAccess();
  if (*(v40 + 8))
  {

    sub_1C8BD4DDC();
    if (v5)
    {
    }
  }

  v41 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  v42 = v80;
  swift_beginAccess();
  if (*(*(v42 + v41) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category(0);
    sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

    sub_1C8BD4E0C();
    if (v5)
    {
    }
  }

  v43 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  v44 = v80;
  swift_beginAccess();
  if (*(*(v44 + v43) + 16))
  {

    sub_1C8BD4DAC();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v45 = v71;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v45, 1, v72) != 1)
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);
    sub_1C8BD4E2C();
    if (!v5)
    {
      sub_1C88E3C58();
      goto LABEL_44;
    }

    return sub_1C88E3C58();
  }

  sub_1C8778ED8(v45, &qword_1EC2BADE0, &qword_1C8BFABE0);
LABEL_44:
  v46 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  v47 = v80;
  swift_beginAccess();
  if (*(*(v47 + v46) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
    sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);

    sub_1C8BD4E0C();
    if (v5)
    {
    }
  }

  v48 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  v49 = v80;
  swift_beginAccess();
  if (*(*(v49 + v48) + 16))
  {
    sub_1C89DF1B4();

    sub_1C8BD4D1C();
    if (v5)
    {
    }
  }

  v50 = v80 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  swift_beginAccess();
  if (!*v50 || (v51 = *(v50 + 8), v76 = *v50, v77 = v51, sub_1C89DF10C(), result = sub_1C8BD4D4C(), !v5))
  {
    v52 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
    v53 = v80;
    swift_beginAccess();
    if (!*(*(v53 + v52) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition), , sub_1C8BD4E0C(), result = , !v5))
    {
      v54 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
      v55 = v80;
      swift_beginAccess();
      if (!*(*(v55 + v54) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0), sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol), , sub_1C8BD4E0C(), result = , !v5))
      {
        swift_beginAccess();
        v56 = v68;
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v56, 1, v69) == 1)
        {
          sub_1C8778ED8(v56, &qword_1EC2BAE18, &qword_1C8BFABE8);
        }

        else
        {
          sub_1C88E3EC4();
          sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);
          sub_1C8BD4E2C();
          result = sub_1C88E3C58();
          if (v5)
          {
            return result;
          }
        }

        v57 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
        v58 = v80;
        swift_beginAccess();
        if (!*(*(v58 + v57) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0), sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter), , sub_1C8BD4E0C(), result = , !v5))
        {
          swift_beginAccess();
          v59 = v65;
          sub_1C89CBE2C();
          if (__swift_getEnumTagSinglePayload(v59, 1, v67) == 1)
          {
            sub_1C8778ED8(v59, &qword_1EC2BAE30, &unk_1C8BFABF0);
          }

          else
          {
            sub_1C88E3EC4();
            sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
            sub_1C8BD4E2C();
            result = sub_1C88E3C58();
            if (v5)
            {
              return result;
            }
          }

          v60 = v80;
          swift_beginAccess();
          v61 = v64;
          sub_1C89CBE2C();
          if (__swift_getEnumTagSinglePayload(v61, 1, v67) == 1)
          {
            sub_1C8778ED8(v61, &qword_1EC2BAE30, &unk_1C8BFABF0);
          }

          else
          {
            sub_1C88E3EC4();
            sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
            sub_1C8BD4E2C();
            result = sub_1C88E3C58();
            if (v5)
            {
              return result;
            }

            v60 = v80;
          }

          v62 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
          result = swift_beginAccess();
          if (*(*(v60 + v62) + 16))
          {
            sub_1C89DF160();

            sub_1C8BD4D1C();
          }
        }
      }
    }
  }

  return result;
}