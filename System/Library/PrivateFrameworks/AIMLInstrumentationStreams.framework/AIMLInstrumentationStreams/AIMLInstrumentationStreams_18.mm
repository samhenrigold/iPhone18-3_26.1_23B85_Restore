uint64_t sub_23C7399EC(uint64_t a1)
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

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
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

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v19 = sub_23C870F34();
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

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
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

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_23C870F34();
  v20 = *(*(v19 - 8) + 56);
  v21 = v7 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_23C739E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C7367A4(319, &qword_27E1FF760, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_23C7367A4(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF6C0, type metadata accessor for ToolKitProtoContentItemClassDescriptor, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        sub_23C870F34();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C73A1E0(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF8A0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73A34C(uint64_t a1)
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

uint64_t sub_23C73A460(uint64_t a1)
{
  result = sub_23C870F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73A57C(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF908, type metadata accessor for ToolKitProtoRuntimePlatformVersion, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73A6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_401Tm_0_4);
}

uint64_t sub_23C73A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_402Tm_0_3);
}

uint64_t sub_23C73A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23C73A88C(uint64_t a1)
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

uint64_t sub_23C73A9E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_23C73AA30(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_23C73AAB8(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C73AB94(319, &qword_27E1FF9A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C73AB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23C8716D4();
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
    v8 = sub_23C870F34();
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
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73ADCC(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73AEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_23C870F34();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73AFF4(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FFA10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF300, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C73B228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C7367A4(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF300, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        sub_23C870F34();
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23C870F34();
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23C870F34();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23C73B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

uint64_t sub_23C73B950(uint64_t a1)
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

uint64_t sub_23C73B96C(uint64_t result, int a2)
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

uint64_t sub_23C73B9EC(uint64_t a1)
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

void sub_23C73BB5C(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FFA10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFB40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_23C73D4F0(319, &qword_27E1FFB48, &type metadata for ToolKitProtoToolDefinition.Version1.Flag, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FFB50, type metadata accessor for ToolKitProtoSystemToolProtocol, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_23C73D4F0(319, &qword_27E1FFB58, &type metadata for ToolKitProtoToolDefinition.Version1.VisibilityFlag, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_23C7367A4(319, &qword_27E1FFB60, type metadata accessor for ToolKitProtoAppDefinition, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_23C7367A4(319, &qword_27E1FFB68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
                        {
                          sub_23C7367A4(319, &qword_27E1FFB70, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            sub_23C7367A4(319, &qword_27E1FFB78, type metadata accessor for ToolKitProtoContainerDefinition, MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_23C870F34();
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

uint64_t getEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C73C16C(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FFB90, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FFB98, &type metadata for ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C870F34();
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

uint64_t __swift_get_extra_inhabitant_index_222Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_223Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1278Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_1279Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73C848(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_147Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_148Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C73CAA4(uint64_t a1)
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

void sub_23C73CB90(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C73CCD4(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73CD94(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73CE50(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FFCA8, type metadata accessor for ToolKitProtoAppDefinition.Device, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
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
      v15 = sub_23C870F34();
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
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 44);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C73D210(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFCD8, type metadata accessor for ToolKitProtoContainerDefinition.Device, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
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
    v10 = sub_23C870F34();
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
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73D4F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23C73D540(uint64_t a1, unsigned int a2)
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

uint64_t sub_23C73D590(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_23C73D61C(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_465Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_466Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73D8A8(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFD28, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FFD30, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FFD38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FFD40, type metadata accessor for ToolKitProtoPluginModelData, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C870F34();
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

uint64_t __swift_get_extra_inhabitant_index_810Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_811Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_129Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_130Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C73DE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23C870F34();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73DFE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C7367A4(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_300Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_301Tm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73E1E8(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73E2A0(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_23C7367A4(319, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_23C870F34();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_165Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23C73E570(uint64_t a1)
{
  result = sub_23C870F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_420Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_421Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C73E854(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FFE58, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73E950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C73E9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C73EA18()
{
  result = qword_27E1FA448;
  if (!qword_27E1FA448)
  {
    sub_23C870F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA448);
  }

  return result;
}

uint64_t sub_23C73EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C73F074()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF00);
  __swift_project_value_buffer(v0, qword_27E1FFF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F40C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF18);
  __swift_project_value_buffer(v0, qword_27E1FFF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F6B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF30);
  __swift_project_value_buffer(v0, qword_27E1FFF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Confirmation";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F910()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF48);
  __swift_project_value_buffer(v0, qword_27E1FFF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FB20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF60);
  __swift_project_value_buffer(v0, qword_27E1FFF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FD30()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF78);
  __swift_project_value_buffer(v0, qword_27E1FFF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "not";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FF8C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF90);
  __swift_project_value_buffer(v0, qword_27E1FFF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "assign";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "add";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "addAssign";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "subtract";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "subtractAssign";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "divide";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "divideAssign";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "multiply";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "multiplyAssign";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "lessThan";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "and";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "or";
  *(v41 + 1) = 2;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C7405AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFA8);
  __swift_project_value_buffer(v0, qword_27E1FFFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ASTInfixOp_EXPONENT";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ASTInfixOp_EQUAL";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ASTInfixOp_NOTEQUAL";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ASTInfixOp_IN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ASTInfixOp_GREATERTHAN";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ASTInfixOp_LESSTHANEQUAL";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ASTInfixOp_LESSTHAN";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ASTInfixOp_AND";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ASTInfixOp_OR";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C740BD0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFC0);
  __swift_project_value_buffer(v0, qword_27E1FFFC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ASTPrefixOp_NOT";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C740E2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFD8);
  __swift_project_value_buffer(v0, qword_27E1FFFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C74103C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFF0);
  __swift_project_value_buffer(v0, qword_27E1FFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "schema";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C741298()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200008);
  __swift_project_value_buffer(v0, qword_27E200008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7414C4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200020);
  __swift_project_value_buffer(v0, qword_27E200020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "timepoint";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 6;
  *v24 = "sender";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 7;
  *v26 = "postingSpan";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 8;
  *v28 = "rawInitiatedSpans";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      if (result > 10)
      {
        switch(result)
        {
          case 11:
            goto LABEL_2;
          case 12:
LABEL_29:
            sub_23C871154();
            break;
          case 13:
            sub_23C741D7C(a1, v5, a2, a3);
            break;
        }
      }

      else if (result == 8)
      {
        sub_23C741CF8(a1, v5, a2, a3);
      }

      else
      {
        if (result != 9)
        {
          type metadata accessor for TranscriptProtoEvent(0);
          goto LABEL_29;
        }

LABEL_2:
        sub_23C871164();
      }
    }

    else if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 6:
          sub_23C741B90(a1, v5, a2, a3);
          break;
        case 7:
          sub_23C741C44(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_23C741ADC(a1, v5, a2, a3);
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_23C741ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  return sub_23C8711A4();
}

uint64_t sub_23C741B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  return sub_23C8711A4();
}

uint64_t sub_23C741C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  return sub_23C8711A4();
}

uint64_t sub_23C741CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  sub_23C870F04();
  return sub_23C871034();
}

uint64_t sub_23C741D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoEvent(0);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C742088(v3, a1, a2, a3);
    if (!v4)
    {
      v11 = v3[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_23C8712C4();
      }

      v13 = v3[7];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[6] & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_23C8712C4();
      }

      sub_23C7422A4(v3, a1, a2, a3);
      sub_23C7424C0(v3, a1, a2, a3);
      if (*(v3[10] + 16))
      {
        sub_23C870EE4();
        sub_23C870F04();
        sub_23C871224();
      }

      v15 = v3[9];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v3[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_23C8712C4();
      }

      sub_23C7426DC(v3, a1, a2, a3);
      v17 = v3[1];
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_23C8712C4();
      }

      if (v3[12])
      {
        sub_23C8712C4();
      }

      sub_23C742754(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoEvent(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C742088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPayload(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v12 + 44), v7, &qword_27E1F9950, &unk_23C87CFF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1F9950, &unk_23C87CFF0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoPayload);
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayload);
}

uint64_t sub_23C7422A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoParticipantID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v12 + 56), v7, &qword_27E1FBF48, &unk_23C8A1140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBF48, &unk_23C8A1140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoParticipantID);
}

uint64_t sub_23C7424C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSpanID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v12 + 60), v7, &qword_27E1FBF40, &qword_23C87D088);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBF40, &qword_23C87D088);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoSpanID);
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSpanID);
}

uint64_t sub_23C7426DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoEvent(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C742754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v12 + 52), v7, &qword_27E1F9D08, &qword_23C87D090);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1F9D08, &qword_23C87D090);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoTimepoint);
}

unint64_t sub_23C7429BC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v4 = a1[11];
  v5 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[13];
  v7 = &a2[a1[12]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[14];
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[15];
  v12 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  result = sub_23C599848(MEMORY[0x277D84F90]);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_23C742B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036F8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C742C24(uint64_t a1)
{
  sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return sub_23C8711F4();
}

uint64_t sub_23C742C90(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);

  return sub_23C871204();
}

uint64_t sub_23C742D2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200038);
  __swift_project_value_buffer(v0, qword_27E200038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_23C88DB90;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 46;
  *v5 = "sessionStart";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 41;
  *v9 = "request";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "planCreated";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionCreated";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clientActionCreated";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "queriesCreated";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "variablesSet";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "criticalError";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 47;
  *v22 = "recoverableError";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "endOfPlan";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "terminate";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "queriesExecuted";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "actionResolverRequestCreated";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 25;
  *v32 = "safetyModeRelease";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "safetyModeException";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "responseGenerationRequest";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 28;
  *v37 = "entitySpanMatched";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 29;
  *v39 = "ContextRetrieved";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 30;
  *v41 = "actionCanceled";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 31;
  *v43 = "toolsRetrieved";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 32;
  *v45 = "systemResponseGenerated";
  *(v45 + 1) = 23;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 33;
  *v47 = "statementEvaluated";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 42;
  *v49 = "externalAgentRequest";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 36;
  *v51 = "externalAgentOutcome";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 37;
  *v53 = "externalAgentRequestRewriteMetadata";
  *(v53 + 1) = 35;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 38;
  *v55 = "ToolResolution";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 39;
  *v57 = "undoRedoRequest";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 40;
  *v59 = "clientUndoRedoRequest";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 43;
  *v61 = "typeConversionRequest";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 44;
  *v63 = "typeConversionResult";
  *(v63 + 1) = 20;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 45;
  *v65 = "queryDecorationResult";
  *(v65 + 1) = 21;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 48;
  *v67 = "continuePlanning";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 49;
  *v68 = "queryDecorationPrePlannerResult";
  *(v68 + 8) = 31;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 50;
  *v70 = "skipStatement";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_23C743B70(v5, a1, a2, a3);
        break;
      case 4:
        sub_23C74412C(v5, a1, a2, a3);
        break;
      case 5:
        sub_23C7446E8(v5, a1, a2, a3);
        break;
      case 6:
        sub_23C744CA4(v5, a1, a2, a3);
        break;
      case 7:
        sub_23C745260(v5, a1, a2, a3);
        break;
      case 11:
        sub_23C74581C(v5, a1, a2, a3);
        break;
      case 14:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 32;
        goto LABEL_32;
      case 15:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 33;
LABEL_32:
        sub_23C745DD8(v11, v12, v13, v14, &qword_27E1F9958, &qword_23C873E10, type metadata accessor for TranscriptProtoPayloadEnum, v15);
        break;
      case 19:
        sub_23C746160(v5, a1, a2, a3);
        break;
      case 21:
        sub_23C74671C(v5, a1, a2, a3);
        break;
      case 25:
        sub_23C746CD8(v5, a1, a2, a3);
        break;
      case 26:
        sub_23C747294(v5, a1, a2, a3);
        break;
      case 27:
        sub_23C747850(v5, a1, a2, a3);
        break;
      case 28:
        sub_23C747E0C(v5, a1, a2, a3);
        break;
      case 29:
        sub_23C7483C8(v5, a1, a2, a3);
        break;
      case 30:
        sub_23C748984(v5, a1, a2, a3);
        break;
      case 31:
        sub_23C748F40(v5, a1, a2, a3);
        break;
      case 32:
        sub_23C7494FC(v5, a1, a2, a3);
        break;
      case 33:
        sub_23C749AB8(v5, a1, a2, a3);
        break;
      case 36:
        sub_23C74A074(v5, a1, a2, a3);
        break;
      case 37:
        sub_23C74A630(v5, a1, a2, a3);
        break;
      case 38:
        sub_23C74ABEC(v5, a1, a2, a3);
        break;
      case 39:
        sub_23C74B1A8(v5, a1, a2, a3);
        break;
      case 40:
        sub_23C74B764(v5, a1, a2, a3);
        break;
      case 41:
        sub_23C74BD20(v5, a1, a2, a3);
        break;
      case 42:
        sub_23C74C2DC(v5, a1, a2, a3);
        break;
      case 43:
        sub_23C74C898(v5, a1, a2, a3);
        break;
      case 44:
        sub_23C74CE54(v5, a1, a2, a3);
        break;
      case 45:
        sub_23C74D410(v5, a1, a2, a3);
        break;
      case 46:
        sub_23C74D9CC(v5, a1, a2, a3);
        break;
      case 47:
        sub_23C74DF7C(v5, a1, a2, a3);
        break;
      case 48:
        sub_23C74E538(v5, a1, a2, a3);
        break;
      case 49:
        sub_23C74EAF4(v5, a1, a2, a3);
        break;
      case 50:
        sub_23C74F0B0(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C743B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E50, &qword_23C8A0FF8);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203E50, &qword_23C8A0FF8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPlan);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPlan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E50, &qword_23C8A0FF8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E50, &qword_23C8A0FF8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E50, &qword_23C8A0FF8);
    return sub_23C585C34(v32, &qword_27E203E50, &qword_23C8A0FF8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPlan);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E50, &qword_23C8A0FF8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FBB28, &qword_23C87B928);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoAction);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FBB28, &qword_23C87B928);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FBB28, &qword_23C87B928);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FBB28, &qword_23C87B928);
    return sub_23C585C34(v32, &qword_27E1FBB28, &qword_23C87B928);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoAction);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FBB28, &qword_23C87B928);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7446E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E58, &qword_23C8A1000);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E203E58, &qword_23C8A1000);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoClientAction);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoClientAction);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E58, &qword_23C8A1000);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E58, &qword_23C8A1000);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E58, &qword_23C8A1000);
    return sub_23C585C34(v32, &qword_27E203E58, &qword_23C8A1000);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoClientAction);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E58, &qword_23C8A1000);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoClientAction);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C744CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v6 = *(Step - 8);
  v7 = MEMORY[0x28223BE20](Step);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E60, &qword_23C8A1008);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = Step;
  v26 = Step;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E203E60, &qword_23C8A1008);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryStep);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryStep);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E60, &qword_23C8A1008);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E60, &qword_23C8A1008);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E60, &qword_23C8A1008);
    return sub_23C585C34(v32, &qword_27E203E60, &qword_23C8A1008);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryStep);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E60, &qword_23C8A1008);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryStep);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C745260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E68, &qword_23C8A1010);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E203E68, &qword_23C8A1010);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoVariableStep);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoVariableStep);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E68, &qword_23C8A1010);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E68, &qword_23C8A1010);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E68, &qword_23C8A1010);
    return sub_23C585C34(v32, &qword_27E203E68, &qword_23C8A1010);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoVariableStep);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E68, &qword_23C8A1010);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoVariableStep);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E70, &qword_23C8A1018);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E203E70, &qword_23C8A1018);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSessionError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSessionError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E70, &qword_23C8A1018);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E70, &qword_23C8A1018);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E70, &qword_23C8A1018);
    return sub_23C585C34(v32, &qword_27E203E70, &qword_23C8A1018);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSessionError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E70, &qword_23C8A1018);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSessionError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C745DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v37 = a8;
  v35 = a7;
  v36 = a6;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = sub_23C870E84();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  v21 = v39;
  sub_23C871094();
  v39 = v21;
  if (v21)
  {
    return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  }

  v32[1] = a4;
  v33 = v12;
  v34 = a5;
  sub_23C5855B0(v18, v16, &qword_27E1FEBC8, &qword_23C889840);
  v22 = (*(v20 + 48))(v16, 1, v19);
  sub_23C585C34(v16, &qword_27E1FEBC8, &qword_23C889840);
  if (v22 == 1)
  {
    return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  }

  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_23C5855B0(v38, v33, v34, v36);
  v27 = v35(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v24, 1, v27);
  sub_23C585C34(v24, v25, v26);
  if (v29 != 1)
  {
    v30 = v39;
    sub_23C871054();
    if (v30)
    {
      return sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
    }
  }

  sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  v31 = v38;
  sub_23C585C34(v38, v34, v26);
  swift_storeEnumTagMultiPayload();
  return (*(v28 + 56))(v31, 0, 1, v27);
}

uint64_t sub_23C746160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v6 = *(StepResults - 8);
  v7 = MEMORY[0x28223BE20](StepResults);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E78, &qword_23C8A1020);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = StepResults;
  v26 = StepResults;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E203E78, &qword_23C8A1020);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryStepResults);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryStepResults);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E78, &qword_23C8A1020);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E78, &qword_23C8A1020);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E78, &qword_23C8A1020);
    return sub_23C585C34(v32, &qword_27E203E78, &qword_23C8A1020);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryStepResults);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E78, &qword_23C8A1020);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryStepResults);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E80, &qword_23C8A1028);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E203E80, &qword_23C8A1028);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoActionResolverRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionResolverRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E80, &qword_23C8A1028);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E80, &qword_23C8A1028);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E80, &qword_23C8A1028);
    return sub_23C585C34(v32, &qword_27E203E80, &qword_23C8A1028);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoActionResolverRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E80, &qword_23C8A1028);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionResolverRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C746CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E88, &qword_23C8A1030);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E203E88, &qword_23C8A1030);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSafetyModeRelease);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSafetyModeRelease);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E88, &qword_23C8A1030);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E88, &qword_23C8A1030);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E88, &qword_23C8A1030);
    return sub_23C585C34(v32, &qword_27E203E88, &qword_23C8A1030);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSafetyModeRelease);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E88, &qword_23C8A1030);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSafetyModeRelease);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C747294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E90, &qword_23C8A1038);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v24, &qword_27E203E90, &qword_23C8A1038);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSafetyModeException);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSafetyModeException);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E90, &qword_23C8A1038);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E90, &qword_23C8A1038);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E90, &qword_23C8A1038);
    return sub_23C585C34(v32, &qword_27E203E90, &qword_23C8A1038);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSafetyModeException);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E90, &qword_23C8A1038);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSafetyModeException);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C747850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E98, &qword_23C8A1040);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v24, &qword_27E203E98, &qword_23C8A1040);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E98, &qword_23C8A1040);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E98, &qword_23C8A1040);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E98, &qword_23C8A1040);
    return sub_23C585C34(v32, &qword_27E203E98, &qword_23C8A1040);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E98, &qword_23C8A1040);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C747E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v6 = *(matched - 8);
  v7 = MEMORY[0x28223BE20](matched);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EA0, &qword_23C8A1048);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = matched;
  v26 = matched;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v24, &qword_27E203EA0, &qword_23C8A1048);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EA0, &qword_23C8A1048);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EA0, &qword_23C8A1048);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EA0, &qword_23C8A1048);
    return sub_23C585C34(v32, &qword_27E203EA0, &qword_23C8A1048);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EA0, &qword_23C8A1048);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7483C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EA8, &qword_23C8A1050);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v24, &qword_27E203EA8, &qword_23C8A1050);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoContextRetrieved);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoContextRetrieved);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EA8, &qword_23C8A1050);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EA8, &qword_23C8A1050);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EA8, &qword_23C8A1050);
    return sub_23C585C34(v32, &qword_27E203EA8, &qword_23C8A1050);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoContextRetrieved);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EA8, &qword_23C8A1050);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoContextRetrieved);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C748984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EB0, &qword_23C8A1058);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_23C585C34(v24, &qword_27E203EB0, &qword_23C8A1058);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoActionCancellation);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoActionCancellation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EB0, &qword_23C8A1058);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EB0, &qword_23C8A1058);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EB0, &qword_23C8A1058);
    return sub_23C585C34(v32, &qword_27E203EB0, &qword_23C8A1058);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoActionCancellation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EB0, &qword_23C8A1058);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C748F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EB8, &qword_23C8A1060);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v24, &qword_27E203EB8, &qword_23C8A1060);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EB8, &qword_23C8A1060);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EB8, &qword_23C8A1060);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EB8, &qword_23C8A1060);
    return sub_23C585C34(v32, &qword_27E203EB8, &qword_23C8A1060);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EB8, &qword_23C8A1060);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7494FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EC0, &qword_23C8A1068);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_23C585C34(v24, &qword_27E203EC0, &qword_23C8A1068);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSystemResponse);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EC0, &qword_23C8A1068);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EC0, &qword_23C8A1068);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EC0, &qword_23C8A1068);
    return sub_23C585C34(v32, &qword_27E203EC0, &qword_23C8A1068);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSystemResponse);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EC0, &qword_23C8A1068);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C749AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EC8, &qword_23C8A1070);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_23C585C34(v24, &qword_27E203EC8, &qword_23C8A1070);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoStatementResult);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoStatementResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EC8, &qword_23C8A1070);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EC8, &qword_23C8A1070);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EC8, &qword_23C8A1070);
    return sub_23C585C34(v32, &qword_27E203EC8, &qword_23C8A1070);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoStatementResult);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EC8, &qword_23C8A1070);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoStatementResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203ED0, &qword_23C8A1078);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_23C585C34(v24, &qword_27E203ED0, &qword_23C8A1078);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203ED0, &qword_23C8A1078);
  }

  sub_23C5855B0(v24, v32, &qword_27E203ED0, &qword_23C8A1078);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203ED0, &qword_23C8A1078);
    return sub_23C585C34(v32, &qword_27E203ED0, &qword_23C8A1078);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203ED0, &qword_23C8A1078);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_23C585C34(v24, &qword_27E203DC0, &unk_23C8A1170);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DC0, &unk_23C8A1170);
    return sub_23C585C34(v32, &qword_27E203DC0, &unk_23C8A1170);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DC0, &unk_23C8A1170);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203ED8, &qword_23C8A1080);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_23C585C34(v24, &qword_27E203ED8, &qword_23C8A1080);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoToolResolution);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoToolResolution);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203ED8, &qword_23C8A1080);
  }

  sub_23C5855B0(v24, v32, &qword_27E203ED8, &qword_23C8A1080);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203ED8, &qword_23C8A1080);
    return sub_23C585C34(v32, &qword_27E203ED8, &qword_23C8A1080);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoToolResolution);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203ED8, &qword_23C8A1080);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoToolResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EE0, &qword_23C8A1088);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_23C585C34(v24, &qword_27E203EE0, &qword_23C8A1088);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoUndoRedoRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoUndoRedoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EE0, &qword_23C8A1088);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EE0, &qword_23C8A1088);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EE0, &qword_23C8A1088);
    return sub_23C585C34(v32, &qword_27E203EE0, &qword_23C8A1088);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoUndoRedoRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EE0, &qword_23C8A1088);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EE8, &qword_23C8A1090);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_23C585C34(v24, &qword_27E203EE8, &qword_23C8A1090);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EE8, &qword_23C8A1090);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EE8, &qword_23C8A1090);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EE8, &qword_23C8A1090);
    return sub_23C585C34(v32, &qword_27E203EE8, &qword_23C8A1090);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EE8, &qword_23C8A1090);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EF0, &qword_23C8A1098);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203EF0, &qword_23C8A1098);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EF0, &qword_23C8A1098);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EF0, &qword_23C8A1098);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EF0, &qword_23C8A1098);
    return sub_23C585C34(v32, &qword_27E203EF0, &qword_23C8A1098);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EF0, &qword_23C8A1098);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EF8, &qword_23C8A10A0);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_23C585C34(v24, &qword_27E203EF8, &qword_23C8A10A0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoExternalAgentRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoExternalAgentRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203EF8, &qword_23C8A10A0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203EF8, &qword_23C8A10A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203EF8, &qword_23C8A10A0);
    return sub_23C585C34(v32, &qword_27E203EF8, &qword_23C8A10A0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoExternalAgentRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203EF8, &qword_23C8A10A0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoExternalAgentRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F00, &qword_23C8A10A8);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_23C585C34(v24, &qword_27E203F00, &qword_23C8A10A8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoTypeConversionRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoTypeConversionRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F00, &qword_23C8A10A8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F00, &qword_23C8A10A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F00, &qword_23C8A10A8);
    return sub_23C585C34(v32, &qword_27E203F00, &qword_23C8A10A8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoTypeConversionRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F00, &qword_23C8A10A8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoTypeConversionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F08, &qword_23C8A10B0);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_23C585C34(v24, &qword_27E203F08, &qword_23C8A10B0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoTypeConversionResult);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoTypeConversionResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F08, &qword_23C8A10B0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F08, &qword_23C8A10B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F08, &qword_23C8A10B0);
    return sub_23C585C34(v32, &qword_27E203F08, &qword_23C8A10B0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoTypeConversionResult);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F08, &qword_23C8A10B0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoTypeConversionResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v6 = *(DecorationResult - 8);
  v7 = MEMORY[0x28223BE20](DecorationResult);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F10, &qword_23C8A10B8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationResult;
  v26 = DecorationResult;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_23C585C34(v24, &qword_27E203F10, &qword_23C8A10B8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationResult);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F10, &qword_23C8A10B8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F10, &qword_23C8A10B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F10, &qword_23C8A10B8);
    return sub_23C585C34(v32, &qword_27E203F10, &qword_23C8A10B8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationResult);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F10, &qword_23C8A10B8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F18, &qword_23C8A10C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203F18, &qword_23C8A10C0);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoSessionStart);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSessionStart);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F18, &qword_23C8A10C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F18, &qword_23C8A10C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F18, &qword_23C8A10C0);
    return sub_23C585C34(v32, &qword_27E203F18, &qword_23C8A10C0);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoSessionStart);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F18, &qword_23C8A10C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSessionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F20, &qword_23C8A10C8);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E203F20, &qword_23C8A10C8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRecoverableError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRecoverableError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F20, &qword_23C8A10C8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F20, &qword_23C8A10C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F20, &qword_23C8A10C8);
    return sub_23C585C34(v32, &qword_27E203F20, &qword_23C8A10C8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRecoverableError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F20, &qword_23C8A10C8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRecoverableError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74E538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F28, &qword_23C8A10D0);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_23C585C34(v24, &qword_27E203F28, &qword_23C8A10D0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoContinuePlanning);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoContinuePlanning);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F28, &qword_23C8A10D0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F28, &qword_23C8A10D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F28, &qword_23C8A10D0);
    return sub_23C585C34(v32, &qword_27E203F28, &qword_23C8A10D0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoContinuePlanning);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F28, &qword_23C8A10D0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoContinuePlanning);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(DecorationPrePlannerResult - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F30, &qword_23C8A10D8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResult;
  v26 = DecorationPrePlannerResult;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_23C585C34(v24, &qword_27E203F30, &qword_23C8A10D8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F30, &qword_23C8A10D8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F30, &qword_23C8A10D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F30, &qword_23C8A10D8);
    return sub_23C585C34(v32, &qword_27E203F30, &qword_23C8A10D8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F30, &qword_23C8A10D8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C74F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F38, &qword_23C8A10E0);
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
  sub_23C5855B0(a1, v12, &qword_27E1F9958, &qword_23C873E10);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1F9958, &qword_23C873E10);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_23C585C34(v24, &qword_27E203F38, &qword_23C8A10E0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSkipStatement);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSkipStatement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203F38, &qword_23C8A10E0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203F38, &qword_23C8A10E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203F38, &qword_23C8A10E0);
    return sub_23C585C34(v32, &qword_27E203F38, &qword_23C8A10E0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSkipStatement);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203F38, &qword_23C8A10E0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSkipStatement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C7531A4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_8;
      case 2u:
        sub_23C74FC3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 3u:
        sub_23C74FE74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 4u:
        sub_23C7500AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 5u:
        sub_23C7502E4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 6u:
        sub_23C75051C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 7u:
        sub_23C750754(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 8u:
        sub_23C753EF0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 9u:
        sub_23C750E24(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xAu:
        sub_23C75105C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xBu:
        sub_23C751294(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xCu:
        sub_23C7514CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xDu:
        sub_23C751704(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xEu:
        sub_23C75193C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xFu:
        sub_23C751B74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x10u:
        sub_23C751DAC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x11u:
        sub_23C751FE4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x12u:
        sub_23C75221C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x13u:
        sub_23C752454(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x14u:
        sub_23C7533DC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x15u:
        sub_23C75268C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x16u:
        sub_23C7528C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x17u:
        sub_23C752AFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x18u:
        sub_23C752D34(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x19u:
        sub_23C752F6C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Au:
        sub_23C753614(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Bu:
        sub_23C75384C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_8;
      case 0x1Cu:
        sub_23C753A84(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Du:
        sub_23C754128(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Eu:
        sub_23C754360(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Fu:
        sub_23C754598(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x20u:
        result = sub_23C75098C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_23C750BD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C753CBC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

LABEL_8:
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        break;
    }
  }

  type metadata accessor for TranscriptProtoPayload(0);
  return sub_23C870F14();
}

uint64_t sub_23C74FC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPlan);
    sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlan);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C74FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoAction);
    sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAction);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7500AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoClientAction);
    sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoClientAction);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7502E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryStep);
    sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryStep);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoVariableStep);
    sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoVariableStep);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C750754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSessionError);
    sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1F9958, &qword_23C873E10);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1F9958, &qword_23C873E10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 32)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C750BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1F9958, &qword_23C873E10);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1F9958, &qword_23C873E10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 33)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C750E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7514CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSafetyModeException);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoContextRetrieved);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionCancellation);
    sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionCancellation);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemResponse);
    sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemResponse);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoStatementResult);
    sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementResult);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7528C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoToolResolution);
    sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoToolResolution);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoUndoRedoRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequest);
    sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7533DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSessionStart);
    sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionStart);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRecoverableError);
    sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRecoverableError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoContinuePlanning);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1F9958, &qword_23C873E10);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSkipStatement);
    sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSkipStatement);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75481C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_23C8720F4();
  a1(0);
  sub_23C8314AC(a2, a3, a4);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C754908(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036F0, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7549A8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C754A14(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return sub_23C871204();
}

uint64_t sub_23C754AB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200050);
  __swift_project_value_buffer(v0, qword_27E200050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "events";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoTranscript.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for TranscriptProtoEvent(0);
          sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
          sub_23C871194();
          break;
        case 2:
          sub_23C871154();
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

uint64_t TranscriptProtoTranscript.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_23C8712C4(), !v4))
  {
    if (v3[4])
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
        sub_23C8712F4();
      }

      type metadata accessor for TranscriptProtoTranscript(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C754FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036E8, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C755074(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201DC8, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return sub_23C8711F4();
}

uint64_t sub_23C7550E0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201DC8, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return sub_23C871204();
}

uint64_t sub_23C75517C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200068);
  __swift_project_value_buffer(v0, qword_27E200068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suspendingClockInstantNs";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "continuousClockInstantNs";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawBootSessionUUID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_23C871164();
      }
    }

    else if (result == 1)
    {
      sub_23C7554B8(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      sub_23C871184();
    }
  }
}

uint64_t sub_23C7554B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_23C870EC4();
  sub_23C8314AC(&qword_27E1FEED8, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C75565C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C8712E4();
    }

    if (v3[1])
    {
      sub_23C8712E4();
    }

    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_23C8712C4();
    }

    type metadata accessor for TranscriptProtoTimepoint(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_23C870EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &unk_27E1F9D10, &qword_23C874E00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &unk_27E1F9D10, &qword_23C874E00);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_23C8314AC(&qword_27E1FEED8, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_23C871304();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23C7558C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 28);
  v4 = sub_23C870EC4();
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C755998(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036E0, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C755A38(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return sub_23C8711F4();
}

uint64_t sub_23C755AA4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return sub_23C871204();
}

uint64_t sub_23C755B40()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200080);
  __swift_project_value_buffer(v0, qword_27E200080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "originatingDevice";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSessionStart.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for TranscriptProtoLocaleSettings(0);
        sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);
        sub_23C8711A4();
      }

      else if (result == 3)
      {
        sub_23C755E2C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C755E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSessionStart(0);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  return sub_23C8711A4();
}

uint64_t sub_23C755F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E28, &unk_23C8A1150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203E28, &unk_23C8A1150);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203E28, &unk_23C8A1150);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_23C756144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E18, &qword_23C8A0FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203E18, &qword_23C8A0FD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203E18, &qword_23C8A0FD0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_23C756424(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036D8, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7564C4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return sub_23C8711F4();
}

uint64_t sub_23C756530(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return sub_23C871204();
}

uint64_t sub_23C7565CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200098);
  __swift_project_value_buffer(v0, qword_27E200098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyMode";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prescribedPlan";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawRewriteMetadataEventId";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "rewriteMetadataInlined";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C7569A0(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C871084();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C756A54(a1, v5, a2, a3);
          break;
        case 4:
          type metadata accessor for TranscriptProtoRequest(0);
          sub_23C871154();
          break;
        case 5:
          sub_23C756B08(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7569A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  return sub_23C8711A4();
}

uint64_t sub_23C756A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  return sub_23C8711A4();
}

uint64_t sub_23C756B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C756CC0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C756EDC(v3, a1, a2, a3);
    sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoRequest, 4);
    sub_23C7570F8(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoRequest(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C756CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203DD0, &unk_23C8A1160);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203DD0, &unk_23C8A1160);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_23C756EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E08, &qword_23C8A0FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E203E08, &qword_23C8A0FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203E08, &qword_23C8A0FC0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
}

uint64_t sub_23C7570F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_23C757360@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7574BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036D0, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75755C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7575C8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return sub_23C871204();
}

uint64_t sub_23C757664()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000B0);
  __swift_project_value_buffer(v0, qword_27E2000B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speech";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C757934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203988, &qword_23C8A0BE0);
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
  sub_23C5855B0(a1, v12, &qword_27E2014C0, &qword_23C88DBC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2014C0, &qword_23C88DBC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203988, &qword_23C8A0BE0);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203988, &qword_23C8A0BE0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203988, &qword_23C8A0BE0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203988, &qword_23C8A0BE0);
    return sub_23C585C34(v32, &qword_27E203988, &qword_23C8A0BE0);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoRequestContentTextContent);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203988, &qword_23C8A0BE0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C757EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203990, &qword_23C8A0BE8);
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
  sub_23C5855B0(a1, v12, &qword_27E2014C0, &qword_23C88DBC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2014C0, &qword_23C88DBC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203990, &qword_23C8A0BE8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203990, &qword_23C8A0BE8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203990, &qword_23C8A0BE8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203990, &qword_23C8A0BE8);
    return sub_23C585C34(v32, &qword_27E203990, &qword_23C8A0BE8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203990, &qword_23C8A0BE8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7584A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DF8, &qword_23C8A0FB0);
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
  sub_23C5855B0(a1, v12, &qword_27E2014C0, &qword_23C88DBC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2014C0, &qword_23C88DBC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203DF8, &qword_23C8A0FB0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DF8, &qword_23C8A0FB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DF8, &qword_23C8A0FB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DF8, &qword_23C8A0FB0);
    return sub_23C585C34(v32, &qword_27E203DF8, &qword_23C8A0FB0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSystemPromptResolution);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DF8, &qword_23C8A0FB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemPromptResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C758A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E00, &qword_23C8A0FB8);
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
  sub_23C5855B0(a1, v12, &qword_27E2014C0, &qword_23C88DBC0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2014C0, &qword_23C88DBC0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203E00, &qword_23C8A0FB8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestContentStopContent);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestContentStopContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203E00, &qword_23C8A0FB8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203E00, &qword_23C8A0FB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203E00, &qword_23C8A0FB8);
    return sub_23C585C34(v32, &qword_27E203E00, &qword_23C8A0FB8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestContentStopContent);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203E00, &qword_23C8A0FB8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestContentStopContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoRequestContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2014C0, &qword_23C88DBC0);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C759658(v3, a1, a2, a3);
    }

    else
    {
      sub_23C759890(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C759420(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7591EC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoRequestContent(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7591EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2014C0, &qword_23C88DBC0);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2014C0, &qword_23C88DBC0);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2014C0, &qword_23C88DBC0);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2014C0, &qword_23C88DBC0);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036C8, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C759C18(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return sub_23C8711F4();
}

uint64_t sub_23C759C84(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return sub_23C871204();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_23C871044();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_23C759E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036C0, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C759EB4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return sub_23C8711F4();
}

uint64_t sub_23C759F20(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return sub_23C871204();
}

uint64_t sub_23C759FB8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000E0);
  __swift_project_value_buffer(v0, qword_27E2000E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C75A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C75A2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C75A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036B8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75A630(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return sub_23C8711F4();
}

uint64_t sub_23C75A69C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return sub_23C871204();
}

uint64_t sub_23C75A738()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000F8);
  __swift_project_value_buffer(v0, qword_27E2000F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "speechPackage";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "statementId";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_23C75AAD4(a1, v5, a2, a3);
        break;
      case 3:
        sub_23C75AA20(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C75AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  return sub_23C8711A4();
}

uint64_t sub_23C75AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C75AC4C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C75AE68(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C75AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE0, &qword_23C8A0F98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203DE0, &qword_23C8A0F98);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203DE0, &qword_23C8A0F98);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_23C75AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C75B148(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036B0, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75B1E8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return sub_23C8711F4();
}

uint64_t sub_23C75B254(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return sub_23C871204();
}

uint64_t TranscriptProtoSpeechPackage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75B530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036A8, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75B5D0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return sub_23C8711F4();
}

uint64_t sub_23C75B63C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return sub_23C871204();
}

uint64_t sub_23C75B7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      sub_23C8314AC(a5, a6, a7);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75B9A4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C75BAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036A0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75BB9C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return sub_23C8711F4();
}

uint64_t sub_23C75BC08(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return sub_23C871204();
}

uint64_t sub_23C75BC9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75BFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203698, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75C08C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_23C8711F4();
}

uint64_t sub_23C75C0F8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_23C871204();
}

uint64_t sub_23C75C1AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000023C8AF8E0;
  return result;
}

uint64_t sub_23C75C240()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200188);
  __swift_project_value_buffer(v0, qword_27E200188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTime";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "silenceStartTime";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C871114();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_23C871144();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_23C871294(), !v4))
    {
      if (*(v3 + 24) == 0.0 || (result = sub_23C8712B4(), !v4))
      {
        if (*(v3 + 32) == 0.0 || (result = sub_23C8712B4(), !v4))
        {
          if (*(v3 + 40) == 0.0 || (result = sub_23C8712B4(), !v4))
          {
            type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}