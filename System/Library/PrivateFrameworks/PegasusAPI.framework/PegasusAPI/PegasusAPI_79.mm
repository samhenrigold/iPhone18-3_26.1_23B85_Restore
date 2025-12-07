void sub_1B9516CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9516D60(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_39()
{

  return type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
}

uint64_t OUTLINED_FUNCTION_30_30(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
}

uint64_t OUTLINED_FUNCTION_37_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_38_12(uint64_t a1, uint64_t a2)
{

  return sub_1B964C670();
}

uint64_t OUTLINED_FUNCTION_51_15(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1B9514524(v3, v4 + v5, a3);
}

uint64_t Searchfoundation_MiniCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  if (qword_1EBAB8600 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAD00F8;
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_74();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MiniCardSection(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B951711C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_MiniCardSection.punchoutOptions.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_7_44();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B951972C(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 24);
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9517334()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_MiniCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_44();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B951972C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 24, v0 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951753C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_MiniCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_44();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B951972C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 40, v0 + 24);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 56);
  *(v1 + 84) = *(v4 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95176E0(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 56, v1 + v10);
  *(v7 + 56) = v4;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 57);
  *(v1 + 84) = *(v4 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9517864(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 57, v1 + v10);
  *(v7 + 57) = v4;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 58);
  *(v1 + 84) = *(v4 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95179E8(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 58, v1 + v10);
  *(v7 + 58) = v4;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.type.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MiniCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;
}

uint64_t Searchfoundation_MiniCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9517BD0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_MiniCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_44();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B951972C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 64, v0 + 24);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_69();
  result = OUTLINED_FUNCTION_10_4(v1 + 80, v3);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1B9517CB8@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_MiniCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9517CFC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_MiniCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_9_40();
  v8 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9517E24(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_7_44();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_18(v9 + 80, v3 + v13);
  *(v9 + 80) = v4;
  *(v9 + 88) = v7;

  free(v3);
}

uint64_t Searchfoundation_MiniCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_9_40() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B951972C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95182A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B92D6A80();
  return a7(v11);
}

uint64_t Searchfoundation_MiniCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_9_40() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B951972C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v14);
    v15 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B95185B4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13 - 8];
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v15) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v16;
}

uint64_t sub_1B95186B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v4 + v12) = sub_1B951972C(v13);
  }

  v14 = a3(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95187C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7 - 8];
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521(v2 + *a1, v15);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v10;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_249_3(v11);
  v12 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v12);
  result = OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B8D9207C(v8, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_9_40() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B951972C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v14);
    v15 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MiniCardSection.image.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.image.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_9_40() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B951972C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9518F1C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t Searchfoundation_MiniCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_MiniCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B9519120()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD00E0);
  __swift_project_value_buffer(v0, qword_1EBAD00E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "image";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MiniCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD00E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B95195F8()
{
  OUTLINED_FUNCTION_7_44();
  result = sub_1B9519648();
  qword_1EBAD00F8 = result;
  return result;
}

uint64_t sub_1B9519648()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B951972C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v27 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v28 = (v1 + 64);
  v29 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v30 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v31 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v12 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v33 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v34 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v17;
  *(v1 + 32) = v16;

  swift_beginAccess();
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;

  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v18;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v18;
  swift_beginAccess();
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v22 = v28;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 72) = v20;

  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = v29;
  swift_beginAccess();
  *v25 = v23;
  *(v1 + 88) = v24;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B9519D14()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B9519DDC()
{
  v0 = sub_1B9519D14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MiniCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B951972C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B9519ED0(v10, a1, a2, a3);
}

uint64_t sub_1B9519ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B951A0A8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B92D3D10(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92D3D94(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B92D3E18(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E16ACC(a2, a1);
        break;
      case 8:
        sub_1B92D3E9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B951A174(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B951A250(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B951A32C(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B951A408(a2, a1, a3, a4);
            break;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B951A0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD34E8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B951A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD34E8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD34E8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MiniCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  result = sub_1B951A550(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B951A550(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = v44 - v17;
  v53 = type metadata accessor for Searchfoundation_RichText(0);
  v18 = MEMORY[0x1EEE9AC00](v53);
  v46 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47 = v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v51 = v44 - v22;
  v52 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v56 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v45 = v10;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD34E8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v10 = v45;
  }

  v24 = v56;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  v28 = v56;
  swift_beginAccess();
  v29 = *(v28 + 40);
  v30 = *(v28 + 48);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v33 = v56;
  swift_beginAccess();
  if (*(v33 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v33 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v33 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v34 = *(v33 + 64);
        v35 = *(v33 + 72);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (!v36 || (, sub_1B964C700(), result = , !v5))
        {
          v37 = v56;
          swift_beginAccess();
          if (!*(v37 + 80) || (v38 = *(v37 + 88), v54 = *(v37 + 80), v55 = v38, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
          {
            v44[1] = v13;
            v45 = a4;
            swift_beginAccess();
            v39 = v51;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v39, 1, v52) == 1)
            {
              v52 = v11;
              sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }

              v52 = v11;
            }

            swift_beginAccess();
            v40 = v49;
            sub_1B8D92024();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v53);
            v42 = v45;
            if (EnumTagSinglePayload == 1)
            {
              sub_1B8D9207C(v40, &qword_1EBACB1D0, &qword_1B96B9870);
              v43 = v50;
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              v43 = v50;
              if (v5)
              {
                return result;
              }

              v45 = v42;
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v43, 1, v53) == 1)
            {
              sub_1B8D9207C(v43, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v10, 1, v52) == 1)
            {
              return sub_1B8D9207C(v10, &qword_1EBAB8EA8, &unk_1B96B77D0);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
              sub_1B964C740();
              return sub_1B92D6AD8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MiniCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_74();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B951AFF8(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B951AFF8(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v88[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v88[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v88[-v9];
  v102 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v11 = MEMORY[0x1EEE9AC00](v103);
  v98 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v88[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = &v88[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v88[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v88[-v21];
  v22 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v88[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v88[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v88[-v30];
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C(v32, v33);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  swift_beginAccess();
  v38 = v36 == *(a2 + 24) && v37 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v50 = *(v24 + 48);
  v51 = v105;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51 + v50, 1, v22);
    v53 = v106;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

LABEL_26:
    v55 = &qword_1EBACB058;
    v56 = &unk_1B96CA9D0;
LABEL_27:
    v57 = v51;
LABEL_42:
    sub_1B8D9207C(v57, v55, v56);
    goto LABEL_43;
  }

  sub_1B8D92024();
  v54 = __swift_getEnumTagSinglePayload(v51 + v50, 1, v22);
  v53 = v106;
  if (v54 == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v58 = v104;
  sub_1B92D6A28();
  if (*&v29[*(v22 + 20)] != *&v58[*(v22 + 20)])
  {

    sub_1B947FDE4();
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v57 = v51;
      v55 = &qword_1EBACB050;
      v56 = &unk_1B96B7BD0;
      goto LABEL_42;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v89 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_31:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v61 = *(v103 + 48);
  v62 = v53;
  v63 = v101;
  sub_1B8D92024();
  sub_1B8D92024();
  v64 = v102;
  if (__swift_getEnumTagSinglePayload(v63, 1, v102) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v64) == 1)
    {
      sub_1B8D9207C(v63, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_38;
    }

LABEL_36:
    v55 = &qword_1EBACB230;
    v56 = &unk_1B96B8870;
    v57 = v63;
    goto LABEL_42;
  }

  v65 = v99;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v64) == 1)
  {
    sub_1B8D9207C(v106, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    goto LABEL_36;
  }

  v66 = v97;
  sub_1B92D6A28();
  v67 = static Searchfoundation_RichText.== infix(_:_:)(v65, v66);
  sub_1B92D6AD8();
  sub_1B8D9207C(v106, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v63, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v67 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  swift_beginAccess();
  v68 = v100;
  sub_1B8D92024();
  swift_beginAccess();
  v69 = *(v103 + 48);
  v51 = v98;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v64) != 1)
  {
    v72 = v95;
    sub_1B8D92024();
    v73 = __swift_getEnumTagSinglePayload(v51 + v69, 1, v64);
    v70 = v96;
    if (v73 == 1)
    {
      sub_1B8D9207C(v100, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B92D6AD8();
      goto LABEL_48;
    }

    v74 = v97;
    sub_1B92D6A28();
    v75 = static Searchfoundation_RichText.== infix(_:_:)(v72, v74);
    sub_1B92D6AD8();
    sub_1B8D9207C(v100, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v75)
    {
      goto LABEL_50;
    }

LABEL_43:

    return 0;
  }

  sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v51 + v69, 1, v64) != 1)
  {
LABEL_48:
    v55 = &qword_1EBACB230;
    v56 = &unk_1B96B8870;
    goto LABEL_27;
  }

  sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
  v70 = v96;
LABEL_50:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v76 = *(v92 + 48);
  v77 = v94;
  sub_1B8D92024();
  v78 = v77;
  sub_1B8D92024();
  v79 = v93;
  if (__swift_getEnumTagSinglePayload(v77, 1, v93) == 1)
  {

    sub_1B8D9207C(v70, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v79) == 1)
    {
      sub_1B8D9207C(v77, &qword_1EBAB8EA8, &unk_1B96B77D0);
      return 1;
    }

    goto LABEL_55;
  }

  v80 = v91;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78 + v76, 1, v79) == 1)
  {

    sub_1B8D9207C(v70, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_55:
    v81 = &qword_1EBAB8EB0;
    v82 = &qword_1B964D6B0;
    v83 = v78;
LABEL_56:
    sub_1B8D9207C(v83, v81, v82);
    return 0;
  }

  v84 = v90;
  sub_1B92D6A28();
  if (*&v80[*(v79 + 20)] != *&v84[*(v79 + 20)])
  {

    sub_1B94C6890();
    v86 = v85;

    if ((v86 & 1) == 0)
    {

      sub_1B92D6AD8();
      sub_1B8D9207C(v70, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v83 = v78;
      v81 = &qword_1EBAB8EA8;
      v82 = &unk_1B96B77D0;
      goto LABEL_56;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v87 = sub_1B964C850();

  sub_1B92D6AD8();
  sub_1B8D9207C(v70, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return (v87 & 1) != 0;
}

uint64_t Searchfoundation_MiniCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MiniCardSection(0);
  sub_1B8CD34E8(&qword_1EBAD0100, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B951C1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD34E8(&qword_1EBAD0118, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B951C234(uint64_t a1)
{
  v2 = sub_1B8CD34E8(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B951C2A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD34E8(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection, protocol conformance descriptor for Searchfoundation_MiniCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B951C46C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B951C4F8(uint64_t a1)
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v2 <= 0x3F)
    {
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_44()
{
  type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_40()
{
  type metadata accessor for Searchfoundation_MiniCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_24()
{
  type metadata accessor for Searchfoundation_MiniCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_MoreResults.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_MoreResults.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_MoreResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MoreResults(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_MoreResults(uint64_t a1)
{
  result = qword_1EBAD0158;
  if (!qword_1EBAD0158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MoreResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MoreResults(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_MoreResults.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_MoreResults(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B951C9C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0120);
  __swift_project_value_buffer(v0, qword_1EBAD0120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MoreResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8608 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0120);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MoreResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_MoreResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1B964C700(), !v4))
  {
    type metadata accessor for Searchfoundation_MoreResults(0);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Searchfoundation_MoreResults.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_MoreResults(0);
  sub_1B964C2B0();
  sub_1B8CD3530(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_MoreResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MoreResults(0);
  sub_1B8CD3530(&qword_1EBAD0138, type metadata accessor for Searchfoundation_MoreResults, protocol conformance descriptor for Searchfoundation_MoreResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B951CE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3530(&qword_1EBAD0168, type metadata accessor for Searchfoundation_MoreResults, protocol conformance descriptor for Searchfoundation_MoreResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B951CF04(uint64_t a1)
{
  v2 = sub_1B8CD3530(&qword_1EBAD0148, type metadata accessor for Searchfoundation_MoreResults, protocol conformance descriptor for Searchfoundation_MoreResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B951CF74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3530(&qword_1EBAD0148, type metadata accessor for Searchfoundation_MoreResults, protocol conformance descriptor for Searchfoundation_MoreResults);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_NewsCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  if (qword_1EBAB8618 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAD0188;
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_NewsCardSection(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D328(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_NewsCardSection.punchoutOptions.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_7_45();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B952014C(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 24);
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D540()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_NewsCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_45();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B952014C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 24, v0 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D748()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_NewsCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_45();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B952014C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 40, v0 + 24);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 84) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951D8E4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 57);
  *(v1 + 84) = *(v0 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951DA5C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 58);
  *(v1 + 84) = *(v0 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951DBD4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NewsCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;
}

uint64_t Searchfoundation_NewsCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951DDB8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_NewsCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_45();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B952014C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 64, v0 + 24);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_75();
  result = OUTLINED_FUNCTION_10_4(v1 + 80, v3);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1B951DEA0@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_NewsCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B951DEE4(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_NewsCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_12_36();
  v8 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951E00C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    OUTLINED_FUNCTION_7_45();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v3;
  *(v8 + 88) = v6;

  free(v2);
}

uint64_t Searchfoundation_NewsCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor, v10);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v12[v14] = qword_1ED9CD1C8;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B951E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B92D6A80();
  return a7(v11);
}

uint64_t Searchfoundation_NewsCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B951E7AC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13 - 8];
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v15) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v16;
}

uint64_t sub_1B951E8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v4 + v12) = sub_1B952014C(v13);
  }

  v14 = a3(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B951E9C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7 - 8];
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_521(v2 + *a1, v15);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v10;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_249_3(v11);
  v12 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v12);
  result = OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B8D9207C(v8, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_NewsCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B951F06C@<X0>(void *a1@<X0>, int a2@<W8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7 - 8];
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_521(v2 + *a1, v12);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B92D6A28();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
  }

  result = OUTLINED_FUNCTION_59_0();
  if (a2 != 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.providerImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.providerImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_NewsCardSection.providerTitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_12_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B952014C(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.providerTitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B951F6A0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage, v4);
  return *(v2 + v3);
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  result = OUTLINED_FUNCTION_9_3(v5 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage, v4);
  *(v5 + v8) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951F8C0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v9) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_NewsCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B951FA3C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0170);
  __swift_project_value_buffer(v0, qword_1EBAD0170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "thumbnail";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "providerImage";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "providerTitle";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 56;
  *v34 = "overlayTextInImage";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_NewsCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8610 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B951FFD0()
{
  OUTLINED_FUNCTION_7_45();
  result = sub_1B9520020();
  qword_1EBAD0188 = result;
  return result;
}

uint64_t sub_1B9520020()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage) = 0;
  return v0;
}

uint64_t sub_1B952014C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v32 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v32 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v33 = (v1 + 64);
  v34 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v35 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v36 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v12 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v38 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v39 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v41 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, 1, 1, v14);
  v42 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, 1, 1, v12);
  v43 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage) = 0;
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v17;
  *(v1 + 32) = v16;

  swift_beginAccess();
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;

  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  v20 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v20;
  swift_beginAccess();
  v21 = *(a1 + 58);
  v22 = v32;
  swift_beginAccess();
  *v22 = v21;
  swift_beginAccess();
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  v25 = v33;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 72) = v23;

  swift_beginAccess();
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = v34;
  swift_beginAccess();
  *v28 = v26;
  *(v1 + 88) = v27;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);

  v30 = v43;
  swift_beginAccess();
  *(v1 + v30) = v29;
  return v1;
}

void *sub_1B9520894()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

uint64_t sub_1B952099C()
{
  v0 = sub_1B9520894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_NewsCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B952014C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B9520A90(v10, a1, a2, a3);
}

uint64_t sub_1B9520A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9520CD0(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B92D3D10(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92D3D94(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B92D3E18(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E16ACC(a2, a1);
        break;
      case 8:
        sub_1B92D3E9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B9520D9C(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B9520E78(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B9520F54(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B9521030(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B952110C(a2, a1, a3, a4);
            break;
          case '7':
            sub_1B95211E8(a2, a1, a3, a4);
            break;
          case '8':
            sub_1B95212C4(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B9520CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD3578(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9520D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3578(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9520E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9520F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9521030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B952110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95211E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95212C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Searchfoundation_NewsCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  result = sub_1B95213BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95213BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v47 - v10;
  v59 = type metadata accessor for Searchfoundation_Image(0);
  v11 = MEMORY[0x1EEE9AC00](v59);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v47 - v20;
  v21 = type metadata accessor for Searchfoundation_RichText(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v49 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v53 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v47 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v63 = &v47 - v28;
  v60 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v48 = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3578(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v48;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v32 = *(a1 + 48);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v35 = *(a1 + 72);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v37 = v63;
        if (!*(a1 + 80) || (v38 = *(a1 + 88), v61 = *(a1 + 80), v62 = v38, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          v48 = a4;
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v37, 1, v60) == 1)
          {
            v60 = v17;
            sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B92D6AD8();
            }

            v60 = v17;
            sub_1B92D6AD8();
          }

          swift_beginAccess();
          v39 = v57;
          sub_1B8D92024();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v21);
          v42 = v58;
          v41 = v59;
          if (EnumTagSinglePayload == 1)
          {
            sub_1B8D9207C(v39, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }

            v41 = v59;
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v42, 1, v21) == 1)
          {
            sub_1B8D9207C(v42, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v43 = v54;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v43, 1, v41) == 1)
          {
            sub_1B8D9207C(v43, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v44 = v52;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v44, 1, v41) == 1)
          {
            sub_1B8D9207C(v44, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v45 = v60;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v45, 1, v21) == 1)
          {
            sub_1B8D9207C(v45, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          v46 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
          result = swift_beginAccess();
          if (*(a1 + v46) == 1)
          {
            return sub_1B964C670();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_NewsCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_5_47();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B9522140(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B9522140(uint64_t a1, uint64_t a2)
{
  v131 = type metadata accessor for Searchfoundation_Image(0);
  v4 = MEMORY[0x1EEE9AC00](v131);
  v120 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v123 = &v118 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v7 = MEMORY[0x1EEE9AC00](v130);
  v125 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v126 = &v118 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v118 - v17;
  v141 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v141);
  v133 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v19 = MEMORY[0x1EEE9AC00](v138);
  v122 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v134 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v118 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v119 = (&v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v121 = &v118 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v129 = &v118 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v136 = &v118 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v135 = &v118 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v139 = &v118 - v35;
  v36 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v38);
  v142 = &v118 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v118 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  swift_beginAccess();
  v47 = *(a2 + 16);

  sub_1B8D67B1C(v46, v47);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v50 = *(a1 + 24);
  v51 = *(a1 + 32);
  swift_beginAccess();
  v52 = v50 == *(a2 + 24) && v51 == *(a2 + 32);
  if (!v52 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v53 = *(a1 + 40);
  v54 = *(a1 + 48);
  swift_beginAccess();
  v55 = v53 == *(a2 + 40) && v54 == *(a2 + 48);
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v56 = *(a1 + 56);
  swift_beginAccess();
  if (v56 != *(a2 + 56))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v57 = *(a1 + 57);
  swift_beginAccess();
  if (v57 != *(a2 + 57))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v58 = *(a1 + 58);
  swift_beginAccess();
  if (v58 != *(a2 + 58))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v59 = *(a1 + 64);
  v60 = *(a1 + 72);
  swift_beginAccess();
  v61 = v59 == *(a2 + 64) && v60 == *(a2 + 72);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v62 = *(a1 + 80);
  v63 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v62, v63, *(a2 + 80)))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v64 = *(v38 + 48);
  v65 = v142;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65, 1, v36) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65 + v64, 1, v36);
    v68 = v140;
    v67 = v141;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v65, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v69 = &qword_1EBACB058;
    v70 = &unk_1B96CA9D0;
    v71 = v65;
LABEL_74:
    sub_1B8D9207C(v71, v69, v70);
    goto LABEL_75;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v36) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v72 = v137;
  sub_1B92D6A28();
  if (*&v43[*(v36 + 20)] != *&v72[*(v36 + 20)])
  {

    sub_1B947FDE4();
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v71 = v65;
      v69 = &qword_1EBACB050;
      v70 = &unk_1B96B7BD0;
      goto LABEL_74;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v75 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v65, &qword_1EBACB050, &unk_1B96B7BD0);
  v68 = v140;
  v67 = v141;
  if ((v75 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_30:
  swift_beginAccess();
  v76 = v139;
  sub_1B8D92024();
  swift_beginAccess();
  v77 = *(v138 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v68, 1, v67) == 1)
  {
    sub_1B8D9207C(v76, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v68 + v77, 1, v67) == 1)
    {
      sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v78 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v68 + v77, 1, v67) == 1)
  {
    sub_1B8D9207C(v139, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_35:
    v69 = &qword_1EBACB230;
    v70 = &unk_1B96B8870;
    v71 = v68;
    goto LABEL_74;
  }

  v79 = v133;
  sub_1B92D6A28();
  v80 = static Searchfoundation_RichText.== infix(_:_:)(v78, v79);
  sub_1B92D6AD8();
  sub_1B8D9207C(v139, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v80 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  swift_beginAccess();
  v81 = v136;
  sub_1B8D92024();
  swift_beginAccess();
  v82 = *(v138 + 48);
  v83 = v134;
  sub_1B8D92024();
  v84 = v83;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v83, 1, v67) == 1)
  {
    sub_1B8D9207C(v81, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v83 + v82, 1, v67) == 1)
    {
      sub_1B8D9207C(v83, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v85 = v129;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v84 + v82, 1, v67) == 1)
  {
    sub_1B8D9207C(v136, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_43:
    v69 = &qword_1EBACB230;
    v70 = &unk_1B96B8870;
    v71 = v84;
    goto LABEL_74;
  }

  v86 = v133;
  sub_1B92D6A28();
  v87 = v84;
  v88 = static Searchfoundation_RichText.== infix(_:_:)(v85, v86);
  sub_1B92D6AD8();
  sub_1B8D9207C(v136, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v87, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v88 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_45:
  swift_beginAccess();
  v89 = v132;
  sub_1B8D92024();
  swift_beginAccess();
  v90 = *(v130 + 48);
  v91 = v128;
  sub_1B8D92024();
  sub_1B8D92024();
  v92 = v131;
  if (__swift_getEnumTagSinglePayload(v91, 1, v131) == 1)
  {
    sub_1B8D9207C(v89, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) == 1)
    {
      sub_1B8D9207C(v91, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v93 = v127;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) == 1)
  {
    sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_50:
    v69 = &qword_1EBAB8EB0;
    v70 = &qword_1B964D6B0;
    v71 = v91;
    goto LABEL_74;
  }

  v94 = v123;
  sub_1B92D6A28();
  if (*&v93[*(v92 + 20)] != *&v94[*(v92 + 20)])
  {

    sub_1B94C6890();
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v71 = v91;
LABEL_73:
      v69 = &qword_1EBAB8EA8;
      v70 = &unk_1B96B77D0;
      goto LABEL_74;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v97 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v91, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_54:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v98 = *(v130 + 48);
  v99 = v125;
  sub_1B8D92024();
  v100 = v99;
  sub_1B8D92024();
  v101 = v99;
  v102 = v131;
  if (__swift_getEnumTagSinglePayload(v101, 1, v131) == 1)
  {
    sub_1B8D9207C(v126, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v100 + v98, 1, v102) == 1)
    {
      sub_1B8D9207C(v100, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v103 = v124;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v100 + v98, 1, v102) == 1)
  {
    sub_1B8D9207C(v126, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_59:
    v69 = &qword_1EBAB8EB0;
    v70 = &qword_1B964D6B0;
    v71 = v100;
    goto LABEL_74;
  }

  v104 = v120;
  sub_1B92D6A28();
  if (*&v103[*(v102 + 20)] != *&v104[*(v102 + 20)])
  {

    sub_1B94C6890();
    v106 = v105;

    if ((v106 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v126, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v71 = v125;
      goto LABEL_73;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v107 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v126, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v125, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v107 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_63:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v108 = *(v138 + 48);
  v109 = v122;
  sub_1B8D92024();
  sub_1B8D92024();
  v110 = v141;
  if (__swift_getEnumTagSinglePayload(v109, 1, v141) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v109 + v108, 1, v110) == 1)
    {
      sub_1B8D9207C(v121, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B92D6AD8();
      goto LABEL_69;
    }

    v111 = v122;
    v112 = v133;
    sub_1B92D6A28();
    v113 = static Searchfoundation_RichText.== infix(_:_:)(v119, v112);
    sub_1B92D6AD8();
    sub_1B8D9207C(v121, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    sub_1B8D9207C(v111, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v113)
    {
      goto LABEL_71;
    }

LABEL_75:

    v116 = 0;
    return v116 & 1;
  }

  sub_1B8D9207C(v121, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v109 + v108, 1, v110) != 1)
  {
LABEL_69:
    v69 = &qword_1EBACB230;
    v70 = &unk_1B96B8870;
    v71 = v122;
    goto LABEL_74;
  }

  sub_1B8D9207C(v122, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_71:
  v114 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v114) = *(a1 + v114);

  v115 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v115) = *(a2 + v115);

  v116 = v114 ^ v115 ^ 1;
  return v116 & 1;
}

uint64_t Searchfoundation_NewsCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_NewsCardSection(0);
  sub_1B8CD3578(&qword_1EBAD0190, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95238FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3578(&qword_1EBAD01A8, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952397C(uint64_t a1)
{
  v2 = sub_1B8CD3578(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95239EC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3578(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection, protocol conformance descriptor for Searchfoundation_NewsCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9523BB4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9523C40(uint64_t a1)
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v2 <= 0x3F)
    {
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_45()
{
  type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  type metadata accessor for Searchfoundation_NewsCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_22_27()
{
  type metadata accessor for Searchfoundation_NewsCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_NowPlayingCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v2;
  v3 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_NowPlayingCardSection(uint64_t a1)
{
  result = qword_1ED9F0BC8;
  if (!qword_1ED9F0BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_NowPlayingCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_NowPlayingCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  sub_1B92C7198(v1 + *(v6 + 64), v2);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a1 + v10) = qword_1ED9CD1C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B95243FC(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v4);
  return Searchfoundation_NowPlayingCardSection.backgroundColor.setter(v4);
}

uint64_t Searchfoundation_NowPlayingCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_NowPlayingCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 64);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_NowPlayingCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  sub_1B92C7198(v0 + *(v4 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_NowPlayingCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_NowPlayingCardSection.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.movies.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_NowPlayingCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B9524A54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD01B0);
  __swift_project_value_buffer(v0, qword_1EBAD01B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "movies";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_NowPlayingCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8620 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD01B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_NowPlayingCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B952505C(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v14, v15, v16, v17);
        break;
      case 9:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B95250FC(v18, v19, v20, v21);
        break;
      default:
        if (result == 51 || result == 52)
        {
LABEL_13:
          sub_1B964C530();
        }

        else if (result == 101)
        {
          v10 = OUTLINED_FUNCTION_9();
          sub_1B95251B0(v10, v11, v12, v13);
        }

        break;
    }
  }
}

uint64_t sub_1B952505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9525DE4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95250FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9525DE4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B95251B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_MediaItem(0);
  sub_1B9525DE4(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);
  return sub_1B964C570();
}

uint64_t Searchfoundation_NowPlayingCardSection.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v32 = v1;
    type metadata accessor for Searchfoundation_Punchout(0);
    OUTLINED_FUNCTION_14_24();
    sub_1B9525DE4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v2)
    {
      return result;
    }

    v3 = v32;
  }

  OUTLINED_FUNCTION_1();
  if (!v15 || (result = OUTLINED_FUNCTION_6_32(v13, v14, 2), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = OUTLINED_FUNCTION_6_32(v16, v17, 3), !v2))
    {
      if (*(v3 + 40) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 4), !v2))
      {
        if (*(v3 + 41) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 5), !v2))
        {
          if (*(v3 + 42) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 6), !v2))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_6_32(v19, v20, 7), !v2))
            {
              v22 = v2;
              if (*(v3 + 64))
              {
                v23 = *(v3 + 72);
                v30 = *(v3 + 64);
                v31 = v23;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v2)
                {
                  return result;
                }

                v22 = 0;
              }

              v32 = type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
              sub_1B92C7198(v3 + *(v32 + 64), v7);
              if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
              {
                sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
                v2 = v22;
              }

              else
              {
                sub_1B92C8908(v7, v11);
                sub_1B9525DE4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v11);
                if (v2)
                {
                  return result;
                }
              }

              OUTLINED_FUNCTION_1();
              if (!v26 || (result = OUTLINED_FUNCTION_6_32(v24, v25, 51), !v2))
              {
                OUTLINED_FUNCTION_1();
                if (!v29 || (result = OUTLINED_FUNCTION_6_32(v27, v28, 52), !v2))
                {
                  if (!*(*(v3 + 112) + 16))
                  {
                    return sub_1B964C290();
                  }

                  type metadata accessor for Searchfoundation_MediaItem(0);
                  OUTLINED_FUNCTION_14_24();
                  sub_1B9525DE4(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem, protocol conformance descriptor for Searchfoundation_MediaItem);
                  OUTLINED_FUNCTION_5_34();
                  result = sub_1B964C730();
                  if (!v2)
                  {
                    return sub_1B964C290();
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

uint64_t static Searchfoundation_NowPlayingCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  sub_1B8D67B1C(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v16 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_28;
  }

  v17 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection(0) + 64);
  v18 = *(v11 + 48);
  sub_1B92C7198(v1 + v17, v2);
  sub_1B92C7198(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v3) != 1)
  {
    sub_1B92C7198(v2, v10);
    if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v18, v6);
      if (*&v10[*(v3 + 20)] == *&v6[*(v3 + 20)] || (, , sub_1B947FDE4(), v26 = v25, , , (v26 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_76();
        sub_1B9525DE4(v27, v28, MEMORY[0x1E69AAC10]);
        v29 = sub_1B964C850();
        sub_1B92C89D0(v6);
        sub_1B92C89D0(v10);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v6);
      sub_1B92C89D0(v10);
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_28;
    }

    sub_1B92C89D0(v10);
LABEL_26:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v30 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (v30 || (sub_1B964C9F0() & 1) != 0)
  {
    v31 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
    if (v31 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B8D6E1DC(*(v1 + 112), *(v0 + 112));
      if (v32)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_76();
        sub_1B9525DE4(v33, v34, MEMORY[0x1E69AAC10]);
        v23 = sub_1B964C850();
        return v23 & 1;
      }
    }
  }

LABEL_28:
  v23 = 0;
  return v23 & 1;
}

uint64_t Searchfoundation_NowPlayingCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_NowPlayingCardSection(0);
  sub_1B9525DE4(&qword_1EBAD01C8, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9525B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9525DE4(&qword_1EBAD01E0, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9525BAC(uint64_t a1)
{
  v2 = sub_1B9525DE4(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9525C1C(uint64_t a1, uint64_t a2)
{
  sub_1B9525DE4(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection, protocol conformance descriptor for Searchfoundation_NowPlayingCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9525DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.getter()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
  }

  OUTLINED_FUNCTION_4_22();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
  }

  OUTLINED_FUNCTION_4_22();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9525FE4()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8668;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8668 != -1)
    {
      OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumType.getter()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumType()()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29(&qword_1EBAB8668);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.getter()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19(&qword_1EBAB8670);
  }

  OUTLINED_FUNCTION_4_22();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_36_4(v2);
  return v4 & 1;
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.setter(char a1)
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19(&qword_1EBAB8670);
  }

  OUTLINED_FUNCTION_4_22();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA970]);
  return OUTLINED_FUNCTION_35_5(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, *&v14[4], v14[6], a1 & 1);
}

uint64_t (*Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.modify(void *a1))()
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19(&qword_1EBAB8670);
  }

  *(v1 + 8) = qword_1EBAD0240;
  OUTLINED_FUNCTION_4_22();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4D314;
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumSkip.getter()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19(&qword_1EBAB8670);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumSkip()()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19(&qword_1EBAB8670);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.getter()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
  }

  OUTLINED_FUNCTION_4_22();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
  }

  OUTLINED_FUNCTION_4_22();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9526624()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8678;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8678 != -1)
    {
      OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcFacadeEnumPrefix.getter()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcFacadeEnumPrefix()()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42(&qword_1EBAB8678);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.getter()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
  }

  OUTLINED_FUNCTION_4_22();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
  }

  OUTLINED_FUNCTION_4_22();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95269CC()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8680;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8680 != -1)
    {
      OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumPrefix.getter()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumPrefix()()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45(&qword_1EBAB8680);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.getter()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
  }

  OUTLINED_FUNCTION_3_23();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
  }

  OUTLINED_FUNCTION_3_23();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AAA10]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9526D74()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB86B8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_3_23();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AAA10]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB86B8 != -1)
    {
      OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_3_23();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AAA10]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumValueOptions.hasSearchfoundation_stringValue.getter()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumValueOptions.clearSearchfoundation_stringValue()()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46(&qword_1EBAB86B8);
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.getter()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
  }

  OUTLINED_FUNCTION_1_33();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Searchfoundation_objcType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B952711C()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8630;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8630 != -1)
    {
      OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FieldOptions.hasSearchfoundation_objcType.getter()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearSearchfoundation_objcType()()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43(&qword_1EBAB8630);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.getter()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
  }

  OUTLINED_FUNCTION_1_33();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95274C4()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8638;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8638 != -1)
    {
      OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FieldOptions.hasSearchfoundation_objcAttr.getter()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearSearchfoundation_objcAttr()()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48(&qword_1EBAB8638);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.getter()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B952786C()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8688;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8688 != -1)
    {
      OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcFacadePrefix.getter()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcFacadePrefix()()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28(&qword_1EBAB8688);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.getter()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcFramework.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9527C14()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8690;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8690 != -1)
    {
      OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcFramework.getter()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcFramework()()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28(&qword_1EBAB8690);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.getter()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcPackage.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9527FBC()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8698;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8698 != -1)
    {
      OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcPackage.getter()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcPackage()()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29(&qword_1EBAB8698);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.getter()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9528364()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB86A0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB86A0 != -1)
    {
      OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcEnumNaming.getter()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcEnumNaming()()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35(&qword_1EBAB86A0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.getter()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28(&qword_1EBAB86A8);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_36_4(v2);
  return v4 & 1;
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.setter(char a1)
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28(&qword_1EBAB86A8);
  }

  OUTLINED_FUNCTION_0_39();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA988]);
  return OUTLINED_FUNCTION_35_5(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, *&v14[4], v14[6], a1 & 1);
}

uint64_t (*Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.modify(void *a1))()
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28(&qword_1EBAB86A8);
  }

  *(v1 + 8) = qword_1EBAD0278;
  OUTLINED_FUNCTION_0_39();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4F57C;
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcUseArc.getter()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28(&qword_1EBAB86A8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcUseArc()()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28(&qword_1EBAB86A8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.getter()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95289A4()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB86B0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB86B0 != -1)
    {
      OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcClassPrefix.getter()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcClassPrefix()()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27(&qword_1EBAB86B0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.getter()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9528D4C()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8640;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8640 != -1)
    {
      OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgSuperclass.getter()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgSuperclass()()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33(&qword_1EBAB8640);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.getter()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95290F4()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8648;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8648 != -1)
    {
      OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgType.getter()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgType()()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37(&qword_1EBAB8648);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.getter()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27(&qword_1EBAB8650);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_36_4(v2);
  return v4 & 1;
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.setter(char a1)
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27(&qword_1EBAB8650);
  }

  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA9F0]);
  return OUTLINED_FUNCTION_35_5(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, *&v14[4], v14[6], a1 & 1);
}

uint64_t (*Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.modify(void *a1))()
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27(&qword_1EBAB8650);
  }

  *(v1 + 8) = qword_1EBAD0220;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4F57C;
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgSkip.getter()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27(&qword_1EBAB8650);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgSkip()()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27(&qword_1EBAB8650);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.getter()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9529734()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8658;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8658 != -1)
    {
      OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcFacadeMsgPrefix.getter()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcFacadeMsgPrefix()()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41(&qword_1EBAB8658);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.getter()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9529ADC()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB8660;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB8660 != -1)
    {
      OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgPrefix.getter()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgPrefix()()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39(&qword_1EBAB8660);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t sub_1B9529CE4()
{
  v0 = sub_1B964C320();
  __swift_allocate_value_buffer(v0, qword_1EBAD01E8);
  __swift_project_value_buffer(v0, qword_1EBAD01E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF780, &unk_1B968F160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B96511A0;
  if (qword_1EBAB8630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBAD0200;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  *(v1 + 56) = v3;
  v4 = sub_1B8F4F528(&qword_1EBABF7A0, &qword_1EBABF798, &qword_1B966F858);
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = qword_1EBAB8638;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBAD0208;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v6;
  v7 = qword_1EBAB8640;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBAD0210;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 136) = v9;
  v10 = sub_1B8F4F528(&qword_1EBABF7D0, &qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 144) = v10;
  *(v1 + 112) = v8;
  v11 = qword_1EBAB8648;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBAD0218;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = v12;
  v13 = qword_1EBAB8650;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBAD0220;
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 224) = sub_1B8F4F528(&qword_1EBABF7B0, &qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 192) = v14;
  v15 = qword_1EBAB8658;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBAD0228;
  *(v1 + 256) = v9;
  *(v1 + 264) = v10;
  *(v1 + 232) = v16;
  v17 = qword_1EBAB8660;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBAD0230;
  *(v1 + 296) = v9;
  *(v1 + 304) = v10;
  *(v1 + 272) = v18;
  v19 = qword_1EBAB8668;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBAD0238;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 336) = v21;
  v22 = sub_1B8F4F528(&qword_1EBABF7E0, &qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 344) = v22;
  *(v1 + 312) = v20;
  v23 = qword_1EBAB8670;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBAD0240;
  *(v1 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0290, &unk_1B96D59C0);
  *(v1 + 384) = sub_1B8F4F528(&qword_1EBAD0298, &qword_1EBAD0290, &unk_1B96D59C0);
  *(v1 + 352) = v24;
  v25 = qword_1EBAB8678;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBAD0248;
  *(v1 + 416) = v21;
  *(v1 + 424) = v22;
  *(v1 + 392) = v26;
  v27 = qword_1EBAB8680;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBAD0250;
  *(v1 + 456) = v21;
  *(v1 + 464) = v22;
  *(v1 + 432) = v28;
  v29 = qword_1EBAB8688;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBAD0258;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 496) = v31;
  v32 = sub_1B8F4F528(&qword_1EBABF7F0, &qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 504) = v32;
  *(v1 + 472) = v30;
  v33 = qword_1EBAB8690;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBAD0260;
  *(v1 + 536) = v31;
  *(v1 + 544) = v32;
  *(v1 + 512) = v34;
  v35 = qword_1EBAB8698;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBAD0268;
  *(v1 + 576) = v31;
  *(v1 + 584) = v32;
  *(v1 + 552) = v36;
  v37 = qword_1EBAB86A0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBAD0270;
  *(v1 + 616) = v31;
  *(v1 + 624) = v32;
  *(v1 + 592) = v38;
  v39 = qword_1EBAB86A8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBAD0278;
  *(v1 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 664) = sub_1B8F4F528(&qword_1EBABF800, &qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 632) = v40;
  v41 = qword_1EBAB86B0;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1EBAD0280;
  *(v1 + 696) = v31;
  *(v1 + 704) = v32;
  *(v1 + 672) = v42;
  v43 = qword_1EBAB86B8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_1EBAD0288;
  *(v1 + 736) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 744) = sub_1B8F4F528(&qword_1EBABF7C0, &qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 712) = v44;

  return sub_1B964C310();
}

uint64_t Searchfoundation_Options_Extensions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8628 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C320();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD01E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B952A4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0200 = result;
  return result;
}

uint64_t sub_1B952A56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0208 = result;
  return result;
}

uint64_t sub_1B952A5F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0210 = result;
  return result;
}

uint64_t sub_1B952A684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0218 = result;
  return result;
}

uint64_t sub_1B952A710()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0220 = result;
  return result;
}

uint64_t sub_1B952A79C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0228 = result;
  return result;
}

uint64_t sub_1B952A828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0230 = result;
  return result;
}

uint64_t sub_1B952A8B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0238 = result;
  return result;
}

uint64_t sub_1B952A940()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0290, &unk_1B96D59C0);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0240 = result;
  return result;
}

uint64_t sub_1B952A9CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0248 = result;
  return result;
}

uint64_t sub_1B952AA58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0250 = result;
  return result;
}

uint64_t sub_1B952AAE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0258 = result;
  return result;
}

uint64_t sub_1B952AB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0260 = result;
  return result;
}

uint64_t sub_1B952ABFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0268 = result;
  return result;
}

uint64_t sub_1B952AC88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0270 = result;
  return result;
}

uint64_t sub_1B952AD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0278 = result;
  return result;
}

uint64_t sub_1B952ADA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0280 = result;
  return result;
}

uint64_t sub_1B952AE2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0288 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_48(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t a1)
{

  return swift_once();
}

uint64_t Searchfoundation_PersonHeaderCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection(0) + 20);
  v4 = type metadata accessor for Searchfoundation_Person(0);

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_PersonHeaderCardSection(uint64_t a1)
{
  result = qword_1ED9F06D8;
  if (!qword_1ED9F06D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PersonHeaderCardSection.person.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_49();
  sub_1B9495798(v1 + *(v6 + 20), v2);
  v7 = type metadata accessor for Searchfoundation_Person(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1B9495808(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = v8;
  a1[7] = v8;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  return result;
}

uint64_t sub_1B952B2A8(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9495BB8(a1, v4);
  return Searchfoundation_PersonHeaderCardSection.person.setter(v4);
}

uint64_t Searchfoundation_PersonHeaderCardSection.person.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection(0) + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
  sub_1B9495808(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_PersonHeaderCardSection.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection(0) + 20);
  *(v3 + 10) = v10;
  sub_1B9495798(v1 + v10, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v12 = MEMORY[0x1E69E7CC0];
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v9[6] = v12;
    v9[7] = v12;
    v9[8] = 0;
    v9[9] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_117(v6);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    sub_1B9495808(v6, v9);
  }

  return sub_1B9495AD8;
}

BOOL Searchfoundation_PersonHeaderCardSection.hasPerson.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_5_49();
  sub_1B9495798(v0 + *(v4 + 20), v1);
  v5 = type metadata accessor for Searchfoundation_Person(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1B8D9207C(v1, &qword_1EBACC5A8, &unk_1B96CD450);
  return v6;
}

Swift::Void __swiftcall Searchfoundation_PersonHeaderCardSection.clearPerson()()
{
  v1 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection(0) + 20);
  sub_1B8D9207C(v0 + v1, &qword_1EBACC5A8, &unk_1B96CD450);
  v2 = type metadata accessor for Searchfoundation_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_PersonHeaderCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Searchfoundation_PersonHeaderCardSection.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B952B728()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD02A0);
  __swift_project_value_buffer(v0, qword_1EBAD02A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 51;
  *v4 = "person";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PersonHeaderCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD02A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PersonHeaderCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      sub_1B952B9A4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B952B9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B952C1F8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  return sub_1B964C580();
}

uint64_t Searchfoundation_PersonHeaderCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  sub_1B9495798(v2 + *(v12 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  else
  {
    sub_1B9495808(v7, v11);
    sub_1B952C1F8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
    sub_1B964C740();
    result = sub_1B9495C1C(v11);
    if (v3)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_PersonHeaderCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection(0) + 20);
  v16 = *(v11 + 56);
  sub_1B9495798(a1 + v15, v14);
  sub_1B9495798(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_117(v14);
  if (v17)
  {
    OUTLINED_FUNCTION_117(&v14[v16]);
    if (v17)
    {
      sub_1B8D9207C(v14, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_12:
      sub_1B964C2B0();
      sub_1B952C1F8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1B964C850();
      return v18 & 1;
    }

    goto LABEL_9;
  }

  sub_1B9495798(v14, v10);
  OUTLINED_FUNCTION_117(&v14[v16]);
  if (v17)
  {
    sub_1B9495C1C(v10);
LABEL_9:
    sub_1B8D9207C(v14, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_10;
  }

  sub_1B9495808(&v14[v16], v6);
  v19 = static Searchfoundation_Person.== infix(_:_:)(v10, v6);
  sub_1B9495C1C(v6);
  sub_1B9495C1C(v10);
  sub_1B8D9207C(v14, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

uint64_t Searchfoundation_PersonHeaderCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  sub_1B952C1F8(&qword_1EBAD02B8, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952C1F8(&qword_1EBAD02D0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952BFC0(uint64_t a1)
{
  v2 = sub_1B952C1F8(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952C030(uint64_t a1, uint64_t a2)
{
  sub_1B952C1F8(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, protocol conformance descriptor for Searchfoundation_PersonHeaderCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B952C1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
}

uint64_t Searchfoundation_Person.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  a1[6] = MEMORY[0x1E69E7CC0];
  a1[7] = v1;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_Person(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Searchfoundation_Person(uint64_t a1)
{
  result = qword_1ED9F9710;
  if (!qword_1ED9F9710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_Person.personIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Person.displayName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Person.phoneNumbers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Searchfoundation_Person.emailAddresses.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Searchfoundation_Person.photosIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_Person.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_Person(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_Person.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Person(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B952C704()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD02D8);
  __swift_project_value_buffer(v0, qword_1EBAD02D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "personIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "phoneNumbers";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "emailAddresses";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_Person._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD02D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_Person.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_1B964C530();
        break;
      case 4:
      case 5:
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_Person.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), !v2))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), !v2))
      {
        v13 = *(v1 + 48);
        if (!*(v13 + 16) || (result = OUTLINED_FUNCTION_4_58(v13, 4), !v2))
        {
          v14 = *(v1 + 56);
          if (!*(v14 + 16) || (result = OUTLINED_FUNCTION_4_58(v14, 5), !v2))
          {
            OUTLINED_FUNCTION_1();
            if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 6), !v2))
            {
              type metadata accessor for Searchfoundation_Person(0);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Person.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(a1[6], a2[6]) & 1) == 0 || (sub_1B8D6123C(a1[7], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_Person(0);
  sub_1B964C2B0();
  sub_1B8CD35C0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_Person.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B8CD35C0(&qword_1EBAD02F0, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD35C0(&qword_1EBAD0308, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952CEE8(uint64_t a1)
{
  v2 = sub_1B8CD35C0(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952CF58(uint64_t a1, uint64_t a2)
{
  sub_1B8CD35C0(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);

  return sub_1B964C5D0();
}

void sub_1B952D120(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_58(uint64_t a1, uint64_t a2)
{

  return sub_1B964C6E0();
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfEmbeddingMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfMetadataMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosAggregatedInfo(uint64_t a1)
{
  result = qword_1EBAD0350;
  if (!qword_1EBAD0350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952D49C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0310);
  __swift_project_value_buffer(v0, qword_1EBAD0310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "totalNumberOfAssets";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfEmbeddingMatchedAssets";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfMetadataMatchedAssets";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosAggregatedInfo._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v13 = OUTLINED_FUNCTION_9();
        sub_1B952D8A8(v13, v14, v15, v16);
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B952D840(v9, v10, v11, v12);
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_9();
        sub_1B952D7D8(v5, v6, v7, v8);
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.traverse<A>(visitor:)(uint64_t result, uint64_t a2)
{
  if (!*v2 || (v4 = *(v2 + 8), v11 = *v2, v12 = v4, v5 = sub_1B952DD64(), v6 = OUTLINED_FUNCTION_3_31(&v11, 1, &type metadata for Searchfoundation_PhotosRetrievalBucket, v5), !v3))
  {
    if (!v2[2] || (v7 = *(v2 + 24), v11 = v2[2], v12 = v7, v8 = sub_1B952DD64(), v6 = OUTLINED_FUNCTION_3_31(&v11, 2, &type metadata for Searchfoundation_PhotosRetrievalBucket, v8), !v3))
    {
      if (!v2[4] || (v9 = *(v2 + 40), v11 = v2[4], v12 = v9, v10 = sub_1B952DD64(), v6 = OUTLINED_FUNCTION_3_31(&v11, 3, &type metadata for Searchfoundation_PhotosRetrievalBucket, v10), !v3))
      {
        type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0);
        return sub_1B964C290();
      }
    }
  }

  return v6;
}

uint64_t static Searchfoundation_PhotosAggregatedInfo.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  if (!sub_1B8D92198(*a1, *(a1 + 8), *a2) || !sub_1B8D92198(*(a1 + 16), *(a1 + 24), a2[2]) || !sub_1B8D92198(*(a1 + 32), *(a1 + 40), a2[4]))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0);
  sub_1B964C2B0();
  sub_1B8CD3608(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosAggregatedInfo(0);
  sub_1B8CD3608(&qword_1EBAD0330, type metadata accessor for Searchfoundation_PhotosAggregatedInfo, protocol conformance descriptor for Searchfoundation_PhotosAggregatedInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952DBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3608(&qword_1EBAD0360, type metadata accessor for Searchfoundation_PhotosAggregatedInfo, protocol conformance descriptor for Searchfoundation_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952DC74(uint64_t a1)
{
  v2 = sub_1B8CD3608(&qword_1EBAD0340, type metadata accessor for Searchfoundation_PhotosAggregatedInfo, protocol conformance descriptor for Searchfoundation_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952DCE4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3608(&qword_1EBAD0340, type metadata accessor for Searchfoundation_PhotosAggregatedInfo, protocol conformance descriptor for Searchfoundation_PhotosAggregatedInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B952DD64()
{
  result = qword_1EBAD0328;
  if (!qword_1EBAD0328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosRetrievalBucket, &type metadata for Searchfoundation_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0328);
  }

  return result;
}

uint64_t sub_1B952DF00(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void Searchfoundation_PhotosAttributes.photosSuggestionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_PhotosAttributes.photosSuggestionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAttributes.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAttributes(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosAttributes(uint64_t a1)
{
  result = qword_1EBAD03A8;
  if (!qword_1EBAD03A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosAttributes.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAttributes(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Searchfoundation_PhotosAttributes(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952E2AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0368);
  __swift_project_value_buffer(v0, qword_1EBAD0368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positionIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isEmbeddingMatched";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMetadataMatched";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isVideo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isFavorite";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosSuggestionType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosAttributes._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PhotosAttributes.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B964C560();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        sub_1B964C400();
        break;
      case 6:
        sub_1B952E6EC(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PhotosAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), (v5 = v4) == 0))
  {
    if (*(v3 + 8) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v5 = v4) == 0))
    {
      if (*(v3 + 9) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v5 = v4) == 0))
      {
        if (*(v3 + 10) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v5 = v4) == 0))
        {
          if (*(v3 + 11) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v5 = v4) == 0))
          {
            if (!*(v3 + 16) || (sub_1B952EC14(), result = sub_1B964C680(), !v5))
            {
              type metadata accessor for Searchfoundation_PhotosAttributes(0);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || !sub_1B8D92198(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PhotosAttributes(0);
  sub_1B964C2B0();
  sub_1B8CD3650(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_PhotosAttributes.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosAttributes(0);
  sub_1B8CD3650(&qword_1EBAD0388, type metadata accessor for Searchfoundation_PhotosAttributes, protocol conformance descriptor for Searchfoundation_PhotosAttributes);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952EAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3650(&qword_1EBAD03B8, type metadata accessor for Searchfoundation_PhotosAttributes, protocol conformance descriptor for Searchfoundation_PhotosAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952EB24(uint64_t a1)
{
  v2 = sub_1B8CD3650(&qword_1EBAD0398, type metadata accessor for Searchfoundation_PhotosAttributes, protocol conformance descriptor for Searchfoundation_PhotosAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952EB94(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3650(&qword_1EBAD0398, type metadata accessor for Searchfoundation_PhotosAttributes, protocol conformance descriptor for Searchfoundation_PhotosAttributes);

  return sub_1B964C5D0();
}

unint64_t sub_1B952EC14()
{
  result = qword_1EBAD0380;
  if (!qword_1EBAD0380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosSuggestionType, &type metadata for Searchfoundation_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAD0380);
  }

  return result;
}

uint64_t sub_1B952EDB0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_PhotosLibraryBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xB;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B952EE8C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosLibraryBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B952EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95302A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosLibraryBucket.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD03C0 = a1;
}

uint64_t sub_1B952F008@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosLibraryBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsIndexed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsInLibrary.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfEmbeddingMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfMetadataMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.assetEstimationOffAmount.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosRankingInfo(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosRankingInfo(uint64_t a1)
{
  result = qword_1EBAD0448;
  if (!qword_1EBAD0448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosRankingInfo(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosRankingInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  type metadata accessor for Searchfoundation_PhotosRankingInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952F35C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD03C8);
  __swift_project_value_buffer(v0, qword_1EBAD03C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "PhotosLibraryBucketUnknown";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "PhotosLibraryBucket500OrLess";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosLibraryBucket500To2K";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosLibraryBucket2KTo5K";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosLibraryBucket5KTo10K";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosLibraryBucket10KTo20K";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosLibraryBucket20KTo30K";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosLibraryBucket30KTo40K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosLibraryBucket40KTo50K";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosLibraryBucket50KTo100K";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosLibraryBucketMoreThan100K";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B952F77C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD03E0);
  __swift_project_value_buffer(v0, qword_1EBAD03E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "totalNumberOfAssetsIndexed";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfAssetsInLibrary";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfEmbeddingMatchedAssets";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalNumberOfMetadataMatchedAssets";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetEstimationOffAmount";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PhotosRankingInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_9();
        sub_1B952FAE4(v5, v6, v7, v8);
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_9();
        sub_1B952FB4C(v21, v22, v23, v24);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_9();
        sub_1B952D8A8(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_9();
        sub_1B952FBB4(v17, v18, v19, v20);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B952FC1C(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PhotosRankingInfo.traverse<A>(visitor:)(uint64_t a1)
{
  if (!*v1 || (OUTLINED_FUNCTION_94_4(), v3 = sub_1B95302A8(), result = OUTLINED_FUNCTION_3_31(v9, 1, &type metadata for Searchfoundation_PhotosLibraryBucket, v3), !v2))
  {
    if (!v1[2] || (OUTLINED_FUNCTION_94_4(), v5 = sub_1B95302A8(), result = OUTLINED_FUNCTION_3_31(v9, 2, &type metadata for Searchfoundation_PhotosLibraryBucket, v5), !v2))
    {
      if (!v1[4] || (OUTLINED_FUNCTION_94_4(), v6 = sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(v9, 3, &type metadata for Searchfoundation_PhotosRetrievalBucket, v6), !v2))
      {
        if (!v1[6] || (OUTLINED_FUNCTION_94_4(), v7 = sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(v9, 4, &type metadata for Searchfoundation_PhotosRetrievalBucket, v7), !v2))
        {
          if (!v1[8] || (OUTLINED_FUNCTION_94_4(), v8 = sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(v9, 5, &type metadata for Searchfoundation_PhotosRetrievalBucket, v8), !v2))
          {
            type metadata accessor for Searchfoundation_PhotosRankingInfo(0);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosRankingInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v4 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v4 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = a1[2];
    v7 = a2[2];
    if (*(a2 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        case 10:
          if (v6 != 10)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      if (sub_1B8D92198(a1[4], *(a1 + 40), a2[4]) && sub_1B8D92198(a1[6], *(a1 + 56), a2[6]) && sub_1B8D92198(a1[8], *(a1 + 72), a2[8]))
      {
        type metadata accessor for Searchfoundation_PhotosRankingInfo(0);
        sub_1B964C2B0();
        sub_1B8CD3698(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        return sub_1B964C850() & 1;
      }
    }
  }

  return 0;
}

uint64_t Searchfoundation_PhotosRankingInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosRankingInfo(0);
  sub_1B8CD3698(&qword_1EBAD0400, type metadata accessor for Searchfoundation_PhotosRankingInfo, protocol conformance descriptor for Searchfoundation_PhotosRankingInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9530138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3698(&qword_1EBAD0458, type metadata accessor for Searchfoundation_PhotosRankingInfo, protocol conformance descriptor for Searchfoundation_PhotosRankingInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95301B8(uint64_t a1)
{
  v2 = sub_1B8CD3698(&qword_1EBAD0438, type metadata accessor for Searchfoundation_PhotosRankingInfo, protocol conformance descriptor for Searchfoundation_PhotosRankingInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9530228(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3698(&qword_1EBAD0438, type metadata accessor for Searchfoundation_PhotosRankingInfo, protocol conformance descriptor for Searchfoundation_PhotosRankingInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B95302A8()
{
  result = qword_1EBAD03F8;
  if (!qword_1EBAD03F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosLibraryBucket, &type metadata for Searchfoundation_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAD03F8);
  }

  return result;
}

unint64_t sub_1B9530300()
{
  result = qword_1EBAD0408;
  if (!qword_1EBAD0408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosLibraryBucket, &type metadata for Searchfoundation_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0408);
  }

  return result;
}

unint64_t sub_1B9530358()
{
  result = qword_1EBAD0410;
  if (!qword_1EBAD0410)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosLibraryBucket, &type metadata for Searchfoundation_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0410);
  }

  return result;
}

unint64_t sub_1B95303B0()
{
  result = qword_1EBAD0418;
  if (!qword_1EBAD0418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosLibraryBucket, &type metadata for Searchfoundation_PhotosLibraryBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0418);
  }

  return result;
}

unint64_t sub_1B9530408()
{
  result = qword_1EBAD0420;
  if (!qword_1EBAD0420)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0428, &qword_1B96D6188);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0420);
  }

  return result;
}

uint64_t sub_1B95305C4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_PhotosRetrievalBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xF;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9530698@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosRetrievalBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95306CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952DD64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosRetrievalBucket.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0460 = a1;
}

uint64_t sub_1B9530814@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosRetrievalBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B953083C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0468);
  __swift_project_value_buffer(v0, qword_1EBAD0468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "PhotosRetrievalBucketUnknown";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 1;
  *v8 = "PhotosRetrievalBucket10OrLess";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosRetrievalBucket10To50";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosRetrievalBucket50To100";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosRetrievalBucket100To250";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosRetrievalBucket250To500";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosRetrievalBucket500To2K";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosRetrievalBucket2KTo5K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosRetrievalBucket5KTo10K";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosRetrievalBucket10KTo20K";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosRetrievalBucket20KTo30K";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PhotosRetrievalBucket30KTo40K";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PhotosRetrievalBucket40KTo50K";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PhotosRetrievalBucket50KTo100K";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PhotosRetrievalBucketMoreThan100K";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosRetrievalBucket._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9530DA8()
{
  result = qword_1EBAD0480;
  if (!qword_1EBAD0480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosRetrievalBucket, &type metadata for Searchfoundation_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0480);
  }

  return result;
}

unint64_t sub_1B9530E00()
{
  result = qword_1EBAD0488;
  if (!qword_1EBAD0488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosRetrievalBucket, &type metadata for Searchfoundation_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0488);
  }

  return result;
}

unint64_t sub_1B9530E58()
{
  result = qword_1EBAD0490;
  if (!qword_1EBAD0490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosRetrievalBucket, &type metadata for Searchfoundation_PhotosRetrievalBucket, v0, v1);
    atomic_store(result, &qword_1EBAD0490);
  }

  return result;
}

unint64_t sub_1B9530EB0()
{
  result = qword_1EBAD0498;
  if (!qword_1EBAD0498)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD04A0, &qword_1B96D64F8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0498);
  }

  return result;
}

unint64_t Searchfoundation_PhotosSuggestionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}