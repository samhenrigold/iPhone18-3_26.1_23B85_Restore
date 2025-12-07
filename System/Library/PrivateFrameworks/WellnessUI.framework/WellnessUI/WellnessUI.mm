uint64_t sub_273E40960()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E409A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_273E40A6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E40B58()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E40B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for StatusIndicatorView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_273E40CF8()
{
  v1 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + v3;

  v8 = type metadata accessor for GenericMedCompletedLogModel(0);
  v9 = *(v8 + 24);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  v10 = v7 + *(v8 + 56);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for SpeakableString();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  outlined consume of Text.Storage(*(v7 + v1[5]), *(v7 + v1[5] + 8), *(v7 + v1[5] + 16));

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v2 | v6 | 7);
}

uint64_t sub_273E41028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenericMedCompletedLogModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_273E4115C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenericMedCompletedLogModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E412AC()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E412F0()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v22 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v2 | v4 | v7;
  v16 = (((v2 + 16) & ~v2) + v21 + v4) & ~v4;
  v17 = (v16 + v19 + v7) & ~v7;
  (*(v3 + 8))(v0 + v16, v22);
  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x2821FE8E8](v0, v17 + v20, v15 | 7);
}

uint64_t sub_273E4164C()
{
  v1 = type metadata accessor for BloodPressureLogSnippet(0);
  v2 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    (*(v4 + 8))(v0 + ((v2 + 16) & ~v2), v3);
  }

  v7 = type metadata accessor for BloodPressureLogModel(0);

  v8 = v6 + *(v7 + 32);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  v13 = (((v2 + 16) & ~v2) + v16 + v5) & ~v5;
  (*(v4 + 8))(v0 + v13, v3);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v2 | v5 | 7);
}

uint64_t sub_273E41958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BloodPressureLogModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E41A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BloodPressureLogModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E41BDC()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_273E41E1C()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));

  outlined consume of Text.Storage(*(v0 + v13), *(v0 + v13 + 8), *(v0 + v13 + 16));

  return MEMORY[0x2821FE8E8](v0, ((v13 + 39) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_273E420A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for SleepQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E4216C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E42230()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E423B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
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

uint64_t sub_273E424EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
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

uint64_t sub_273E42650(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_273E4278C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_273E42904(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[11] + 8);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[18];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E42AAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E42C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E42D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E42ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GenericButtonModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_273E42FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GenericButtonModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_273E430BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[20];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[23];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E4333C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[20];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[23];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_273E434D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273E43594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E4366C()
{
  v1 = *(type metadata accessor for PhoneRingsSnippet(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = v2 | v6;
  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 569) & ~v6;

  v11 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMR) + 44) + v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_MR);
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMR);
  v13(v11 + *(v14 + 48), v12);
  v13(v11 + *(v14 + 64), v12);

  return MEMORY[0x2821FE8E8](v0, v10 + v7, v9 | 7);
}

uint64_t sub_273E4395C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273E439CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 104);
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

uint64_t sub_273E43AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 104) = a2;
  }

  return result;
}

uint64_t sub_273E43B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMR);
  lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SashStandardView?, _ConditionalContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLa();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, ModifiedContent<HStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, MEMORY[0x277CE11A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43C74()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + v12));

  return MEMORY[0x2821FE8E8](v0, v12 + 40, v2 | 7);
}

uint64_t sub_273E43EB4()
{
  Snippet = type metadata accessor for TemperatureQuerySnippet(0);
  v20 = *(*(Snippet - 8) + 80);
  v21 = Snippet;
  v18 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v22 = v0;
  v19 = (v20 + 16) & ~v20;
  v5 = v0 + v19;
  if (!(*(v3 + 48))(v0 + v19, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }

  Model = type metadata accessor for TemperatureQueryModel(0);
  v7 = Model[10];
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = Model[16];
  if (!v10(v5 + v11, 1, v8))
  {
    (*(v9 + 8))(v5 + v11, v8);
  }

  v12 = v5 + Model[18];
  v13 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    (*(v9 + 8))(v12, v8);
  }

  v14 = v20 | v4;
  v15 = (v19 + v18 + v4) & ~v4;

  (*(v3 + 8))(v22 + v15, v2);

  return MEMORY[0x2821FE8E8](v22, v15 + v17, v14 | 7);
}

uint64_t sub_273E44204()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E44248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for TemperatureQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E44310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TemperatureQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E443D4()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E44418(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_273E444E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E445A8()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E445EC()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v22 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v2 | v4 | v7;
  v16 = (((v2 + 16) & ~v2) + v21 + v4) & ~v4;
  v17 = (v16 + v19 + v7) & ~v7;
  (*(v3 + 8))(v0 + v16, v22);
  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x2821FE8E8](v0, v17 + v20, v15 | 7);
}

uint64_t sub_273E44948()
{
  v1 = type metadata accessor for HealthDataLogSnippet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = type metadata accessor for HealthDataLogModel(0);

  v11 = *(v10 + 40);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    (*(v5 + 8))(v7 + v11, v4);
  }

  v12 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  v14 = (v3 + v17 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v2 | v6 | 7);
}

uint64_t sub_273E44C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HealthDataLogModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E44D94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HealthDataLogModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E44EDC()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_273E4511C()
{
  Snippet = type metadata accessor for GenericQuerySnippet(0);
  v1 = *(*(Snippet - 8) + 80);
  v16 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v0 + ((v1 + 16) & ~v1), v2);
  }

  Model = type metadata accessor for GenericQueryModel(0);
  v7 = *(Model + 40);
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(Model + 72);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v9 + 8))(v10, v8);
  }

  v12 = v1 | v4;
  v13 = (((v1 + 16) & ~v1) + v16 + v4) & ~v4;

  (*(v3 + 8))(v0 + v13, v2);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_273E45434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for GenericQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E454FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenericQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E45618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E45764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E458B0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E458F4()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v22 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v2 | v4 | v7;
  v16 = (((v2 + 16) & ~v2) + v21 + v4) & ~v4;
  v17 = (v16 + v19 + v7) & ~v7;
  (*(v3 + 8))(v0 + v16, v22);
  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x2821FE8E8](v0, v17 + v20, v15 | 7);
}

uint64_t sub_273E45C50()
{
  v1 = type metadata accessor for CycleTrackingLogSnippet(0);
  v2 = *(*(v1 - 8) + 80);
  v19 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    (*(v4 + 8))(v0 + ((v2 + 16) & ~v2), v3);
  }

  v7 = type metadata accessor for CycleTrackingLogModel(0);

  v8 = v6 + *(v7 + 32);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  v11 = *(v7 + 36);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ColorScheme();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  v16 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  (*(v4 + 8))(v0 + v16, v3);

  return MEMORY[0x2821FE8E8](v0, v16 + v18, v2 | v5 | 7);
}

uint64_t sub_273E45FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CycleTrackingLogModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E46104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CycleTrackingLogModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E46240()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E46284()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_273E464C4()
{
  Snippet = type metadata accessor for BloodPressureQuerySnippet(0);
  v1 = *(*(Snippet - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v17 = *(*(Snippet - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  Model = type metadata accessor for BloodPressureQueryModel(0);

  v8 = *(Model + 80);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = v6 + *(Model + 92);
  v12 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = type metadata accessor for SpeakableString();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  v14 = (((v1 + 16) & ~v1) + v17 + v5) & ~v5;

  (*(v4 + 8))(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v1 | v5 | 7);
}

uint64_t sub_273E46838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E46900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E469F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[11] + 8);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[18];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E46B9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E46D6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[10] + 8);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[16];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E46F14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E470BC()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_273E472FC()
{
  Snippet = type metadata accessor for OxygenSaturationQuerySnippet(0);
  v1 = *(*(Snippet - 8) + 80);
  v16 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v0 + ((v1 + 16) & ~v1), v2);
  }

  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v7 = *(Model + 36);
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(Model + 64);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v9 + 8))(v10, v8);
  }

  v12 = v1 | v4;
  v13 = (((v1 + 16) & ~v1) + v16 + v4) & ~v4;

  (*(v3 + 8))(v0 + v13, v2);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_273E47604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E476CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OxygenSaturationQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E477C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_273E47820()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E47864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = type metadata accessor for SimpleItemRichView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v14 = v3 | v9;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v14 | 7);
}

uint64_t sub_273E479E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273E47A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E47B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpeakableString();
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

uint64_t sub_273E47BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpeakableString();
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

uint64_t sub_273E47CC0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E47D04()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = (v3 + v17 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x2821FE8E8](v0, v15 + v7, v2 | v6 | 7);
}

uint64_t sub_273E47FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SingleActivitySummaryModel(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E48098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SingleActivitySummaryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E4815C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_273E48298(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_273E483E0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E48424()
{
  v1 = type metadata accessor for SnippetHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_273E48664()
{
  Snippet = type metadata accessor for HeightQuerySnippet(0);
  v1 = *(*(Snippet - 8) + 80);
  v14 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v18 = v0;
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }

  v16 = v2;
  Model = type metadata accessor for HeightQueryModel(0);
  v7 = *(Model + 32);
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(Model + 40);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v9 + 8))(v10, v8);
  }

  v12 = (((v1 + 16) & ~v1) + v14 + v4) & ~v4;

  (*(v3 + 8))(v18 + v12, v16);

  return MEMORY[0x2821FE8E8](v18, v12 + v15, v1 | v4 | 7);
}

uint64_t sub_273E48948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for HeightQueryModel(0);
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_273E48A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeightQueryModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E48AC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_273E48C50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[8];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_273E48DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd, _s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_273E48F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd, _s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_273E490A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E49250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_273E493FC()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E49440()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for StatusIndicatorView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_273E4959C()
{
  v1 = type metadata accessor for SpecificMedCompletedLogSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;

  v8 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v9 = *(v8 + 32);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  v10 = v7 + *(v8 + 76);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for SpeakableString();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = (v3 + v15 + v6) & ~v6;
  outlined consume of Text.Storage(*(v7 + v1[5]), *(v7 + v1[5] + 8), *(v7 + v1[5] + 16));

  outlined consume of Text.Storage(*(v7 + v1[6]), *(v7 + v1[6] + 8), *(v7 + v1[6] + 16));

  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v16, v2 | v6 | 7);
}

uint64_t sub_273E498A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_273E49968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_273E49A28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[10] + 8);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[15];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E49BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t MultipleDataPointView.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MultipleDataPointView(0);
  outlined init with copy of Environment<ColorScheme>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t MultipleDataPointView.avgValueColour.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  MultipleDataPointView.colorScheme.getter(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D8], v0);
  v7 = static ColorScheme.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return static Color.black.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

uint64_t type metadata accessor for MultipleDataPointView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultipleDataPointView;
  if (!type metadata singleton initialization cache for MultipleDataPointView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultipleDataPointView.avgValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 28));

  return v1;
}

uint64_t MultipleDataPointView.minValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 32));

  return v1;
}

uint64_t MultipleDataPointView.maxValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 36));

  return v1;
}

uint64_t MultipleDataPointView.totalValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 40));

  return v1;
}

uint64_t MultipleDataPointView.unit.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 44));

  return v1;
}

uint64_t MultipleDataPointView.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 48));

  return v1;
}

uint64_t MultipleDataPointView.averageLabelString.getter()
{
  v1 = *(v0 + *(type metadata accessor for MultipleDataPointView(0) + 56));

  return v1;
}

uint64_t MultipleDataPointView.init(average:avgValueString:minValueString:maxValueString:totalValueString:unit:dateLabel:hasUnitString:averageLabelString:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unint64_t a18)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a9 = EnvironmentObject.init()();
  a9[1] = v23;
  v24 = type metadata accessor for MultipleDataPointView(0);
  v25 = v24[5];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  result = swift_storeEnumTagMultiPayload();
  v27 = a9 + v24[6];
  *v27 = a1;
  v27[8] = a2 & 1;
  v28 = (a9 + v24[7]);
  *v28 = a3;
  v28[1] = a4;
  v29 = (a9 + v24[8]);
  *v29 = a5;
  v29[1] = a6;
  v30 = (a9 + v24[9]);
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + v24[10]);
  *v31 = a10;
  v31[1] = a11;
  v32 = (a9 + v24[11]);
  *v32 = a12;
  v32[1] = a13;
  v33 = (a9 + v24[12]);
  *v33 = a14;
  v33[1] = a15;
  *(a9 + v24[13]) = a16;
  v34 = 0x65676172657641;
  if (a18)
  {
    v34 = a17;
  }

  v35 = 0xE700000000000000;
  if (a18)
  {
    v35 = a18;
  }

  v36 = (a9 + v24[14]);
  *v36 = v34;
  v36[1] = v35;
  return result;
}

uint64_t MultipleDataPointView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v404 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v402 = &v381 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v403 = &v381 - v6;
  v411 = type metadata accessor for FactItemHeroNumberView();
  v7 = *(v411 - 8);
  MEMORY[0x28223BE20](v411);
  v9 = &v381 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorScheme();
  v409 = *(v10 - 8);
  v410 = v10;
  MEMORY[0x28223BE20](v10);
  v407 = &v381 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v408 = &v381 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v412 = &v381 - v15;
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v16 - 8);
  v413 = &v381 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v414 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v406 = &v381 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v381 - v21;
  v23 = type metadata accessor for MultipleDataPointView(0);
  v24 = v1 + *(v23 + 48);
  if (!*(v24 + 8) || (v25 = v23, v26 = (v1 + *(v23 + 28)), (v27 = v26[1]) == 0))
  {
    result = AnyView.init<A>(_:)();
    *a1 = result;
    return result;
  }

  v396._object = *(v24 + 8);
  v397 = v9;
  v398 = v3;
  v396._countAndFlagsBits = *v24;
  v393._countAndFlagsBits = *v26;
  v393._object = v27;
  v28 = *MEMORY[0x277CE0A78];
  v29 = *(v414 + 104);
  v405 = v1;
  v394 = v29;
  v395 = v414 + 104;
  (v29)(v22, v28, v18);
  v30 = (v405 + v25[9]);
  v31 = v30[1];
  if (v31 && (v32 = (v405 + v25[8]), (v33 = v32[1]) != 0))
  {
    v391 = v7;
    v392 = a1;
    v400 = v25;
    v401 = v18;
    v34 = *v30;
    v35 = *v32;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
    v37._countAndFlagsBits = v35;
    v37._object = v33;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);
    v38._countAndFlagsBits = 9666786;
    v38._object = 0xA300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    v39._countAndFlagsBits = v34;
    v39._object = v31;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
    LocalizedStringKey.init(stringInterpolation:)();
    v41 = Text.init(_:tableName:bundle:comment:)();
    v43 = v42;
    v45 = v44;
    LODWORD(v389) = *MEMORY[0x277CE0998];
    v46 = v389;
    v47 = type metadata accessor for Font.Design();
    v384 = v47;
    v48 = *(v47 - 8);
    v49 = *(v48 + 104);
    v388 = (v48 + 104);
    v390._countAndFlagsBits = v49;
    v50 = v412;
    v49(v412, v46, v47);
    v51 = *(v48 + 56);
    v385 = v48 + 56;
    v386 = v51;
    v51(v50, 0, 1, v47);
    v399 = v22;
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v50);
    v52 = Text.font(_:)();
    v54 = v53;
    LOBYTE(v47) = v55;

    outlined consume of Text.Storage(v41, v43, v45 & 1);

    v56 = Text.bold()();
    v402 = v57;
    v403 = v56;
    LODWORD(v390._object) = v58;
    v404 = v59;
    outlined consume of Text.Storage(v52, v54, v47 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v60);
    v61 = (v405 + *(v400 + 44));
    v62 = *v61;
    v382 = v61[1];
    v383 = v62;
    *&v430 = v62;
    *(&v430 + 1) = v382;
    v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v63);

    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
    LocalizedStringKey.init(stringInterpolation:)();
    v65 = Text.init(_:tableName:bundle:comment:)();
    v67 = v66;
    LOBYTE(v43) = v68;
    v69 = v406;
    v70 = v401;
    (v394)(v406, *MEMORY[0x277CE0A60], v401);
    v71 = v412;
    v72 = v384;
    (v390._countAndFlagsBits)(v412, v389, v384);
    v386(v71, 0, 1, v72);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v71);
    v73 = *(v414 + 8);
    v414 += 8;
    v388 = v73;
    v73(v69, v70);
    v74 = Text.font(_:)();
    v76 = v75;
    v78 = v77;

    outlined consume of Text.Storage(v65, v67, v43 & 1);

    LODWORD(v430) = static HierarchicalShapeStyle.secondary.getter();
    v79 = Text.foregroundStyle<A>(_:)();
    v81 = v80;
    LOBYTE(v67) = v82;
    outlined consume of Text.Storage(v74, v76, v78 & 1);

    static Font.Weight.semibold.getter();
    v390._countAndFlagsBits = Text.fontWeight(_:)();
    v406 = v83;
    LODWORD(v389) = v84;
    v412 = v85;
    v86 = v81;
    v87 = v405;
    outlined consume of Text.Storage(v79, v86, v67 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v88);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v396);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
    LocalizedStringKey.init(stringInterpolation:)();
    v90 = Text.init(_:tableName:bundle:comment:)();
    v395 = v91;
    v396._countAndFlagsBits = v90;
    LODWORD(v394) = v92;
    v396._object = v93;
    v94 = v400;
    LODWORD(v79) = *(v87 + *(v400 + 52));
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v95);
    v96 = (v87 + *(v94 + 56));
    v98 = *v96;
    v97 = v96[1];
    if (v79 == 1)
    {
      *&v430 = v98;
      *(&v430 + 1) = v97;
      v99._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v99);

      v100._countAndFlagsBits = 8250;
      v100._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v100);
      LocalizedStringKey.init(stringInterpolation:)();
      v101 = Text.init(_:tableName:bundle:comment:)();
      v385 = v102;
      v386 = v101;
      LODWORD(v384) = v103;
      v400 = v104;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v105);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v393);
      v106._countAndFlagsBits = 32;
      v106._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v106);
      *&v430 = v383;
      *(&v430 + 1) = v382;
      v107._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v107);

      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v108);
      LocalizedStringKey.init(stringInterpolation:)();
      v109 = Text.init(_:tableName:bundle:comment:)();
      v111 = v110;
      v113 = v112;
      v413 = v114;
      v115 = v408;
      MultipleDataPointView.colorScheme.getter(v408);
      v117 = v409;
      v116 = v410;
      v118 = v407;
      (*(v409 + 104))(v407, *MEMORY[0x277CDF3D8], v410);
      v119 = static ColorScheme.== infix(_:_:)();
      v120 = *(v117 + 8);
      v120(v118, v116);
      v120(v115, v116);
      if (v119)
      {
        v121 = static Color.black.getter();
      }

      else
      {
        v121 = static Color.white.getter();
      }

      *&v430 = v121;
      v190 = Text.foregroundStyle<A>(_:)();
      v192 = v191;
      v194 = v193;
      outlined consume of Text.Storage(v109, v111, v113 & 1);

      v195 = Text.bold()();
      v197 = v196;
      v199 = v198;
      outlined consume of Text.Storage(v190, v192, v194 & 1);

      v200 = v384;
      v202 = v385;
      v201 = v386;
      v410 = static Text.+ infix(_:_:)();
      v204 = v203;
      v405 = v203;
      LODWORD(v409) = v205;
      v413 = v206;
      outlined consume of Text.Storage(v195, v197, v199 & 1);

      outlined consume of Text.Storage(v201, v202, v200 & 1);

      v207 = MEMORY[0x277CE0BD0];
      v208 = MEMORY[0x277D638F0];
      v431 = MEMORY[0x277CE0BD0];
      OpaqueTypeConformance2 = MEMORY[0x277D638F0];
      v209 = swift_allocObject();
      *&v430 = v209;
      v211 = v402;
      v210 = v403;
      *(v209 + 16) = v403;
      *(v209 + 24) = v211;
      LODWORD(v408) = v390._object & 1;
      *(v209 + 32) = v390._object & 1;
      *(v209 + 40) = v404;
      *(&v428 + 1) = v207;
      v429 = v208;
      v212 = swift_allocObject();
      *&v427 = v212;
      v213 = v406;
      *(v212 + 16) = v390._countAndFlagsBits;
      *(v212 + 24) = v213;
      LODWORD(v407) = v389 & 1;
      *(v212 + 32) = v389 & 1;
      *(v212 + 40) = v412;
      v425 = v207;
      v426 = v208;
      v214 = swift_allocObject();
      v424 = v214;
      v215 = v410;
      *(v214 + 16) = v410;
      *(v214 + 24) = v204;
      LODWORD(v409) = v409 & 1;
      *(v214 + 32) = v409;
      *(v214 + 40) = v413;
      v423 = 0;
      v421 = 0u;
      v422 = 0u;
      v419 = v207;
      v420 = v208;
      v216 = swift_allocObject();
      v417 = 0;
      v418 = v216;
      v217 = v395;
      countAndFlagsBits = v396._countAndFlagsBits;
      *(v216 + 16) = v396._countAndFlagsBits;
      *(v216 + 24) = v217;
      v219 = v394 & 1;
      *(v216 + 32) = v394 & 1;
      *(v216 + 40) = v396._object;
      v415 = 0u;
      v416 = 0u;
      v220 = v210;
      v221 = v390._countAndFlagsBits;
      outlined copy of Text.Storage(v220, v211, v408);

      outlined copy of Text.Storage(v221, v406, v407);

      v222 = v215;
      v223 = v405;
      LOBYTE(v211) = v409;
      outlined copy of Text.Storage(v222, v405, v409);

      outlined copy of Text.Storage(countAndFlagsBits, v217, v219);
      v224 = v389;

      v225 = v397;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v431 = v398;
      v226 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
      v227 = v411;
      *&v427 = v411;
      *(&v427 + 1) = v226;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v430);
      View.componentSpacing(top:bottom:)();
      v228 = v211;
      v229 = v406;
      outlined consume of Text.Storage(v410, v223, v228);
    }

    else
    {
      *&v430 = v98;
      *(&v430 + 1) = v97;
      v151._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v151);

      v152._countAndFlagsBits = 8250;
      v152._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v152);
      LocalizedStringKey.init(stringInterpolation:)();
      v153 = Text.init(_:tableName:bundle:comment:)();
      v386 = v154;
      v387 = v153;
      LODWORD(v385) = v155;
      v400 = v156;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v157._countAndFlagsBits = 0;
      v157._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v157);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v393);
      v158._countAndFlagsBits = 0;
      v158._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v158);
      LocalizedStringKey.init(stringInterpolation:)();
      v159 = Text.init(_:tableName:bundle:comment:)();
      v161 = v160;
      v163 = v162;
      v413 = v164;
      v165 = v408;
      MultipleDataPointView.colorScheme.getter(v408);
      v167 = v409;
      v166 = v410;
      v168 = v407;
      (*(v409 + 104))(v407, *MEMORY[0x277CDF3D8], v410);
      v169 = static ColorScheme.== infix(_:_:)();
      v170 = *(v167 + 8);
      v170(v168, v166);
      v170(v165, v166);
      if (v169)
      {
        v171 = static Color.black.getter();
      }

      else
      {
        v171 = static Color.white.getter();
      }

      *&v430 = v171;
      v230 = Text.foregroundStyle<A>(_:)();
      v232 = v231;
      v234 = v233;
      outlined consume of Text.Storage(v159, v161, v163 & 1);

      v235 = Text.bold()();
      v237 = v236;
      v239 = v238;
      outlined consume of Text.Storage(v230, v232, v234 & 1);

      v240 = v385;
      v242 = v386;
      v241 = v387;
      v243 = static Text.+ infix(_:_:)();
      v407 = v243;
      v410 = v244;
      LODWORD(v409) = v245;
      v413 = v246;
      outlined consume of Text.Storage(v235, v237, v239 & 1);

      outlined consume of Text.Storage(v241, v242, v240 & 1);

      v247 = MEMORY[0x277D638F0];
      v431 = MEMORY[0x277CE0BD0];
      OpaqueTypeConformance2 = MEMORY[0x277D638F0];
      v248 = MEMORY[0x277CE0BD0];
      v249 = swift_allocObject();
      *&v430 = v249;
      v251 = v402;
      v250 = v403;
      *(v249 + 16) = v403;
      *(v249 + 24) = v251;
      LODWORD(v408) = v390._object & 1;
      *(v249 + 32) = v390._object & 1;
      *(v249 + 40) = v404;
      v429 = 0;
      v427 = 0u;
      v428 = 0u;
      v425 = v248;
      v426 = v247;
      v252 = swift_allocObject();
      v424 = v252;
      v253 = v410;
      *(v252 + 16) = v243;
      *(v252 + 24) = v253;
      v254 = v409 & 1;
      *(v252 + 32) = v254;
      LODWORD(v409) = v254;
      *(v252 + 40) = v413;
      v423 = 0;
      v421 = 0u;
      v422 = 0u;
      v419 = MEMORY[0x277CE0BD0];
      v420 = v247;
      v255 = swift_allocObject();
      v417 = 0;
      v418 = v255;
      v257 = v395;
      v256 = v396._countAndFlagsBits;
      *(v255 + 16) = v396._countAndFlagsBits;
      *(v255 + 24) = v257;
      LOBYTE(v247) = v394 & 1;
      *(v255 + 32) = v394 & 1;
      *(v255 + 40) = v396._object;
      v415 = 0u;
      v416 = 0u;
      v258 = v250;
      v259 = v256;
      outlined copy of Text.Storage(v258, v251, v408);

      v260 = v407;
      v261 = v410;
      outlined copy of Text.Storage(v407, v410, v254);

      outlined copy of Text.Storage(v259, v257, v247);

      v225 = v397;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v431 = v398;
      v262 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
      v227 = v411;
      *&v427 = v411;
      *(&v427 + 1) = v262;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v430);
      View.componentSpacing(top:bottom:)();
      outlined consume of Text.Storage(v260, v261, v409);
      v221 = v390._countAndFlagsBits;
      v229 = v406;
      v224 = v389;
    }

    (*(v391 + 8))(v225, v227);
    v263 = __swift_project_boxed_opaque_existential_1(&v430, v431);
    v264 = MEMORY[0x28223BE20](v263);
    (*(v266 + 16))(&v381 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0), v264);
    v267 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v221, v229, v224 & 1);

    outlined consume of Text.Storage(v396._countAndFlagsBits, v395, v394 & 1);

    outlined consume of Text.Storage(v403, v402, v390._object & 1);

    v388(v399, v401);
    result = __swift_destroy_boxed_opaque_existential_1(&v430);
  }

  else
  {
    v123 = v405 + v25[10];
    if (!*(v123 + 8))
    {
      v150 = AnyView.init<A>(_:)();
      result = (*(v414 + 8))(v22, v18);
      *a1 = v150;
      return result;
    }

    v390._object = *(v123 + 8);
    v391 = v7;
    v392 = a1;
    v390._countAndFlagsBits = *v123;
    v124 = *(v405 + v25[13]);
    v125 = v405;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v126);
    v127 = (v125 + v25[14]);
    v129 = *v127;
    v128 = v127[1];
    v400 = v25;
    v401 = v18;
    v399 = v22;
    if (v124 == 1)
    {
      *&v430 = v129;
      *(&v430 + 1) = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v130._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v130);

      v131._countAndFlagsBits = 8250;
      v131._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v131);
      LocalizedStringKey.init(stringInterpolation:)();
      v132 = Text.init(_:tableName:bundle:comment:)();
      v387 = v133;
      v388 = v132;
      LODWORD(v386) = v134;
      v389 = v135;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v136._countAndFlagsBits = 0;
      v136._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v136);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v393);
      v137._countAndFlagsBits = 32;
      v137._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v137);
      v430 = *(v125 + v25[11]);
      v138._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v138);

      v139._countAndFlagsBits = 0;
      v139._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v139);
      LocalizedStringKey.init(stringInterpolation:)();
      v393._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
      v393._object = v140;
      v385 = v141;
      LODWORD(v384) = v142;
      v143 = v408;
      MultipleDataPointView.colorScheme.getter(v408);
      v145 = v409;
      v144 = v410;
      v146 = v407;
      (*(v409 + 104))(v407, *MEMORY[0x277CDF3D8], v410);
      v147 = static ColorScheme.== infix(_:_:)();
      v148 = *(v145 + 8);
      v148(v146, v144);
      v148(v143, v144);
      if (v147)
      {
        v149 = static Color.black.getter();
      }

      else
      {
        v149 = static Color.white.getter();
      }

      *&v430 = v149;
      v268 = v384;
      v269 = v393._countAndFlagsBits;
      v270 = v385;
      v271 = Text.foregroundStyle<A>(_:)();
      v273 = v272;
      v275 = v274;
      outlined consume of Text.Storage(v269, v270, v268 & 1);

      v276 = Text.bold()();
      v278 = v277;
      LOBYTE(v270) = v279;
      v407 = v280;
      outlined consume of Text.Storage(v271, v273, v275 & 1);

      v281 = v386;
      v283 = v387;
      v282 = v388;
      v284 = static Text.+ infix(_:_:)();
      v409 = v285;
      v410 = v284;
      LODWORD(v408) = v286;
      v288 = v287;
      outlined consume of Text.Storage(v276, v278, v270 & 1);

      v289 = v281 & 1;
      v290 = v282;
      v291 = v283;
    }

    else
    {
      *&v430 = v129;
      *(&v430 + 1) = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v172._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v172);

      v173._countAndFlagsBits = 8250;
      v173._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v173);
      LocalizedStringKey.init(stringInterpolation:)();
      v174 = Text.init(_:tableName:bundle:comment:)();
      v387 = v175;
      v388 = v174;
      LODWORD(v386) = v176;
      v389 = v177;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v178._countAndFlagsBits = 0;
      v178._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v178);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v393);
      v179._countAndFlagsBits = 0;
      v179._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v179);
      LocalizedStringKey.init(stringInterpolation:)();
      v393._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
      v393._object = v180;
      v385 = v181;
      LODWORD(v384) = v182;
      v183 = v408;
      MultipleDataPointView.colorScheme.getter(v408);
      v185 = v409;
      v184 = v410;
      v186 = v407;
      (*(v409 + 104))(v407, *MEMORY[0x277CDF3D8], v410);
      v187 = static ColorScheme.== infix(_:_:)();
      v188 = *(v185 + 8);
      v188(v186, v184);
      v188(v183, v184);
      if (v187)
      {
        v189 = static Color.black.getter();
      }

      else
      {
        v189 = static Color.white.getter();
      }

      *&v430 = v189;
      v292 = v384;
      v293 = v393._countAndFlagsBits;
      v294 = v385;
      v295 = Text.foregroundStyle<A>(_:)();
      v297 = v296;
      v299 = v298;
      outlined consume of Text.Storage(v293, v294, v292 & 1);

      v300 = Text.bold()();
      v407 = v301;
      LOBYTE(v293) = v302;
      outlined consume of Text.Storage(v295, v297, v299 & 1);

      v303 = v386;
      v305 = v387;
      v304 = v388;
      v306 = v407;
      v307 = static Text.+ infix(_:_:)();
      v409 = v308;
      v410 = v307;
      LODWORD(v408) = v309;
      v288 = v310;
      outlined consume of Text.Storage(v300, v306, v293 & 1);

      v289 = v303 & 1;
      v290 = v304;
      v291 = v305;
    }

    outlined consume of Text.Storage(v290, v291, v289);
    v407 = v288;

    LODWORD(v408) = v408 & 1;
    outlined copy of Text.Storage(v410, v409, v408);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v311._countAndFlagsBits = 0;
    v311._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v311);
    v430 = *(v405 + *(v400 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v312._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v312);

    v313._countAndFlagsBits = 0;
    v313._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v313);
    LocalizedStringKey.init(stringInterpolation:)();
    v405 = Text.init(_:tableName:bundle:comment:)();
    v400 = v314;
    v316 = v315;
    v317 = v406;
    v318 = v401;
    (v394)(v406, *MEMORY[0x277CE0A60], v401);
    LODWORD(v393._object) = *MEMORY[0x277CE0998];
    object_low = LODWORD(v393._object);
    v320 = type metadata accessor for Font.Design();
    v386 = v320;
    v321 = *(v320 - 8);
    v393._countAndFlagsBits = *(v321 + 104);
    v395 = v321 + 104;
    v322 = v412;
    (v393._countAndFlagsBits)(v412, object_low, v320);
    v323 = *(v321 + 56);
    v388 = (v321 + 56);
    v389 = v323;
    v323(v322, 0, 1, v320);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v322);
    v324 = *(v414 + 8);
    v414 += 8;
    v394 = v324;
    v324(v317, v318);
    v325 = v405;
    v326 = v400;
    v327 = Text.font(_:)();
    v329 = v328;
    LOBYTE(v318) = v330;
    v406 = v331;

    outlined consume of Text.Storage(v325, v326, v316 & 1);

    LODWORD(v430) = static HierarchicalShapeStyle.secondary.getter();
    v332 = Text.foregroundStyle<A>(_:)();
    v334 = v333;
    LOBYTE(v320) = v335;
    outlined consume of Text.Storage(v327, v329, v318 & 1);

    static Font.Weight.semibold.getter();
    v405 = Text.fontWeight(_:)();
    v406 = v336;
    v400 = v337;
    LODWORD(v387) = v338;
    outlined consume of Text.Storage(v332, v334, v320 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v339._countAndFlagsBits = 0;
    v339._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v339);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v396);
    v340._countAndFlagsBits = 0;
    v340._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v340);
    LocalizedStringKey.init(stringInterpolation:)();
    v341 = Text.init(_:tableName:bundle:comment:)();
    v396._countAndFlagsBits = v342;
    v396._object = v341;
    LODWORD(v384) = v343;
    v385 = v344;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v345._countAndFlagsBits = 0;
    v345._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v345);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v390);
    v346._countAndFlagsBits = 0;
    v346._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v346);
    LocalizedStringKey.init(stringInterpolation:)();
    v347 = Text.init(_:tableName:bundle:comment:)();
    v349 = v348;
    LOBYTE(v334) = v350;
    v351 = v412;
    v352 = v386;
    (v393._countAndFlagsBits)(v412, LODWORD(v393._object), v386);
    v389(v351, 0, 1, v352);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v351);
    v353 = Text.font(_:)();
    v355 = v354;
    LOBYTE(v352) = v356;

    outlined consume of Text.Storage(v347, v349, v334 & 1);

    v357 = Text.bold()();
    v412 = v357;
    v413 = v358;
    v360 = v359;
    v395 = v359;
    LOBYTE(v347) = v361;
    v362 = v358;
    outlined consume of Text.Storage(v353, v355, v352 & 1);

    v363 = MEMORY[0x277CE0BD0];
    v364 = MEMORY[0x277D638F0];
    v431 = MEMORY[0x277CE0BD0];
    OpaqueTypeConformance2 = MEMORY[0x277D638F0];
    v365 = swift_allocObject();
    *&v430 = v365;
    *(v365 + 16) = v357;
    *(v365 + 24) = v360;
    LODWORD(v347) = v347 & 1;
    *(v365 + 32) = v347;
    LODWORD(v393._object) = v347;
    *(v365 + 40) = v362;
    *(&v428 + 1) = v363;
    v429 = v364;
    v366 = swift_allocObject();
    *&v427 = v366;
    v368 = v405;
    v367 = v406;
    v369 = v400;
    *(v366 + 16) = v405;
    *(v366 + 24) = v369;
    LOBYTE(v327) = v387 & 1;
    *(v366 + 32) = v387 & 1;
    *(v366 + 40) = v367;
    v425 = v363;
    v426 = v364;
    v370 = swift_allocObject();
    v424 = v370;
    v371 = v409;
    *(v370 + 16) = v410;
    *(v370 + 24) = v371;
    *(v370 + 32) = v408;
    *(v370 + 40) = v407;
    v423 = 0;
    v421 = 0u;
    v422 = 0u;
    v419 = v363;
    v420 = v364;
    v372 = swift_allocObject();
    v417 = 0;
    v418 = v372;
    v374 = v396._countAndFlagsBits;
    object = v396._object;
    *(v372 + 16) = v396._object;
    *(v372 + 24) = v374;
    LOBYTE(v357) = v384 & 1;
    *(v372 + 32) = v384 & 1;
    *(v372 + 40) = v385;
    v415 = 0u;
    v416 = 0u;
    outlined copy of Text.Storage(v412, v395, v347);

    outlined copy of Text.Storage(v368, v369, v327);

    outlined copy of Text.Storage(object, v374, v357);

    v375 = v397;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    v376 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
    v377 = v403;
    v378 = v411;
    View.componentSpacing(top:bottom:)();
    (*(v391 + 8))(v375, v378);
    v379 = v404;
    v380 = v398;
    (*(v404 + 16))(v402, v377, v398);
    *&v430 = v378;
    *(&v430 + 1) = v376;
    swift_getOpaqueTypeConformance2();
    v267 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v410, v409, v408);

    outlined consume of Text.Storage(v396._object, v396._countAndFlagsBits, v357);

    outlined consume of Text.Storage(v405, v400, v327);

    outlined consume of Text.Storage(v412, v395, v393._object);

    (*(v379 + 8))(v377, v380);
    result = v394(v399, v401);
  }

  *v392 = v267;
  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void type metadata completion function for MultipleDataPointView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GenericMedCompletedLogSnippet.text3.getter()
{
  v1 = v0 + *(type metadata accessor for GenericMedCompletedLogSnippet(0) + 20);
  v2 = *v1;
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t type metadata accessor for GenericMedCompletedLogSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericMedCompletedLogSnippet;
  if (!type metadata singleton initialization cache for GenericMedCompletedLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericMedCompletedLogSnippet.text3.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for GenericMedCompletedLogSnippet(0) + 20);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
  return result;
}

uint64_t GenericMedCompletedLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 28), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GenericMedCompletedLogSnippet.buttonTakenColor.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  GenericMedCompletedLogSnippet.colorScheme.getter(&v15 - v9);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D8], v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (v12)(v10, v4);
  if (v11)
  {
    return a1(v13);
  }

  else
  {
    return a2(v13);
  }
}

uint64_t GenericMedCompletedLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  v6 = (a2 + v5[6]);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = v5[7];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of GenericMedCompletedLogModel(a1, a2, type metadata accessor for GenericMedCompletedLogModel);
  if (*(a1 + *(type metadata accessor for GenericMedCompletedLogModel(0) + 28)) == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(a1 + 8));
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = outlined destroy of GenericMedCompletedLogModel(a1, type metadata accessor for GenericMedCompletedLogModel);
  v19 = a2 + v5[5];
  *v19 = v11;
  *(v19 + 8) = v13;
  *(v19 + 16) = v15 & 1;
  *(v19 + 24) = v17;
  return result;
}

uint64_t GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v170 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
  v167 = *(v2 - 8);
  v168 = v2;
  MEMORY[0x28223BE20](v2);
  v166 = &v121 - v3;
  v148 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  v169 = *(v148 - 8);
  v4 = *(v169 + 64);
  MEMORY[0x28223BE20](v148);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v151 = &v121 - v5;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v152 = &v121 - v6;
  v7 = type metadata accessor for SeparatorStyle();
  v149 = *(v7 - 8);
  v150 = v7;
  MEMORY[0x28223BE20](v7);
  v147 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v137 = &v121 - v10;
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v11 - 8);
  v136 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for FactItemHeroNumberView();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v163 = *(v14 - 8);
  v164 = v14;
  MEMORY[0x28223BE20](v14);
  v145 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v15;
  MEMORY[0x28223BE20](v16);
  v162 = &v121 - v17;
  v18 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v134 = *(v18 - 8);
  v135 = v18;
  MEMORY[0x28223BE20](v18);
  v133 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StatusIndicatorView();
  v160 = *(v20 - 8);
  v161 = v20;
  MEMORY[0x28223BE20](v20);
  v141 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v21;
  MEMORY[0x28223BE20](v22);
  v165 = &v121 - v23;
  v132 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v132);
  v131 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Font.TextStyle();
  v158 = *(v25 - 8);
  v159 = v25;
  MEMORY[0x28223BE20](v25);
  v157 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v121 - v28;
  v30 = type metadata accessor for AppPunchout();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v140 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v121 - v34;
  v36 = type metadata accessor for GenericMedCompletedLogModel(0);
  v37 = v1;
  if (*(v1 + v36[9]) != 1)
  {
    outlined init with copy of GenericMedCompletedLogModel(v1, &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenericMedCompletedLogSnippet);
    v48 = (*(v169 + 80) + 16) & ~*(v169 + 80);
    v49 = swift_allocObject();
    outlined init with take of GenericMedCompletedLogSnippet(&v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
    v50 = v166;
    SnippetBody.init(content:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SnippetBody<TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)>> and conformance SnippetBody<A>, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR, MEMORY[0x277D63AB8]);
    v51 = v168;
    v47 = View.eraseToAnyView()();
    result = (*(v167 + 8))(v50, v51);
    goto LABEL_9;
  }

  v38 = v36;
  v167 = v4;
  v168 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (v1 + v36[12]);
  v40 = v39[1];
  if (!v40)
  {
    goto LABEL_7;
  }

  v41 = (v1 + v36[11]);
  v42 = v41[1];
  if (!v42)
  {
    goto LABEL_7;
  }

  v43 = (v1 + v36[13]);
  v44 = v43[1];
  if (!v44)
  {
    goto LABEL_7;
  }

  v45 = *v39;
  v126 = *v41;
  v127 = v45;
  v129 = *v43;
  outlined init with copy of AppPunchout?(&v37[v36[6]], v29, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    outlined destroy of AppPunchout?(v29, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_7:
    result = AnyView.init<A>(_:)();
    v47 = result;
    goto LABEL_9;
  }

  v52 = *(v31 + 32);
  v124 = v31 + 32;
  v125 = v52;
  v130 = v35;
  v52(v35, v29, v30);
  v53 = *(v158 + 104);
  v122 = v31;
  v123 = v30;
  v53();
  v54 = v131;
  outlined init with copy of AppPunchout?(&v37[v38[14]], v131, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v55 = v44;
  v56 = v132;
  v57 = *(v132 + 20);
  *(v54 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v58 = *(v56 + 24);
  *(v54 + v58) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SnippetHeaderView and conformance SnippetHeaderView, type metadata accessor for SnippetHeaderView, &protocol conformance descriptor for SnippetHeaderView);

  v128 = v37;
  v166 = View.eraseToAnyView()();
  outlined destroy of GenericMedCompletedLogModel(v54, type metadata accessor for SnippetHeaderView);
  v59 = *v37;
  if (*v37)
  {
    v60 = v127;
  }

  else
  {
    v60 = v126;
  }

  if (*v37)
  {
    v61 = v40;
  }

  else
  {
    v61 = v42;
  }

  if (v59)
  {
    v62 = MEMORY[0x277D63D58];
  }

  else
  {
    v62 = MEMORY[0x277D63D68];
  }

  v188 = MEMORY[0x277D837D0];
  v189 = MEMORY[0x277D63F88];
  v186 = v60;
  v187 = v61;
  (*(v134 + 104))(v133, *v62, v135);
  StatusIndicatorView.init(message:type:showIndicator:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
  v64._countAndFlagsBits = v129;
  v64._object = v55;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v64);
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
  LocalizedStringKey.init(stringInterpolation:)();
  v66 = Text.init(_:tableName:bundle:comment:)();
  v68 = v67;
  v70 = v69;
  v71 = *MEMORY[0x277CE0998];
  v72 = type metadata accessor for Font.Design();
  v73 = *(v72 - 8);
  v74 = v137;
  (*(v73 + 104))(v137, v71, v72);
  (*(v73 + 56))(v74, 0, 1, v72);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v74, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v75 = Text.font(_:)();
  v77 = v76;
  LOBYTE(v73) = v78;

  outlined consume of Text.Storage(v66, v68, v70 & 1);

  v79 = Text.bold()();
  v81 = v80;
  LOBYTE(v71) = v82;
  v84 = v83;
  outlined consume of Text.Storage(v75, v77, v73 & 1);

  v85 = MEMORY[0x277CE0BD0];
  v86 = MEMORY[0x277D638F0];
  v188 = MEMORY[0x277CE0BD0];
  v189 = MEMORY[0x277D638F0];
  v87 = swift_allocObject();
  v186 = v87;
  *(v87 + 16) = v79;
  *(v87 + 24) = v81;
  *(v87 + 32) = v71 & 1;
  *(v87 + 40) = v84;
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v88 = &v128[*(v148 + 20)];
  v89 = *v88;
  v90 = *(v88 + 1);
  LOBYTE(v79) = v88[16];
  v91 = *(v88 + 3);
  v178 = v85;
  v179 = v86;
  v92 = swift_allocObject();
  v176 = 0;
  v177 = v92;
  *(v92 + 16) = v89;
  *(v92 + 24) = v90;
  *(v92 + 32) = v79;
  *(v92 + 40) = v91;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  outlined copy of Text.Storage(v89, v90, v79);

  v93 = v142;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v95 = v149;
  v94 = v150;
  v96 = v147;
  (*(v149 + 104))(v147, *MEMORY[0x277D62F40], v150);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v97 = v162;
  v98 = v146;
  View.separators(_:isOverride:)();
  (*(v95 + 8))(v96, v94);
  (*(v144 + 8))(v93, v98);
  v99 = v163;
  v100 = v164;
  v101 = v145;
  (*(v163 + 16))(v145, v97, v164);
  v102 = v161;
  v103 = v160;
  v104 = v141;
  (*(v160 + 16))(v141, v165, v161);
  v105 = (*(v99 + 80) + 24) & ~*(v99 + 80);
  v106 = (v143 + *(v103 + 80) + v105) & ~*(v103 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = v166;
  (*(v99 + 32))(v107 + v105, v101, v100);
  v108 = v160;
  (*(v160 + 32))(v107 + v106, v104, v102);

  v110 = v122;
  v109 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
  v111 = v151;
  ComponentStack.init(content:)();
  v112 = v168;
  outlined init with copy of GenericMedCompletedLogModel(v128, v168, type metadata accessor for GenericMedCompletedLogSnippet);
  v113 = v140;
  (*(v110 + 16))(v140, v130, v109);
  v114 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v115 = (v167 + *(v110 + 80) + v114) & ~*(v110 + 80);
  v116 = swift_allocObject();
  outlined init with take of GenericMedCompletedLogSnippet(v112, v116 + v114);
  v125(v116 + v115, v113, v109);
  v117 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR, MEMORY[0x277D63B98]);
  v118 = v152;
  v119 = v155;
  View.componentTapped(isNavigation:perform:)();

  (*(v153 + 8))(v111, v119);
  v186 = v119;
  v187 = v117;
  swift_getOpaqueTypeConformance2();
  v120 = v156;
  v47 = View.eraseToAnyView()();

  (*(v154 + 8))(v118, v120);
  (*(v163 + 8))(v162, v164);
  (*(v108 + 8))(v165, v161);
  (*(v158 + 8))(v157, v159);
  result = (*(v110 + 8))(v130, v109);
LABEL_9:
  *v170 = v47;
  return result;
}

uint64_t closure #1 in GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a1;
  v27 = a3;
  v28 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v23 = v5;
  v25 = *(v5 - 8);
  v6 = v25;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(v10 + 16);
  v14(&v23 - v12, a2, v9, v11);
  v15 = *(v6 + 16);
  v15(v8, v27, v5);
  v16 = v28;
  *v28 = v26;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, "DW");
  (v14)(&v16[*(v17 + 48)], v13, v9);
  v18 = &v16[*(v17 + 64)];
  v20 = v23;
  v19 = v24;
  v15(v18, v24, v23);
  v21 = *(v25 + 8);
  swift_retain_n();
  v21(v19, v20);
  (*(v10 + 8))(v13, v9);
}

void closure #2 in GenericMedCompletedLogSnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for GenericMedCompletedLogSnippet(0) + 24));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in GenericMedCompletedLogSnippet.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v87[0] = a1;
  v101 = a2;
  v3 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StatusIndicatorView();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v108 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = v87 - v8;
  v9 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  MEMORY[0x28223BE20](v9);
  v90 = v11;
  v91 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FactItemHeroNumberView();
  v93 = *(v12 - 8);
  v94 = v12;
  MEMORY[0x28223BE20](v12);
  v92 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberC0V_Qo_Md, "XW");
  v95 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v106 = v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v87 - v23;
  v25 = type metadata accessor for SashStandard.Title();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for SashStandard();
  MEMORY[0x28223BE20](v29 - 8);
  v87[1] = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SashStandardView();
  v104 = *(v31 - 8);
  v105 = v31;
  MEMORY[0x28223BE20](v31);
  v103 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = v87 - v34;
  v36 = &a1[*(type metadata accessor for GenericMedCompletedLogModel(0) + 32)];
  v37 = v36[1];
  *v28 = *v36;
  v28[1] = v37;
  (*(v26 + 104))(v28, *MEMORY[0x277D62DC0], v25);
  v38 = type metadata accessor for VisualProperty();
  (*(*(v38 - 8) + 56))(v24, 1, 1, v38);
  v39 = type metadata accessor for Color();
  v40 = *(*(v39 - 8) + 56);
  v40(v21, 1, 1, v39);
  v40(v102, 1, 1, v39);
  v126 = 0;
  v125 = 0u;
  v124 = 0u;

  v41 = v87[0];
  SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)();
  v102 = v35;
  SashStandardView.init(model:)();
  v42 = v41;
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v45 = v44;
  LOBYTE(v21) = v46;
  v48 = v47;
  v49 = MEMORY[0x277CE0BD0];
  v50 = MEMORY[0x277D638F0];
  *(&v125 + 1) = MEMORY[0x277CE0BD0];
  v126 = MEMORY[0x277D638F0];
  v51 = swift_allocObject();
  *&v124 = v51;
  *(v51 + 16) = v43;
  *(v51 + 24) = v45;
  *(v51 + 32) = v21 & 1;
  *(v51 + 40) = v48;
  v123 = 0;
  v122 = 0u;
  v121 = 0u;
  LocalizedStringKey.init(stringLiteral:)();
  v52 = Text.init(_:tableName:bundle:comment:)();
  v54 = v53;
  LOBYTE(v21) = v55;
  v57 = v56;
  v120[3] = v49;
  v120[4] = v50;
  v58 = swift_allocObject();
  v120[0] = v58;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v21 & 1;
  *(v58 + 40) = v57;
  v59 = v42 + *(v88 + 20);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v21) = *(v59 + 16);
  v62 = *(v59 + 24);
  v118 = v49;
  v119 = v50;
  v63 = swift_allocObject();
  v116 = 0;
  v117 = v63;
  *(v63 + 16) = v60;
  *(v63 + 24) = v61;
  *(v63 + 32) = v21;
  *(v63 + 40) = v62;
  v114 = 0u;
  v115 = 0u;
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  outlined copy of Text.Storage(v60, v61, v21);

  v64 = v92;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v65 = v91;
  outlined init with copy of GenericMedCompletedLogModel(v42, v91, type metadata accessor for GenericMedCompletedLogSnippet);
  v66 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v67 = swift_allocObject();
  outlined init with take of GenericMedCompletedLogSnippet(v65, v67 + v66);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v68 = v106;
  v69 = v94;
  View.componentTapped(isNavigation:perform:)();

  (*(v93 + 8))(v64, v69);
  *(&v125 + 1) = MEMORY[0x277D837D0];
  v126 = MEMORY[0x277D63F88];
  *&v124 = 0x646567676F4CLL;
  *(&v124 + 1) = 0xE600000000000000;
  (*(v97 + 104))(v96, *MEMORY[0x277D63D58], v98);
  v70 = v107;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v71 = v103;
  v96 = *(v104 + 16);
  v72 = v105;
  (v96)(v103, v102, v105);
  v73 = v95;
  v98 = *(v95 + 16);
  v98(v109, v68, v110);
  v74 = v99;
  v97 = *(v99 + 16);
  v75 = v70;
  v76 = v100;
  (v97)(v108, v75, v100);
  v77 = v101;
  (v96)(v101, v71, v72);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI16SashStandardViewV_05SwiftB00E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberE0V_Qo_AA015StatusIndicatorE0VtMd, &_s9SnippetUI16SashStandardViewV_05SwiftB00E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberE0V_Qo_AA015StatusIndicatorE0VtMR);
  v79 = v110;
  v98((v77 + *(v78 + 48)), v109, v110);
  v80 = v77 + *(v78 + 64);
  v81 = v108;
  (v97)(v80, v108, v76);
  v82 = *(v74 + 8);
  v82(v107, v76);
  v83 = *(v73 + 8);
  v83(v106, v79);
  v84 = v105;
  v85 = *(v104 + 8);
  v85(v102, v105);
  v82(v81, v76);
  v83(v109, v110);
  return (v85)(v103, v84);
}

uint64_t closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + *(type metadata accessor for GenericMedCompletedLogSnippet(0) + 24));
  if (v5)
  {
    v6 = type metadata accessor for GenericMedCompletedLogModel(0);
    outlined init with copy of AppPunchout?(a1 + *(v6 + 24), v4, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v7 = type metadata accessor for AppPunchout();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v9 = v5;
      dispatch thunk of Context.perform(appPunchout:)();

      return (*(v8 + 8))(v4, v7);
    }

    __break(1u);
  }

  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of GenericMedCompletedLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of GenericMedCompletedLogSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericMedCompletedLogSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #3 in GenericMedCompletedLogSnippet.body.getter(v4, a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of GenericMedCompletedLogModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of AppPunchout?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in GenericMedCompletedLogSnippet.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for StatusIndicatorView() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in GenericMedCompletedLogSnippet.body.getter(v7, v1 + v4, v8, a1);
}

void partial apply for closure #2 in GenericMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericMedCompletedLogSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in GenericMedCompletedLogSnippet.body.getter(v0 + v2, v5);
}

uint64_t lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void type metadata completion function for GenericMedCompletedLogSnippet(uint64_t a1)
{
  type metadata accessor for GenericMedCompletedLogModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for GenericMedCompletedLogSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for GenericMedCompletedLogModel(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for AppPunchout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + *(v6 + 56);
  v11 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for SpeakableString();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  outlined consume of Text.Storage(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericMedCompletedLogSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter(v2);
}

uint64_t outlined init with copy of AppPunchout?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t BloodPressureLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BloodPressureLogSnippet(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t BloodPressureLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  BloodPressureLogSnippet.colorScheme.getter(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D8], v0);
  v7 = static ColorScheme.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t BloodPressureLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BloodPressureLogSnippet(0);
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = *(v4 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of BloodPressureLogModel(a1, a2, type metadata accessor for BloodPressureLogModel);
}

uint64_t type metadata accessor for BloodPressureLogSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for BloodPressureLogSnippet;
  if (!type metadata singleton initialization cache for BloodPressureLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v238 = a1;
  v2 = type metadata accessor for BloodPressureLogSnippet(0);
  v211 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v212 = v3;
  v213 = v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v216 = *(v4 - 8);
  v217 = v4;
  MEMORY[0x28223BE20](v4);
  v214 = v169 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v219 = *(v6 - 8);
  v220 = v6;
  MEMORY[0x28223BE20](v6);
  v215 = v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v218 = v169 - v9;
  v10 = type metadata accessor for SeparatorStyle();
  v209 = *(v10 - 1);
  v210 = v10;
  MEMORY[0x28223BE20](v10);
  v205 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for FactItemHeroNumberView();
  v203 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v201 = v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v204 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v202 = v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v227 = *(v14 - 8);
  v228 = v14;
  MEMORY[0x28223BE20](v14);
  v223 = v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v15;
  MEMORY[0x28223BE20](v16);
  v226 = v169 - v17;
  v18 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v193 = *(v18 - 8);
  v194 = v18;
  MEMORY[0x28223BE20](v18);
  v192 = v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StatusIndicatorView();
  v224 = *(v20 - 8);
  v225 = v20;
  MEMORY[0x28223BE20](v20);
  v222 = v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v21;
  MEMORY[0x28223BE20](v22);
  v233 = v169 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v221 = v169 - v25;
  v26 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v26 - 8);
  v229 = v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for SnippetHeaderView(0);
  v195 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v196 = v28;
  v197 = v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v232 = v169 - v30;
  v231 = type metadata accessor for Font.TextStyle();
  v234 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v191 = v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v230 = v169 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v169 - v35;
  v237 = type metadata accessor for AppPunchout();
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v198 = v37;
  v199 = v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v235 = v169 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = v169 - v41;
  v43 = type metadata accessor for SnippetHeaderModel(0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for BloodPressureLogModel(0);
  outlined init with copy of AppPunchout?(v1 + v47[8], v42, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of AppPunchout?(v42, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
LABEL_16:
    result = AnyView.init<A>(_:)();
    goto LABEL_17;
  }

  outlined init with take of BloodPressureLogModel(v42, v46, type metadata accessor for SnippetHeaderModel);
  v48 = (v1 + v47[10]);
  v49 = v48[1];
  if (!v49)
  {
    v52 = v46;
LABEL_15:
    outlined destroy of SnippetHeaderModel(v52, type metadata accessor for SnippetHeaderModel);
    goto LABEL_16;
  }

  v189 = *v48;
  outlined init with copy of AppPunchout?(v1, v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v50 = v236;
  v51 = v237;
  if ((*(v236 + 48))(v36, 1, v237) == 1)
  {
    outlined destroy of SnippetHeaderModel(v46, type metadata accessor for SnippetHeaderModel);
    outlined destroy of AppPunchout?(v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    goto LABEL_16;
  }

  v186 = v49;
  v53 = v46;
  v54 = v235;
  v187 = *(v50 + 32);
  v188 = v50 + 32;
  v187(v235, v36, v51);
  v55 = (v1 + v47[6]);
  v56 = v55[1];
  if (!v56)
  {
    (*(v50 + 8))(v54, v51);
LABEL_14:
    v52 = v53;
    goto LABEL_15;
  }

  v57 = (v1 + v47[5]);
  v58 = v57[1];
  if (!v58 || (v59 = (v1 + v47[9]), (v60 = v59[1]) == 0) || (v61 = (v1 + v47[7]), (v62 = v61[1]) == 0))
  {
    (*(v50 + 8))(v235, v51);
    goto LABEL_14;
  }

  v175 = *v55;
  v177 = *v57;
  v182 = *v59;
  v178 = *v61;
  v185 = v58;
  v183 = v56;
  v63 = *MEMORY[0x277CE0A78];
  v179 = v53;
  v181 = v1;
  v64 = *(v234 + 104);
  v64(v230, v63, v231);
  v65 = v232;
  outlined init with copy of BloodPressureLogModel(v53, v232, type metadata accessor for SnippetHeaderModel);
  (*(v44 + 56))(v65, 0, 1, v43);
  v66 = v190;
  v67 = *(v190 + 20);
  *(v65 + v67) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v68 = *(v66 + 24);
  *(v65 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v69 = v186;

  v176 = v62;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
  v71._countAndFlagsBits = v189;
  v71._object = v69;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v71);

  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
  LocalizedStringKey.init(stringInterpolation:)();
  v73 = Text.init(_:tableName:bundle:comment:)();
  v174 = v60;
  v74 = v73;
  v189 = v75;
  LOBYTE(v69) = v76;
  v186 = v77;
  v78 = v191;
  v79 = v231;
  v64(v191, *MEMORY[0x277CE0A60], v231);
  v172 = *MEMORY[0x277CE0998];
  v80 = v172;
  v81 = type metadata accessor for Font.Design();
  v169[0] = v81;
  v82 = *(v81 - 8);
  v171 = *(v82 + 104);
  v190 = v82 + 104;
  v83 = v221;
  v171(v221, v80, v81);
  v84 = *(v82 + 56);
  v169[1] = v82 + 56;
  v170 = v84;
  v84(v83, 0, 1, v81);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v83, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v85 = *(v234 + 8);
  v234 += 8;
  v180 = v85;
  v85(v78, v79);
  v86 = v74;
  v87 = v189;
  v88 = Text.font(_:)();
  v90 = v89;
  LOBYTE(v80) = v91;

  outlined consume of Text.Storage(v86, v87, v69 & 1);

  LODWORD(v254) = static HierarchicalShapeStyle.secondary.getter();
  v92 = Text.foregroundStyle<A>(_:)();
  v94 = v93;
  LOBYTE(v86) = v95;
  outlined consume of Text.Storage(v88, v90, v80 & 1);

  static Font.Weight.semibold.getter();
  v186 = Text.fontWeight(_:)();
  v184 = v96;
  v173 = v97;
  v189 = v98;
  outlined consume of Text.Storage(v92, v94, v86 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v99._countAndFlagsBits = 0;
  v99._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v99);
  v100._countAndFlagsBits = v175;
  v100._object = v183;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v100);

  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v101);
  LocalizedStringKey.init(stringInterpolation:)();
  v102 = Text.init(_:tableName:bundle:comment:)();
  v104 = v103;
  LOBYTE(v65) = v105;
  v106 = v221;
  v107 = v169[0];
  v171(v221, v172, v169[0]);
  v170(v106, 0, 1, v107);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v106, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v108 = Text.font(_:)();
  v110 = v109;
  LOBYTE(v87) = v111;

  outlined consume of Text.Storage(v102, v104, v65 & 1);

  v112 = Text.bold()();
  v190 = v113;
  v191 = v114;
  LODWORD(v221) = v115;
  outlined consume of Text.Storage(v108, v110, v87 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v116);
  v117._countAndFlagsBits = v177;
  v117._object = v185;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v117);

  v118._countAndFlagsBits = 8236;
  v118._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v118);
  v119._countAndFlagsBits = v182;
  v119._object = v174;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v119);

  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v120);
  LocalizedStringKey.init(stringInterpolation:)();
  v121 = Text.init(_:tableName:bundle:comment:)();
  v182 = v122;
  v183 = v121;
  LODWORD(v177) = v123;
  v185 = v124;
  v256 = MEMORY[0x277D837D0];
  v257 = MEMORY[0x277D63F88];
  v254 = v178;
  v255 = v176;
  (*(v193 + 104))(v192, *MEMORY[0x277D63D58], v194);
  StatusIndicatorView.init(message:type:showIndicator:)();
  v125 = MEMORY[0x277CE0BD0];
  v126 = MEMORY[0x277D638F0];
  v256 = MEMORY[0x277CE0BD0];
  v257 = MEMORY[0x277D638F0];
  v127 = swift_allocObject();
  v253 = v126;
  v254 = v127;
  v175 = v112;
  v128 = v190;
  v129 = v191;
  *(v127 + 16) = v112;
  *(v127 + 24) = v128;
  LODWORD(v229) = v221 & 1;
  *(v127 + 32) = v221 & 1;
  *(v127 + 40) = v129;
  v252 = v125;
  v130 = swift_allocObject();
  v250 = 0;
  v251 = v130;
  v131 = v186;
  v132 = v184;
  *(v130 + 16) = v186;
  *(v130 + 24) = v132;
  LODWORD(v221) = v173 & 1;
  *(v130 + 32) = v173 & 1;
  *(v130 + 40) = v189;
  v248 = 0u;
  v249 = 0u;
  v246 = v125;
  v247 = v126;
  v133 = swift_allocObject();
  v245 = v133;
  v135 = v182;
  v134 = v183;
  *(v133 + 16) = v183;
  *(v133 + 24) = v135;
  LODWORD(v194) = v177 & 1;
  *(v133 + 32) = v177 & 1;
  *(v133 + 40) = v185;
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  outlined copy of Text.Storage(v112, v128, v229);

  outlined copy of Text.Storage(v131, v132, v221);

  outlined copy of Text.Storage(v134, v135, v194);

  v136 = v201;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v138 = v209;
  v137 = v210;
  v139 = v205;
  (*(v209 + 104))(v205, *MEMORY[0x277D62F40], v210);
  v140 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v141 = v202;
  v142 = v206;
  View.separators(_:isOverride:)();
  (*(v138 + 8))(v139, v137);
  (*(v203 + 8))(v136, v142);
  v254 = v142;
  v255 = v140;
  swift_getOpaqueTypeConformance2();
  v143 = v226;
  v144 = v207;
  View.componentSpacing(top:bottom:)();
  (*(v204 + 8))(v141, v144);
  v210 = type metadata accessor for SnippetHeaderView;
  v145 = v197;
  outlined init with copy of BloodPressureLogModel(v232, v197, type metadata accessor for SnippetHeaderView);
  v146 = v227;
  v147 = v228;
  (*(v227 + 16))(v223, v143, v228);
  v149 = v224;
  v148 = v225;
  (*(v224 + 16))(v222, v233, v225);
  v150 = (*(v195 + 80) + 16) & ~*(v195 + 80);
  v151 = (v196 + *(v146 + 80) + v150) & ~*(v146 + 80);
  v152 = (v208 + *(v149 + 80) + v151) & ~*(v149 + 80);
  v153 = swift_allocObject();
  outlined init with take of BloodPressureLogModel(v145, v153 + v150, v210);
  (*(v146 + 32))(v153 + v151, v223, v147);
  (*(v149 + 32))(v153 + v152, v222, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
  v154 = v214;
  ComponentStack.init(content:)();
  v155 = v213;
  outlined init with copy of BloodPressureLogModel(v181, v213, type metadata accessor for BloodPressureLogSnippet);
  v156 = v236;
  v157 = v199;
  v158 = v237;
  (*(v236 + 16))(v199, v235, v237);
  v159 = (*(v211 + 80) + 16) & ~*(v211 + 80);
  v160 = (v212 + *(v156 + 80) + v159) & ~*(v156 + 80);
  v161 = swift_allocObject();
  outlined init with take of BloodPressureLogModel(v155, v161 + v159, type metadata accessor for BloodPressureLogSnippet);
  v187((v161 + v160), v157, v158);
  v162 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR, MEMORY[0x277D63B98]);
  v164 = v217;
  v163 = v218;
  View.componentTapped(isNavigation:perform:)();

  (*(v216 + 8))(v154, v164);
  v166 = v219;
  v165 = v220;
  (*(v219 + 16))(v215, v163, v220);
  v254 = v164;
  v255 = v162;
  swift_getOpaqueTypeConformance2();
  v167 = AnyView.init<A>(_:)();
  outlined consume of Text.Storage(v183, v182, v194);

  outlined consume of Text.Storage(v186, v184, v221);

  outlined consume of Text.Storage(v175, v190, v229);

  (*(v166 + 8))(v163, v165);
  (*(v227 + 8))(v226, v228);
  (*(v224 + 8))(v233, v225);
  outlined destroy of SnippetHeaderModel(v232, type metadata accessor for SnippetHeaderView);
  v180(v230, v231);
  (*(v156 + 8))(v235, v158);
  outlined destroy of SnippetHeaderModel(v179, type metadata accessor for SnippetHeaderModel);
  result = v167;
LABEL_17:
  *v238 = result;
  return result;
}

uint64_t closure #1 in BloodPressureLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v24 = v5;
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v25 = v9;
  v27 = *(v9 - 8);
  v10 = v27;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BloodPressureLogModel(a1, v15, type metadata accessor for SnippetHeaderView);
  v16 = *(v10 + 16);
  v16(v12, v28, v9);
  v17 = *(v6 + 16);
  v17(v8, v29, v5);
  v18 = v30;
  outlined init with copy of BloodPressureLogModel(v15, v30, type metadata accessor for SnippetHeaderView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v20 = v25;
  v16((v18 + *(v19 + 48)), v12, v25);
  v21 = v24;
  v17((v18 + *(v19 + 64)), v8, v24);
  (*(v26 + 8))(v8, v21);
  (*(v27 + 8))(v12, v20);
  return outlined destroy of SnippetHeaderModel(v15, type metadata accessor for SnippetHeaderView);
}

void closure #2 in BloodPressureLogSnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for BloodPressureLogSnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in BloodPressureLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in BloodPressureLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of BloodPressureLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BloodPressureLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in BloodPressureLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for BloodPressureLogSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in BloodPressureLogSnippet.body.getter(v0 + v2, v5);
}

uint64_t outlined destroy of SnippetHeaderModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for BloodPressureLogSnippet(uint64_t a1)
{
  type metadata accessor for BloodPressureLogModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t SleepQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Snippet = type metadata accessor for SleepQuerySnippet(0);
  v5 = (a2 + *(Snippet + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = (a2 + *(Snippet + 24));
  *v7 = 0;
  v7[1] = 0;
  return outlined init with take of SleepQueryModel(a1, a2, type metadata accessor for SleepQueryModel);
}

uint64_t type metadata accessor for SleepQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for SleepQuerySnippet;
  if (!type metadata singleton initialization cache for SleepQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v167 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v140 = &v136 - v2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v141 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v142 = &v136 - v5;
  Snippet = type metadata accessor for SleepQuerySnippet(0);
  v160 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v161 = v7;
  v162 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v148 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_tGG_Qo_MR);
  v153 = *(v9 - 8);
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  v149 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v151 = &v136 - v12;
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v13 - 8);
  v147 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v164 = (&v136 - v16);
  v17 = type metadata accessor for AppPunchout();
  v18 = *(v17 - 8);
  v165 = v17;
  v166 = v18;
  MEMORY[0x28223BE20](v17);
  v158 = v19;
  v159 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v163 = &v136 - v21;
  v22 = type metadata accessor for SnippetHeaderView(0);
  v155 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v156 = v23;
  v157 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v136 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v136 - v28;
  Model = type metadata accessor for SleepQueryModel(0);
  v31 = Model[5];
  v168 = v1;
  outlined init with copy of AppPunchout?(v1 + v31, v29, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v32 = type metadata accessor for SnippetHeaderModel(0);
  v33 = (*(*(v32 - 8) + 48))(v29, 1, v32);
  outlined destroy of AppPunchout?(v29, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if (v33 == 1)
  {
    result = AnyView.init<A>(_:)();
    *v167 = result;
    return result;
  }

  v35 = v168;
  outlined init with copy of AppPunchout?(v168 + v31, v26, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v36 = *(v22 + 20);
  *&v26[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v37 = *(v22 + 24);
  *&v26[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v38 = (v35 + Model[6]);
  v39 = v38[1];
  v40 = v167;
  v41 = v26;
  if (!v39)
  {
    goto LABEL_6;
  }

  v42 = *v38;
  v43 = v164;
  outlined init with copy of AppPunchout?(v168, v164, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v45 = v165;
  v44 = v166;
  if ((*(v166 + 48))(v43, 1, v165) == 1)
  {
    outlined destroy of AppPunchout?(v43, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_6:
    v46 = AnyView.init<A>(_:)();
LABEL_16:
    v133 = v41;
    goto LABEL_17;
  }

  v139._countAndFlagsBits = v42;
  v139._object = v39;
  v47 = v43;
  v48 = v44 + 32;
  v49 = *(v44 + 32);
  v50 = v163;
  (v49)(v163, v47, v45);
  v51 = (v168 + Model[15]);
  v52 = v51[1];
  if (v52)
  {
    v53 = (v168 + Model[7]);
    v54 = v53[1];
    if (v54)
    {
      v55 = *v51;
      v142 = *v53;
      *&v179 = v55;
      *(&v179 + 1) = v52;
      v56 = lazy protocol witness table accessor for type String and conformance String();

      v164 = v49;
      v137 = v44 + 32;
      v57 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v56);
      LocalizedStringKey.init(stringLiteral:)();
      v58 = Text.init(_:tableName:bundle:comment:)();
      v136 = v54;
      v138 = v41;
      *&v179 = v58;
      *(&v179 + 1) = v59;
      LOBYTE(v180) = v60;
      *(&v180 + 1) = v61;
      MEMORY[0x28223BE20](v58);
      v135 = v168;
      specialized Sequence.forEach(_:)(closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)partial apply, (&v136 - 4), v57);

      v144 = *(&v179 + 1);
      v145 = v179;
      LODWORD(v143) = v180;
      v146 = *(&v180 + 1);
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v139);
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
      LocalizedStringKey.init(stringInterpolation:)();
      LOWORD(v135) = 256;
      v134 = 0;
      v64 = Text.init(_:tableName:bundle:comment:)();
      v66 = v65;
      LODWORD(v139._object) = v67;
      v147 = v68;
      v69 = v157;
      outlined init with copy of SleepQueryModel(v41, v157, type metadata accessor for SnippetHeaderView);
      v70 = (*(v155 + 80) + 16) & ~*(v155 + 80);
      v71 = (v156 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 39) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      outlined init with take of SleepQueryModel(v69, v73 + v70, type metadata accessor for SnippetHeaderView);
      v74 = v73 + v71;
      v76 = v144;
      v75 = v145;
      *v74 = v145;
      *(v74 + 8) = v76;
      v77 = v143;
      *(v74 + 16) = v143;
      *(v74 + 24) = v146;
      v78 = v73 + v72;
      v140 = v66;
      v141 = v64;
      *v78 = v64;
      *(v78 + 8) = v66;
      v79 = v139._object & 1;
      *(v78 + 16) = v79;
      LODWORD(v157) = v79;
      *(v78 + 24) = v147;
      v80 = (v73 + ((v72 + 39) & 0xFFFFFFFFFFFFFFF8));
      v81 = v136;
      *v80 = v142;
      v80[1] = v81;
      outlined copy of Text.Storage(v75, v76, v77);

      outlined copy of Text.Storage(v64, v66, v79);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
      lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR, MEMORY[0x277CE14C8]);
      v82 = v148;
      ComponentStack.init(content:)();
      v83 = v162;
      outlined init with copy of SleepQueryModel(v168, v162, type metadata accessor for SleepQuerySnippet);
      v85 = v165;
      v84 = v166;
      v86 = v159;
      (*(v166 + 16))(v159, v163, v165);
      v87 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v88 = (v161 + *(v84 + 80) + v87) & ~*(v84 + 80);
      v89 = swift_allocObject();
      outlined init with take of SleepQueryModel(v83, v89 + v87, type metadata accessor for SleepQuerySnippet);
      (v164)(v89 + v88, v86, v85);
      v90 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.separators(_:isOverride:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR, MEMORY[0x277D63B98]);
      v92 = v151;
      v91 = v152;
      View.componentTapped(isNavigation:perform:)();

      (*(v150 + 8))(v82, v91);
      v94 = v153;
      v93 = v154;
      (*(v153 + 16))(v149, v92, v154);
      *&v179 = v91;
      *(&v179 + 1) = v90;
      swift_getOpaqueTypeConformance2();
      v95 = AnyView.init<A>(_:)();
      outlined consume of Text.Storage(v141, v140, v157);

      outlined consume of Text.Storage(v145, v144, v143);

      (*(v94 + 8))(v92, v93);
      (*(v84 + 8))(v163, v85);
      result = outlined destroy of SnippetHeaderView(v138);
      *v167 = v95;
      return result;
    }

    goto LABEL_15;
  }

  v164 = v49;
  v96 = (v168 + Model[9]);
  v97 = v96[1];
  if (!v97 || (v98 = (v168 + Model[16]), (v99 = v98[1]) == 0) || (v100 = (v168 + Model[10]), (v101 = v100[1]) == 0) || (v102 = (v168 + Model[17]), (v103 = v102[1]) == 0))
  {
LABEL_15:
    v46 = AnyView.init<A>(_:)();
    (*(v44 + 8))(v50, v45);
    goto LABEL_16;
  }

  v153 = *v96;
  v104 = *v98;
  v154 = *v100;
  v105 = *v102;
  v151 = v103;
  v152 = v105;
  *&v179 = v104;
  *(&v179 + 1) = v99;
  v106 = lazy protocol witness table accessor for type String and conformance String();

  v137 = v48;
  v107 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v106);
  LocalizedStringKey.init(stringLiteral:)();
  v108 = Text.init(_:tableName:bundle:comment:)();
  v138 = v41;
  *&v179 = v108;
  *(&v179 + 1) = v109;
  LOBYTE(v180) = v110;
  *(&v180 + 1) = v111;
  MEMORY[0x28223BE20](v108);
  v135 = v168;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:), (&v136 - 4), v107);

  v149 = *(&v179 + 1);
  v150 = v179;
  v148 = v180;
  v147 = *(&v180 + 1);
  *&v179 = v152;
  *(&v179 + 1) = v151;
  v112 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v106);
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v135) = 256;
  v134 = 0;
  *&v179 = Text.init(_:tableName:bundle:comment:)();
  *(&v179 + 1) = v113;
  LOBYTE(v180) = v114;
  *(&v180 + 1) = v115;
  MEMORY[0x28223BE20](v179);
  v134 = &v179;
  v135 = v168;
  specialized Sequence.forEach(_:)(closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)partial apply, (&v136 - 4), v112);

  *&v169 = v153;
  *(&v169 + 1) = v97;
  v170 = 0uLL;
  *&v171 = v150;
  *(&v171 + 1) = v149;
  *&v172 = v148;
  *(&v172 + 1) = v147;
  *&v173 = v154;
  *(&v173 + 1) = v101;
  v174 = 0uLL;
  v175 = v179;
  *&v176 = v180;
  *(&v176 + 1) = *(&v180 + 1);
  v177 = 0uLL;
  v178 = v139;
  lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView();
  v116 = View.eraseToAnyView()();
  v185 = v175;
  v186 = v176;
  v187 = v177;
  v188 = v178;
  v181 = v171;
  v182 = v172;
  v183 = v173;
  v184 = v174;
  v179 = v169;
  v180 = v170;
  outlined destroy of MultipleDataPointWithSubTypesView(&v179);
  v117 = v157;
  outlined init with copy of SleepQueryModel(v138, v157, type metadata accessor for SnippetHeaderView);
  v118 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v119 = (v156 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  outlined init with take of SleepQueryModel(v117, v120 + v118, type metadata accessor for SnippetHeaderView);
  v154 = v116;
  *(v120 + v119) = v116;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR, MEMORY[0x277CE14C8]);
  v121 = v140;
  ComponentStack.init(content:)();
  v122 = v162;
  outlined init with copy of SleepQueryModel(v168, v162, type metadata accessor for SleepQuerySnippet);
  v123 = v166;
  v124 = v159;
  (*(v166 + 16))(v159, v163, v45);
  v125 = (*(v160 + 80) + 16) & ~*(v160 + 80);
  v126 = (v161 + *(v123 + 80) + v125) & ~*(v123 + 80);
  v127 = swift_allocObject();
  outlined init with take of SleepQueryModel(v122, v127 + v125, type metadata accessor for SleepQuerySnippet);
  (v164)(v127 + v126, v124, v45);
  v128 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR, MEMORY[0x277D63B98]);
  v129 = v142;
  v130 = v145;
  View.componentTapped(isNavigation:perform:)();

  (*(v143 + 8))(v121, v130);
  v131 = v144;
  v132 = v146;
  (*(v144 + 16))(v141, v129, v146);
  *&v169 = v130;
  *(&v169 + 1) = v128;
  swift_getOpaqueTypeConformance2();
  v46 = AnyView.init<A>(_:)();

  (*(v131 + 8))(v129, v132);
  (*(v166 + 8))(v163, v45);
  v133 = v138;
LABEL_17:
  result = outlined destroy of SnippetHeaderView(v133);
  *v40 = v46;
  return result;
}

uint64_t closure #1 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a8;
  v51 = a7;
  v50 = a6;
  v63 = a1;
  v64 = a9;
  v54 = a12;
  v53 = a11;
  v16 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SeparatorStyle();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FactItemHeroNumberView();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v20 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v48 = &v47 - v23;
  v24 = MEMORY[0x277CE0BD0];
  v25 = MEMORY[0x277D638F0];
  v79 = MEMORY[0x277CE0BD0];
  v80 = MEMORY[0x277D638F0];
  v26 = swift_allocObject();
  v78 = v26;
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *(v26 + 32) = a4 & 1;
  *(v26 + 40) = a5;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v73 = v24;
  v74 = v25;
  v27 = swift_allocObject();
  v71 = 0;
  v72 = v27;
  v28 = v50;
  v29 = v51;
  *(v27 + 16) = v50;
  *(v27 + 24) = v29;
  v30 = v52 & 1;
  *(v27 + 32) = v52 & 1;
  *(v27 + 40) = a10;
  v69 = 0u;
  v70 = 0u;
  v68[3] = MEMORY[0x277D837D0];
  v68[4] = MEMORY[0x277D63F88];
  v68[0] = v53;
  v68[1] = v54;
  v67 = 0;
  v66 = 0u;
  v65 = 0u;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  outlined copy of Text.Storage(v28, v29, v30);

  v31 = v49;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v32 = v58;
  v33 = v55;
  v34 = v60;
  (*(v58 + 104))(v55, *MEMORY[0x277D62F40], v60);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v35 = v48;
  v36 = v59;
  View.separators(_:isOverride:)();
  (*(v32 + 8))(v33, v34);
  (*(v61 + 8))(v31, v36);
  v37 = v62;
  outlined init with copy of SleepQueryModel(v63, v62, type metadata accessor for SnippetHeaderView);
  v38 = *(v20 + 16);
  v39 = v56;
  v40 = v57;
  v38(v56, v35, v57);
  v41 = v37;
  v42 = v37;
  v43 = v64;
  outlined init with copy of SleepQueryModel(v41, v64, type metadata accessor for SnippetHeaderView);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo_tMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo_tMR);
  v38((v43 + *(v44 + 48)), v39, v40);
  v45 = *(v20 + 8);
  v45(v35, v40);
  v45(v39, v40);
  return outlined destroy of SnippetHeaderView(v42);
}

uint64_t closure #3 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SleepQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  outlined init with copy of SleepQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in SleepQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for SleepQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if ((v4 ^ *a1) >= 0x4000)
  {
    _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(*a1, v4, v5, v6, 10);
    if ((v7 & 0x100) != 0)
    {

      specialized _parseInteger<A, B>(ascii:radix:)(v3, v4, v5, v6, 10);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
LABEL_7:
        v27 = *a2;
        v26 = *(a2 + 8);
        v12 = *(a2 + 16);
        outlined copy of Text.Storage(*a2, v26, v12);

        v28 = MEMORY[0x2743E09E0](v3, v4, v5, v6);
        v30 = SleepQuerySnippet.formatNumericSleepData(data:)(v28, v29);
        v32 = v31;
        v34 = v33;

        v35 = static Text.+ infix(_:_:)();
        v43 = v36;
        v44 = v35;
        v46 = v37;
        v45 = v38;
        outlined consume of Text.Storage(v30, v32, v34 & 1);

        v24 = v27;
        v25 = v26;
        goto LABEL_8;
      }
    }

    else if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v11, v12);

  v13 = MEMORY[0x2743E09E0](v3, v4, v5, v6);
  v15 = SleepQuerySnippet.formatUnitSleepData(unit:)(v13, v14);
  v17 = v16;
  v19 = v18;

  v20 = static Text.+ infix(_:_:)();
  v43 = v21;
  v44 = v20;
  v46 = v22;
  v45 = v23;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v24 = v10;
  v25 = v11;
LABEL_8:
  outlined consume of Text.Storage(v24, v25, v12);

  v39 = *a2;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v46 & 1;
  *(a2 + 24) = v45;
  outlined consume of Text.Storage(v39, v40, v41);
}

uint64_t SleepQuerySnippet.formatNumericSleepData(data:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v12, *MEMORY[0x277CE0A78], v10);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v33._countAndFlagsBits = a1;
  v33._object = a2;

  MEMORY[0x2743E0A10](32, 0xE100000000000000);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  LocalizedStringKey.init(stringInterpolation:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  v21 = *MEMORY[0x277CE0998];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v6, v21, v22);
  (*(v23 + 56))(v6, 0, 1, v22);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v6, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v21) = v27;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  static Font.Weight.semibold.getter();
  v28 = Text.fontWeight(_:)();
  outlined consume of Text.Storage(v24, v26, v21 & 1);

  (*(v32 + 8))(v12, v31);
  return v28;
}

uint64_t SleepQuerySnippet.formatUnitSleepData(unit:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v35 = *(v7 - 8);
  v8 = v35;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v11 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  v36._countAndFlagsBits = a1;
  v36._object = a2;

  MEMORY[0x2743E0A10](32, 0xE100000000000000);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v36);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringKey.init(stringInterpolation:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v19 = *(v8 + 104);
  v20 = v7;
  v19(v10, *MEMORY[0x277CE0A60], v7);
  v21 = *MEMORY[0x277CE0998];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v6, v21, v22);
  (*(v23 + 56))(v6, 0, 1, v22);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v6, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v35 + 8))(v10, v20);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v6) = v27;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  LODWORD(v36._countAndFlagsBits) = static HierarchicalShapeStyle.secondary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v14) = v31;
  outlined consume of Text.Storage(v24, v26, v6 & 1);

  v32 = Text.bold()();
  outlined consume of Text.Storage(v28, v30, v14 & 1);

  return v32;
}

void (*specialized Sequence.forEach(_:)(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 56); ; i += 4)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 3);
      v10 = v7;
      v11 = v8;

      v5(&v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t outlined destroy of SnippetHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView()
{
  result = lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView;
  if (!lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView);
  }

  return result;
}

uint64_t partial apply for closure #3 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in SleepQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of SleepQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SleepQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  return closure #1 in SleepQuerySnippet.body.getter(v1 + v4, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), a1, *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_6Tm()
{
  Snippet = type metadata accessor for SleepQuerySnippet(0);
  v1 = *(*(Snippet - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v12 = *(*(Snippet - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v13 = *(v4 + 64);
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v7 = v6 + *(type metadata accessor for SleepQueryModel(0) + 20);
  v8 = type metadata accessor for SnippetHeaderModel(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = (v2 + v12 + v5) & ~v5;

  (*(v4 + 8))(v0 + v10, v3);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v1 | v5 | 7);
}

void partial apply for closure #4 in SleepQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for SleepQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  closure #2 in SleepQuerySnippet.body.getter(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

void type metadata completion function for SleepQuerySnippet(uint64_t a1)
{
  type metadata accessor for SleepQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
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

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743E0A30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t WellnessSnippets.CodingKeys.stringValue.getter(char a1)
{
  result = 0x42636972656E6567;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6144746867696568;
      break;
    case 10:
      v3 = 0x52656E6F6870;
      goto LABEL_16;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6575517065656C73;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 0x526863746177;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodPressureDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodPressureDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodPressureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodPressureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WellnessSnippets.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WellnessSnippets.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WellnessSnippets.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized WellnessSnippets.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.CycleTrackingDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.CycleTrackingDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericBinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericBinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericDataTypeLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericDataTypeLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.HeightDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.HeightDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.PhoneRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.PhoneRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SleepQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SleepQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.TemperatureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.TemperatureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.WatchRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.WatchRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WellnessSnippets.encode(to:)(void *a1)
{
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = &v108 - v2;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v108 - v3;
  Model = type metadata accessor for TemperatureQueryModel(0);
  MEMORY[0x28223BE20](Model);
  v173 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v170 = *(v5 - 8);
  v171 = v5;
  MEMORY[0x28223BE20](v5);
  v169 = &v108 - v6;
  v167 = type metadata accessor for SpecificMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v167);
  v168 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v165 = *(v8 - 8);
  v166 = v8;
  MEMORY[0x28223BE20](v8);
  v164 = &v108 - v9;
  v160 = type metadata accessor for SleepQueryModel(0);
  MEMORY[0x28223BE20](v160);
  v163 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v158 = *(v11 - 8);
  v159 = v11;
  MEMORY[0x28223BE20](v11);
  v156 = &v108 - v12;
  v154 = type metadata accessor for SingleActivitySummaryModel(0);
  MEMORY[0x28223BE20](v154);
  v155 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v161 = *(v14 - 8);
  v162 = v14;
  MEMORY[0x28223BE20](v14);
  v157 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v152 = *(v16 - 8);
  v153 = v16;
  MEMORY[0x28223BE20](v16);
  v151 = &v108 - v17;
  v149 = type metadata accessor for HeightQueryModel(0);
  MEMORY[0x28223BE20](v149);
  v150 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v147 = *(v19 - 8);
  v148 = v19;
  MEMORY[0x28223BE20](v19);
  v146 = &v108 - v20;
  v144 = type metadata accessor for GenericQueryModel(0);
  MEMORY[0x28223BE20](v144);
  v145 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v142 = *(v22 - 8);
  v143 = v22;
  MEMORY[0x28223BE20](v22);
  v141 = &v108 - v23;
  v139 = type metadata accessor for HealthDataLogModel(0);
  MEMORY[0x28223BE20](v139);
  v140 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v137 = *(v25 - 8);
  v138 = v25;
  MEMORY[0x28223BE20](v25);
  v136 = &v108 - v26;
  v134 = type metadata accessor for GenericMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v134);
  v135 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v132 = *(v28 - 8);
  v133 = v28;
  MEMORY[0x28223BE20](v28);
  v131 = &v108 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v129 = *(v30 - 8);
  v130 = v30;
  MEMORY[0x28223BE20](v30);
  v128 = &v108 - v31;
  v126 = type metadata accessor for GenericButtonModel(0);
  MEMORY[0x28223BE20](v126);
  v127 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v124 = *(v33 - 8);
  v125 = v33;
  MEMORY[0x28223BE20](v33);
  v123 = &v108 - v34;
  v121 = type metadata accessor for CycleTrackingLogModel(0);
  MEMORY[0x28223BE20](v121);
  v122 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v119 = *(v36 - 8);
  v120 = v36;
  MEMORY[0x28223BE20](v36);
  v118 = &v108 - v37;
  v116 = type metadata accessor for BloodPressureLogModel(0);
  MEMORY[0x28223BE20](v116);
  v117 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v114 = *(v39 - 8);
  v115 = v39;
  MEMORY[0x28223BE20](v39);
  v113 = &v108 - v40;
  v111 = type metadata accessor for BloodPressureQueryModel(0);
  MEMORY[0x28223BE20](v111);
  v112 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v109 = *(v42 - 8);
  v110 = v42;
  MEMORY[0x28223BE20](v42);
  v108 = &v108 - v43;
  v44 = type metadata accessor for OxygenSaturationQueryModel(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for WellnessSnippets(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v182 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v51 = &v108 - v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();
  v181 = v51;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WellnessSnippets(v180, v49);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v112;
      outlined init with take of TemperatureQueryModel(v49, v112, type metadata accessor for BloodPressureQueryModel);
      LOBYTE(v189) = 1;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();
      v81 = v113;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureQueryModel and conformance BloodPressureQueryModel, type metadata accessor for BloodPressureQueryModel, &protocol conformance descriptor for BloodPressureQueryModel);
      v82 = v115;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v114 + 8))(v81, v82);
      v62 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_18;
    case 2u:
      v57 = v117;
      outlined init with take of TemperatureQueryModel(v49, v117, type metadata accessor for BloodPressureLogModel);
      LOBYTE(v189) = 2;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();
      v71 = v118;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureLogModel and conformance BloodPressureLogModel, type metadata accessor for BloodPressureLogModel, &protocol conformance descriptor for BloodPressureLogModel);
      v72 = v120;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v119 + 8))(v71, v72);
      v62 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_18;
    case 3u:
      v57 = v122;
      outlined init with take of TemperatureQueryModel(v49, v122, type metadata accessor for CycleTrackingLogModel);
      LOBYTE(v189) = 3;
      lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();
      v77 = v123;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type CycleTrackingLogModel and conformance CycleTrackingLogModel, type metadata accessor for CycleTrackingLogModel, &protocol conformance descriptor for CycleTrackingLogModel);
      v78 = v125;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v124 + 8))(v77, v78);
      v62 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_18;
    case 4u:
      v57 = v127;
      outlined init with take of TemperatureQueryModel(v49, v127, type metadata accessor for GenericButtonModel);
      LOBYTE(v189) = 4;
      lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();
      v65 = v128;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericButtonModel and conformance GenericButtonModel, type metadata accessor for GenericButtonModel, &protocol conformance descriptor for GenericButtonModel);
      v66 = v130;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v129 + 8))(v65, v66);
      v62 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v83 = *(v49 + 1);
      v180 = *v49;
      v84 = *(v49 + 3);
      v179 = *(v49 + 2);
      v86 = *(v49 + 4);
      v85 = *(v49 + 5);
      v87 = v49[48];
      LOBYTE(v189) = 5;
      lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();
      v88 = v131;
      v89 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v189 = v180;
      *(&v189 + 1) = v83;
      *&v190 = v179;
      *(&v190 + 1) = v84;
      *&v191 = v86;
      *(&v191 + 1) = v85;
      LOBYTE(v192) = v87;
      lazy protocol witness table accessor for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel();
      v90 = v133;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v132 + 8))(v88, v90);
      (*(v182 + 8))(v89, v204);

    case 6u:
      v57 = v135;
      outlined init with take of TemperatureQueryModel(v49, v135, type metadata accessor for GenericMedCompletedLogModel);
      LOBYTE(v189) = 6;
      lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();
      v93 = v136;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericMedCompletedLogModel and conformance GenericMedCompletedLogModel, type metadata accessor for GenericMedCompletedLogModel, &protocol conformance descriptor for GenericMedCompletedLogModel);
      v94 = v138;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v137 + 8))(v93, v94);
      v62 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_18;
    case 7u:
      v57 = v140;
      outlined init with take of TemperatureQueryModel(v49, v140, type metadata accessor for HealthDataLogModel);
      LOBYTE(v189) = 7;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();
      v79 = v141;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HealthDataLogModel and conformance HealthDataLogModel, type metadata accessor for HealthDataLogModel, &protocol conformance descriptor for HealthDataLogModel);
      v80 = v143;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v142 + 8))(v79, v80);
      v62 = type metadata accessor for HealthDataLogModel;
      goto LABEL_18;
    case 8u:
      v57 = v145;
      outlined init with take of TemperatureQueryModel(v49, v145, type metadata accessor for GenericQueryModel);
      LOBYTE(v189) = 8;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();
      v106 = v146;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericQueryModel and conformance GenericQueryModel, type metadata accessor for GenericQueryModel, &protocol conformance descriptor for GenericQueryModel);
      v107 = v148;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v147 + 8))(v106, v107);
      v62 = type metadata accessor for GenericQueryModel;
      goto LABEL_18;
    case 9u:
      v57 = v150;
      outlined init with take of TemperatureQueryModel(v49, v150, type metadata accessor for HeightQueryModel);
      LOBYTE(v189) = 9;
      lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();
      v69 = v151;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HeightQueryModel and conformance HeightQueryModel, type metadata accessor for HeightQueryModel, &protocol conformance descriptor for HeightQueryModel);
      v70 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v152 + 8))(v69, v70);
      v62 = type metadata accessor for HeightQueryModel;
      goto LABEL_18;
    case 0xAu:
      v95 = *(v49 + 13);
      v200 = *(v49 + 12);
      v201 = v95;
      v202 = *(v49 + 14);
      v203 = v49[240];
      v96 = *(v49 + 9);
      v196 = *(v49 + 8);
      v197 = v96;
      v97 = *(v49 + 11);
      v198 = *(v49 + 10);
      v199 = v97;
      v98 = *(v49 + 5);
      v193[0] = *(v49 + 4);
      v193[1] = v98;
      v99 = *(v49 + 7);
      v194 = *(v49 + 6);
      v195 = v99;
      v100 = *(v49 + 1);
      v189 = *v49;
      v190 = v100;
      v101 = *(v49 + 3);
      v191 = *(v49 + 2);
      v192 = v101;
      LOBYTE(v183) = 10;
      lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();
      v102 = v157;
      v103 = v204;
      v104 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v187[8] = v200;
      v187[9] = v201;
      v187[10] = v202;
      v188 = v203;
      v187[4] = v196;
      v187[5] = v197;
      v187[6] = v198;
      v187[7] = v199;
      v187[0] = v193[0];
      v187[1] = v193[1];
      v187[2] = v194;
      v187[3] = v195;
      v183 = v189;
      v184 = v190;
      v185 = v191;
      v186 = v192;
      lazy protocol witness table accessor for type PhoneRingsModel and conformance PhoneRingsModel();
      v105 = v162;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v161 + 8))(v102, v105);
      (*(v182 + 8))(v104, v103);
      return outlined destroy of PhoneRingsModel(&v189);
    case 0xBu:
      v57 = v155;
      outlined init with take of TemperatureQueryModel(v49, v155, type metadata accessor for SingleActivitySummaryModel);
      LOBYTE(v189) = 11;
      lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();
      v63 = v156;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SingleActivitySummaryModel and conformance SingleActivitySummaryModel, type metadata accessor for SingleActivitySummaryModel, &protocol conformance descriptor for SingleActivitySummaryModel);
      v64 = v159;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v158 + 8))(v63, v64);
      v62 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_18;
    case 0xCu:
      v57 = v163;
      outlined init with take of TemperatureQueryModel(v49, v163, type metadata accessor for SleepQueryModel);
      LOBYTE(v189) = 12;
      lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();
      v67 = v164;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SleepQueryModel and conformance SleepQueryModel, type metadata accessor for SleepQueryModel, &protocol conformance descriptor for SleepQueryModel);
      v68 = v166;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v165 + 8))(v67, v68);
      v62 = type metadata accessor for SleepQueryModel;
      goto LABEL_18;
    case 0xDu:
      v57 = v168;
      outlined init with take of TemperatureQueryModel(v49, v168, type metadata accessor for SpecificMedCompletedLogModel);
      LOBYTE(v189) = 13;
      lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();
      v91 = v169;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SpecificMedCompletedLogModel and conformance SpecificMedCompletedLogModel, type metadata accessor for SpecificMedCompletedLogModel, &protocol conformance descriptor for SpecificMedCompletedLogModel);
      v92 = v171;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v170 + 8))(v91, v92);
      v62 = type metadata accessor for SpecificMedCompletedLogModel;
      goto LABEL_18;
    case 0xEu:
      v57 = v173;
      outlined init with take of TemperatureQueryModel(v49, v173, type metadata accessor for TemperatureQueryModel);
      LOBYTE(v189) = 14;
      lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();
      v58 = v174;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type TemperatureQueryModel and conformance TemperatureQueryModel, type metadata accessor for TemperatureQueryModel, &protocol conformance descriptor for TemperatureQueryModel);
      v61 = v176;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v175 + 8))(v58, v61);
      v62 = type metadata accessor for TemperatureQueryModel;
LABEL_18:
      outlined destroy of TemperatureQueryModel(v57, v62);
      goto LABEL_19;
    case 0xFu:
      v73 = *(v49 + 3);
      v191 = *(v49 + 2);
      v192 = v73;
      v193[0] = *(v49 + 4);
      *(v193 + 9) = *(v49 + 73);
      v74 = *(v49 + 1);
      v189 = *v49;
      v190 = v74;
      LOBYTE(v183) = 15;
      lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();
      v75 = v177;
      v59 = v204;
      v60 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v185 = v191;
      v186 = v192;
      v187[0] = v193[0];
      *(v187 + 9) = *(v193 + 9);
      v183 = v189;
      v184 = v190;
      lazy protocol witness table accessor for type WatchRingsModel and conformance WatchRingsModel();
      v76 = v179;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v178 + 8))(v75, v76);
LABEL_19:
      result = (*(v182 + 8))(v60, v59);
      break;
    default:
      outlined init with take of TemperatureQueryModel(v49, v46, type metadata accessor for OxygenSaturationQueryModel);
      LOBYTE(v189) = 0;
      lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();
      v52 = v108;
      v53 = v204;
      v54 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type OxygenSaturationQueryModel and conformance OxygenSaturationQueryModel, type metadata accessor for OxygenSaturationQueryModel, &protocol conformance descriptor for OxygenSaturationQueryModel);
      v55 = v110;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v109 + 8))(v52, v55);
      outlined destroy of TemperatureQueryModel(v46, type metadata accessor for OxygenSaturationQueryModel);
      result = (*(v182 + 8))(v54, v53);
      break;
  }

  return result;
}

uint64_t type metadata accessor for WellnessSnippets(uint64_t a1)
{
  result = type metadata singleton initialization cache for WellnessSnippets;
  if (!type metadata singleton initialization cache for WellnessSnippets)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of WellnessSnippets(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WellnessSnippets(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchRingsModel and conformance WatchRingsModel()
{
  result = lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel;
  if (!lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel;
  if (!lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneRingsModel and conformance PhoneRingsModel()
{
  result = lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel()
{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel;
  if (!lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of TemperatureQueryModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WellnessSnippets.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a2;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v203 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v200 = &v140 - v3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v199 = &v140 - v4;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v198 = &v140 - v5;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v197 = &v140 - v6;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v196 = &v140 - v7;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v175 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v195 = &v140 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v194 = &v140 - v9;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v193 = &v140 - v10;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v192 = &v140 - v11;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v191 = &v140 - v12;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v202 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v190 = &v140 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v189 = &v140 - v14;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v206 = &v140 - v15;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v163 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v201 = &v140 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v188 = &v140 - v17;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v205 = &v140 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v207 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v227 = &v140 - v19;
  v204 = type metadata accessor for WellnessSnippets(0);
  MEMORY[0x28223BE20](v204);
  v149 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v157 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v156 = &v140 - v24;
  MEMORY[0x28223BE20](v25);
  v155 = &v140 - v26;
  MEMORY[0x28223BE20](v27);
  v154 = &v140 - v28;
  MEMORY[0x28223BE20](v29);
  v148 = &v140 - v30;
  MEMORY[0x28223BE20](v31);
  v153 = &v140 - v32;
  MEMORY[0x28223BE20](v33);
  v152 = &v140 - v34;
  MEMORY[0x28223BE20](v35);
  v151 = &v140 - v36;
  MEMORY[0x28223BE20](v37);
  v150 = &v140 - v38;
  MEMORY[0x28223BE20](v39);
  v147 = (&v140 - v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v140 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v140 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v140 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v140 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v140 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v140 - v57;
  v59 = a1[3];
  v211 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v59);
  lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();
  v60 = v210;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v60)
  {
LABEL_42:
    v121 = v211;
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v141 = v55;
  v142 = v52;
  v143 = v49;
  v144 = v46;
  v146 = v43;
  v61 = v205;
  v62 = v206;
  v210 = 0;
  v63 = v204;
  v145 = v58;
  v64 = v208;
  v65 = v227;
  v66 = KeyedDecodingContainer.allKeys.getter();
  if (*(v66 + 16) != 1 || (v67 = *(v66 + 32), v67 == 16))
  {
    v76 = type metadata accessor for DecodingError();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v78 = v63;
    v79 = v209;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    (*(v207 + 8))(v65, v79);
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v140 = v66;
  v68 = v64;
  v69 = v210;
  v70 = v203;
  v71 = v202;
  v72 = v146;
  switch(v67)
  {
    case 1:
      LOBYTE(v212) = 1;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();
      v108 = v188;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for BloodPressureQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureQueryModel and conformance BloodPressureQueryModel, type metadata accessor for BloodPressureQueryModel, &protocol conformance descriptor for BloodPressureQueryModel);
      v74 = v142;
      v109 = v161;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v160 + 8))(v108, v109);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 2:
      v92 = v68;
      LOBYTE(v212) = 2;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();
      v93 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v69)
      {
        type metadata accessor for BloodPressureLogModel(0);
        lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureLogModel and conformance BloodPressureLogModel, type metadata accessor for BloodPressureLogModel, &protocol conformance descriptor for BloodPressureLogModel);
        v94 = v143;
        v95 = v162;
        v96 = v201;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v163 + 8))(v96, v95);
        (*(v207 + 8))(v65, v93);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v126 = v145;
        outlined init with take of TemperatureQueryModel(v94, v145, type metadata accessor for WellnessSnippets);
        v127 = v211;
        v128 = v92;
        goto LABEL_49;
      }

      (*(v207 + 8))(v65, v93);
      goto LABEL_41;
    case 3:
      LOBYTE(v212) = 3;
      lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();
      v104 = v62;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for CycleTrackingLogModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type CycleTrackingLogModel and conformance CycleTrackingLogModel, type metadata accessor for CycleTrackingLogModel, &protocol conformance descriptor for CycleTrackingLogModel);
      v74 = v144;
      v105 = v165;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v164 + 8))(v104, v105);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 4:
      v85 = v68;
      LOBYTE(v212) = 4;
      lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();
      v86 = v189;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for GenericButtonModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericButtonModel and conformance GenericButtonModel, type metadata accessor for GenericButtonModel, &protocol conformance descriptor for GenericButtonModel);
      v87 = v167;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v166 + 8))(v86, v87);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v125 = v72;
      goto LABEL_46;
    case 5:
      v85 = v68;
      LOBYTE(v212) = 5;
      lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();
      v110 = v190;
      v111 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        (*(v207 + 8))(v65, v111);
        goto LABEL_41;
      }

      lazy protocol witness table accessor for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel();
      v123 = v168;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v124 = v207;
      (*(v71 + 8))(v110, v123);
      (*(v124 + 8))(v65, v209);
      swift_unknownObjectRelease();
      v129 = v213;
      v130 = v214;
      v131 = v215;
      v133 = v147;
      *v147 = v212;
      v133[1] = v129;
      v133[2] = v130;
      *(v133 + 48) = v131;
LABEL_45:
      swift_storeEnumTagMultiPayload();
      v125 = v133;
LABEL_46:
      v126 = v145;
      outlined init with take of TemperatureQueryModel(v125, v145, type metadata accessor for WellnessSnippets);
      v127 = v211;
      v128 = v85;
      goto LABEL_49;
    case 6:
      LOBYTE(v212) = 6;
      lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();
      v114 = v191;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for GenericMedCompletedLogModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericMedCompletedLogModel and conformance GenericMedCompletedLogModel, type metadata accessor for GenericMedCompletedLogModel, &protocol conformance descriptor for GenericMedCompletedLogModel);
      v74 = v150;
      v115 = v170;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v169 + 8))(v114, v115);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 7:
      LOBYTE(v212) = 7;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();
      v106 = v192;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for HealthDataLogModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HealthDataLogModel and conformance HealthDataLogModel, type metadata accessor for HealthDataLogModel, &protocol conformance descriptor for HealthDataLogModel);
      v74 = v151;
      v107 = v172;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v171 + 8))(v106, v107);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 8:
      LOBYTE(v212) = 8;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();
      v119 = v193;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for GenericQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericQueryModel and conformance GenericQueryModel, type metadata accessor for GenericQueryModel, &protocol conformance descriptor for GenericQueryModel);
      v74 = v152;
      v120 = v174;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v173 + 8))(v119, v120);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 9:
      LOBYTE(v212) = 9;
      lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();
      v90 = v194;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for HeightQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HeightQueryModel and conformance HeightQueryModel, type metadata accessor for HeightQueryModel, &protocol conformance descriptor for HeightQueryModel);
      v74 = v153;
      v91 = v177;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v176 + 8))(v90, v91);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 10:
      v85 = v68;
      LOBYTE(v212) = 10;
      lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();
      v116 = v195;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type PhoneRingsModel and conformance PhoneRingsModel();
      v117 = v178;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v118 = (v207 + 8);
      (*(v175 + 8))(v116, v117);
      (*v118)(v65, v81);
      swift_unknownObjectRelease();
      v132 = v224;
      v133 = v148;
      *(v148 + 12) = v223;
      v133[13] = v132;
      v133[14] = v225;
      *(v133 + 240) = v226;
      v134 = v220;
      v133[8] = v219;
      v133[9] = v134;
      v135 = v222;
      v133[10] = v221;
      v133[11] = v135;
      v136 = *&v216[16];
      v133[4] = *v216;
      v133[5] = v136;
      v137 = v218;
      v133[6] = v217;
      v133[7] = v137;
      v138 = v213;
      *v133 = v212;
      v133[1] = v138;
      v139 = v215;
      v133[2] = v214;
      v133[3] = v139;
      goto LABEL_45;
    case 11:
      LOBYTE(v212) = 11;
      lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();
      v83 = v196;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for SingleActivitySummaryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SingleActivitySummaryModel and conformance SingleActivitySummaryModel, type metadata accessor for SingleActivitySummaryModel, &protocol conformance descriptor for SingleActivitySummaryModel);
      v74 = v154;
      v84 = v180;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v179 + 8))(v83, v84);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 12:
      LOBYTE(v212) = 12;
      lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();
      v88 = v197;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for SleepQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SleepQueryModel and conformance SleepQueryModel, type metadata accessor for SleepQueryModel, &protocol conformance descriptor for SleepQueryModel);
      v74 = v155;
      v89 = v182;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v181 + 8))(v88, v89);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 13:
      LOBYTE(v212) = 13;
      lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();
      v112 = v198;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for SpecificMedCompletedLogModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SpecificMedCompletedLogModel and conformance SpecificMedCompletedLogModel, type metadata accessor for SpecificMedCompletedLogModel, &protocol conformance descriptor for SpecificMedCompletedLogModel);
      v74 = v156;
      v113 = v184;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v183 + 8))(v112, v113);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 14:
      LOBYTE(v212) = 14;
      lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();
      v80 = v199;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        goto LABEL_40;
      }

      type metadata accessor for TemperatureQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type TemperatureQueryModel and conformance TemperatureQueryModel, type metadata accessor for TemperatureQueryModel, &protocol conformance descriptor for TemperatureQueryModel);
      v74 = v157;
      v82 = v186;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v185 + 8))(v80, v82);
      (*(v207 + 8))(v65, v81);
      swift_unknownObjectRelease();
      goto LABEL_47;
    case 15:
      LOBYTE(v212) = 15;
      lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();
      v97 = v200;
      v81 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v69)
      {
        lazy protocol witness table accessor for type WatchRingsModel and conformance WatchRingsModel();
        v98 = v187;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v99 = (v207 + 8);
        (*(v70 + 8))(v97, v98);
        (*v99)(v65, v81);
        swift_unknownObjectRelease();
        v100 = v215;
        v101 = v149;
        *(v149 + 2) = v214;
        v101[3] = v100;
        v101[4] = *v216;
        *(v101 + 73) = *&v216[9];
        v102 = v213;
        *v101 = v212;
        v101[1] = v102;
        swift_storeEnumTagMultiPayload();
        v103 = v101;
        goto LABEL_48;
      }

LABEL_40:
      (*(v207 + 8))(v65, v81);
      goto LABEL_41;
    default:
      LOBYTE(v212) = 0;
      lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();
      v73 = v209;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v69)
      {
        (*(v207 + 8))(v65, v73);
        goto LABEL_41;
      }

      type metadata accessor for OxygenSaturationQueryModel(0);
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type OxygenSaturationQueryModel and conformance OxygenSaturationQueryModel, type metadata accessor for OxygenSaturationQueryModel, &protocol conformance descriptor for OxygenSaturationQueryModel);
      v74 = v141;
      v75 = v159;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v158 + 8))(v61, v75);
      (*(v207 + 8))(v65, v73);
      swift_unknownObjectRelease();
LABEL_47:
      swift_storeEnumTagMultiPayload();
      v103 = v74;
LABEL_48:
      v126 = v145;
      outlined init with take of TemperatureQueryModel(v103, v145, type metadata accessor for WellnessSnippets);
      v127 = v211;
      v128 = v208;
LABEL_49:
      outlined init with take of TemperatureQueryModel(v126, v128, type metadata accessor for WellnessSnippets);
      v121 = v127;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v121);
}