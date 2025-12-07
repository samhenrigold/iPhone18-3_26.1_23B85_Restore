uint64_t sub_2691F6664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_2691F66A0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F66D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t sub_2691F6710(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_2691F6744@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_2691F6780(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F67B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_2691F67F0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_2691F6824@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F6864(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_2691F6898@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = *(a1 + *(result + 28));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F68D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F6914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F695C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F6998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F69E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F6B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2691F6C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2691F6CC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2691F6DF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2691F6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F6FE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F70F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2691F7144()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2691F7184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2691F71D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_2691F7238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2691F7284(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2691F72E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 14)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F7328(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F735C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoTaskEngagementFeatureSet(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F77FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_2691F7838(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_2691F787C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2691F78C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoPlayMediaTaskFeatureSet(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2691F79EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_2691F7A28(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoNavigationTaskFeatureSet(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F7AB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2691F7AF4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoNavigationUserFollowupContext(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_2691F7DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 241)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xE)
    {
      v11 = 14;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 14;
    if (v10 >= 0xE)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2691F7EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 241)
  {
    *(a1 + *(a4 + 20)) = a2 + 14;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F8130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UnknownStorage();
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

uint64_t sub_2691F8250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F84C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F89AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMd, &_s18SiriTaskEngagement34ProtoNavigationUserFollowupContextVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2691F8D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoLocationEntitySignalVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2691F8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2691F8F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2691F9120()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t (*ProtoContactEntitySignal.identifier.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.handleValue.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.displayName.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t (*ProtoContactEntitySignal.givenName.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.familyName.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoContactEntitySignal.familyName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for ProtoContactEntitySignal.familyName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoContactEntitySignal.familyName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoContactEntitySignal.familyName.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoContactEntitySignal(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

Swift::Void __swiftcall ProtoContactEntitySignal.clearFamilyName()()
{
  v1 = (v0 + *(type metadata accessor for ProtoContactEntitySignal(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

int *ProtoContactEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoContactEntitySignal(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.identifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.identifier : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.identifier : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.identifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoLocationEntitySignal.poiIdentifier.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoLocationEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearIdentifier()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoLocationEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoLocationEntitySignal(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateTimeEntitySignal.datetimeTimestampMs : ProtoDateTimeEntitySignal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateTimeEntitySignal.datetimeTimestampMs : ProtoDateTimeEntitySignal(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoDateTimeEntitySignal.datetimeTimestampMs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoDateTimeEntitySignal.datetimeTimestampMs.modify;
}

uint64_t ProtoDateTimeEntitySignal.datetimeTimestampMs.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall ProtoDateTimeEntitySignal.clearDatetimeTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoDateTimeEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  return result;
}

uint64_t ProtoDateComponentSignal.year.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.year : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.year : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.year.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.year.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearYear()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.month.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.month : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.month : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.month.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.month.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearMonth()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.day.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.day : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.day : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.day.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.day.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.day.modify;
}

uint64_t ProtoDateComponentSignal.day.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearDay()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.hour.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.hour : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.hour : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.hour.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.hour.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearHour()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.minute.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.minute : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.minute : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.minute.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.minute.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearMinute()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t ProtoDateComponentSignal.second.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoDateComponentSignal.second : ProtoDateComponentSignal@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoDateComponentSignal.second : ProtoDateComponentSignal(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t ProtoDateComponentSignal.second.setter(int a1)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*ProtoDateComponentSignal.second.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoDateComponentSignal(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ProtoDateComponentSignal.month.modify;
}

Swift::Void __swiftcall ProtoDateComponentSignal.clearSecond()()
{
  v1 = v0 + *(type metadata accessor for ProtoDateComponentSignal(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *ProtoDateComponentSignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoDateComponentSignal(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t type metadata accessor for ProtoContactEntitySignal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*ProtoMediaEntitySignal.adamIdentifier.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoMediaEntitySignal.adamIdentifier.modify;
}

uint64_t ProtoContactEntitySignal.handleValue.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.handleValue : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.handleValue : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 24));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.handleValue.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.artist.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearHandleValue()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.displayName.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.displayName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.displayName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.displayName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.title.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

uint64_t ProtoContactEntitySignal.clearDisplayName()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.givenName.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoContactEntitySignal.givenName : ProtoContactEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for ProtoContactEntitySignal.givenName : ProtoContactEntitySignal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 32));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ProtoContactEntitySignal.givenName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ProtoMediaEntitySignal.album.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoMediaEntitySignal(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return ProtoContactEntitySignal.handleValue.modify;
}

void ProtoContactEntitySignal.identifier.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t ProtoContactEntitySignal.clearGivenName()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ProtoContactEntitySignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoContactEntitySignal.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *ProtoMediaEntitySignal.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoMediaEntitySignal(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoContactEntitySignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoContactEntitySignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v16 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handleValue";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v16 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "displayName";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v16 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "givenName";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v16 + v3 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "familyName";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoDateComponentSignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoDateComponentSignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "year";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "month";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "day";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hour";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "minute";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "second";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoMediaEntitySignal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoMediaEntitySignal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "adamIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "artist";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "album";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskInteractionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskInteractionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "includesPrompt";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "includesConfirm";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "includesDisambiguate";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "includesUnsupportedPrompt";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskEvaluationSummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskEvaluationSummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestIds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "taskCompletion";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "taskSuccess";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "interactionType";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "startTimestampMs";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "endTimestampMs";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskEngagement._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskEngagement._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26923B540;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "taskId";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "taskName";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "evaluationSummary";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "siriTaskFeatureSet";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "followupTimeWindowInMs";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "followupUserInitatedEngagements";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "nextTaskId";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "previousTaskId";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "engagementType";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "domainType";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskCompletionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskCompletionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SIRI_TASK_COMPLETION_TYPE_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_TASK_COMPLETION_TYPE_COMPLETED";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIRI_TASK_COMPLETION_TYPE_FAILED";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SIRI_TASK_COMPLETION_TYPE_CANCELLED";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "SIRI_TASK_COMPLETION_TYPE_ABANDONED";
  *(v15 + 8) = 35;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSiriTaskSuccessType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSiriTaskSuccessType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "SIRI_TASK_SUCCESS_TYPE_UNKNOWN";
  *(v5 + 8) = 30;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SIRI_TASK_SUCCESS_TYPE_NOT_CALCULATED";
  *(v9 + 8) = 37;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SIRI_TASK_SUCCESS_TYPE_NOT_APPLICABLE";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SIRI_TASK_SUCCESS_TYPE_SUCCESSFUL";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "SIRI_TASK_SUCCESS_TYPE_UNSUCCESSFUL";
  *(v14 + 8) = 35;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskEngagementType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskEngagementType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26923BAC0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "TASK_ENGAGEMENT_TYPE_UNKNOWN";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TASK_ENGAGEMENT_TYPE_UNSUPPORTED";
  *(v9 + 8) = 32;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "TASK_ENGAGEMENT_TYPE_START_PHONE_CALL";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TASK_ENGAGEMENT_TYPE_SEND_MESSAGE";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TASK_ENGAGEMENT_TYPE_CREATE_ALARM";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TASK_ENGAGEMENT_TYPE_UPDATE_ALARM";
  *(v17 + 1) = 33;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TASK_ENGAGEMENT_TYPE_DELETE_ALARM";
  *(v19 + 1) = 33;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "TASK_ENGAGEMENT_TYPE_TOGGLE_ALARM";
  *(v21 + 1) = 33;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "TASK_ENGAGEMENT_TYPE_CREATE_REMINDER";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TASK_ENGAGEMENT_TYPE_UPDATE_REMINDER";
  *(v24 + 1) = 36;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TASK_ENGAGEMENT_TYPE_PLAY_MEDIA";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TASK_ENGAGEMENT_TYPE_PAUSE_MEDIA";
  *(v28 + 1) = 32;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TASK_ENGAGEMENT_TYPE_SEARCH_MEDIA";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TASK_ENGAGEMENT_TYPE_LOCATION_SEARCH";
  *(v32 + 1) = 36;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoPlayMediaPlayBackState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoPlayMediaPlayBackState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLAY_MEDIA_PLAY_BACK_STATE_UNKNOWN";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAY_MEDIA_PLAY_BACK_STATE_PLAY";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAY_MEDIA_PLAY_BACK_STATE_PAUSE";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLAY_MEDIA_PLAY_BACK_STATE_STOPPED";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PLAY_MEDIA_PLAY_BACK_STATE_INTERRUPTED";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PLAY_MEDIA_PLAY_BACK_STATE_SEEKING";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoDomainType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoDomainType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26923BAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "DOMAIN_TYPE_UNKNOWN";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DOMAIN_TYPE_MUSIC";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DOMAIN_TYPE_PHONECALL";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DOMAIN_TYPE_MESSAGES";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DOMAIN_TYPE_ALARM";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DOMAIN_TYPE_HOMEAUTOMATION";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DOMAIN_TYPE_REMINDER";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DOMAIN_TYPE_UNSUPPORTED";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "DOMAIN_TYPE_MAPS";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationVerb._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationVerb._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NAVIGATION_VERB_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_VERB_PLACE_CARD_TAP";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NAVIGATION_VERB_RESULT_LIST_TAP";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NAVIGATION_VERB_NAVIGATION";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NAVIGATION_VERB_SHOW";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NAVIGATION_VERB_SELECT_CATEGORY";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NAVIGATION_VERB_SEARCH";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NAVIGATION_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_TYPE_NEW_REQUEST";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NAVIGATION_TYPE_SEARCH_ALONG_THE_ROUTE";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NAVIGATION_TYPE_CONTINUE";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationFollowupType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationFollowupType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NAVIGATION_FOLLOWUP_TYPE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NAVIGATION_FOLLOWUP_TYPE_SIRI_RESULT_FOLLOWUP";
  *(v10 + 1) = 45;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NAVIGATION_FOLLOWUP_TYPE_NEW_USER_INITIATED_FOLLOWUP";
  *(v11 + 8) = 52;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskEngagementFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskEngagementFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "engagementType";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startTimestampMs";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "featureSet";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appBundleId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "startCallFeatureSet";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "sendMessageFeatureSet";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 103;
  *v14 = "alarmFeatureSet";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 104;
  *v16 = "reminderFeatureSet";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 105;
  *v18 = "playMediaFeatureSet";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 106;
  *v20 = "navigationFeatureSet";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoStartCallTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoStartCallTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callDurationInSec";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactEntities";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoSendMessageTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoSendMessageTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26923AA70;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "contactEntities";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoAlarmTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoAlarmTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alarmIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startTime";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoReminderTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoReminderTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reminderIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isSpatialTriggered";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isTemporalTriggered";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "startTime";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoPlayMediaTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoPlayMediaTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26923AA60;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "playDurationInSec";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mediaContentLengthInSec";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "appBundleId";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionState";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "mediaEntity";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationTaskFeatureSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationTaskFeatureSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923BAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isSiriNavigationContinued";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isUserFollowup";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "followupContext";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationUserFollowupContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationUserFollowupContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26923AA60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "followupType";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "navigationAction";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "navigationActionType";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locationEntity";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timestampInMs";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ProtoNavigationFeatures._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ProtoNavigationFeatures._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26923AA80;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "navigationAction";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "navigationType";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "navigationActionType";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "navigationSource";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "timestampInMs";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "poiIdentifier";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ProtoContactEntitySignal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          type metadata accessor for ProtoContactEntitySignal(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
  if (!v4)
  {
    closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoContactEntitySignal);
    closure #5 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoContactEntitySignal(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoContactEntitySignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoContactEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal, &protocol conformance descriptor for ProtoContactEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoContactEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal, &protocol conformance descriptor for ProtoContactEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoContactEntitySignal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal, type metadata accessor for ProtoContactEntitySignal, &protocol conformance descriptor for ProtoContactEntitySignal);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static ProtoLocationEntitySignal._protobuf_nameMap, "poiIdentifier", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ProtoDateTimeEntitySignal._protobuf_nameMap, "datetimeTimestampMs", 19);
}

uint64_t ProtoLocationEntitySignal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for ProtoLocationEntitySignal(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t ProtoLocationEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoLocationEntitySignal);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoLocationEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoLocationEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal, &protocol conformance descriptor for ProtoLocationEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoLocationEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal, &protocol conformance descriptor for ProtoLocationEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoLocationEntitySignal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoLocationEntitySignal and conformance ProtoLocationEntitySignal, type metadata accessor for ProtoLocationEntitySignal, &protocol conformance descriptor for ProtoLocationEntitySignal);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26923AA70;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ProtoDateTimeEntitySignal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for ProtoDateTimeEntitySignal(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t ProtoDateTimeEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoDateTimeEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoDateTimeEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateTimeEntitySignal(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoDateTimeEntitySignal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoDateTimeEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal, &protocol conformance descriptor for ProtoDateTimeEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoDateTimeEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal, &protocol conformance descriptor for ProtoDateTimeEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoDateTimeEntitySignal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateTimeEntitySignal and conformance ProtoDateTimeEntitySignal, type metadata accessor for ProtoDateTimeEntitySignal, &protocol conformance descriptor for ProtoDateTimeEntitySignal);

  return Message.hash(into:)();
}

uint64_t ProtoDateComponentSignal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
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
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for ProtoDateComponentSignal(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #6 in ProtoDateComponentSignal.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ProtoDateComponentSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoDateComponentSignal(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ProtoDateComponentSignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoDateComponentSignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal, &protocol conformance descriptor for ProtoDateComponentSignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoDateComponentSignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal, &protocol conformance descriptor for ProtoDateComponentSignal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoDateComponentSignal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoDateComponentSignal and conformance ProtoDateComponentSignal, type metadata accessor for ProtoDateComponentSignal, &protocol conformance descriptor for ProtoDateComponentSignal);

  return Message.hash(into:)();
}

uint64_t static ProtoContactEntitySignal._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ProtoMediaEntitySignal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for ProtoMediaEntitySignal(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ProtoMediaEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
  if (!v4)
  {
    closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for ProtoMediaEntitySignal);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ProtoContactEntitySignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int ProtoContactEntitySignal.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance ProtoMediaEntitySignal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ProtoMediaEntitySignal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal, &protocol conformance descriptor for ProtoMediaEntitySignal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance ProtoContactEntitySignal@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProtoMediaEntitySignal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal, &protocol conformance descriptor for ProtoMediaEntitySignal);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtoContactEntitySignal(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtoMediaEntitySignal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type ProtoMediaEntitySignal and conformance ProtoMediaEntitySignal, type metadata accessor for ProtoMediaEntitySignal, &protocol conformance descriptor for ProtoMediaEntitySignal);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtoContactEntitySignal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static ProtoLocationEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoLocationEntitySignal(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static ProtoDateTimeEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoDateTimeEntitySignal(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static ProtoMediaEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static ProtoDateComponentSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoDateComponentSignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static ProtoContactEntitySignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type ProtoContactEntitySignal and conformance ProtoContactEntitySignal(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for ProtoContactEntitySignal(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ProtoLocationEntitySignal(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for String?(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for ProtoDateComponentSignal(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void type metadata completion function for ProtoMediaEntitySignal(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

uint64_t INStartCallIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v66 = type metadata accessor for ProtoContactEntitySignal(0);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProtoStartCallTaskFeatureSet(0);
  v9 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v53 - v11);
  v13 = type metadata accessor for ProtoTaskFeatureSet(0);
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v21 = [a1 intent];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v59 = v21;
    v60 = v13;
    v24 = [a1 dateInterval];
    if (v24)
    {
      v25 = v24;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = type metadata accessor for DateInterval();
      (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
    }

    else
    {
      v26 = type metadata accessor for DateInterval();
      (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    }

    outlined init with take of DateInterval?(v18, v20, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    type metadata accessor for DateInterval();
    if ((*(*(v26 - 8) + 48))(v20, 1, v26))
    {
      outlined destroy of DateInterval?(v20, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      v29 = -1.0;
    }

    else
    {
      DateInterval.duration.getter();
      v29 = v30;
      outlined destroy of DateInterval?(v20, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    v32 = v59;
    v31 = v60;
    v33 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 56);
    v36 = v62;
    v56 = v34 + 56;
    v57 = v35;
    v35(v62, 1, 1, v33);
    UnknownStorage.init()();
    v37 = (v36 + *(v31 + 24));
    *v37 = 0;
    v37[1] = 0;
    *v12 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v38 = (v12 + *(v8 + 24));
    *v38 = v29;
    *(v38 + 8) = 0;
    v39 = [v23 contacts];
    if (v39)
    {
      v40 = v39;
      type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v41 >> 62)
      {
        goto LABEL_35;
      }

      for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D634210](v52))
      {
        v53 = v33;
        v54 = v12;
        v55 = a2;
        if (!i)
        {
          break;
        }

        v43 = 0;
        v33 = v41 & 0xC000000000000001;
        v12 = (v41 & 0xFFFFFFFFFFFFFF8);
        a2 = (v64 + 48);
        v44 = MEMORY[0x277D84F90];
        v63 = i;
        while (1)
        {
          if (v33)
          {
            v45 = MEMORY[0x26D6341F0](v43, v41);
          }

          else
          {
            if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v45 = *(v41 + 8 * v43 + 32);
          }

          v46 = v45;
          v47 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          INPerson.extract()(v6);

          if ((*a2)(v6, 1, v66) == 1)
          {
            outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
          }

          else
          {
            outlined init with take of ProtoStartCallTaskFeatureSet(v6, v65, type metadata accessor for ProtoContactEntitySignal);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v49 = v44[2];
            v48 = v44[3];
            if (v49 >= v48 >> 1)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v44[2] = v49 + 1;
            outlined init with take of ProtoStartCallTaskFeatureSet(v65, v44 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v49, type metadata accessor for ProtoContactEntitySignal);
            i = v63;
          }

          ++v43;
          if (v47 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        if (v41 < 0)
        {
          v52 = v41;
        }

        else
        {
          v52 = v41 & 0xFFFFFFFFFFFFFF8;
        }
      }

      v44 = MEMORY[0x277D84F90];
LABEL_31:

      v12 = v54;
      a2 = v55;
      *v54 = v44;
      v31 = v60;
      v33 = v53;
    }

    else
    {
    }

    v50 = v58;
    outlined init with copy of ProtoStartCallTaskFeatureSet(v12, v58, type metadata accessor for ProtoStartCallTaskFeatureSet);
    v51 = v62;
    outlined destroy of DateInterval?(v62, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v50, v51, type metadata accessor for ProtoStartCallTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    v57(v51, 0, 1, v33);
    outlined init with take of ProtoStartCallTaskFeatureSet(v51, a2, type metadata accessor for ProtoTaskFeatureSet);
    (*(v61 + 56))(a2, 0, 1, v31);
    return outlined destroy of ProtoStartCallTaskFeatureSet(v12, type metadata accessor for ProtoStartCallTaskFeatureSet);
  }

  else
  {

    v27 = *(v61 + 56);

    return v27(a2, 1, 1, v13);
  }
}

uint64_t INSendMessageIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v49 = type metadata accessor for ProtoContactEntitySignal(0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProtoSendMessageTaskFeatureSet(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ProtoTaskFeatureSet(0);
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a1 intent];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v42 = v17;
    v20 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v43 = v21 + 56;
    v44 = v22;
    v22(v16, 1, 1, v20);
    UnknownStorage.init()();
    v23 = v16 + *(v14 + 24);
    *v23 = 0;
    *(v23 + 1) = 0;
    *v13 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v24 = [v19 recipients];
    if (v24)
    {
      v25 = v24;
      type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v26 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D634210](v35))
      {
        v36 = v20;
        v37 = v16;
        v38 = v11;
        v39 = v14;
        v40 = v13;
        v41 = a2;
        if (!i)
        {
          break;
        }

        v14 = i;
        v13 = 0;
        v11 = (v26 & 0xC000000000000001);
        v20 = v26 & 0xFFFFFFFFFFFFFF8;
        v16 = (v47 + 48);
        a2 = MEMORY[0x277D84F90];
        v46 = i;
        while (1)
        {
          if (v11)
          {
            v28 = MEMORY[0x26D6341F0](v13, v26);
          }

          else
          {
            if (v13 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v28 = *(v26 + 8 * v13 + 32);
          }

          v29 = v28;
          v30 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          INPerson.extract()(v6);

          if ((*v16)(v6, 1, v49) == 1)
          {
            outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
          }

          else
          {
            outlined init with take of ProtoStartCallTaskFeatureSet(v6, v48, type metadata accessor for ProtoContactEntitySignal);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            v32 = a2[2];
            v31 = a2[3];
            if (v32 >= v31 >> 1)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, a2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement24ProtoContactEntitySignalVGMR, type metadata accessor for ProtoContactEntitySignal);
            }

            a2[2] = v32 + 1;
            outlined init with take of ProtoStartCallTaskFeatureSet(v48, a2 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32, type metadata accessor for ProtoContactEntitySignal);
            v14 = v46;
          }

          ++v13;
          if (v30 == v14)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        if (v26 < 0)
        {
          v35 = v26;
        }

        else
        {
          v35 = v26 & 0xFFFFFFFFFFFFFF8;
        }
      }

      a2 = MEMORY[0x277D84F90];
LABEL_25:

      v14 = v39;
      v13 = v40;
      *v40 = a2;
      a2 = v41;
      v16 = v37;
      v11 = v38;
      v20 = v36;
    }

    else
    {
    }

    outlined init with copy of ProtoStartCallTaskFeatureSet(v13, v11, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    outlined destroy of DateInterval?(v16, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v11, v16, type metadata accessor for ProtoSendMessageTaskFeatureSet);
    swift_storeEnumTagMultiPayload();
    v44(v16, 0, 1, v20);
    outlined init with take of ProtoStartCallTaskFeatureSet(v16, a2, type metadata accessor for ProtoTaskFeatureSet);
    (*(v45 + 56))(a2, 0, 1, v14);
    return outlined destroy of ProtoStartCallTaskFeatureSet(v13, type metadata accessor for ProtoSendMessageTaskFeatureSet);
  }

  else
  {

    v33 = *(v45 + 56);

    return v33(a2, 1, 1, v14);
  }
}

void INAddTasksIntentFeatureExtractor.extract(from:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v123 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v122 = v114 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v121 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = v114 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v124 = (v114 - v15);
  MEMORY[0x28223BE20](v14);
  v126 = v114 - v16;
  v17 = type metadata accessor for Date();
  v127 = *(v17 - 8);
  v128 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v119 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = v114 - v20;
  v21 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v114 - v25;
  v27 = type metadata accessor for ProtoTaskFeatureSet(0);
  v137 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a1;
  v30 = [a1 intent];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v134 = v30;
    v135 = v24;
    v133 = a2;
    v33 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v34 = *(v33 - 8);
    v131 = *(v34 + 56);
    v132 = v33;
    v130 = v34 + 56;
    v131(v29, 1, 1);
    UnknownStorage.init()();
    v35 = v27;
    v36 = *(v27 + 24);
    v129 = v29;
    v37 = &v29[v36];
    *v37 = 0;
    *(v37 + 1) = 0;
    UnknownStorage.init()();
    v38 = &v26[v21[5]];
    *v38 = 0;
    *(v38 + 1) = 0;
    v117 = v38;
    v39 = v21[6];
    v26[v39] = 2;
    v40 = v21[7];
    v26[v40] = 2;
    v41 = *(v5 + 56);
    v116 = v21[8];
    v41(&v26[v116], 1, 1, v4);
    v115 = v21[9];
    v118 = v4;
    v42 = v4;
    v43 = v5 + 56;
    v41(&v26[v115], 1, 1, v42);
    v44 = [v32 spatialEventTrigger];
    v45 = v44;
    v46 = v26;
    if (v44)
    {
    }

    v26[v39] = v45 != 0;
    v47 = [v32 temporalEventTrigger];
    v48 = v47;
    v49 = v134;
    if (v47)
    {
    }

    v26[v40] = v48 != 0;
    v50 = [v136 intentResponse];
    if (!v50)
    {

      v53 = v35;
      goto LABEL_52;
    }

    v51 = v50;
    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    v53 = v35;
    if (!v52)
    {

      goto LABEL_52;
    }

    v136 = v41;
    v54 = [v52 addedTasks];
    v55 = v135;
    if (!v54)
    {

LABEL_53:
      v111 = v129;
      outlined init with copy of ProtoStartCallTaskFeatureSet(v26, v55, type metadata accessor for ProtoReminderTaskFeatureSet);
      outlined destroy of DateInterval?(v111, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
      outlined init with take of ProtoStartCallTaskFeatureSet(v55, v111, type metadata accessor for ProtoReminderTaskFeatureSet);
      v112 = v132;
      swift_storeEnumTagMultiPayload();
      (v131)(v111, 0, 1, v112);
      outlined destroy of ProtoStartCallTaskFeatureSet(v26, type metadata accessor for ProtoReminderTaskFeatureSet);
      v113 = v133;
      outlined init with take of ProtoStartCallTaskFeatureSet(v111, v133, type metadata accessor for ProtoTaskFeatureSet);
      (*(v137 + 56))(v113, 0, 1, v53);
      return;
    }

    v56 = v54;
    type metadata accessor for INPerson(0, &lazy cache variable for type metadata for INTask, 0x277CD4220);
    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v114[1] = v43;
    if (v57 >> 62)
    {
      if (v57 < 0)
      {
        v110 = v57;
      }

      else
      {
        v110 = v57 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x26D634210](v110))
      {
LABEL_11:
        v58 = v57 & 0xC000000000000001;
        if ((v57 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x26D6341F0](0, v57);
        }

        else
        {
          if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_56;
          }

          v59 = *(v57 + 32);
        }

        v60 = v59;
        v61 = [v59 identifier];

        if (v61)
        {
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v57;
          v65 = v64;

          v66 = v117;
          *v117 = v62;
          v66[1] = v65;
          v57 = v63;
          v46 = v26;
        }

        if (v58)
        {
          v67 = MEMORY[0x26D6341F0](0, v57);
          goto LABEL_26;
        }

        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v67 = *(v57 + 32);
LABEL_26:
          v69 = v67;
          v70 = [v67 temporalEventTrigger];

          v117 = v51;
          if (v70)
          {
            v114[0] = v57;
            v71 = [v70 dateComponentsRange];

            v72 = [v71 startDate];
            if (v72)
            {
              v73 = v124;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v74 = 0;
              v76 = v127;
              v75 = v128;
            }

            else
            {
              v74 = 1;
              v76 = v127;
              v75 = v128;
              v73 = v124;
            }

            v124 = *(v76 + 56);
            v124(v73, v74, 1, v75);
            v77 = v126;
            outlined init with take of DateInterval?(v73, v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            if ((*(v76 + 48))(v77, 1, v75) != 1)
            {
              v80 = v120;
              (*(v76 + 32))(v120, v77, v75);
              v126 = v58;
              v81 = v122;
              UnknownStorage.init()();
              v82 = v75;
              v83 = v76;
              v84 = &v81[*(v118 + 20)];
              *v84 = 0;
              v84[8] = 1;
              specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v80);
              v86 = v85;
              v87 = v82;
              v49 = v134;
              (*(v83 + 8))(v80, v87);
              *v84 = v86;
              v84[8] = 0;
              v88 = v81;
              v89 = v126;
              v90 = v123;
              outlined init with take of ProtoStartCallTaskFeatureSet(v88, v123, type metadata accessor for ProtoDateTimeEntitySignal);
              v91 = v116;
              outlined destroy of DateInterval?(&v46[v116], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
              outlined init with take of ProtoStartCallTaskFeatureSet(v90, &v46[v91], type metadata accessor for ProtoDateTimeEntitySignal);
              v136(&v46[v91], 0, 1, v118);
              v51 = v117;
              v57 = v114[0];
              v78 = v124;
              if (v89)
              {
                goto LABEL_34;
              }

LABEL_36:
              if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v79 = *(v57 + 32);
                goto LABEL_38;
              }

              goto LABEL_57;
            }

            v51 = v117;
            v57 = v114[0];
            v78 = v124;
          }

          else
          {
            v77 = v126;
            v78 = *(v127 + 56);
            v78(v126, 1, 1, v128);
          }

          outlined destroy of DateInterval?(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if (v58)
          {
LABEL_34:
            v79 = MEMORY[0x26D6341F0](0, v57);
LABEL_38:
            v92 = v79;

            v93 = [v92 temporalEventTrigger];

            if (v93)
            {
              v94 = [v93 dateComponentsRange];

              v95 = [v94 endDate];
              if (v95)
              {
                v96 = v121;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v97 = 0;
                v98 = v125;
                v99 = v128;
              }

              else
              {
                v97 = 1;
                v98 = v125;
                v99 = v128;
                v96 = v121;
              }

              v100 = v127;
              v78(v96, v97, 1, v99);
              outlined init with take of DateInterval?(v96, v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              if ((*(v100 + 48))(v98, 1, v99) != 1)
              {
                v101 = v119;
                (*(v100 + 32))(v119, v98, v99);
                v102 = v122;
                UnknownStorage.init()();
                v103 = v49;
                v104 = v99;
                v105 = v102 + *(v118 + 20);
                *v105 = 0;
                *(v105 + 8) = 1;
                specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v101);
                v107 = v106;

                (*(v100 + 8))(v101, v104);
                *v105 = v107;
                *(v105 + 8) = 0;
                v108 = v123;
                outlined init with take of ProtoStartCallTaskFeatureSet(v102, v123, type metadata accessor for ProtoDateTimeEntitySignal);
                v109 = v115;
                outlined destroy of DateInterval?(&v26[v115], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
                outlined init with take of ProtoStartCallTaskFeatureSet(v108, &v26[v109], type metadata accessor for ProtoDateTimeEntitySignal);
                v136(&v26[v109], 0, 1, v118);
                goto LABEL_52;
              }
            }

            else
            {

              v98 = v125;
              v78(v125, 1, 1, v128);
            }

            outlined destroy of DateInterval?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_52:
            v55 = v135;
            goto LABEL_53;
          }

          goto LABEL_36;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }
    }

    else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v68 = *(v137 + 56);

  v68(a2, 1, 1, v27);
}

uint64_t INSetTaskAttributeIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoDateTimeEntitySignal(0);
  v119 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v110 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v112 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v109 = (&v97 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - v16;
  v18 = type metadata accessor for Date();
  v117 = *(v18 - 8);
  v118 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v102 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v101 = &v97 - v21;
  v22 = type metadata accessor for ProtoReminderTaskFeatureSet(0);
  v23 = MEMORY[0x28223BE20](v22);
  v113 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - v25;
  v27 = type metadata accessor for ProtoTaskFeatureSet(0);
  v116 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [a1 intent];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v104 = v17;
    v114 = v30;
    v100 = v7;
    v108 = a2;
    v33 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    v34 = *(v33 - 8);
    v106 = *(v34 + 56);
    v107 = v33;
    v105 = v34 + 56;
    v106(v29, 1, 1);
    UnknownStorage.init()();
    v115 = v27;
    v35 = &v29[*(v27 + 24)];
    *v35 = 0;
    *(v35 + 1) = 0;
    UnknownStorage.init()();
    v36 = &v26[v22[5]];
    *v36 = 0;
    v36[1] = 0;
    v37 = v4;
    v38 = v119;
    v39 = v22[6];
    v26[v39] = 2;
    v40 = v22[7];
    v26[v40] = 2;
    v42 = *(v38 + 56);
    v41 = v38 + 56;
    v97 = v22[8];
    v42(&v26[v97], 1, 1, v37);
    v98 = v22[9];
    v103 = v37;
    v99 = v42;
    v42(&v26[v98], 1, 1, v37);
    v43 = [v32 spatialEventTrigger];
    v44 = v43;
    if (v43)
    {
    }

    v26[v39] = v44 != 0;
    v45 = [v32 temporalEventTrigger];
    v46 = v45;
    if (v45)
    {
    }

    v26[v40] = v46 != 0;
    v47 = [v32 targetTask];
    v119 = v41;
    v48 = v104;
    if (v47)
    {
      v49 = v47;
      v50 = [v47 identifier];

      if (v50)
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        *v36 = v51;
        v36[1] = v53;
      }
    }

    v54 = [v32 temporalEventTrigger];
    v55 = &unk_279C52000;
    v56 = v115;
    if (v54)
    {
      v57 = v54;
      v58 = [v54 dateComponentsRange];

      v59 = [v58 startDate];
      v60 = v117;
      if (v59)
      {
        v61 = v109;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v109;
      }

      v66 = v118;
      v109 = *(v60 + 56);
      v109(v61, v62, 1, v118);
      outlined init with take of DateInterval?(v61, v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v60 + 48))(v48, 1, v66) != 1)
      {
        v68 = v101;
        (*(v60 + 32))(v101, v48, v66);
        v69 = v111;
        UnknownStorage.init()();
        v70 = v103;
        v71 = v60;
        v72 = v69 + *(v103 + 20);
        *v72 = 0;
        *(v72 + 8) = 1;
        specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v68);
        v74 = v73;
        (*(v71 + 8))(v68, v66);
        *v72 = v74;
        *(v72 + 8) = 0;
        v75 = v100;
        outlined init with take of ProtoStartCallTaskFeatureSet(v69, v100, type metadata accessor for ProtoDateTimeEntitySignal);
        v76 = v97;
        outlined destroy of DateInterval?(&v26[v97], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
        outlined init with take of ProtoStartCallTaskFeatureSet(v75, &v26[v76], type metadata accessor for ProtoDateTimeEntitySignal);
        v56 = v115;
        v99(&v26[v76], 0, 1, v70);
        v67 = v114;
        v65 = v109;
        v55 = &unk_279C52000;
LABEL_21:
        v77 = [v32 temporalEventTrigger];
        v78 = v112;
        if (v77)
        {
          v79 = v77;
          v80 = [v77 v55[79]];

          v81 = [v80 endDate];
          if (v81)
          {
            v82 = v110;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v83 = 0;
            v84 = v103;
            v85 = v118;
          }

          else
          {
            v83 = 1;
            v84 = v103;
            v85 = v118;
            v82 = v110;
          }

          v87 = v117;
          v65(v82, v83, 1, v85);
          outlined init with take of DateInterval?(v82, v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if ((*(v87 + 48))(v78, 1, v85) != 1)
          {
            v88 = v102;
            (*(v87 + 32))(v102, v78, v85);
            v89 = v111;
            UnknownStorage.init()();
            v90 = v89 + *(v84 + 20);
            *v90 = 0;
            *(v90 + 8) = 1;
            specialized static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)(v88);
            v92 = v91;

            (*(v87 + 8))(v88, v85);
            *v90 = v92;
            *(v90 + 8) = 0;
            v93 = v100;
            outlined init with take of ProtoStartCallTaskFeatureSet(v89, v100, type metadata accessor for ProtoDateTimeEntitySignal);
            v94 = v98;
            outlined destroy of DateInterval?(&v26[v98], &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMd, &_s18SiriTaskEngagement25ProtoDateTimeEntitySignalVSgMR);
            outlined init with take of ProtoStartCallTaskFeatureSet(v93, &v26[v94], type metadata accessor for ProtoDateTimeEntitySignal);
            v99(&v26[v94], 0, 1, v84);
            v86 = v108;
            v56 = v115;
            goto LABEL_30;
          }

          v86 = v108;
          v56 = v115;
        }

        else
        {

          v65(v78, 1, 1, v118);
          v86 = v108;
        }

        outlined destroy of DateInterval?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_30:
        v95 = v113;
        outlined init with copy of ProtoStartCallTaskFeatureSet(v26, v113, type metadata accessor for ProtoReminderTaskFeatureSet);
        outlined destroy of DateInterval?(v29, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
        outlined init with take of ProtoStartCallTaskFeatureSet(v95, v29, type metadata accessor for ProtoReminderTaskFeatureSet);
        v96 = v107;
        swift_storeEnumTagMultiPayload();
        (v106)(v29, 0, 1, v96);
        outlined destroy of ProtoStartCallTaskFeatureSet(v26, type metadata accessor for ProtoReminderTaskFeatureSet);
        outlined init with take of ProtoStartCallTaskFeatureSet(v29, v86, type metadata accessor for ProtoTaskFeatureSet);
        return (*(v116 + 56))(v86, 0, 1, v56);
      }

      v65 = v109;
      v55 = &unk_279C52000;
    }

    else
    {
      v65 = *(v117 + 56);
      v65(v48, 1, 1, v118);
    }

    outlined destroy of DateInterval?(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v67 = v114;
    goto LABEL_21;
  }

  v63 = *(v116 + 56);

  return v63(a2, 1, 1, v27);
}

Swift::String_optional __swiftcall AlarmIntentFeatureExtractor.deriveAlarmIdentifier(from:)(INInteraction from)
{
  v2 = [(objc_class *)from.super.isa intentResponse];
  v3 = &unk_279C52000;
  if (!v2)
  {
LABEL_14:
    v24 = [(objc_class *)from.super.isa intent];
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.feature);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v64 = v59;
      *v29 = 136315138;
      v30 = v26;
      v31 = v26;
      v32 = v3;
      v33 = [v30 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v3 = v32;
      v26 = v31;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_2691F5000, v27, v28, "Derive alarmIdentifiers from intent %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x26D634770](v59, -1, -1);
      MEMORY[0x26D634770](v29, -1, -1);
    }

    v38 = [v26 _className];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v39 == 0xD000000000000013 && 0x800000026923F4B0 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v42 = MEMORY[0x26D633FA0](0xD000000000000010, 0x800000026923F510);
      v43 = [v26 v3[84]];
    }

    else
    {
      if (v39 == 0xD000000000000013 && 0x800000026923F4D0 == v41)
      {
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
          v26 = v26;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v49, v50))
          {

            goto LABEL_37;
          }

          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v64 = v52;
          *v51 = 136315138;
          v53 = [v26 _className];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v64);

          *(v51 + 4) = v57;
          _os_log_impl(&dword_2691F5000, v49, v50, "Skip the alarmID for customized intents %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x26D634770](v52, -1, -1);
          MEMORY[0x26D634770](v51, -1, -1);

          goto LABEL_36;
        }
      }

      v42 = MEMORY[0x26D633FA0](0xD000000000000012, 0x800000026923F4F0);
      v43 = [v26 v3[84]];
    }

    v44 = v43;

    if (v44)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (!*(&v63 + 1))
    {

      outlined destroy of DateInterval?(&v64, &_sypSgMd, &_sypSgMR);
LABEL_37:
      v23 = 0;
      v22 = 0;
      goto LABEL_39;
    }

    if (swift_dynamicCast())
    {
      v45 = specialized static FeatureExtractionUtils.normalizedAlarmIdentifier(from:)(v60, v61);
      v47 = v46;

      v22 = v47;
      v23 = v45;
      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_37;
  }

  v4 = v2;
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.feature);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v64 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v3 = &unk_279C52000;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v64);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2691F5000, v7, v8, "Derive alarmIdentifiers from intentResponse %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D634770](v10, -1, -1);
    MEMORY[0x26D634770](v9, -1, -1);
  }

  v17 = MEMORY[0x26D633FA0](0xD000000000000017, 0x800000026923F530);
  v18 = [v6 v3[84]];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (!*(&v63 + 1))
  {

    outlined destroy of DateInterval?(&v64, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v19 = specialized static FeatureExtractionUtils.normalizedAlarmIdentifier(from:)(v60, v61);
  v21 = v20;

  v22 = v21;
  v23 = v19;
LABEL_39:
  result.value._object = v22;
  result.value._countAndFlagsBits = v23;
  return result;
}

NSDateComponents_optional __swiftcall AlarmIntentFeatureExtractor.deriveAlarmDateComponents(from:)(INIntent from)
{
  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.feature);
  v3 = from.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v41 = v7;
    *v6 = 136315138;
    v8 = v3;
    v9 = [(objc_class *)v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v41);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2691F5000, v4, v5, "Derive alarm date components from intent %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D634770](v7, -1, -1);
    MEMORY[0x26D634770](v6, -1, -1);
  }

  v14 = [(objc_class *)v3 _className];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x800000026923F550 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v18 = MEMORY[0x26D633FA0](1701669236, 0xE400000000000000);
    v19 = [(objc_class *)v3 valueForKeyPath:v18];
  }

  else
  {
    if ((v15 != 0xD000000000000013 || 0x800000026923F570 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v15 == 0xD000000000000013 && 0x800000026923F4D0 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 0xD000000000000013 && 0x800000026923F4B0 == v17)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          v27 = v3;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v41 = v31;
            *v30 = 136315138;
            v32 = [(objc_class *)v27 _className];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

            *(v30 + 4) = v36;
            _os_log_impl(&dword_2691F5000, v28, v29, "Skip the alarm date components for customized intents %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x26D634770](v31, -1, -1);
            MEMORY[0x26D634770](v30, -1, -1);
          }

          goto LABEL_33;
        }
      }

      v23 = MEMORY[0x26D633FA0](0xD000000000000015, 0x800000026923F590);
      v24 = [(objc_class *)v3 valueForKeyPath:v23];

      if (v24)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41 = v39;
      v42 = v40;
      if (*(&v40 + 1))
      {
        if (swift_dynamicCast())
        {
          v25 = specialized static FeatureExtractionUtils.normalizeDisplayDateString(from:)(v37, v38);

          v22 = v25;
          goto LABEL_38;
        }

LABEL_33:
        v22 = 0;
        goto LABEL_38;
      }

LABEL_32:
      outlined destroy of DateInterval?(&v41, &_sypSgMd, &_sypSgMR);
      goto LABEL_33;
    }

    v18 = MEMORY[0x26D633FA0](0x706D6F4365746164, 0xEE0073746E656E6FLL);
    v19 = [(objc_class *)v3 valueForKeyPath:v18];
  }

  v20 = v19;

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_32;
  }

  type metadata accessor for INPerson(0, &lazy cache variable for type metadata for NSDateComponents, 0x277CBEAB8);
  if (swift_dynamicCast())
  {
    v22 = v37;
  }

  else
  {
    v22 = 0;
  }

LABEL_38:
  result.value.super.isa = v22;
  result.is_nil = v21;
  return result;
}

unint64_t AlarmIntentFeatureExtractor.extract(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = (&v59 - v7);
  v8 = type metadata accessor for ProtoDateComponentSignal(0);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = type metadata accessor for ProtoAlarmTaskFeatureSet(0);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = type metadata accessor for ProtoTaskFeatureSet(0);
  v69 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  v24 = *(v23 - 8);
  v66 = *(v24 + 56);
  v67 = v23;
  v65 = v24 + 56;
  v66(v22, 1, 1);
  UnknownStorage.init()();
  v70 = v20;
  v25 = &v22[*(v20 + 24)];
  *v25 = 0;
  *(v25 + 1) = 0;
  UnknownStorage.init()();
  v26 = &v19[*(v15 + 28)];
  *v26 = 0;
  v26[1] = 0;
  v27 = *(v15 + 32);
  v64 = v9;
  v29 = *(v9 + 56);
  v28 = v9 + 56;
  v72 = v29;
  v29(&v19[v27], 1, 1, v8);
  v30 = (*(*v2 + 80))(a1);
  if (v31)
  {
    *v26 = v30;
    v26[1] = v31;
  }

  v32 = [a1 intent];
  v33 = (*(*v2 + 88))();

  if (!v33)
  {
    goto LABEL_17;
  }

  result = [v33 hour];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v35 = result;
  if (HIDWORD(result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v60 = v33;
  v36 = v63;
  outlined init with copy of ProtoDateComponentSignal?(&v19[v27], v63);
  v37 = *(v64 + 48);
  if ((v37)(v36, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v38 = &v13[v8[5]];
    *v38 = 0;
    v38[4] = 1;
    v39 = &v13[v8[6]];
    *v39 = 0;
    v39[4] = 1;
    v40 = &v13[v8[7]];
    *v40 = 0;
    v40[4] = 1;
    v41 = &v13[v8[8]];
    *v41 = 0;
    v41[4] = 1;
    v42 = &v13[v8[9]];
    *v42 = 0;
    v42[4] = 1;
    v43 = &v13[v8[10]];
    *v43 = 0;
    v43[4] = 1;
    if ((v37)(v36, 1, v8) != 1)
    {
      outlined destroy of DateInterval?(v36, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoStartCallTaskFeatureSet(v36, v13, type metadata accessor for ProtoDateComponentSignal);
  }

  v44 = &v13[v8[8]];
  *v44 = v35;
  v44[4] = 0;
  outlined destroy of DateInterval?(&v19[v27], &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  outlined init with take of ProtoStartCallTaskFeatureSet(v13, &v19[v27], type metadata accessor for ProtoDateComponentSignal);
  v72(&v19[v27], 0, 1, v8);
  v45 = v60;
  result = [v60 minute];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v46 = result;
  if (!HIDWORD(result))
  {
    v64 = v28;
    v47 = v61;
    outlined init with copy of ProtoDateComponentSignal?(&v19[v27], v61);
    if ((v37)(v47, 1, v8) == 1)
    {
      v63 = v37;
      v48 = v62;
      UnknownStorage.init()();

      v49 = v48 + v8[5];
      *v49 = 0;
      *(v49 + 4) = 1;
      v50 = v48 + v8[6];
      *v50 = 0;
      *(v50 + 4) = 1;
      v51 = v48 + v8[7];
      *v51 = 0;
      *(v51 + 4) = 1;
      v52 = v48 + v8[8];
      *v52 = 0;
      *(v52 + 4) = 1;
      v53 = v48 + v8[9];
      *v53 = 0;
      *(v53 + 4) = 1;
      v54 = v48 + v8[10];
      *v54 = 0;
      *(v54 + 4) = 1;
      if ((v63)(v47, 1, v8) != 1)
      {
        outlined destroy of DateInterval?(v47, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
      }
    }

    else
    {

      v48 = v62;
      outlined init with take of ProtoStartCallTaskFeatureSet(v47, v62, type metadata accessor for ProtoDateComponentSignal);
    }

    v55 = v48 + v8[9];
    *v55 = v46;
    *(v55 + 4) = 0;
    outlined destroy of DateInterval?(&v19[v27], &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v48, &v19[v27], type metadata accessor for ProtoDateComponentSignal);
    v72(&v19[v27], 0, 1, v8);
LABEL_17:
    v56 = v68;
    outlined init with copy of ProtoStartCallTaskFeatureSet(v19, v68, type metadata accessor for ProtoAlarmTaskFeatureSet);
    outlined destroy of DateInterval?(v22, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetV08OneOf_ByB0OSgMR);
    outlined init with take of ProtoStartCallTaskFeatureSet(v56, v22, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v57 = v67;
    swift_storeEnumTagMultiPayload();
    (v66)(v22, 0, 1, v57);
    outlined destroy of ProtoStartCallTaskFeatureSet(v19, type metadata accessor for ProtoAlarmTaskFeatureSet);
    v58 = v71;
    outlined init with take of ProtoStartCallTaskFeatureSet(v22, v71, type metadata accessor for ProtoTaskFeatureSet);
    return (*(v69 + 56))(v58, 0, 1, v70);
  }

LABEL_21:
  __break(1u);
  return result;
}

void INInteraction.extractFeatures()(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X8>)
{
  v2 = v1;
  v4 = [v1 intent];
  v5 = [v4 _className];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v6 == 0xD000000000000011 && 0x800000026923F550 == v8;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v6 == 0xD000000000000013 ? (v10 = 0x800000026923F4B0 == v8) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v6 == 0xD000000000000013 ? (v11 = 0x800000026923F4D0 == v8) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000013 && 0x800000026923F570 == v8)))
  {

LABEL_19:
    type metadata accessor for AlarmIntentFeatureExtractor();
    swift_allocObject();
    AlarmIntentFeatureExtractor.extract(from:)(v2, a1);

    return;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for feature != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.feature);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    v39 = v14;
    v19 = [v14 intent];
    v20 = [v19 _className];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

    *(v17 + 4) = v24;
    v14 = v39;
    _os_log_impl(&dword_2691F5000, v15, v16, "Skip the intent feature extraction for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D634770](v18, -1, -1);
    MEMORY[0x26D634770](v17, -1, -1);
  }

  v25 = [v14 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INStartCallIntentFeatureExtractor();
    swift_initStackObject();
    INStartCallIntentFeatureExtractor.extract(from:)(v14, a1);
LABEL_35:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INSendMessageIntentFeatureExtractor();
    swift_initStackObject();
    INSendMessageIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INSetTaskAttributeIntentFeatureExtractor();
    swift_initStackObject();
    INSetTaskAttributeIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for INAddTasksIntentFeatureExtractor();
    swift_initStackObject();
    INAddTasksIntentFeatureExtractor.extract(from:)(v14, a1);
    goto LABEL_35;
  }

  v26 = v14;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315138;
    v31 = [v26 intent];
    v32 = [v31 _className];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v40);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_2691F5000, v27, v28, "Skip the feature extraction for intents %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D634770](v30, -1, -1);
    MEMORY[0x26D634770](v29, -1, -1);
  }

  v37 = type metadata accessor for ProtoTaskFeatureSet(0);
  v38 = *(*(v37 - 8) + 56);

  v38(a1, 1, 1, v37);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

uint64_t type metadata accessor for INPerson(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ProtoDateComponentSignal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMd, &_s18SiriTaskEngagement24ProtoDateComponentSignalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ProtoStartCallTaskFeatureSet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static SiriTaskEngagementRetriever.retrieveSiriTaskEngagementWithStreamId(taskId:streamId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = PSEFeatureStoreManager.getStream(streamId:)(a3, a4);
  if (v10)
  {
    v11 = (*(*v10 + 160))(a1, a2);
    if (v11)
    {
      static SiriTaskEngagementRetriever.convertToProtoSiriTaskEngagement(from:)(v11, a5);

      return swift_unknownObjectRelease();
    }

    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.feature);
    _StringGuts.grow(_:)(50);

    v17 = 0xD000000000000143;
    v18 = 0x800000026923F700;
    MEMORY[0x26D634000](a1, a2);
    Logger.error(_:_:)(0xD000000000000030, 0x800000026923F700, &v17);
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.feature);
    v17 = 325;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x26D634000](0xD000000000000030, 0x800000026923F700);
    MEMORY[0x26D634000](a1, a2);
    MEMORY[0x26D634000](0xD00000000000001BLL, 0x800000026923F740);
    Logger.error(_:_:)(0, 0xE000000000000000, &v17);
  }

  v15 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a5, 1, 1, v15);
}

uint64_t static SiriTaskEngagementRetriever.convertToProtoSiriTaskEngagement(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JSONDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = [a1 json];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for ProtoSiriTaskEngagement(0);
    JSONDecodingOptions.init()();
    lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
    Message.init(jsonString:options:)();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    if (one-time initialization token for feature != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.feature);
    v12 = 322;
    Logger.error(_:_:)(0xD000000000000023, 0x800000026923F7D0, &v12);
    v9 = type metadata accessor for ProtoSiriTaskEngagement(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

void *static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\"");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ProtoSiriTaskEngagement(0);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0x800000026923B4E0;
  }

  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v14 = PSEFeatureStoreManager.getStream(streamId:)(v11, v12);

    if (!v14)
    {
      if (one-time initialization token for feature != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.feature);
      LOWORD(v56) = 325;
      Logger.error(_:_:)(0xD00000000000003ELL, 0x800000026923F760, &v56);
      return 0;
    }

    v16 = (*(*v14 + 168))(v15);
    if (!v16)
    {
      if (one-time initialization token for feature != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.feature);
      LOWORD(v56) = 323;
      Logger.error(_:_:)(0xD000000000000023, 0x800000026923F7A0, &v56);

      return 0;
    }

    v18 = v16;
    v19 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!(v16 >> 62))
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v14;
      if (!v20)
      {
        break;
      }

      goto LABEL_12;
    }

    if (v16 >= 0)
    {
      v16 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v20 = MEMORY[0x26D634210](v16);
    v42 = v14;
    if (!v20)
    {
      break;
    }

LABEL_12:
    v11 = 0;
    v12 = 0;
    v54 = v18 & 0xC000000000000001;
    v46 = "interaction to Json";
    v50 = (v43 + 56);
    v21 = " siriTaskEngagement";
    v49 = MEMORY[0x277D84F90];
    *&v17 = 136315138;
    v44 = v17;
    v52 = v19;
    v53 = v18;
    v51 = v20;
    v55 = " siriTaskEngagement";
    v45 = v8;
    while (v54)
    {
      v24 = MEMORY[0x26D6341F0](v11, v18);
      v25 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }

LABEL_18:
      v26 = [v24 json];
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        JSONDecodingOptions.init()();
        lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
        Message.init(jsonString:options:)();
        swift_unknownObjectRelease();
        (*v50)(v8, 0, 1, v9);
        outlined init with take of ProtoSiriTaskEngagement(v8, v47);
        v34 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v18 = v53;
        v37 = v34[2];
        v36 = v34[3];
        v49 = v34;
        if (v37 >= v36 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v49);
        }

        v38 = v49;
        v49[2] = v37 + 1;
        outlined init with take of ProtoSiriTaskEngagement(v47, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
        v19 = v52;
      }

      else
      {
        if (one-time initialization token for feature != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.feature);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v56 = v32;
          *v31 = v44;
          *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, v55 | 0x8000000000000000, &v56);
          _os_log_impl(&dword_2691F5000, v29, v30, "%s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x26D634770](v32, -1, -1);
          v33 = v31;
          v21 = v55;
          MEMORY[0x26D634770](v33, -1, -1);
        }

        v18 = v53;
        v22 = specialized static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)(0xD000000000000023, v21 | 0x8000000000000000);
        LOWORD(v56) = 322;
        specialized static CoreAnalyticsService.submitReliabilityAnalytics(category:reason:)(&v56, v22, v23);
        swift_unknownObjectRelease();

        v19 = v52;
        (*v50)(v8, 1, 1, v9);
        outlined destroy of ProtoSiriTaskEngagement?(v8);
      }

      v21 = v55;
      ++v11;
      if (v25 == v51)
      {
        goto LABEL_46;
      }
    }

    if (v11 >= *(v19 + 16))
    {
      goto LABEL_40;
    }

    v24 = *(v18 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v25 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_18;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v49 = MEMORY[0x277D84F90];
LABEL_46:

  return v49;
}

uint64_t outlined destroy of ProtoSiriTaskEngagement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoabC0VSgMd, "h\"");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement)
  {
    type metadata accessor for ProtoSiriTaskEngagement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement);
  }

  return result;
}

uint64_t outlined init with take of ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskEngagement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SiriTaskEngagementRetriever(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriTaskEngagementRetriever(_WORD *result, int a2, int a3)
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

uint64_t ProtoSiriTaskInteractionType.includesPrompt.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesPrompt.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesConfirm.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesConfirm.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesDisambiguate.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesDisambiguate.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskInteractionType.includesUnsupportedPrompt.setter(char a1)
{
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*ProtoSiriTaskInteractionType.includesUnsupportedPrompt.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskInteractionType(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

int *ProtoSiriTaskInteractionType.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for ProtoSiriTaskInteractionType(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.requestIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskCompletion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskCompletion.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.taskCompletion.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskEvaluationSummary.taskCompletion.modify;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskSuccess.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = *(v1 + *(result + 28));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ProtoSiriTaskEvaluationSummary.taskSuccess.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.taskSuccess.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return ProtoSiriTaskInteractionType.includesPrompt.modify;
}

uint64_t ProtoSiriTaskEvaluationSummary.interactionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + *(v6 + 32), v5, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v7 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v5, a1, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  *(a1 + v7[7]) = 2;
  *(a1 + v7[8]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v5, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoSiriTaskEvaluationSummary.interactionType : ProtoSiriTaskEvaluationSummary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(a1 + *(v7 + 32), v6, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v8 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v6, a2, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  UnknownStorage.init()();
  *(a2 + v8[5]) = 2;
  *(a2 + v8[6]) = 2;
  *(a2 + v8[7]) = 2;
  *(a2 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEvaluationSummary.interactionType : ProtoSiriTaskEvaluationSummary(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v7, type metadata accessor for ProtoSiriTaskInteractionType);
  v8 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(a2 + v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  outlined init with take of ProtoSiriTaskInteractionType(v7, a2 + v8, type metadata accessor for ProtoSiriTaskInteractionType);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.interactionType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(v1 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  outlined init with take of ProtoSiriTaskInteractionType(a1, v1 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoSiriTaskEvaluationSummary.interactionType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ProtoSiriTaskInteractionType?(v1 + v15, v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  return ProtoSiriTaskEvaluationSummary.interactionType.modify;
}

void ProtoSiriTaskEvaluationSummary.interactionType.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of ProtoSiriTaskInteractionType((*a1)[5], v4, type metadata accessor for ProtoSiriTaskInteractionType);
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    outlined init with take of ProtoSiriTaskInteractionType(v4, v9 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of ProtoSiriTaskInteractionType(v5, type metadata accessor for ProtoSiriTaskInteractionType);
  }

  else
  {
    outlined destroy of DateInterval?(v9 + v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
    outlined init with take of ProtoSiriTaskInteractionType(v5, v9 + v3, type metadata accessor for ProtoSiriTaskInteractionType);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoSiriTaskEvaluationSummary.hasInteractionType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  outlined init with copy of ProtoSiriTaskInteractionType?(v0 + *(v4 + 32), v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v5 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of DateInterval?(v3, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  return v6;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearInteractionType()()
{
  v1 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 32);
  outlined destroy of DateInterval?(v0 + v1, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMd, &_s18SiriTaskEngagement05ProtoaB15InteractionTypeVSgMR);
  v2 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoSiriTaskEvaluationSummary.startTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ProtoSiriTaskEvaluationSummary.startTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.startTimestampMs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoSiriTaskEvaluationSummary.startTimestampMs.modify;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearStartTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoSiriTaskEvaluationSummary.endTimestampMs.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ProtoSiriTaskEvaluationSummary.endTimestampMs.setter(uint64_t a1)
{
  result = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoSiriTaskEvaluationSummary.endTimestampMs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return ProtoDateTimeEntitySignal.datetimeTimestampMs.modify;
}

Swift::Void __swiftcall ProtoSiriTaskEvaluationSummary.clearEndTimestampMs()()
{
  v1 = v0 + *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoSiriTaskEvaluationSummary.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSiriTaskEvaluationSummary(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoSiriTaskEvaluationSummary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  UnknownStorage.init()();
  *(a1 + v2[6]) = 5;
  *(a1 + v2[7]) = 5;
  v3 = v2[8];
  v4 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[9];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[10];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t ProtoSiriTaskEngagement.taskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoSiriTaskEngagement.taskID : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for ProtoSiriTaskEngagement.taskID : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v8 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v7[2] = v4;
  v7[3] = v3;
}

uint64_t ProtoSiriTaskEngagement.taskID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
}

void (*ProtoSiriTaskEngagement.taskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.taskID.modify;
}

void ProtoSiriTaskEngagement.taskID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    v8[2] = v3;
    v8[3] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    v13[2] = v3;
    v13[3] = v5;
  }

  free(v2);
}

BOOL ProtoSiriTaskEngagement.hasTaskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearTaskID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v5 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v4[2] = 0;
  v4[3] = 0;
}

uint64_t ProtoSiriTaskEngagement.taskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for ProtoSiriTaskEngagement.taskName : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for ProtoSiriTaskEngagement.taskName : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v8 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v7[4] = v4;
  v7[5] = v3;
}

uint64_t ProtoSiriTaskEngagement.taskName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v8[4] = a1;
  v8[5] = a2;
}

void (*ProtoSiriTaskEngagement.taskName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.taskName.modify;
}

void ProtoSiriTaskEngagement.taskName.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    v8[4] = v3;
    v8[5] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    v13[4] = v3;
    v13[5] = v5;
  }

  free(v2);
}

BOOL ProtoSiriTaskEngagement.hasTaskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearTaskName()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v5 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v4[4] = 0;
  v4[5] = 0;
}

uint64_t ProtoSiriTaskEngagement.evaluationSummary.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v6 + v7, v5, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v8 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v5, a1, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  *(a1 + v8[6]) = 5;
  *(a1 + v8[7]) = 5;
  v10 = v8[8];
  v11 = type metadata accessor for ProtoSiriTaskInteractionType(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[9];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v8[10];
  *v13 = 0;
  v13[8] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v5, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.evaluationSummary : ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v10, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  v11 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v14 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  outlined init with take of ProtoSiriTaskInteractionType(v10, v6, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v6, v13 + v15, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.evaluationSummary.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v10 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of ProtoSiriTaskInteractionType(a1, v6, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  v11 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v6, v9 + v12, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  return swift_endAccess();
}

void (*ProtoSiriTaskEngagement.evaluationSummary.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ProtoSiriTaskEvaluationSummary(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__evaluationSummary;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v16 + v17, v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    *(v14 + v9[6]) = 5;
    *(v14 + v9[7]) = 5;
    v19 = v9[8];
    v20 = type metadata accessor for ProtoSiriTaskInteractionType(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + v9[9];
    *v21 = 0;
    v21[8] = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    v22[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMd, &_s18SiriTaskEngagement05ProtoaB17EvaluationSummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoSiriTaskEvaluationSummary);
  }

  return ProtoSiriTaskEngagement.evaluationSummary.modify;
}

uint64_t ProtoSiriTaskEngagement.siriTaskFeatureSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v6 + v7, v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v8 = type metadata accessor for ProtoTaskFeatureSet(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v5, a1, type metadata accessor for ProtoTaskFeatureSet);
  }

  v10 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v5, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.siriTaskFeatureSet : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v8 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v7 + v8, v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of ProtoSiriTaskInteractionType(v6, a2, type metadata accessor for ProtoTaskFeatureSet);
  }

  v11 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of DateInterval?(v6, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  }

  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.siriTaskFeatureSet : ProtoSiriTaskEngagement(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ProtoTaskFeatureSet(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProtoSiriTaskInteractionType(a1, v10, type metadata accessor for ProtoTaskFeatureSet);
  v11 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v14 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  outlined init with take of ProtoSiriTaskInteractionType(v10, v6, type metadata accessor for ProtoTaskFeatureSet);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v6, v13 + v15, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.siriTaskFeatureSet.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v10 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of ProtoSiriTaskInteractionType(a1, v6, type metadata accessor for ProtoTaskFeatureSet);
  v11 = type metadata accessor for ProtoTaskFeatureSet(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v6, v9 + v12, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  return swift_endAccess();
}

void (*ProtoSiriTaskEngagement.siriTaskFeatureSet.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ProtoTaskFeatureSet(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__siriTaskFeatureSet;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v16 + v17, v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for ProtoTaskFeatureSet.OneOf_ByTask(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    UnknownStorage.init()();
    v20 = (v14 + *(v9 + 24));
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of DateInterval?(v8, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
    }
  }

  else
  {
    outlined init with take of ProtoSiriTaskInteractionType(v8, v14, type metadata accessor for ProtoTaskFeatureSet);
  }

  return ProtoSiriTaskEngagement.siriTaskFeatureSet.modify;
}

void ProtoSiriTaskEngagement.evaluationSummary.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of ProtoSiriTaskInteractionType(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v15 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of ProtoSiriTaskInteractionType(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    outlined assign with take of ProtoSiriTaskEvaluationSummary?(v21, v12 + v22, a5, a6);
    swift_endAccess();
    outlined destroy of ProtoSiriTaskInteractionType(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v28 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v25);

      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of ProtoSiriTaskInteractionType(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    outlined assign with take of ProtoSiriTaskEvaluationSummary?(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

BOOL ProtoSiriTaskEngagement.hasEvaluationSummary.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  outlined init with copy of ProtoSiriTaskInteractionType?(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  outlined destroy of DateInterval?(v11, a1, a2);
  return v15;
}

uint64_t ProtoSiriTaskEngagement.clearEvaluationSummary()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  outlined assign with take of ProtoSiriTaskEvaluationSummary?(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t ProtoSiriTaskEngagement.followupTimeWindowInMs.getter()
{
  v1 = (*(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs);
  swift_beginAccess();
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for ProtoSiriTaskEngagement.followupTimeWindowInMs : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.followupTimeWindowInMs : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v7 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  *v8 = v3;
  v8[8] = 0;
  return result;
}

uint64_t ProtoSiriTaskEngagement.followupTimeWindowInMs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v7 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  result = swift_beginAccess();
  *v8 = a1;
  v8[8] = 0;
  return result;
}

void (*ProtoSiriTaskEngagement.followupTimeWindowInMs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return ProtoSiriTaskEngagement.followupTimeWindowInMs.modify;
}

void ProtoSiriTaskEngagement.followupTimeWindowInMs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v10 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = v7 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  *v11 = v3;
  v11[8] = 0;

  free(v2);
}

BOOL ProtoSiriTaskEngagement.hasFollowupTimeWindowInMs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall ProtoSiriTaskEngagement.clearFollowupTimeWindowInMs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v5 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = v4 + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupTimeWindowInMs;
  swift_beginAccess();
  *v6 = 0;
  v6[8] = 1;
}

uint64_t ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter()
{
  type metadata accessor for ProtoSiriTaskEngagement(0);
  swift_beginAccess();
}

uint64_t key path getter for ProtoSiriTaskEngagement.followupUserInitatedEngagements : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for ProtoSiriTaskEngagement.followupUserInitatedEngagements : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v7 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *(v6 + v8) = v3;
}

uint64_t ProtoSiriTaskEngagement.followupUserInitatedEngagements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v7 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

void (*ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify;
}

void ProtoSiriTaskEngagement.followupUserInitatedEngagements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v10 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v11 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v16 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__followupUserInitatedEngagements;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

void (*ProtoSiriTaskEngagement.nextTaskID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__nextTaskID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.nextTaskID.modify;
}

uint64_t ProtoSiriTaskEngagement.nextTaskID.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for ProtoSiriTaskEngagement.nextTaskID : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t key path setter for ProtoSiriTaskEngagement.nextTaskID : ProtoSiriTaskEngagement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v12 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v11);

    *(a2 + v9) = v12;
    v11 = v12;
  }

  v13 = (v11 + *a5);
  swift_beginAccess();
  *v13 = v8;
  v13[1] = v7;
}

uint64_t ProtoSiriTaskEngagement.nextTaskID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

    *(v5 + v8) = v11;
    v10 = v11;
  }

  v12 = (v10 + *a3);
  swift_beginAccess();
  *v12 = a1;
  v12[1] = a2;
}

void (*ProtoSiriTaskEngagement.previousTaskID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__previousTaskID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return ProtoSiriTaskEngagement.previousTaskID.modify;
}

void ProtoSiriTaskEngagement.nextTaskID.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v13 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v13;
      v10 = v13;
    }

    v14 = (v10 + *a3);
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v7;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 96);
      v18 = *(v4 + 88);
      type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
      swift_allocObject();
      v19 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v16);

      *(v18 + v17) = v19;
      v16 = v19;
    }

    v20 = (v16 + *a3);
    swift_beginAccess();
    *v20 = v5;
    v20[1] = v7;
  }

  free(v4);
}

BOOL ProtoSiriTaskEngagement.hasNextTaskID.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t ProtoSiriTaskEngagement.clearNextTaskID()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v7 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = (v6 + *a1);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;
}

uint64_t ProtoSiriTaskEngagement.engagementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 14)
  {
    LOBYTE(v6) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.engagementType : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 14)
  {
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

void (*ProtoSiriTaskEngagement.engagementType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 14)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return ProtoSiriTaskEngagement.engagementType.modify;
}

BOOL ProtoSiriTaskEngagement.hasEngagementType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__engagementType;
  swift_beginAccess();
  return *(v1 + v2) != 14;
}

uint64_t ProtoSiriTaskEngagement.domainType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 9)
  {
    LOBYTE(v6) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t key path getter for ProtoSiriTaskEngagement.domainType : ProtoSiriTaskEngagement@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v4 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if (v6 == 9)
  {
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for ProtoSiriTaskEngagement.engagementType : ProtoSiriTaskEngagement(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v11 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

uint64_t ProtoSiriTaskEngagement.engagementType.setter(char *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = v5;
  return result;
}

void (*ProtoSiriTaskEngagement.domainType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 9)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return ProtoSiriTaskEngagement.domainType.modify;
}

void ProtoSiriTaskEngagement.engagementType.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v12 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

BOOL ProtoSiriTaskEngagement.hasDomainType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20));
  v2 = OBJC_IVAR____TtCV18SiriTaskEngagement23ProtoSiriTaskEngagementP33_F3A832E830815955AC517C2682306D7C13_StorageClass__domainType;
  swift_beginAccess();
  return *(v1 + v2) != 9;
}

uint64_t ProtoSiriTaskEngagement.clearEngagementType()(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoSiriTaskEngagement._StorageClass(0);
    swift_allocObject();
    v9 = specialized ProtoSiriTaskEngagement._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
    v8 = v9;
  }

  v10 = *a1;
  result = swift_beginAccess();
  *(v8 + v10) = a2;
  return result;
}

uint64_t ProtoSiriTaskEngagement.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for ProtoSiriTaskEngagement(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static ProtoSiriTaskEngagement._StorageClass.defaultInstance;
}

uint64_t ProtoSiriTaskInteractionType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for ProtoSiriTaskInteractionType(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}