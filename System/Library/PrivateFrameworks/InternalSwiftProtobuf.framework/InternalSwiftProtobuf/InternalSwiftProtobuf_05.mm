double sub_1AC4A084C(_OWORD *a1)
{
  v4[0] = *a1;
  *(v4 + 14) = *(a1 + 14);
  sub_1AC4AEF40(v4, &v3);
  return Google_Protobuf_ServiceOptions.features.setter(a1);
}

double Google_Protobuf_ServiceOptions.features.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_46_1(a1);
  v1 = OUTLINED_FUNCTION_60_1();
  *&result = OUTLINED_FUNCTION_25_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t Google_Protobuf_ServiceOptions.features.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_68_0();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

Swift::Void __swiftcall Google_Protobuf_ServiceOptions.clearFeatures()()
{
  v1 = OUTLINED_FUNCTION_68_0();
  sub_1AC485714(v1, v2, v3);
  v0[4] = 0;
  v0[5] = 0;
  *(v0 + 54) = 0;
  v0[6] = 0;
}

uint64_t (*Google_Protobuf_ServiceOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 62) & 1;
  return sub_1AC4A0A38;
}

uint64_t Google_Protobuf_ServiceOptions.uninterpretedOption.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

void Google_Protobuf_ServiceOptions.unknownFields.setter()
{
  OUTLINED_FUNCTION_277();
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
}

uint64_t Google_Protobuf_ServiceOptions._protobuf_extensionFieldValues.setter()
{
  result = OUTLINED_FUNCTION_386();
  *(v1 + 24) = v0;
  return result;
}

uint64_t (*Google_Protobuf_MethodOptions.idempotencyLevel.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 33));
  return j__OUTLINED_FUNCTION_256;
}

uint64_t _s21InternalSwiftProtobuf07Google_C12_EnumOptionsV8featuresAA0d1_C11_FeatureSetVvg_0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_181(*(v1 + 64) | (*(v1 + 68) << 32), a1);
  }

  else
  {
    OUTLINED_FUNCTION_180(a1);
  }

  return OUTLINED_FUNCTION_14_6(v5, v2, v3, v4);
}

double _s21InternalSwiftProtobuf07Google_C12_EnumOptionsV8featuresAA0d1_C11_FeatureSetVvs_0(uint64_t a1)
{
  OUTLINED_FUNCTION_46_1(a1);
  v1 = OUTLINED_FUNCTION_60_1();
  *&result = OUTLINED_FUNCTION_25_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t Google_Protobuf_MethodOptions.features.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_21_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

void _s21InternalSwiftProtobuf07Google_C12_EnumOptionsV13clearFeaturesyyF_0()
{
  v0 = OUTLINED_FUNCTION_21_4();
  sub_1AC485714(v0, v1, v2);
  OUTLINED_FUNCTION_274();
}

void _s21InternalSwiftProtobuf07Google_C12_EnumOptionsV13unknownFieldsAA14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_277();
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
}

uint64_t Google_Protobuf_UninterpretedOption.name.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.getter()
{
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_245();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.modify(uint64_t a1)
{
  if (OUTLINED_FUNCTION_114_0(a1))
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v1, v2);

  return OUTLINED_FUNCTION_76();
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearIdentifierValue()()
{

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.positiveIntValue.modify(void *a1))()
{
  v2 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_1AC4A1044;
}

void *sub_1AC4A1044(void *result)
{
  v1 = result[1];
  *(v1 + 40) = *result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return *(v0 + 56);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 64) = 0;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.negativeIntValue.modify(void *a1))()
{
  v2 = *(v1 + 56);
  if (*(v1 + 64))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_1AC4A10C0;
}

void *sub_1AC4A10C0(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

double Google_Protobuf_UninterpretedOption.doubleValue.getter()
{
  result = *(v0 + 72);
  if (*(v0 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.doubleValue.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 72);
  if (*(v1 + 80))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1AC4A1148;
}

void *sub_1AC4A1148(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

void Google_Protobuf_UninterpretedOption.stringValue.setter()
{
  OUTLINED_FUNCTION_69();
  sub_1AC45AC74(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
}

void (*Google_Protobuf_UninterpretedOption.stringValue.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_115(a1);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v6 = 0xC000000000000000;
  if (v4 >> 60 != 15)
  {
    v6 = *(v2 + 96);
  }

  *v1 = v5;
  v1[1] = v6;
  sub_1AC4B39F0(v3, v4);
  return sub_1AC4A1280;
}

void sub_1AC4A1280(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_76();
    sub_1AC4578F4(v5, v6);
    v7 = OUTLINED_FUNCTION_10_1();
    sub_1AC45AC74(v7, v8);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
    v9 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_1();
    sub_1AC45AC74(v11, v12);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
  }
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.getter()
{
  if (!*(v0 + 112))
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4A144C()
{
  OUTLINED_FUNCTION_165();
  if (v3)
  {

    *(v2 + 104) = v1;
    *(v2 + 112) = v0;
  }

  else
  {

    *(v2 + 104) = v1;
    *(v2 + 112) = v0;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearAggregateValue()()
{

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
}

void Google_Protobuf_UninterpretedOption.unknownFields.setter()
{
  OUTLINED_FUNCTION_277();
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_294();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_1AC4A1570@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_UninterpretedOption.NamePart.namePart.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.setter()
{
  OUTLINED_FUNCTION_43_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4A1680()
{
  OUTLINED_FUNCTION_165();
  if (v3)
  {

    *(v2 + 16) = v1;
    *(v2 + 24) = v0;
  }

  else
  {

    *(v2 + 16) = v1;
    *(v2 + 24) = v0;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.NamePart.clearNamePart()()
{

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t sub_1AC4A1728@<X0>(_BYTE *a1@<X8>)
{
  result = Google_Protobuf_UninterpretedOption.NamePart.isExtension.getter();
  *a1 = result & 1;
  return result;
}

void Google_Protobuf_UninterpretedOption.NamePart.unknownFields.setter()
{
  OUTLINED_FUNCTION_233();
  *v1 = v0;
  v1[1] = v2;
}

double Google_Protobuf_UninterpretedOption.NamePart.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return result;
}

double Google_Protobuf_UninterpretedOption.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_1AC5205D0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t (*Google_Protobuf_FeatureSet.fieldPresence.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (v2 == 4)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4A1930;
}

uint64_t (*Google_Protobuf_FeatureSet.enumType.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 25));
  return sub_1AC4A1A14;
}

uint64_t (*Google_Protobuf_FeatureSet.repeatedFieldEncoding.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 26));
  return sub_1AC4A1AFC;
}

uint64_t (*Google_Protobuf_FeatureSet.utf8Validation.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 27));
  return sub_1AC4A1BE8;
}

uint64_t (*Google_Protobuf_FeatureSet.messageEncoding.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 28));
  return sub_1AC4A1CD0;
}

uint64_t (*Google_Protobuf_FeatureSet.jsonFormat.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 29));
  return sub_1AC4A1DB8;
}

void Google_Protobuf_FeatureSet.unknownFields.setter()
{
  OUTLINED_FUNCTION_233();
  *v1 = v0;
  v1[1] = v2;
}

uint64_t sub_1AC4A1F28@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FeatureSet.Utf8Validation.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Google_Protobuf_FeatureSet._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t Google_Protobuf_FeatureSetDefaults.defaults.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

_BYTE *(*Google_Protobuf_FeatureSetDefaults.minimumEdition.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (v2 == 12)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4C6D90;
}

void *sub_1AC4A20E0@<X0>(uint64_t *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 12);
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v4;
  result = a2(&v6);
  *a3 = v6;
  return result;
}

_BYTE *(*Google_Protobuf_FeatureSetDefaults.maximumEdition.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 25);
  if (v2 == 12)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4C6D94;
}

void Google_Protobuf_FeatureSetDefaults.unknownFields.setter()
{
  OUTLINED_FUNCTION_277();
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.overridableFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40))
  {
    OUTLINED_FUNCTION_181(*(v1 + 48) | (*(v1 + 52) << 32), a1);
  }

  else
  {
    OUTLINED_FUNCTION_180(a1);
  }

  return OUTLINED_FUNCTION_14_6(v5, v2, v3, v4);
}

double Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.overridableFeatures.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_46_1(a1);
  v1 = OUTLINED_FUNCTION_60_1();
  *&result = OUTLINED_FUNCTION_25_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.overridableFeatures.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_302();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

Swift::Void __swiftcall Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.clearOverridableFeatures()()
{
  v1 = OUTLINED_FUNCTION_302();
  sub_1AC485714(v1, v2, v3);
  v0[3] = 0;
  v0[4] = 0;
  *(v0 + 46) = 0;
  v0[5] = 0;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.fixedFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72))
  {
    OUTLINED_FUNCTION_181(*(v1 + 80) | (*(v1 + 84) << 32), a1);
  }

  else
  {
    OUTLINED_FUNCTION_180(a1);
  }

  return OUTLINED_FUNCTION_14_6(v5, v2, v3, v4);
}

double Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.fixedFeatures.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_46_1(a1);
  v1 = OUTLINED_FUNCTION_60_1();
  *&result = OUTLINED_FUNCTION_25_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.fixedFeatures.modify()
{
  v0 = OUTLINED_FUNCTION_198();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62(v1);
  v2 = OUTLINED_FUNCTION_295();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_268(v6, v7, v8, v9);
  return OUTLINED_FUNCTION_106_1();
}

Swift::Void __swiftcall Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.clearFixedFeatures()()
{
  v1 = OUTLINED_FUNCTION_295();
  sub_1AC485714(v1, v2, v3);
  v0[7] = 0;
  v0[8] = 0;
  *(v0 + 78) = 0;
  v0[9] = 0;
}

void Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.unknownFields.setter()
{
  OUTLINED_FUNCTION_233();
  *v1 = v0;
  v1[1] = v2;
}

double Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  *(a1 + 16) = 12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 46) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 78) = 0;
  return result;
}

double Google_Protobuf_FeatureSetDefaults.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 24) = 3084;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.location.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.path.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.span.setter()
{
  result = OUTLINED_FUNCTION_391();
  *(v1 + 8) = v0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.getter()
{
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_340();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_339();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4A291C()
{
  OUTLINED_FUNCTION_165();
  if (v3)
  {

    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
  }

  else
  {

    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearLeadingComments()()
{

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.getter()
{
  if (!*(v0 + 64))
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115(a1);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v2, v3);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4A2ACC()
{
  OUTLINED_FUNCTION_165();
  if (v3)
  {

    *(v2 + 56) = v1;
    *(v2 + 64) = v0;
  }

  else
  {

    *(v2 + 56) = v1;
    *(v2 + 64) = v0;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearTrailingComments()()
{

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingDetachedComments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void Google_Protobuf_SourceCodeInfo.Location.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

double Google_Protobuf_SourceCodeInfo.Location.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.path.setter()
{
  result = OUTLINED_FUNCTION_235();
  *v1 = v0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.getter()
{
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_245();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.modify(uint64_t a1)
{
  if (OUTLINED_FUNCTION_114_0(a1))
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_102_1();
  }

  OUTLINED_FUNCTION_117(v1, v2);

  return OUTLINED_FUNCTION_76();
}

uint64_t sub_1AC4A2DB4()
{
  OUTLINED_FUNCTION_165();
  if (v3)
  {

    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
  }

  else
  {

    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_GeneratedCodeInfo.Annotation.clearSourceFile()()
{

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.getter()
{
  if (*(v0 + 44))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.begin.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 40);
  if (*(v1 + 44))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4A2EAC;
}

uint64_t *sub_1AC4A2EAC(uint64_t *result)
{
  v1 = *result;
  *(v1 + 40) = *(result + 2);
  *(v1 + 44) = 0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.getter()
{
  if (*(v0 + 52))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 48);
  if (*(v1 + 52))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1AC4A2F30;
}

uint64_t *sub_1AC4A2F30(uint64_t *result)
{
  v1 = *result;
  *(v1 + 48) = *(result + 2);
  *(v1 + 52) = 0;
  return result;
}

uint64_t (*Google_Protobuf_GeneratedCodeInfo.Annotation.semantic.modify(void *a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_376(a1, *(v1 + 53));
  return sub_1AC4A301C;
}

void Google_Protobuf_GeneratedCodeInfo.Annotation.unknownFields.setter()
{
  OUTLINED_FUNCTION_277();
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
}

double Google_Protobuf_GeneratedCodeInfo.Annotation.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 769;
  return result;
}

uint64_t static Google_Protobuf_Edition._protobuf_nameMap.getter()
{
  if (qword_1EB557CF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5582B0);
}

uint64_t static Google_Protobuf_FileDescriptorSet._protobuf_nameMap.getter()
{
  if (qword_1EB557CF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5582D0);
}

uint64_t Google_Protobuf_FileDescriptorSet.isInitialized.getter()
{
  v1 = sub_1AC4A3BF0(*v0);
  static Internal.areAllInitialized(_:)(v1);
  OUTLINED_FUNCTION_234();
  return v0 & 1;
}

uint64_t sub_1AC4A3270(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1AC485754(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_MethodDescriptorProto;
      v10 = sub_1AC4BFD40();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x88uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 136;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A33A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      sub_1AC4578F4(v5, v6);
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AC4D0A90(v10 > 1, v9 + 1, 1);
        v2 = v17;
      }

      v4 += 40;
      v15 = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
      v16 = sub_1AC4BFD94();
      v11 = swift_allocObject();
      *&v14 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v6;
      *(v11 + 32) = v13;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v2 + 16) = v9 + 1;
      sub_1AC465B44(&v14, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A34DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_1AC4578F4(v5, v6);
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1AC4D0A90(v8 > 1, v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for Google_Protobuf_DescriptorProto;
      v10 = sub_1AC4BFA44();
      *&v12 = v5;
      *(&v12 + 1) = v6;
      v15 = v10;
      v13 = v7;
      *(v2 + 16) = v9 + 1;
      sub_1AC465B44(&v12, v2 + 40 * v9 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A35EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x7EuLL);
      sub_1AC485EEC(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_EnumDescriptorProto;
      v10 = sub_1AC4BFA98();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x7EuLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 128;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3720(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x67uLL);
      sub_1AC485E3C(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_ServiceDescriptorProto;
      v10 = sub_1AC4BFAEC();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x67uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 104;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3854(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x91uLL);
      sub_1AC485D8C(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_FieldDescriptorProto;
      v10 = sub_1AC4BFB40();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x91uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3988(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x99uLL);
      sub_1AC485910(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_EnumValueDescriptorProto;
      v10 = sub_1AC4BFC98();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x99uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 160;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x56uLL);
      sub_1AC485664(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault;
      v10 = sub_1AC4BFDE8();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x56uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0xB1uLL);
      sub_1AC485F9C(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_FileDescriptorProto;
      v10 = sub_1AC4B3A04();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0xB1uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 184;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1AC485ACC(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_UninterpretedOption;
      v10 = sub_1AC4BFBE8();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x78uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 120;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x67uLL);
      sub_1AC485C2C(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
      v10 = sub_1AC4C2024();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x67uLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 104;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC4A3F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0A90(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x5EuLL);
      sub_1AC485B7C(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC4D0A90(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for Google_Protobuf_OneofDescriptorProto;
      v10 = sub_1AC4C2770();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x5EuLL);
      *(v2 + 16) = v6 + 1;
      sub_1AC465B44(&v8, v2 + 40 * v6 + 32);
      v4 += 96;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static Google_Protobuf_FileDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5582F0);
}

void Google_Protobuf_FileDescriptorProto.isInitialized.getter()
{
  OUTLINED_FUNCTION_366();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[15];
  v5 = v0[16];
  v6 = sub_1AC4A34DC(v0[3]);
  v7 = static Internal.areAllInitialized(_:)(v6);

  if (v7)
  {
    v8 = sub_1AC4A35EC(v1);
    v9 = static Internal.areAllInitialized(_:)(v8);

    if (v9)
    {
      v10 = sub_1AC4A3720(v2);
      v11 = static Internal.areAllInitialized(_:)(v10);

      if (v11)
      {
        v12 = sub_1AC4A3854(v3);
        v13 = static Internal.areAllInitialized(_:)(v12);

        if (v13)
        {
          if (v4)
          {
            v14 = OUTLINED_FUNCTION_1_1();
            sub_1AC4578F4(v14, v15);

            if (ExtensionFieldValueSet.isInitialized.getter())
            {
              OUTLINED_FUNCTION_3();
              v16 = swift_beginAccess();
              if (!*(v5 + 208) || (OUTLINED_FUNCTION_387(v16) & 1) != 0)
              {
                OUTLINED_FUNCTION_3();
                swift_beginAccess();

                v18 = sub_1AC4A3D24(v17);

                static Internal.areAllInitialized(_:)(v18);
              }
            }

            OUTLINED_FUNCTION_113_0();
            sub_1AC4B3218(v19, v20, v21, v5);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_365();
}

BOOL Google_Protobuf_FileOptions.isInitialized.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 16);
  if (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0 && ((OUTLINED_FUNCTION_3(), v3 = swift_beginAccess(), !*(v2 + 208)) || (OUTLINED_FUNCTION_387(v3)))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    sub_1AC4A3D24(v4);
    OUTLINED_FUNCTION_86_1();

    v5 = static Internal.areAllInitialized(_:)(v7);
  }

  else
  {
    return 0;
  }

  return v5;
}

void Google_Protobuf_FileDescriptorProto.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
      case 2:
      case 3:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_36_0();
        v29();
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4A463C(v13, v14, v15, v16);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4A46BC(v5, v6, v7, v8);
        break;
      case 6:
        v21 = OUTLINED_FUNCTION_7();
        sub_1AC4A473C(v21, v22, v23, v24);
        break;
      case 7:
        v25 = OUTLINED_FUNCTION_7();
        sub_1AC4A47BC(v25, v26, v27, v28);
        break;
      case 8:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC4A483C(v17, v18, v19, v20);
        break;
      case 9:
        v30 = OUTLINED_FUNCTION_7();
        sub_1AC4A48BC(v30, v31, v32, v33);
        break;
      case 14:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4A493C(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4A463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFA44();
  return v7(a2 + 24, &type metadata for Google_Protobuf_DescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4A46BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFA98();
  return v7(a2 + 32, &type metadata for Google_Protobuf_EnumDescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4A473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFAEC();
  return v7(a2 + 40, &type metadata for Google_Protobuf_ServiceDescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4A47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFB40();
  return v7(a2 + 48, &type metadata for Google_Protobuf_FieldDescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4A483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0654();
  return v7(a2 + 104, &type metadata for Google_Protobuf_FileOptions, v8, a3, a4);
}

uint64_t sub_1AC4A48BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C44A4();
  return v7(a2 + 136, &type metadata for Google_Protobuf_SourceCodeInfo, v8, a3, a4);
}

uint64_t sub_1AC4A493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 176, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4A49BC()
{
  OUTLINED_FUNCTION_49();
  if (*(v3 + 80))
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v3 + 96))
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(*v3 + 16))
  {
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_48();
    sub_1AC51AAC4();
  }

  v4 = *(v3 + 24);
  if (!*(v4 + 16) || (v2 = v0, sub_1AC50F660(v4, 4), !v0))
  {
    if (!*(*(v3 + 32) + 16) || (v2 = v0, sub_1AC50E9D0(), !v0))
    {
      if (!*(*(v3 + 40) + 16) || (v2 = v0, sub_1AC50DD64(), !v0))
      {
        if (!*(*(v3 + 48) + 16) || (v2 = v0, sub_1AC50DC94(), !v0))
        {
          v5 = OUTLINED_FUNCTION_150();
          sub_1AC4A4E0C(v5, v6);
          if (!v2)
          {
            v7 = OUTLINED_FUNCTION_150();
            sub_1AC4A4F9C(v7, v8);
            if (*(*(v3 + 8) + 16))
            {
              MEMORY[0x1AC5B48A0](10);
              v9 = OUTLINED_FUNCTION_48();
              sub_1AC51ACF0(v9, v10);
            }

            if (*(*(v3 + 16) + 16))
            {
              MEMORY[0x1AC5B48A0](11);
              v11 = OUTLINED_FUNCTION_48();
              sub_1AC51ACF0(v11, v12);
            }

            if (*(v3 + 168))
            {
              MEMORY[0x1AC5B48A0](12);
              OUTLINED_FUNCTION_35_1();
              sub_1AC51EEB8();
            }

            v13 = *(v3 + 176);
            if (v13 != 12)
            {
              MEMORY[0x1AC5B48A0](14);
              MEMORY[0x1AC5B48A0](qword_1AC526968[v13]);
            }

            sub_1AC4937B8(v1, *(v3 + 56), *(v3 + 64));
          }
        }
      }
    }
  }
}

void Google_Protobuf_FileDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  memcpy(v3, v4, 0xB1uLL);
  if (v96)
  {
    OUTLINED_FUNCTION_9_6();
    v11();
    v0 = v1;
  }

  if (!v0)
  {
    v12 = v97;
    if (!v97 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v13(), !v1))
    {
      v14 = v86;
      if (!*(v86 + 16) || (OUTLINED_FUNCTION_10(), v14 = v15(), !v1))
      {
        if (!*(v91 + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4BFA44(), OUTLINED_FUNCTION_28(), v14 = v2(), !v1))
        {
          if (!*(v92 + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4BFA98(), OUTLINED_FUNCTION_28(), v14 = v2(), !v1))
          {
            if (!*(v93 + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4BFAEC(), OUTLINED_FUNCTION_28(), v14 = v2(), !v1))
            {
              if (!*(v94 + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4BFB40(), OUTLINED_FUNCTION_28(), v14 = v2(), !v1))
              {
                v16 = OUTLINED_FUNCTION_2_5(v14, v12, v5, v6, v7, v8, v9, v10, v65, v70, v75, v79, v83, v86);
                v20 = sub_1AC4A4F00(v16, v17, v18, v19);
                if (!v1)
                {
                  v28 = OUTLINED_FUNCTION_2_5(v20, v21, v22, v23, v24, v25, v26, v27, v66, v71, v76, v80, v84, v87);
                  sub_1AC4A5074(v28, v29, v30, v31);
                  if (*(v89 + 16))
                  {
                    OUTLINED_FUNCTION_10();
                    v38();
                  }

                  v39 = v90;
                  if (*(v90 + 16))
                  {
                    OUTLINED_FUNCTION_10();
                    v39 = v40();
                  }

                  v41 = v98;
                  if (v98)
                  {
                    OUTLINED_FUNCTION_103();
                    OUTLINED_FUNCTION_27();
                    v39 = v42();
                  }

                  v43 = OUTLINED_FUNCTION_2_5(v39, v41, v32, v33, v34, v35, v36, v37, v67, v72, v77, v81, v85, v88);
                  v47 = sub_1AC4A510C(v43, v44, v45, v46);
                  OUTLINED_FUNCTION_69_1(v95, v47, v48, v49, v50, v51, v52, v53, v54, v55, v68, v73, v56);
                  v57 = OUTLINED_FUNCTION_28_2();
                  OUTLINED_FUNCTION_218(v57, v58, v59, v60, v61, v62, v63, v64, v69, v74, v78, v82);
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1AC4A4E0C(void *result, void *a2)
{
  v3 = result[15];
  if (v3)
  {
    v5 = result[13];
    v6 = result[14];
    v7 = result[16];
    MEMORY[0x1AC5B48A0](8);
    memcpy(__dst, a2, sizeof(__dst));
    sub_1AC4578F4(v5, v6);

    sub_1AC4B06D4();
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    else
    {
      sub_1AC4937B8(__dst, v5, v6);
    }

    sub_1AC4B3218(v5, v6, v3, v7);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC4A4F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 120);
  if (v4)
  {
    v7 = *(result + 128);
    v10 = *(result + 104);
    v11 = v4;
    v12 = v7;
    v8 = *(a4 + 136);
    v9 = sub_1AC4C0654();
    return v8(&v10, 8, &type metadata for Google_Protobuf_FileOptions, v9, a3, a4);
  }

  return result;
}

void *sub_1AC4A4F9C(void *result, void *a2)
{
  v3 = result[17];
  if (v3)
  {
    v5 = result[18];
    v6 = result[19];
    MEMORY[0x1AC5B48A0](9);
    memcpy(__dst, a2, sizeof(__dst));

    sub_1AC4578F4(v5, v6);
    sub_1AC4BEE0C();
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    sub_1AC4AEE04(v3, v5, v6);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC4A5074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 136);
  if (v4)
  {
    v10 = *(result + 144);
    v9 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C44A4();
    return v7(&v9, 9, &type metadata for Google_Protobuf_SourceCodeInfo, v8, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4A510C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 176) != 12)
  {
    v8 = *(result + 176);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 14, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v171 = *(a1 + 24);
  v172 = *(a1 + 16);
  v149 = *(a1 + 64);
  v150 = *(a1 + 56);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v168 = *(a1 + 104);
  v169 = *(a1 + 112);
  v167 = *(a1 + 120);
  v170 = *(a1 + 128);
  v160 = *(a1 + 136);
  v161 = *(a1 + 144);
  v162 = *(a1 + 152);
  v154 = *(a1 + 160);
  v156 = *(a1 + 168);
  v152 = *(a1 + 176);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v147 = *(a2 + 64);
  v148 = *(a2 + 56);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v163 = *(a2 + 104);
  v164 = *(a2 + 112);
  v165 = *(a2 + 120);
  v166 = *(a2 + 128);
  v157 = *(a2 + 136);
  v158 = *(a2 + 144);
  v159 = *(a2 + 152);
  v153 = *(a2 + 160);
  v155 = *(a2 + 168);
  v151 = *(a2 + 176);
  if (v5)
  {
    if (!v12)
    {
      return 0;
    }

    v15 = *(a1 + 72) == *(a2 + 72) && v5 == v12;
    if (!v15 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }

    if (v6 != v13 || v7 != v14)
    {
      OUTLINED_FUNCTION_93_0();
      if ((sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((sub_1AC47808C(v4, v8) & 1) == 0 || (sub_1AC47C690(v3, v9) & 1) == 0 || (sub_1AC47C690(v172, v11) & 1) == 0 || (sub_1AC47C6EC(v171, v10) & 1) == 0 || (sub_1AC47CE48() & 1) == 0 || (sub_1AC47CF4C() & 1) == 0 || (sub_1AC47D020() & 1) == 0)
  {
    return 0;
  }

  if (!v167)
  {
    OUTLINED_FUNCTION_88_1();
    sub_1AC4B31CC(v45, v46, v47, v170);
    v17 = v166;
    if (!v165)
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_255();
      sub_1AC4B31CC(v72, v73, v74, v75);
      OUTLINED_FUNCTION_88_1();
      sub_1AC4B3218(v76, v77, v78, v170);
      goto LABEL_35;
    }

    v48 = OUTLINED_FUNCTION_187();
    sub_1AC4B31CC(v48, v49, v50, v166);
LABEL_33:
    v65 = OUTLINED_FUNCTION_56_1();
    sub_1AC4B3218(v65, v66, v67, v68);
    v69 = OUTLINED_FUNCTION_187();
    sub_1AC4B3218(v69, v70, v71, v17);
    return 0;
  }

  v174[0] = v168;
  v174[1] = v169;
  v174[2] = v167;
  v174[3] = v170;
  v17 = v166;
  if (!v165)
  {
    v51 = OUTLINED_FUNCTION_56_1();
    sub_1AC4B31CC(v51, v52, v53, v54);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_255();
    sub_1AC4B31CC(v55, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_56_1();
    sub_1AC4B31CC(v59, v60, v61, v62);
    v63 = OUTLINED_FUNCTION_121();
    sub_1AC4513F8(v63, v64);

    goto LABEL_33;
  }

  v173[0] = v163;
  v173[1] = v164;
  v173[2] = v165;
  v173[3] = v166;
  v18 = OUTLINED_FUNCTION_56_1();
  sub_1AC4B31CC(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_187();
  sub_1AC4B31CC(v22, v23, v24, v166);
  v25 = OUTLINED_FUNCTION_56_1();
  sub_1AC4B31CC(v25, v26, v27, v28);
  static Google_Protobuf_FileOptions.== infix(_:_:)(v174, v173, v29, v30, v31, v32, v33, v34, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
  v36 = v35;
  v37 = OUTLINED_FUNCTION_30();
  sub_1AC4513F8(v37, v38);

  v39 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v39, v40);

  v41 = OUTLINED_FUNCTION_56_1();
  sub_1AC4B3218(v41, v42, v43, v44);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (!v160)
  {
    sub_1AC4AEDBC(0, v161, v162);
    if (!v157)
    {
      OUTLINED_FUNCTION_84();
      sub_1AC4AEDBC(v132, v133, v134);
      sub_1AC4AEE04(0, v161, v162);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_84();
    sub_1AC4AEDBC(v106, v107, v108);
    goto LABEL_43;
  }

  if (!v157)
  {
    v109 = OUTLINED_FUNCTION_81_1();
    sub_1AC4AEDBC(v109, v110, v111);
    OUTLINED_FUNCTION_84();
    sub_1AC4AEDBC(v112, v113, v114);
    v115 = OUTLINED_FUNCTION_81_1();
    sub_1AC4AEDBC(v115, v116, v117);

    v118 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v118, v119);
LABEL_43:
    v120 = OUTLINED_FUNCTION_81_1();
    sub_1AC4AEE04(v120, v121, v122);
    OUTLINED_FUNCTION_84();
LABEL_45:
    sub_1AC4AEE04(v123, v124, v125);
    return 0;
  }

  v79 = OUTLINED_FUNCTION_81_1();
  sub_1AC4AEDBC(v79, v80, v81);
  OUTLINED_FUNCTION_84();
  sub_1AC4AEDBC(v82, v83, v84);
  v85 = OUTLINED_FUNCTION_81_1();
  sub_1AC4AEDBC(v85, v86, v87);
  if ((sub_1AC47DD98(v160, v157) & 1) == 0)
  {
    OUTLINED_FUNCTION_84();
    sub_1AC4AEE04(v126, v127, v128);

    v129 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v129, v130);
    v123 = OUTLINED_FUNCTION_81_1();
    goto LABEL_45;
  }

  v88 = OUTLINED_FUNCTION_24();
  sub_1AC4578F4(v88, v89);
  v90 = OUTLINED_FUNCTION_12();
  sub_1AC4578F4(v90, v91);
  v92 = OUTLINED_FUNCTION_24();
  v93 = MEMORY[0x1AC5B4070](v92);
  v94 = OUTLINED_FUNCTION_12();
  sub_1AC4513F8(v94, v95);
  v96 = OUTLINED_FUNCTION_24();
  sub_1AC4513F8(v96, v97);
  OUTLINED_FUNCTION_84();
  sub_1AC4AEE04(v98, v99, v100);

  v101 = OUTLINED_FUNCTION_24();
  sub_1AC4513F8(v101, v102);
  v103 = OUTLINED_FUNCTION_81_1();
  sub_1AC4AEE04(v103, v104, v105);
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if (v156)
  {
    if (!v155)
    {
      return 0;
    }

    v135 = v154 == v153 && v156 == v155;
    if (!v135 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  if (v152 != 12)
  {
    if (v151 != 12 && qword_1AC526968[v152] == qword_1AC526968[v151])
    {
      goto LABEL_62;
    }

    return 0;
  }

  if (v151 != 12)
  {
    return 0;
  }

LABEL_62:
  v136 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v136, v137);
  v138 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v138, v139);
  v140 = OUTLINED_FUNCTION_17_5();
  v141 = MEMORY[0x1AC5B4070](v140);
  v142 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v142, v143);
  v144 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v144, v145);
  return v141 & 1;
}

uint64_t Google_Protobuf_FileDescriptorProto.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  memcpy(v9, v10, 0xB1uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4A49BC();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4A582C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4A49BC();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_DescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558310);
}

double sub_1AC4A59AC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 142) = 0;
  *(v0 + 152) = v1;
  *(v0 + 160) = v1;
  return result;
}

void *sub_1AC4A59E0(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v4;
  *(v1 + 48) = v4;
  *(v1 + 56) = v4;
  *(v1 + 64) = v4;
  *(v1 + 24) = 0;
  *(v1 + 72) = v4;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 142) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 152) = v4;
  *(v1 + 160) = v4;
  swift_beginAccess();
  v6 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v7 = a1[4];
  swift_beginAccess();
  *(v1 + 32) = v7;

  swift_beginAccess();
  v8 = a1[5];
  swift_beginAccess();
  v2[5] = v8;

  swift_beginAccess();
  v9 = a1[6];
  swift_beginAccess();
  v2[6] = v9;

  swift_beginAccess();
  v10 = a1[7];
  swift_beginAccess();
  v2[7] = v10;

  swift_beginAccess();
  v11 = a1[8];
  swift_beginAccess();
  v2[8] = v11;

  swift_beginAccess();
  v12 = a1[9];
  swift_beginAccess();
  v2[9] = v12;

  swift_beginAccess();
  memcpy(__dst, a1 + 10, 0x46uLL);
  swift_beginAccess();
  memcpy(v18, v2 + 10, 0x46uLL);
  memcpy(v2 + 10, __dst, 0x46uLL);
  sub_1AC4B3394(__dst, v16, &qword_1EB5589A8, &qword_1AC520E10);
  sub_1AC4575D8(v18, &qword_1EB5589A8, &qword_1AC520E10);
  swift_beginAccess();
  v13 = a1[19];
  swift_beginAccess();
  v2[19] = v13;

  swift_beginAccess();
  v14 = a1[20];

  swift_beginAccess();
  v2[20] = v14;

  return v2;
}

uint64_t sub_1AC4A5D98()
{

  sub_1AC4C6598(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_1AC4A5E24()
{
  v0 = sub_1AC4A5D98();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

uint64_t sub_1AC4A5E5C(void *a1)
{
  swift_beginAccess();

  v3 = sub_1AC4A3854(v2);

  v4 = static Internal.areAllInitialized(_:)(v3);

  if (v4)
  {
    swift_beginAccess();

    v6 = sub_1AC4A3854(v5);

    v7 = static Internal.areAllInitialized(_:)(v6);

    if (v7)
    {
      swift_beginAccess();

      v9 = sub_1AC4A34DC(v8);

      v10 = static Internal.areAllInitialized(_:)(v9);

      if (v10)
      {
        swift_beginAccess();

        v12 = sub_1AC4A35EC(v11);

        v13 = static Internal.areAllInitialized(_:)(v12);

        if (v13)
        {
          swift_beginAccess();

          v15 = sub_1AC4A3E58(v14);

          v16 = static Internal.areAllInitialized(_:)(v15);

          if (v16)
          {
            swift_beginAccess();

            v18 = sub_1AC4A3F8C(v17);

            v19 = static Internal.areAllInitialized(_:)(v18);

            if (v19)
            {
              swift_beginAccess();
              memcpy(__dst, a1 + 10, 0x46uLL);
              v20 = __dst[0];
              if (!__dst[0])
              {
                return 1;
              }

              v21 = __dst[2];
              v22 = __dst[5];
              v23 = __dst[6];
              v24 = __dst[1];
              v25 = __dst[7];

              sub_1AC4578F4(v24, v21);

              sub_1AC485860(v22, v23, v25);
              if (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0 && (!v25 || (ExtensionFieldValueSet.isInitialized.getter()))
              {
                v26 = sub_1AC4A3D24(v20);
                v27 = static Internal.areAllInitialized(_:)(v26);

                sub_1AC4575D8(__dst, &qword_1EB5589A8, &qword_1AC520E10);
                if (v27)
                {
                  return 1;
                }
              }

              else
              {
                sub_1AC4575D8(__dst, &qword_1EB5589A8, &qword_1AC520E10);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Google_Protobuf_DescriptorProto.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_31_2();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    OUTLINED_FUNCTION_123();
    swift_allocObject();
    v1 = OUTLINED_FUNCTION_0_1();
    *(v0 + 16) = sub_1AC4A59E0(v1);
  }

  OUTLINED_FUNCTION_12_6();
  return sub_1AC4A61C0(v2, v3, v4, v5);
}

uint64_t sub_1AC4A63A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFB40();
  v7(a2 + 32, &type metadata for Google_Protobuf_FieldDescriptorProto, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFA44();
  v7(a2 + 48, &type metadata for Google_Protobuf_DescriptorProto, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A6500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFA98();
  v7(a2 + 56, &type metadata for Google_Protobuf_EnumDescriptorProto, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4C2024();
  v7(a2 + 64, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A6658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4C2770();
  v7(a2 + 72, &type metadata for Google_Protobuf_OneofDescriptorProto, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A6704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4C21CC();
  v7(a2 + 152, &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4A67B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 352))(a2 + 160, a3, a4);
  return swift_endAccess();
}

void sub_1AC4A6844(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AC4A6904(a4);
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_32();
    sub_1AC4937B8(v6, v7, a3);
  }
}

void Google_Protobuf_DescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  v3 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_26_3();
  sub_1AC4A6C24(v4, v5, v6, v7);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_12_0();
    sub_1AC4578F4(v8, v9);
    v10 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_385(v10, v11, v12, v13, v14, v15, v16, v17, v3, v2);
  }
}

uint64_t sub_1AC4A6904(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(a1 + 24))
  {
    MEMORY[0x1AC5B48A0](1);

    OUTLINED_FUNCTION_170();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {

    OUTLINED_FUNCTION_17_0();
    sub_1AC50DC94();
    OUTLINED_FUNCTION_209();
    if (v1)
    {
    }
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (!*(*(a1 + 48) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC50F660(v5, v6), OUTLINED_FUNCTION_209(), result = , !v1))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC50E9D0(), OUTLINED_FUNCTION_209(), result = , !v1))
    {
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      if (!*(*(a1 + 64) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC50FCB4(), OUTLINED_FUNCTION_209(), result = , !v1))
      {
        OUTLINED_FUNCTION_3();
        swift_beginAccess();
        if (!*(*(a1 + 40) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC50DC94(), OUTLINED_FUNCTION_209(), result = , !v1))
        {
          OUTLINED_FUNCTION_3();
          swift_beginAccess();
          memcpy(__dst, (a1 + 80), 0x46uLL);
          if (__dst[0])
          {
            __dst[27] = __dst[0];
            v93 = *(a1 + 88);
            v94 = *(a1 + 104);
            v95[0] = *(a1 + 120);
            *(v95 + 14) = *(a1 + 134);
            v7 = MEMORY[0x1AC5B48A0](7);
            OUTLINED_FUNCTION_248(v7, v8, v9, v10, v11, v12, v13, v14, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77);
            v15 = memcpy(v91, __dst, sizeof(v91));
            v23 = OUTLINED_FUNCTION_342(v15, v16, v17, v18, v19, v20, v21, v22, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
            v25 = sub_1AC4AEE70(v23, v24);
            OUTLINED_FUNCTION_186(v25, v26, v27, v28, v29, v30, v31, v32, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v82);
            sub_1AC4B292C();
            v2 = v1;
            if (v1)
            {
              MEMORY[0x1AC5B4BA0](v1);
              v2 = 0;
            }

            v33 = sub_1AC4575D8(__dst, &qword_1EB5589A8, &qword_1AC520E10);
            OUTLINED_FUNCTION_251(v33, v34, v35, v36, v37, v38, v39, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80);
          }

          OUTLINED_FUNCTION_3();
          swift_beginAccess();
          if (!*(*(a1 + 72) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC50F8C4(), OUTLINED_FUNCTION_209(), result = , !v2))
          {
            OUTLINED_FUNCTION_22_5();
            swift_beginAccess();
            if (!*(*(a1 + 152) + 16) || (, OUTLINED_FUNCTION_17_0(), sub_1AC516650(), OUTLINED_FUNCTION_209(), result = , !v2))
            {
              OUTLINED_FUNCTION_3();
              result = swift_beginAccess();
              if (*(*(a1 + 160) + 16))
              {
                MEMORY[0x1AC5B48A0](10);

                OUTLINED_FUNCTION_18();
                sub_1AC51AAC4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AC4A6C24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC4B0EBC();
  if (!v4)
  {
    swift_beginAccess();
    if (*(a1[4] + 16))
    {
      v10 = *(a4 + 280);
      v11 = sub_1AC4BFB40();

      v10(v12, 2, &type metadata for Google_Protobuf_FieldDescriptorProto, v11, a3, a4);
    }

    swift_beginAccess();
    if (*(a1[6] + 16))
    {
      v13 = *(a4 + 280);
      v14 = sub_1AC4BFA44();

      v13(v15, 3, &type metadata for Google_Protobuf_DescriptorProto, v14, a3, a4);
    }

    swift_beginAccess();
    if (*(a1[7] + 16))
    {
      v16 = *(a4 + 280);
      v17 = sub_1AC4BFA98();

      v16(v18, 4, &type metadata for Google_Protobuf_EnumDescriptorProto, v17, a3, a4);
    }

    swift_beginAccess();
    if (*(a1[8] + 16))
    {
      v19 = *(a4 + 280);
      v20 = sub_1AC4C2024();

      v19(v21, 5, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, v20, a3, a4);
    }

    swift_beginAccess();
    if (*(a1[5] + 16))
    {
      v22 = *(a4 + 280);
      v23 = sub_1AC4BFB40();

      v22(v24, 6, &type metadata for Google_Protobuf_FieldDescriptorProto, v23, a3, a4);
    }

    sub_1AC4A7014(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[9] + 16))
    {
      v25 = *(a4 + 280);
      v26 = sub_1AC4C2770();

      v25(v27, 8, &type metadata for Google_Protobuf_OneofDescriptorProto, v26, a3, a4);
    }

    swift_beginAccess();
    if (*(a1[19] + 16))
    {
      v28 = *(a4 + 280);
      v29 = sub_1AC4C21CC();

      v28(v30, 9, &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, v29, a3, a4);
    }

    result = swift_beginAccess();
    if (*(a1[20] + 16))
    {
      v31 = *(a4 + 256);

      v31(v32, 10, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AC4A7014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13[0] = *(a1 + 120);
    *(v13 + 14) = *(a1 + 134);
    v8 = *(a4 + 136);
    v9 = sub_1AC4C06D0();
    return v8(&v10, 7, &type metadata for Google_Protobuf_MessageOptions, v9, a3, a4);
  }

  return result;
}

void static Google_Protobuf_DescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_392();
  if (*(v2 + 16) == *(v3 + 16) || (, , v4 = OUTLINED_FUNCTION_19(), sub_1AC4A718C(v4, v5), v7 = v6, , , (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v8, v9);
    v10 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v10, v11);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    MEMORY[0x1AC5B4070]();
    v12 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v12, v13);
    v14 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v14, v15);
  }

  OUTLINED_FUNCTION_378();
}

void sub_1AC4A718C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v7 = v6[2];
  v8 = v6[3];
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v9 = *(v4 + 24);
  if (!v8)
  {
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_10:
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    OUTLINED_FUNCTION_10_1();
    sub_1AC47D020();
    OUTLINED_FUNCTION_143();

    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    OUTLINED_FUNCTION_10_1();
    sub_1AC47D020();
    OUTLINED_FUNCTION_143();

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    v11 = OUTLINED_FUNCTION_10_1();
    sub_1AC47C6EC(v11, v12);
    OUTLINED_FUNCTION_143();

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    OUTLINED_FUNCTION_10_1();
    sub_1AC47CE48();
    OUTLINED_FUNCTION_143();

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    OUTLINED_FUNCTION_10_1();
    sub_1AC47F024();
    OUTLINED_FUNCTION_143();

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    OUTLINED_FUNCTION_10_1();
    sub_1AC47F0F8();
    OUTLINED_FUNCTION_143();

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_329(&v150);
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    memcpy(__dst, (v4 + 80), 0x46uLL);
    v13 = v150;
    v147 = v151;
    v148 = v152;
    v149[0] = v153[0];
    *(v149 + 14) = *(v153 + 14);
    v14 = __dst[0];
    v15 = *(v4 + 104);
    v144 = *(v4 + 88);
    v145 = v15;
    v146[0] = *(v4 + 120);
    *(v146 + 14) = *(v4 + 134);
    if (v150)
    {
      __src[0] = v150;
      *&__src[1] = v151;
      *&__src[3] = v152;
      *&__src[5] = v153[0];
      *(&__src[6] + 6) = *(v153 + 14);
      memcpy(v139, __src, 0x46uLL);
      if (__dst[0])
      {
        v16 = *(v4 + 104);
        *&v124[8] = *(v4 + 88);
        *&v124[24] = v16;
        *&v124[40] = *(v4 + 120);
        *&v124[54] = *(v4 + 134);
        OUTLINED_FUNCTION_125();
        sub_1AC4B3394(v17, v18, v19, v20);
        OUTLINED_FUNCTION_125();
        sub_1AC4B3394(v21, v22, v23, v24);
        OUTLINED_FUNCTION_125();
        sub_1AC4B3394(v25, v26, v27, v28);
        LOBYTE(v14) = static Google_Protobuf_MessageOptions.== infix(_:_:)(v139, v124, v29, v30, v31, v32, v33, v34, v106, v108, v110, v112, v114, v116, v118, v120, v122, v14, SWORD2(v14), *&v124[8], *&v124[16], *&v124[24], *&v124[32], *&v124[40], *&v124[48], *&v124[56], *&v124[64], v125[0], v125[1], v125[2], v125[3], v125[4], SWORD2(v125[4]), v125[5], v125[6], v125[7], v125[8], v126, v127, v128, v129, v130, v131, v132, v133, v134);
        memcpy(v125, v124, 0x46uLL);
        sub_1AC4AEEA8(v125);
        OUTLINED_FUNCTION_380(&v126, v35, v36, v37, v38, v39, v40, v41, v107, v109, v111, v113, v115, v117, v119, v121, v123, *v124, *&v124[8], *&v124[16], *&v124[24], *&v124[32], *&v124[40], *&v124[48], *&v124[56], *&v124[64], v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, *(&v137 + 1), *&v138[0], *(&v138[0] + 1), *&v138[1], *(&v138[1] + 1));
        sub_1AC4AEEA8(&v126);
        v135 = v13;
        v136 = v147;
        v137 = v148;
        v138[0] = v149[0];
        *(v138 + 14) = *(v149 + 14);
        OUTLINED_FUNCTION_113_0();
        sub_1AC4575D8(v42, v43, v44);
        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v53, v54, v55, v56);
      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v57, v58, v59, v60);
      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v61, v62, v63, v64);
      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v65, v66, v67, v68);
      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v69, v70, v71, v72);

      OUTLINED_FUNCTION_113_0();
      sub_1AC4575D8(v73, v74, v75);
      OUTLINED_FUNCTION_113_0();
      sub_1AC4575D8(v76, v77, v78);
      OUTLINED_FUNCTION_380(&v135, v79, v80, v81, v82, v83, v84, v85, v106, v108, v110, v112, v114, v116, v118, v120, v122, *v124, *&v124[8], *&v124[16], *&v124[24], *&v124[32], *&v124[40], *&v124[48], *&v124[56], *&v124[64], v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, *(&v137 + 1), *&v138[0], *(&v138[0] + 1), *&v138[1], *(&v138[1] + 1));
      sub_1AC4AEEA8(&v135);
    }

    else
    {
      if (!__dst[0])
      {
        __src[0] = 0;
        *&__src[1] = v151;
        *&__src[3] = v152;
        *&__src[5] = v153[0];
        *(&__src[6] + 6) = *(v153 + 14);
        OUTLINED_FUNCTION_125();
        sub_1AC4B3394(v86, v87, v88, v89);
        OUTLINED_FUNCTION_125();
        sub_1AC4B3394(v90, v91, v92, v93);
        OUTLINED_FUNCTION_113_0();
        sub_1AC4575D8(v94, v95, v96);
LABEL_20:
        OUTLINED_FUNCTION_3();
        swift_beginAccess();
        OUTLINED_FUNCTION_3();
        swift_beginAccess();

        v97 = OUTLINED_FUNCTION_10_1();
        sub_1AC47F1FC(v97, v98, v99, v100, v101, v102, v103, v104, v106, v108, v110, v112, v114, v116, v118, SBYTE1(v118), SBYTE2(v118), SBYTE3(v118), SBYTE4(v118), SBYTE5(v118), SBYTE6(v118), SHIBYTE(v118), v120, SBYTE1(v120), SBYTE2(v120), SBYTE3(v120), SBYTE4(v120), SBYTE5(v120), v122, *v124, *&v124[8], *&v124[16], *&v124[24], *&v124[32], *&v124[40], *&v124[48], *&v124[56], *&v124[64], v125[0], v125[1], v125[2], v125[3]);
        OUTLINED_FUNCTION_143();

        if (v14)
        {
          OUTLINED_FUNCTION_3();
          swift_beginAccess();
          v105 = v6[20];
          OUTLINED_FUNCTION_3();
          swift_beginAccess();
          sub_1AC47808C(v105, *(v4 + 160));
          OUTLINED_FUNCTION_354();

          goto LABEL_23;
        }

LABEL_22:

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v45, v46, v47, v48);
      OUTLINED_FUNCTION_125();
      sub_1AC4B3394(v49, v50, v51, v52);
    }

    *&__src[1] = v147;
    *&__src[3] = v148;
    *&__src[5] = v149[0];
    *(&__src[6] + 6) = *(v149 + 14);
    __src[0] = v13;
    __src[9] = v14;
    v141 = v144;
    v142 = v145;
    v143[0] = v146[0];
    *(v143 + 14) = *(v146 + 14);
    sub_1AC4575D8(__src, &qword_1EB559150, &unk_1AC526928);
    goto LABEL_23;
  }

  if (v9)
  {
    if (v7 == *(v4 + 16) && v8 == v9)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_10_1();
    if (sub_1AC51F3D8())
    {
      goto LABEL_10;
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_DescriptorProto.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v30, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53);
  v11 = sub_1AC4A6904(v2);
  v19 = OUTLINED_FUNCTION_243(v11, v12, v13, v14, v15, v16, v17, v18, v31, v34, v37);
  sub_1AC4937B8(v19, v20, v1);
  OUTLINED_FUNCTION_108(v21, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4A78F4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4A6844(__dst, v2, v3, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_DescriptorProto.ExtensionRange._protobuf_nameMap.getter()
{
  if (qword_1EB557D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558348);
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.isInitialized.getter()
{
  OUTLINED_FUNCTION_286(v9);
  v0 = v9[0];
  if (!v9[0])
  {
    return 1;
  }

  v1 = v9[7];
  v2 = v9[3];
  v3 = v9[2];

  sub_1AC4578F4(v3, v2);

  v4 = OUTLINED_FUNCTION_93_0();
  sub_1AC485860(v4, v5, v1);
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0 || (v6 = sub_1AC4A3D24(v0), static Internal.areAllInitialized(_:)(v6), OUTLINED_FUNCTION_354(), , (v0 & 1) == 0))
  {
    sub_1AC4575D8(v9, &qword_1EB5589B0, &qword_1AC520E18);
    return 0;
  }

  if (v1)
  {
    v7 = ExtensionFieldValueSet.isInitialized.getter();
    sub_1AC4575D8(v9, &qword_1EB5589B0, &qword_1AC520E18);
    return (v7 & 1) != 0;
  }

  sub_1AC4575D8(v9, &qword_1EB5589B0, &qword_1AC520E18);
  return 1;
}

BOOL Google_Protobuf_ExtensionRangeOptions.isInitialized.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[7];
  result = 0;
  if (OUTLINED_FUNCTION_270(a1))
  {
    v4 = sub_1AC4A3D24(v2);
    static Internal.areAllInitialized(_:)(v4);
    v5 = OUTLINED_FUNCTION_234();
    if (v1 & 1) != 0 && (!v3 || (OUTLINED_FUNCTION_283(v5)))
    {
      return 1;
    }
  }

  return result;
}

void Google_Protobuf_DescriptorProto.ExtensionRange.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 3)
    {
      v6 = OUTLINED_FUNCTION_7();
      sub_1AC4A7CB8(v6, v7, v8, v9);
    }

    else if (v3 == 2 || v3 == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v5();
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4A7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C01C4();
  return v7(a2 + 32, &type metadata for Google_Protobuf_ExtensionRangeOptions, v8, a3, a4);
}

void sub_1AC4A7D38()
{
  OUTLINED_FUNCTION_147();
  if ((*(v1 + 20) & 1) == 0)
  {
    v3 = *(v2 + 16);
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v4 = *(v2 + 24);
    OUTLINED_FUNCTION_384();
    MEMORY[0x1AC5B48D0](v4);
  }

  memcpy(__dst, (v2 + 32), 0x47uLL);
  if (__dst[0])
  {
    __dst[9] = __dst[0];
    v77 = *(v2 + 40);
    v78 = *(v2 + 56);
    v79[0] = *(v2 + 72);
    *(v79 + 15) = *(v2 + 87);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_248(v5, v6, v7, v8, v9, v10, v11, v12, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63);
    v13 = memcpy(v75, (v2 + 32), sizeof(v75));
    v21 = OUTLINED_FUNCTION_342(v13, v14, v15, v16, v17, v18, v19, v20, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
    sub_1AC4AEED8(v21, v22);
    sub_1AC4A8AC4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
    }

    v23 = sub_1AC4575D8(__dst, &qword_1EB5589B0, &qword_1AC520E18);
    OUTLINED_FUNCTION_251(v23, v24, v25, v26, v27, v28, v29, v30, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65);
  }

  OUTLINED_FUNCTION_337();
  switch(v33)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_14;
    case 2:
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
LABEL_14:
      if (v34 != v35)
      {
        goto LABEL_15;
      }

      return;
    case 3:
      return;
    default:
      if ((v32 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_15:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_DescriptorProto.ExtensionRange.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v4 = memcpy(v2, v3, 0x67uLL);
  if ((v48 & 1) == 0)
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_10();
    v4 = v12();
    v0 = v1;
  }

  if (!v0)
  {
    if ((v49 & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v4 = v13(), !v1))
    {
      v14 = OUTLINED_FUNCTION_2_5(v4, v5, v6, v7, v8, v9, v10, v11, v36, v39, v42, v44, v46, v47.n128_i8[0]);
      v18 = sub_1AC4A7F54(v14, v15, v16, v17);
      if (!v1)
      {
        OUTLINED_FUNCTION_74_1(v18, v47, v19, v20, v21, v22, v23, v24, v25, v26, v37, v40, v27);
        v28 = OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_218(v28, v29, v30, v31, v32, v33, v34, v35, v38, v41, v43, v45);
      }
    }
  }
}

uint64_t sub_1AC4A7F54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    v7 = *(result + 56);
    v11 = *(result + 40);
    v12 = v7;
    v13[0] = *(result + 72);
    *(v13 + 15) = *(result + 87);
    v10 = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4C01C4();
    return v8(&v10, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, v9, a3, a4);
  }

  return result;
}

void static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_336();
  v5 = *(v4 + 16);
  v6 = *(v4 + 20);
  v7 = *(v4 + 24);
  v8 = *(v4 + 28);
  memcpy(v74, (v2 + 32), 0x47uLL);
  v9 = *(v3 + 16);
  v10 = *(v3 + 20);
  v11 = *(v3 + 24);
  v12 = *(v3 + 28);
  memcpy(v75, (v3 + 32), 0x47uLL);
  if (v6)
  {
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v5 == v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_23;
    }
  }

  if (v8)
  {
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v7 == v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_23;
    }
  }

  v15 = v74[0];
  v16 = v75[0];
  if (!v74[0])
  {
    if (!v75[0])
    {
      __src[0] = 0;
      *&__src[1] = *(v2 + 40);
      *&__src[3] = *(v2 + 56);
      *&__src[5] = *(v2 + 72);
      *(&__src[6] + 7) = *(v2 + 87);
      OUTLINED_FUNCTION_285(v74, __dst);
      OUTLINED_FUNCTION_285(v75, __dst);
      OUTLINED_FUNCTION_197();
      sub_1AC4575D8(v54, v55, v56);
LABEL_25:
      v57 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v57, v58);
      v59 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v59, v60);
      v61 = OUTLINED_FUNCTION_17_5();
      MEMORY[0x1AC5B4070](v61);
      v62 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v62, v63);
      v64 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v64, v65);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_119();
    sub_1AC4B3394(v33, v34, v35, v36);
    OUTLINED_FUNCTION_119();
    sub_1AC4B3394(v37, v38, v39, v40);
    goto LABEL_22;
  }

  __src[0] = v74[0];
  OUTLINED_FUNCTION_206();
  memcpy(__dst, __src, 0x47uLL);
  if (!v16)
  {
    memcpy(v68, __src, 0x47uLL);
    OUTLINED_FUNCTION_119();
    sub_1AC4B3394(v41, v42, v43, v44);
    OUTLINED_FUNCTION_119();
    sub_1AC4B3394(v45, v46, v47, v48);
    OUTLINED_FUNCTION_119();
    sub_1AC4B3394(v49, v50, v51, v52);
    sub_1AC4AEF10(v68);
LABEL_22:
    OUTLINED_FUNCTION_206();
    __src[0] = v15;
    __src[9] = v16;
    v53 = *(v3 + 56);
    v71 = *(v3 + 40);
    v72 = v53;
    v73[0] = *(v3 + 72);
    *(v73 + 15) = *(v3 + 87);
    sub_1AC4575D8(__src, &qword_1EB5589F0, &qword_1AC520E38);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_238();
  *(&v68[6] + 7) = *(v3 + 87);
  v68[0] = v16;
  OUTLINED_FUNCTION_129();
  sub_1AC4B3394(v17, v18, v19, v20);
  OUTLINED_FUNCTION_129();
  sub_1AC4B3394(v21, v22, v23, v24);
  OUTLINED_FUNCTION_129();
  sub_1AC4B3394(v25, v26, v27, v28);
  v29 = static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(__dst, v68);
  memcpy(v66, v68, 0x47uLL);
  sub_1AC4AEF10(v66);
  memcpy(v67, __dst, 0x47uLL);
  sub_1AC4AEF10(v67);
  v68[0] = v15;
  OUTLINED_FUNCTION_241();
  *(&v68[6] + 7) = *(v2 + 87);
  OUTLINED_FUNCTION_175();
  sub_1AC4575D8(v30, v31, v32);
  if (v29)
  {
    goto LABEL_25;
  }

LABEL_23:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_130(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36);
  sub_1AC4A7D38();
  OUTLINED_FUNCTION_132(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4A844C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4A7D38();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

void sub_1AC4A8510(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_370();
  *a4 = v7;
  *a5 = v8;
}

uint64_t static Google_Protobuf_DescriptorProto.ReservedRange._protobuf_nameMap.getter()
{
  if (qword_1EB557D30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558378);
}

uint64_t static Google_Protobuf_ExtensionRangeOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558398);
}

void Google_Protobuf_ExtensionRangeOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v1(v2);
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v5)
    {
      v18 = OUTLINED_FUNCTION_7();
      sub_1AC4A89C4(v18, v19, v20, v21);
    }

    else
    {
      switch(v4)
      {
        case 3:
          v10 = OUTLINED_FUNCTION_7();
          sub_1AC4A88C4(v10, v11, v12, v13);
          break;
        case 50:
          v14 = OUTLINED_FUNCTION_7();
          sub_1AC4A8944(v14, v15, v16, v17);
          break;
        case 2:
          v6 = OUTLINED_FUNCTION_7();
          sub_1AC4A8844(v6, v7, v8, v9);
          break;
        default:
          if ((v4 - 1000) <= 0x1FFFFC17)
          {
            v22 = OUTLINED_FUNCTION_37_1();
            sub_1AC4A8A44(v22, v23, v24, v25, v26);
          }

          break;
      }
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4A8844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFB94();
  return v7(a2 + 8, &type metadata for Google_Protobuf_ExtensionRangeOptions.Declaration, v8, a3, a4);
}

uint64_t sub_1AC4A88C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6B68();
  return v7(a2 + 70, &type metadata for Google_Protobuf_ExtensionRangeOptions.VerificationState, v8, a3, a4);
}

uint64_t sub_1AC4A8944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 40, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

uint64_t sub_1AC4A89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFBE8();
  return v7(a2, &type metadata for Google_Protobuf_UninterpretedOption, v8, a3, a4);
}

void sub_1AC4A8AC4()
{
  OUTLINED_FUNCTION_49();
  v4 = *(v3 + 8);
  if (!*(v4 + 16) || (v2 = v0, sub_1AC50D620(v4, 2), !v0))
  {
    v5 = *(v3 + 70);
    if (v5 != 2)
    {
      MEMORY[0x1AC5B48A0](3);
      MEMORY[0x1AC5B48A0](v5 & 1);
    }

    v6 = OUTLINED_FUNCTION_150();
    sub_1AC4A8D38(v6);
    if (!v2)
    {
      if (*(*v3 + 16))
      {
        sub_1AC50D0A4();
      }

      v7 = OUTLINED_FUNCTION_82_1();
      sub_1AC5175D4(v7, v8, v9, v10);
      sub_1AC4937B8(v1, *(v3 + 16), *(v3 + 24));
    }
  }
}

uint64_t sub_1AC4A8CA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 70);
  if (v4 != 2)
  {
    v9 = v4 & 1;
    v7 = *(a4 + 128);
    v8 = sub_1AC4C6B68();
    return v7(&v9, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions.VerificationState, v8, a3, a4);
  }

  return result;
}

void *sub_1AC4A8D38(void *result)
{
  if (result[7])
  {
    OUTLINED_FUNCTION_146();
    v2 = MEMORY[0x1AC5B48A0](50);
    OUTLINED_FUNCTION_215(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v10, v11);

    OUTLINED_FUNCTION_94_1(v12);
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v16 = sub_1AC485714(v13, v14, v15);
    return OUTLINED_FUNCTION_216(v16, v17, v18, v19, v20, v21, v22, v23, v25);
  }

  return result;
}

uint64_t sub_1AC4A8DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v9 = *(result + 40);
    v11 = *(result + 64);
    v12 = *(result + 68);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 50, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 68);
  v7 = *(a1 + 64);
  v59 = *(a1 + 70);
  v8 = *(a2 + 8);
  v57 = *(a1 + 32);
  v56 = *(a2 + 32);
  v60 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 68);
  v11 = *(a2 + 64);
  v58 = *(a2 + 70);
  OUTLINED_FUNCTION_263(*a1);
  if ((sub_1AC47DB68() & 1) == 0 || (sub_1AC47DC6C(v2, v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v64[0] = v3;
    v64[1] = v4;
    v64[2] = v5;
    v65 = v7;
    v66 = (v7 | (v6 << 32)) >> 32;
    if (v9)
    {
      *v61 = v60;
      *&v61[16] = v9;
      *&v61[28] = (v11 | (v10 << 32)) >> 32;
      *&v61[24] = v11;
      v12 = OUTLINED_FUNCTION_55_0();
      sub_1AC485860(v12, v13, v14);
      OUTLINED_FUNCTION_226();
      OUTLINED_FUNCTION_119();
      sub_1AC485860(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_55_0();
      sub_1AC485860(v18, v19, v20);
      v21 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v64, v61);
      v62[0] = *v61;
      *(v62 + 14) = *&v61[14];
      sub_1AC4AEF78(v62);
      OUTLINED_FUNCTION_358();
      sub_1AC4AEF78(v63);
      v22 = OUTLINED_FUNCTION_55_0();
      sub_1AC485714(v22, v23, v24);
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_358();
    v28 = OUTLINED_FUNCTION_55_0();
    sub_1AC485860(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_226();
    sub_1AC485860(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_55_0();
    sub_1AC485860(v33, v34, v35);
    sub_1AC4AEF78(v63);
LABEL_10:
    v36 = OUTLINED_FUNCTION_55_0();
    sub_1AC485714(v36, v37, v38);
    OUTLINED_FUNCTION_226();
    OUTLINED_FUNCTION_119();
    sub_1AC485714(v39, v40, v41);
    goto LABEL_11;
  }

  sub_1AC485860(v3, v4, 0);
  if (v9)
  {
    OUTLINED_FUNCTION_226();
    OUTLINED_FUNCTION_119();
    sub_1AC485860(v25, v26, v27);
    goto LABEL_10;
  }

  sub_1AC485860(v60, *(&v60 + 1), 0);
  v44 = OUTLINED_FUNCTION_18();
  sub_1AC485714(v44, v45, 0);
LABEL_14:
  if (v59 == 2)
  {
    if (v58 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v58 == 2 || ((v58 ^ v59) & 1) != 0)
  {
    goto LABEL_11;
  }

  v46 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v46, v47);
  v48 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v48, v49);
  v50 = OUTLINED_FUNCTION_17_5();
  v51 = MEMORY[0x1AC5B4070](v50);
  v52 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v52, v53);
  v54 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v54, v55);
  if (v51)
  {
    v64[0] = v57;
    v63[0] = v56;

    v42 = static ExtensionFieldValueSet.== infix(_:_:)(v64, v63);

    return v42 & 1;
  }

LABEL_11:
  v42 = 0;
  return v42 & 1;
}

uint64_t Google_Protobuf_ExtensionRangeOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x47uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4A8AC4();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4A925C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4A8AC4();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ExtensionRangeOptions.VerificationState._protobuf_nameMap.getter()
{
  if (qword_1EB557D40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5583B8);
}

uint64_t sub_1AC4A9390()
{
  result = MEMORY[0x1AC5B4340](0x6172616C6365442ELL, 0xEC0000006E6F6974);
  qword_1EB5583D8 = 0xD000000000000025;
  unk_1EB5583E0 = 0x80000001AC52E210;
  return result;
}

uint64_t static Google_Protobuf_ExtensionRangeOptions.Declaration._protobuf_nameMap.getter()
{
  if (qword_1EB557D50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5583E8);
}

void Google_Protobuf_ExtensionRangeOptions.Declaration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_357();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
      case 5:
      case 6:
        goto LABEL_5;
      case 2:
        OUTLINED_FUNCTION_257();
        goto LABEL_5;
      case 3:
        OUTLINED_FUNCTION_352();
LABEL_5:
        OUTLINED_FUNCTION_36_0();
        v5();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4A95A8()
{
  OUTLINED_FUNCTION_49();
  if ((*(v0 + 20) & 1) == 0)
  {
    v1 = *(v0 + 16);
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v1);
  }

  if (*(v0 + 32))
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0 + 48))
  {
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0 + 56) != 2)
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  if (*(v0 + 57) != 2)
  {
    MEMORY[0x1AC5B48A0](6);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_259();
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
LABEL_16:
      if (v5 != v6)
      {
        goto LABEL_17;
      }

      return;
    case 3:
      return;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_ExtensionRangeOptions.Declaration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_296();
  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  v34 = *(v1 + 57);
  v35 = *(v1 + 56);
  if ((*(v1 + 20) & 1) == 0)
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_37();
    v3 = v13();
    v0 = v2;
  }

  if (!v0)
  {
    if (!v11 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_279(), v3 = v14(), !v2))
    {
      if (!v12 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_279(), v3 = v15(), !v2))
      {
        if (v35 == 2 || (OUTLINED_FUNCTION_37(), v3 = v16(), !v2))
        {
          if (v34 == 2 || (OUTLINED_FUNCTION_37(), v3 = v17(), !v2))
          {
            OUTLINED_FUNCTION_322(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v33);
            v18 = OUTLINED_FUNCTION_28_2();
            OUTLINED_FUNCTION_218(v18, v19, v20, v21, v22, v23, v24, v25, v27, v29, v31, v32);
          }
        }
      }
    }
  }
}

void static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_213();
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 20);
  v9 = *(v4 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  v13 = *(v5 + 56);
  v14 = *(v5 + 57);
  v15 = *(v3 + 32);
  v17 = *(v3 + 40);
  v16 = *(v3 + 48);
  v18 = *(v3 + 56);
  v19 = *(v3 + 57);
  if (v8)
  {
    if (!*(v3 + 20))
    {
      goto LABEL_36;
    }

LABEL_8:
    if (v10)
    {
      if (!v15)
      {
        goto LABEL_36;
      }

      if (v9 != *(v3 + 24) || v10 != v15)
      {
        v35 = v7;
        v22 = v6;
        v23 = sub_1AC51F3D8();
        v6 = v22;
        v7 = v35;
        if ((v23 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_36;
    }

    if (v12)
    {
      if (!v16)
      {
        goto LABEL_36;
      }

      if (v11 != v17 || v12 != v16)
      {
        OUTLINED_FUNCTION_12();
        v25 = v7;
        v27 = v26;
        v28 = sub_1AC51F3D8();
        v6 = v27;
        v7 = v25;
        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v16)
    {
      goto LABEL_36;
    }

    if (v13 == 2)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v18 == 2 || ((v13 ^ v18) & 1) != 0)
    {
      goto LABEL_36;
    }

    if (v14 == 2)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v19 == 2 || ((v14 ^ v19) & 1) != 0)
    {
      goto LABEL_36;
    }

    sub_1AC4578F4(v6, v7);
    v29 = OUTLINED_FUNCTION_32();
    sub_1AC4578F4(v29, v30);
    OUTLINED_FUNCTION_113_0();
    MEMORY[0x1AC5B4070]();
    v31 = OUTLINED_FUNCTION_32();
    sub_1AC4513F8(v31, v32);
    v33 = OUTLINED_FUNCTION_1_1();
    sub_1AC4513F8(v33, v34);
    goto LABEL_36;
  }

  if (*(v5 + 16) == *(v3 + 16))
  {
    v20 = *(v3 + 20);
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  OUTLINED_FUNCTION_212();
}

uint64_t Google_Protobuf_ExtensionRangeOptions.Declaration.hashValue.getter()
{
  OUTLINED_FUNCTION_148();
  *(v2 + 42) = *(v0 + 42);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51);
  OUTLINED_FUNCTION_273(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4A95A8();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4A9B34(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8[0] = v1[2];
  *(v8 + 10) = *(v1 + 42);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4A95A8();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558408);
}

BOOL Google_Protobuf_FieldDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v3, v4);

    if (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0 && ((OUTLINED_FUNCTION_3(), v5 = swift_beginAccess(), !*(v2 + 64)) || (OUTLINED_FUNCTION_387(v5)))
    {
      OUTLINED_FUNCTION_3();
      swift_beginAccess();

      v7 = sub_1AC4A3D24(v6);

      v8 = static Internal.areAllInitialized(_:)(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = OUTLINED_FUNCTION_10_1();
    sub_1AC4B3218(v9, v10, v1, v2);
  }

  else
  {
    return 1;
  }

  return v8;
}

BOOL Google_Protobuf_FieldOptions.isInitialized.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 16);
  if (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0 && ((OUTLINED_FUNCTION_3(), v3 = swift_beginAccess(), !*(v2 + 64)) || (OUTLINED_FUNCTION_387(v3)))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();

    sub_1AC4A3D24(v4);
    OUTLINED_FUNCTION_86_1();

    v5 = static Internal.areAllInitialized(_:)(v7);
  }

  else
  {
    return 0;
  }

  return v5;
}

void Google_Protobuf_FieldDescriptorProto.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_357();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_298();
        goto LABEL_10;
      case 2:
      case 3:
      case 7:
      case 9:
      case 10:
      case 17:
        goto LABEL_10;
      case 4:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4A9F4C(v9, v10, v11, v12);
        continue;
      case 5:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4A9FCC(v5, v6, v7, v8);
        continue;
      case 6:
        OUTLINED_FUNCTION_352();
LABEL_10:
        OUTLINED_FUNCTION_36_0();
        v17();
        break;
      case 8:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4AA04C(v13, v14, v15, v16);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4A9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6B14();
  return v7(a2 + 37, &type metadata for Google_Protobuf_FieldDescriptorProto.Label, v8, a3, a4);
}

uint64_t sub_1AC4A9FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6AC0();
  return v7(a2 + 38, &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum, v8, a3, a4);
}

uint64_t sub_1AC4AA04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0CBC();
  return v7(a2 + 112, &type metadata for Google_Protobuf_FieldOptions, v8, a3, a4);
}

void sub_1AC4AA0CC()
{
  OUTLINED_FUNCTION_49();
  if (*(v1 + 24))
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v1 + 64))
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if ((*(v1 + 36) & 1) == 0)
  {
    v2 = *(v1 + 32);
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v2);
  }

  v3 = *(v1 + 37);
  if (v3 != 3)
  {
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48A0](qword_1AC526938[v3]);
  }

  v4 = *(v1 + 38);
  if (v4 != 18)
  {
    MEMORY[0x1AC5B48A0](5);
    MEMORY[0x1AC5B48A0](v4 + 1);
  }

  if (*(v1 + 48))
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v1 + 80))
  {
    MEMORY[0x1AC5B48A0](7);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v1 + 128))
  {
    v5 = MEMORY[0x1AC5B48A0](8);
    OUTLINED_FUNCTION_215(v5, v6, v7, v8, v9, v10, v11, v12, v36);
    v13 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v13, v14);

    OUTLINED_FUNCTION_129();
    sub_1AC4B48C8();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
    }

    else
    {
      OUTLINED_FUNCTION_175();
      sub_1AC4937B8(v15, v16, v17);
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_297();
    v22 = sub_1AC4B3218(v18, v19, v20, v21);
    OUTLINED_FUNCTION_216(v22, v23, v24, v25, v26, v27, v28, v29, v37);
  }

  if ((*(v1 + 92) & 1) == 0)
  {
    v30 = *(v1 + 88);
    MEMORY[0x1AC5B48A0](9);
    MEMORY[0x1AC5B48D0](v30);
  }

  if (*(v1 + 104))
  {
    MEMORY[0x1AC5B48A0](10);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v1 + 144) != 2)
  {
    MEMORY[0x1AC5B48A0](17);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_259();
  switch(v33)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_31;
    case 2:
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
LABEL_31:
      if (v34 != v35)
      {
        goto LABEL_32;
      }

      return;
    case 3:
      return;
    default:
      if ((v32 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_32:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FieldDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v4 = memcpy(v2, v3, 0x91uLL);
  if (v90)
  {
    OUTLINED_FUNCTION_9_6();
    v4 = v11();
    v0 = v1;
  }

  if (!v0)
  {
    v12 = v93;
    if (!v93 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v4 = v13(), !v1))
    {
      if ((v91 & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v4 = v14(), !v1))
      {
        v15 = OUTLINED_FUNCTION_2_5(v4, v12, v5, v6, v7, v8, v9, v10, v66, v71, v76, v80, v84, v87.n128_i8[0]);
        v19 = sub_1AC4AA4E4(v15, v16, v17, v18);
        if (!v1)
        {
          v27 = OUTLINED_FUNCTION_2_5(v19, v20, v21, v22, v23, v24, v25, v26, v67, v72, v77, v81, v85, v88);
          v31 = sub_1AC4AA578(v27, v28, v29, v30);
          if (v92)
          {
            OUTLINED_FUNCTION_103();
            OUTLINED_FUNCTION_27();
            v31 = v38();
          }

          v39 = v94;
          if (v94)
          {
            OUTLINED_FUNCTION_103();
            OUTLINED_FUNCTION_27();
            v31 = v40();
          }

          v41 = OUTLINED_FUNCTION_2_5(v31, v39, v32, v33, v34, v35, v36, v37, v68, v73, v78, v82, v86, v89);
          v45 = sub_1AC4AA60C(v41, v42, v43, v44);
          if ((v95 & 1) == 0)
          {
            OUTLINED_FUNCTION_171();
            OUTLINED_FUNCTION_10();
            v45 = v54();
          }

          v55 = v96;
          if (v96)
          {
            OUTLINED_FUNCTION_103();
            OUTLINED_FUNCTION_27();
            v45 = v56();
          }

          if (v97 != 2)
          {
            OUTLINED_FUNCTION_42_1(v97);
            OUTLINED_FUNCTION_10();
            v45 = v57();
          }

          OUTLINED_FUNCTION_74_1(v45, v87, v55, v46, v47, v48, v49, v50, v51, v52, v69, v74, v53);
          v58 = OUTLINED_FUNCTION_28_2();
          OUTLINED_FUNCTION_218(v58, v59, v60, v61, v62, v63, v64, v65, v70, v75, v79, v83);
        }
      }
    }
  }
}

uint64_t sub_1AC4AA4E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 37) != 3)
  {
    v8 = *(result + 37);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C6B14();
    return v6(&v8, 4, &type metadata for Google_Protobuf_FieldDescriptorProto.Label, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4AA578(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 38) != 18)
  {
    v8 = *(result + 38);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C6AC0();
    return v6(&v8, 5, &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4AA60C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 128);
  if (v4)
  {
    v7 = *(result + 136);
    v10 = *(result + 112);
    v11 = v4;
    v12 = v7;
    v8 = *(a4 + 136);
    v9 = sub_1AC4C0CBC();
    return v8(&v10, 8, &type metadata for Google_Protobuf_FieldOptions, v9, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v161 = *(a1 + 36);
  v155 = *(a1 + 37);
  v151 = *(a1 + 38);
  v152 = *(a1 + 32);
  v145 = *(a1 + 40);
  v149 = *(a1 + 48);
  v142 = *(a1 + 56);
  v147 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  LODWORD(v9) = *(a1 + 92);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  v16 = *(a1 + 144);
  v18 = *a2;
  v17 = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 36);
  v153 = *(a2 + 37);
  v150 = *(a2 + 38);
  v148 = *(a2 + 48);
  v146 = *(a2 + 64);
  v140 = *(a2 + 72);
  v141 = *(a2 + 56);
  v143 = *(a2 + 80);
  v144 = *(a2 + 40);
  LODWORD(v139) = *(a2 + 88);
  HIDWORD(v139) = *(a2 + 92);
  v23 = *(a2 + 96);
  v22 = *(a2 + 104);
  v25 = *(a2 + 112);
  v24 = *(a2 + 120);
  v27 = *(a2 + 128);
  v26 = *(a2 + 136);
  v28 = *(a2 + 144);
  if (v5)
  {
    if (!v19)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v5 != v19)
    {
      v127 = *(a2 + 136);
      v128 = *(a1 + 104);
      v121 = *(a1 + 120);
      v122 = *(a2 + 8);
      v119 = *(a1 + 136);
      v120 = *a2;
      v118 = *(a1 + 8);
      v130 = *(a1 + 128);
      v131 = *a1;
      v30 = *(a1 + 112);
      v31 = *(a1 + 144);
      v32 = *(a2 + 128);
      v129 = *(a2 + 120);
      LODWORD(v125) = *(a1 + 92);
      HIDWORD(v125) = *(a1 + 88);
      v9 = *(a2 + 112);
      v33 = *(a2 + 144);
      v34 = *(a1 + 96);
      v126 = *(a2 + 104);
      v35 = *(a2 + 96);
      v124 = *(a1 + 72);
      v36 = sub_1AC51F3D8();
      v23 = v35;
      v22 = v126;
      v26 = v127;
      v11 = v34;
      v10 = v128;
      v24 = v129;
      v28 = v33;
      v25 = v9;
      LODWORD(v9) = v125;
      v8 = HIDWORD(v125);
      v27 = v32;
      v16 = v31;
      v12 = v30;
      v14 = v130;
      v3 = v131;
      v15 = v119;
      v18 = v120;
      v13 = v121;
      v17 = v122;
      v6 = v124;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v161)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v152 == v20)
    {
      v37 = v21;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  if (v155 == 3)
  {
    if (v153 != 3)
    {
      return 0;
    }
  }

  else if (v153 == 3 || qword_1AC526938[v155] != qword_1AC526938[v153])
  {
    return 0;
  }

  if (v151 == 18)
  {
    if (v150 != 18)
    {
      return 0;
    }
  }

  else if (v150 == 18 || v151 != v150)
  {
    return 0;
  }

  if (v149)
  {
    if (!v148)
    {
      return 0;
    }

    if (v145 != v144 || v149 != v148)
    {
      v127 = v26;
      v128 = v10;
      v130 = v14;
      v132 = v3;
      v40 = v12;
      v41 = v16;
      v125 = __PAIR64__(v8, v9);
      v9 = v27;
      v129 = v24;
      v42 = v25;
      v162 = v28;
      v156 = v11;
      v126 = v22;
      v43 = v23;
      v124 = v6;
      v44 = sub_1AC51F3D8();
      v6 = v124;
      v11 = v156;
      v23 = v43;
      v22 = v126;
      v26 = v127;
      v10 = v128;
      v24 = v129;
      v28 = v162;
      v25 = v42;
      v27 = v9;
      LODWORD(v9) = v125;
      v8 = HIDWORD(v125);
      v16 = v41;
      v12 = v40;
      v14 = v130;
      v3 = v132;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v148)
  {
    return 0;
  }

  if (v147)
  {
    if (!v146)
    {
      return 0;
    }

    if (v142 != v141 || v147 != v146)
    {
      v127 = v26;
      v128 = v10;
      v130 = v14;
      v133 = v3;
      v46 = v12;
      v47 = v16;
      v125 = __PAIR64__(v8, v9);
      v9 = v27;
      v129 = v24;
      v48 = v25;
      v163 = v28;
      v157 = v11;
      v126 = v22;
      v49 = v23;
      v124 = v6;
      v50 = sub_1AC51F3D8();
      v6 = v124;
      v11 = v157;
      v23 = v49;
      v22 = v126;
      v26 = v127;
      v10 = v128;
      v24 = v129;
      v28 = v163;
      v25 = v48;
      v27 = v9;
      LODWORD(v9) = v125;
      v8 = HIDWORD(v125);
      v16 = v47;
      v12 = v46;
      v14 = v130;
      v3 = v133;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v146)
  {
    return 0;
  }

  if (v7)
  {
    if (!v143)
    {
      return 0;
    }

    if (v6 != v140 || v7 != v143)
    {
      v127 = v26;
      v128 = v10;
      v130 = v14;
      v134 = v3;
      v52 = v12;
      v53 = v16;
      v125 = __PAIR64__(v8, v9);
      v9 = v27;
      v129 = v24;
      v54 = v25;
      v164 = v28;
      v158 = v11;
      v126 = v22;
      v55 = v23;
      v56 = sub_1AC51F3D8();
      v23 = v55;
      v22 = v126;
      v26 = v127;
      v11 = v158;
      v10 = v128;
      v24 = v129;
      v28 = v164;
      v25 = v54;
      v27 = v9;
      LOBYTE(v9) = v125;
      v8 = HIDWORD(v125);
      v16 = v53;
      v12 = v52;
      v14 = v130;
      v3 = v134;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v143)
  {
    return 0;
  }

  if (v9)
  {
    if (!HIDWORD(v139))
    {
      return 0;
    }
  }

  else
  {
    v57 = BYTE4(v139);
    if (v8 != v139)
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v22)
    {
      return 0;
    }

    if (v11 != v23 || v10 != v22)
    {
      v130 = v14;
      v135 = v3;
      v59 = v12;
      v60 = v16;
      v61 = v26;
      v62 = v27;
      v129 = v24;
      v63 = v25;
      v165 = v28;
      v64 = sub_1AC51F3D8();
      v28 = v165;
      v25 = v63;
      v27 = v62;
      v26 = v61;
      v16 = v60;
      v12 = v59;
      v24 = v129;
      v14 = v130;
      v3 = v135;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (!v14)
  {
    v167 = v28;
    v160 = v16;
    v138 = v3;
    v90 = v12;
    v91 = v27;
    sub_1AC4B31CC(v12, v13, 0, v15);
    if (!v91)
    {
      OUTLINED_FUNCTION_255();
      sub_1AC4B31CC(v111, v112, v113, v114);
      sub_1AC4B3218(v90, v13, 0, v15);
      v89 = v138;
      v88 = v160;
      v87 = v167;
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_351();
    sub_1AC4B31CC(v92, v93, v94, v95);
    v14 = 0;
LABEL_79:
    v104 = OUTLINED_FUNCTION_226();
    sub_1AC4B3218(v104, v105, v14, v15);
    OUTLINED_FUNCTION_351();
    sub_1AC4B3218(v106, v107, v108, v109);
    return 0;
  }

  v169[0] = v12;
  v169[1] = v13;
  v169[2] = v14;
  v169[3] = v15;
  if (!v27)
  {
    sub_1AC4B31CC(v12, v13, v14, v15);
    OUTLINED_FUNCTION_255();
    sub_1AC4B31CC(v96, v97, v98, v99);
    v100 = OUTLINED_FUNCTION_226();
    sub_1AC4B31CC(v100, v101, v14, v15);
    v102 = OUTLINED_FUNCTION_226();
    sub_1AC4513F8(v102, v103);

    goto LABEL_79;
  }

  v168[0] = v25;
  v168[1] = v24;
  v168[2] = v27;
  v168[3] = v26;
  v136 = v3;
  v65 = v12;
  v159 = v16;
  v66 = v24;
  v67 = v25;
  v166 = v28;
  sub_1AC4B31CC(v12, v13, v14, v15);
  OUTLINED_FUNCTION_119();
  sub_1AC4B31CC(v68, v69, v70, v71);
  OUTLINED_FUNCTION_297();
  sub_1AC4B31CC(v72, v73, v74, v75);
  static Google_Protobuf_FieldOptions.== infix(_:_:)(v169, v168, v76, v77, v78, v79, v80, v81, v118, v119, v120, v121, v17, v124, v125, v126, v127, v128, v129, v130, v136, v139);
  v154 = v82;
  sub_1AC4513F8(v67, v66);

  sub_1AC4513F8(v65, v13);

  OUTLINED_FUNCTION_297();
  sub_1AC4B3218(v83, v84, v85, v86);
  v87 = v166;
  v88 = v159;
  v89 = v137;
  v17 = v123;
  if ((v154 & 1) == 0)
  {
    return 0;
  }

LABEL_82:
  if (v88 == 2)
  {
    if (v87 == 2)
    {
      goto LABEL_87;
    }

    return 0;
  }

  if (v87 == 2 || ((v88 ^ v87) & 1) != 0)
  {
    return 0;
  }

LABEL_87:
  v115 = v17;
  v116 = v89;
  sub_1AC4578F4(v89, v4);
  sub_1AC4578F4(v18, v115);
  v117 = MEMORY[0x1AC5B4070](v116, v4, v18, v115);
  sub_1AC4513F8(v18, v115);
  sub_1AC4513F8(v116, v4);
  return v117 & 1;
}

uint64_t Google_Protobuf_FieldDescriptorProto.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  memcpy(v9, v10, 0x91uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4AA0CC();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4AAF34(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4AA0CC();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldDescriptorProto.TypeEnum._protobuf_nameMap.getter()
{
  if (qword_1EB557D60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558428);
}

uint64_t static Google_Protobuf_FieldDescriptorProto.Label._protobuf_nameMap.getter()
{
  if (qword_1EB557D68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558448);
}

uint64_t static Google_Protobuf_OneofDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558468);
}

BOOL Google_Protobuf_OneofDescriptorProto.isInitialized.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  result = 1;
  if (v2)
  {
    v3 = *(v1 + 80);
    v4 = OUTLINED_FUNCTION_270(a1);
    if ((v4 & 1) == 0 || v3 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
    {
      return 0;
    }

    v5 = sub_1AC4A3D24(v2);
    static Internal.areAllInitialized(_:)(v5);
    OUTLINED_FUNCTION_234();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Google_Protobuf_OneofOptions.isInitialized.getter()
{
  OUTLINED_FUNCTION_338();
  v2 = *(v1 + 48);
  v4 = OUTLINED_FUNCTION_270(v3);
  if ((v4 & 1) == 0 || v2 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1AC4A3D24(v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_234();
  return v1 & 1;
}

void Google_Protobuf_OneofDescriptorProto.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 2)
    {
      v6 = OUTLINED_FUNCTION_7();
      sub_1AC4AB31C(v6, v7, v8, v9);
    }

    else if (v3 == 1)
    {
      OUTLINED_FUNCTION_298();
      OUTLINED_FUNCTION_36_0();
      v5();
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4AB31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0D38();
  return v7(a2 + 32, &type metadata for Google_Protobuf_OneofOptions, v8, a3, a4);
}

void sub_1AC4AB39C()
{
  OUTLINED_FUNCTION_147();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_170();
  }

  v3 = *(v2 + 48);
  v13[0] = *(v2 + 32);
  v13[1] = v3;
  v14[0] = *(v2 + 64);
  *(v14 + 14) = *(v2 + 78);
  if (*&v13[0])
  {
    v15 = *&v13[0];
    v16 = *(v2 + 40);
    v17 = *(v2 + 56);
    *v18 = *(v2 + 72);
    *&v18[14] = *(v2 + 86);
    OUTLINED_FUNCTION_384();
    v4 = *(v2 + 48);
    v11[0] = *(v2 + 32);
    v11[1] = v4;
    v12[0] = *(v2 + 64);
    *(v12 + 14) = *(v2 + 78);
    sub_1AC4859C0(v11, &v10);
    sub_1AC4825D4(v1);
    sub_1AC4575D8(v13, &qword_1EB5580C0, &unk_1AC520E20);
  }

  OUTLINED_FUNCTION_337();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2:
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
LABEL_10:
      if (v8 != v9)
      {
        goto LABEL_11;
      }

      return;
    case 3:
      return;
    default:
      if ((v6 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_OneofDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, 0x5EuLL);
  if (__dst[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_9_6();
    v3();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_12_6();
    v12 = sub_1AC4AB564(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!v2)
    {
      OUTLINED_FUNCTION_74_1(v12, __dst[0], v13, v14, v15, v16, v17, v18, v19, v20, v30, v32, v21);
      v22 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34, v35);
    }
  }
}

uint64_t sub_1AC4AB564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  if (v8)
  {
    v14 = *(result + 40);
    v15 = *(result + 56);
    *v16 = *(result + 72);
    *&v16[14] = *(result + 86);
    v13 = v8;
    v11 = *(a4 + 136);
    v12 = sub_1AC4C0D38();
    return v11(&v13, 2, &type metadata for Google_Protobuf_OneofOptions, v12, a3, a4);
  }

  return result;
}

void static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_336();
  v6 = *(v5 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 48);
  v164[0] = *(v2 + 32);
  v164[1] = v8;
  v165[0] = *(v2 + 64);
  *(v165 + 14) = *(v2 + 78);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 48);
  v13 = *(v3 + 64);
  *(v167 + 14) = *(v3 + 78);
  v166[1] = v12;
  v167[0] = v13;
  v166[0] = v11;
  if (!v7)
  {
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_10:
    v15 = *&v164[0];
    v16 = *&v166[0];
    if (*&v164[0])
    {
      OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_347(v17, v18, v19, v20, v21, v22, v23, v24, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v150, v151, v152, v153, *v154, *&v154[8], *&v154[16], *&v154[24], *&v164[0], v156, v157, v158, *v159);
      *&v154[14] = *&v159[14];
      if (*&v166[0])
      {
        OUTLINED_FUNCTION_238();
        *&v149[22] = *(v3 + 86);
        v145 = v16;
        OUTLINED_FUNCTION_345();
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v33, v34, v35, v36);
        OUTLINED_FUNCTION_334();
        OUTLINED_FUNCTION_129();
        v41 = sub_1AC4B3394(v37, v38, v39, v40);
        OUTLINED_FUNCTION_333(v41, v42, v43, v44, v45, v46, v47, v48, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v150, v151, v152, v153, *v154, *&v154[8], *&v154[16], *&v154[24], v155);
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v49, v50, v51, v52);
        v59 = static Google_Protobuf_OneofOptions.== infix(_:_:)(&v150, &v145, v53, v54, v55, v56, v57, v58, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, SWORD2(v140), v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[20], *&v149[24], v150, v151, v152, v153, *v154, *&v154[8], *&v154[16], *&v154[24], v155, v156, v157, v158);
        OUTLINED_FUNCTION_289(v59, v60, v61, v62, v63, v64, v65, v66, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149);
        *&v138[6] = *&v149[14];
        v67 = sub_1AC4B3264(&v133);
        OUTLINED_FUNCTION_344(v67, v68, v69, v70, v71, v72, v73, v74, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v150, v151, v152, v153, *v154);
        *&v144[6] = *&v154[14];
        sub_1AC4B3264(&v139);
        v145 = v15;
        OUTLINED_FUNCTION_241();
        *&v149[22] = *(v2 + 86);
        OUTLINED_FUNCTION_175();
        sub_1AC4575D8(v75, v76, v77);
        if ((v4 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_20:
        v124 = OUTLINED_FUNCTION_52();
        sub_1AC4578F4(v124, v125);
        v126 = OUTLINED_FUNCTION_18();
        sub_1AC4578F4(v126, v127);
        v128 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1AC5B4070](v128);
        v129 = OUTLINED_FUNCTION_18();
        sub_1AC4513F8(v129, v130);
        v131 = OUTLINED_FUNCTION_52();
        sub_1AC4513F8(v131, v132);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_346(v25, v26, v27, v28, v29, v30, v31, v32, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v150, v151, v152, v153, *v154, *&v154[8], *&v154[16], *&v154[24], v155, v156, v157, v158, *v159);
      *&v149[14] = *&v159[14];
      OUTLINED_FUNCTION_345();
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v86, v87, v88, v89);
      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_119();
      v94 = sub_1AC4B3394(v90, v91, v92, v93);
      OUTLINED_FUNCTION_333(v94, v95, v96, v97, v98, v99, v100, v101, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v150, v151, v152, v153, *v154, *&v154[8], *&v154[16], *&v154[24], v155);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v102, v103, v104, v105);
      sub_1AC4B3264(&v145);
    }

    else
    {
      if (!*&v166[0])
      {
        v155 = 0;
        *&v106 = OUTLINED_FUNCTION_67_1().n128_u64[0];
        OUTLINED_FUNCTION_249(v164, v107, v108, v109, v110, v111, v112, v113, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24], v106);
        OUTLINED_FUNCTION_249(v166, v114, v115, v116, v117, v118, v119, v120, v133, v134, v135, v136, v137, *v138, *&v138[8], *&v138[16], v139, v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, v147, v148, *v149, *&v149[8], *&v149[16], *&v149[24]);
        OUTLINED_FUNCTION_197();
        sub_1AC4575D8(v121, v122, v123);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v78, v79, v80, v81);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v82, v83, v84, v85);
    }

    OUTLINED_FUNCTION_67_1();
    v155 = v15;
    v160 = v16;
    v161 = *(v3 + 40);
    v162 = *(v3 + 56);
    *v163 = *(v3 + 72);
    *&v163[14] = *(v3 + 86);
    sub_1AC4575D8(&v155, &qword_1EB558A08, &qword_1AC520E40);
    goto LABEL_18;
  }

  if (v10)
  {
    v14 = v6 == v9 && v7 == v10;
    if (v14 || (sub_1AC51F3D8() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_OneofDescriptorProto.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  sub_1AC4AB39C();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4ABA04(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4AB39C();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558488);
}

BOOL Google_Protobuf_EnumDescriptorProto.isInitialized.getter()
{
  v2 = v0[7];
  v3 = v0[10];
  v4 = v0[14];
  v5 = sub_1AC4A3988(*v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_354();

  result = 0;
  if (v1)
  {
    if (!v2)
    {
      return 1;
    }

    v8 = v3;
    if (ExtensionFieldValueSet.isInitialized.getter())
    {
      if (!v4 || (v8 = v4, (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0))
      {
        v6 = sub_1AC4A3D24(v2);
        static Internal.areAllInitialized(_:)(v6);
        OUTLINED_FUNCTION_234();
        if (&v8)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void Google_Protobuf_EnumDescriptorProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_352();
        OUTLINED_FUNCTION_36_0();
        v8();
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_7();
        sub_1AC4ABCD0(v18, v19, v20, v21);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC4ABD50(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_7();
        sub_1AC4ABDD0(v14, v15, v16, v17);
        break;
      case 5:
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4ABCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFC98();
  return v7(a2, &type metadata for Google_Protobuf_EnumValueDescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4ABD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0DB4();
  return v7(a2 + 56, &type metadata for Google_Protobuf_EnumOptions, v8, a3, a4);
}

uint64_t sub_1AC4ABDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFCEC();
  return v7(a2 + 8, &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange, v8, a3, a4);
}

void sub_1AC4ABE50()
{
  OUTLINED_FUNCTION_147();
  if (*(v0 + 48))
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_170();
  }

  if (!*(*v2 + 16) || (OUTLINED_FUNCTION_17_0(), sub_1AC50EFF0(), !v1))
  {
    memcpy(__dst, (v2 + 56), 0x46uLL);
    if (__dst[0])
    {
      __dst[9] = __dst[0];
      v3 = *(v2 + 80);
      v94 = *(v2 + 64);
      v95 = v3;
      v96[0] = *(v2 + 96);
      *(v96 + 14) = *(v2 + 110);
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_248(v4, v5, v6, v7, v8, v9, v10, v11, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78);
      v12 = memcpy(v92, (v2 + 56), sizeof(v92));
      v20 = OUTLINED_FUNCTION_342(v12, v13, v14, v15, v16, v17, v18, v19, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]);
      v22 = sub_1AC4B3294(v20, v21);
      OUTLINED_FUNCTION_186(v22, v23, v24, v25, v26, v27, v28, v29, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v83);
      sub_1AC4B8010();
      if (v1)
      {
        MEMORY[0x1AC5B4BA0](v1);
      }

      v30 = sub_1AC4575D8(__dst, &qword_1EB5589B8, "R6");
      OUTLINED_FUNCTION_251(v30, v31, v32, v33, v34, v35, v36, v37, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81);
    }

    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_17_0(), sub_1AC516650(), !v1))
    {
      if (*(*(v2 + 16) + 16))
      {
        MEMORY[0x1AC5B48A0](5);
        sub_1AC51AAC4();
      }

      v38 = *(v2 + 24);
      v39 = *(v2 + 32);
      switch(v39 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_73();
          goto LABEL_18;
        case 2uLL:
          v40 = *(v38 + 16);
          v41 = *(v38 + 24);
LABEL_18:
          if (v40 != v41)
          {
            goto LABEL_19;
          }

          return;
        case 3uLL:
          return;
        default:
          if ((v39 & 0xFF000000000000) == 0)
          {
            return;
          }

LABEL_19:
          sub_1AC51EC58();
          break;
      }
    }
  }
}

void Google_Protobuf_EnumDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, 0x7EuLL);
  if (__dst[6])
  {
    OUTLINED_FUNCTION_9_6();
    v4();
    v0 = v2;
  }

  if (!v0)
  {
    if (!*(__dst[0] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4BFC98(), OUTLINED_FUNCTION_28(), v3(), !v2))
    {
      OUTLINED_FUNCTION_12_6();
      sub_1AC4AC144(v5, v6, v7, v8);
      if (!v2)
      {
        OUTLINED_FUNCTION_211();
        if (v18)
        {
          OUTLINED_FUNCTION_138();
          sub_1AC4BFCEC();
          OUTLINED_FUNCTION_28();
          v3();
        }

        v19 = __dst[2];
        if (*(__dst[2] + 16))
        {
          OUTLINED_FUNCTION_10();
          v19 = v20();
        }

        OUTLINED_FUNCTION_69_1(*&__dst[3], v19, v9, v10, v11, v12, v13, v14, v15, v16, v29, v31, v17);
        v21 = OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_218(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32, v33, v34);
      }
    }
  }
}

uint64_t sub_1AC4AC144(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v7 = *(result + 80);
    v11 = *(result + 64);
    v12 = v7;
    v13[0] = *(result + 96);
    *(v13 + 14) = *(result + 110);
    v10 = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4C0DB4();
    return v8(&v10, 3, &type metadata for Google_Protobuf_EnumOptions, v9, a3, a4);
  }

  return result;
}

void static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  v3 = v2;
  v5 = v4;
  v6 = v4[1];
  __s1 = v4[2];
  v7 = v4[5];
  v74 = v4[4];
  v78 = v4[3];
  v8 = v4[6];
  memcpy(v100, v4 + 7, 0x46uLL);
  v9 = *(v3 + 8);
  v82 = *(v3 + 16);
  v10 = *(v3 + 40);
  v66 = *(v3 + 32);
  v70 = *(v3 + 24);
  v11 = *(v3 + 48);
  memcpy(v101, (v3 + 56), 0x46uLL);
  if (!v8)
  {
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_10:
    OUTLINED_FUNCTION_44();
    if ((sub_1AC47D124() & 1) == 0)
    {
      goto LABEL_23;
    }

    v13 = v100[0];
    v14 = v101[0];
    if (v100[0])
    {
      __src[0] = v100[0];
      OUTLINED_FUNCTION_221();
      memcpy(__dst, __src, 0x46uLL);
      if (v14)
      {
        v22 = *(v3 + 80);
        *&v94[1] = *(v3 + 64);
        *&v94[3] = v22;
        *&v94[5] = *(v3 + 96);
        *(&v94[6] + 6) = *(v3 + 110);
        v94[0] = v14;
        OUTLINED_FUNCTION_317(v100, v15, v16, v17, v18, v19, v20, v21, v62, v66, v70, v74, v78, v82, __s1, v92[0], v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7], v92[8]);
        OUTLINED_FUNCTION_317(v101, v23, v24, v25, v26, v27, v28, v29, v63, v67, v71, v75, v79, v83, __s1b, v92[0], v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7], v92[8]);
        OUTLINED_FUNCTION_317(__src, v30, v31, v32, v33, v34, v35, v36, v64, v68, v72, v76, v80, v84, __s1c, v92[0], v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7], v92[8]);
        v43 = static Google_Protobuf_EnumOptions.== infix(_:_:)(__dst, v94, v37, v38, v39, v40, v41, v42, v65, v69, v73, v77, v81, v85, __s1d, v92[0], v92[1], v92[2], SWORD2(v92[2]), v92[3], v92[4], v92[5], v92[6], v92[7], v92[8], *v93, *&v93[8], *&v93[16], *&v93[24], *&v93[32], *&v93[40], *&v93[48], *&v93[52], *&v93[56], *&v93[64], v94[0], v94[1], v94[2], v94[3], v94[4], v94[5], v94[6], v94[7], v94[8], __dst[0], __dst[1]);
        memcpy(v92, v94, 0x46uLL);
        sub_1AC4B32CC(v92);
        memcpy(v93, __dst, 0x46uLL);
        sub_1AC4B32CC(v93);
        v94[0] = v13;
        v44 = v5[5];
        *&v94[1] = v5[4];
        *&v94[3] = v44;
        *&v94[5] = v5[6];
        *(&v94[6] + 6) = *(v5 + 110);
        sub_1AC4575D8(v94, &qword_1EB5589B8, "R6");
        if ((v43 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      memcpy(v94, __src, 0x46uLL);
      OUTLINED_FUNCTION_231(v100, v93);
      OUTLINED_FUNCTION_231(v101, v93);
      OUTLINED_FUNCTION_231(__src, v93);
      sub_1AC4B32CC(v94);
    }

    else
    {
      if (!v101[0])
      {
        __src[0] = 0;
        v52 = v5[5];
        *&__src[1] = v5[4];
        *&__src[3] = v52;
        *&__src[5] = v5[6];
        *(&__src[6] + 6) = *(v5 + 110);
        OUTLINED_FUNCTION_231(v100, __dst);
        OUTLINED_FUNCTION_231(v101, __dst);
        sub_1AC4575D8(__src, &qword_1EB5589B8, "R6");
LABEL_20:
        if (sub_1AC47D228(v6, v9, v45, v46, v47, v48, v49, v50, v62, v66, v70, v74, v78, v82, __s1, SBYTE1(__s1), SBYTE2(__s1), SBYTE3(__s1), SBYTE4(__s1), SBYTE5(__s1), SBYTE6(__s1), SHIBYTE(__s1), v92[0], SBYTE1(v92[0]), SBYTE2(v92[0]), SBYTE3(v92[0]), SBYTE4(v92[0]), SBYTE5(v92[0]), v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7], v92[8], *v93, *&v93[8], *&v93[16], *&v93[24], *&v93[32], *&v93[40]) & 1) != 0 && (sub_1AC47808C(__s1a, v86))
        {
          v53 = OUTLINED_FUNCTION_52();
          sub_1AC4578F4(v53, v54);
          v55 = OUTLINED_FUNCTION_18();
          sub_1AC4578F4(v55, v56);
          v57 = OUTLINED_FUNCTION_17_5();
          MEMORY[0x1AC5B4070](v57);
          v58 = OUTLINED_FUNCTION_18();
          sub_1AC4513F8(v58, v59);
          v60 = OUTLINED_FUNCTION_52();
          sub_1AC4513F8(v60, v61);
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_231(v100, __src);
      OUTLINED_FUNCTION_231(v101, __src);
    }

    OUTLINED_FUNCTION_221();
    __src[0] = v13;
    __src[9] = v14;
    v51 = *(v3 + 80);
    v97 = *(v3 + 64);
    v98 = v51;
    v99[0] = *(v3 + 96);
    *(v99 + 14) = *(v3 + 110);
    sub_1AC4575D8(__src, &qword_1EB558A20, &qword_1AC520E48);
    goto LABEL_23;
  }

  if (v11)
  {
    if (v7 == v10 && v8 == v11)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_18();
    if (sub_1AC51F3D8())
    {
      goto LABEL_10;
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_EnumDescriptorProto.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  sub_1AC4ABE50();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4AC67C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4ABE50();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4AC710()
{
  result = MEMORY[0x1AC5B4340](0xD000000000000012, 0x80000001AC52E980);
  qword_1EB5584A8 = 0xD000000000000023;
  unk_1EB5584B0 = 0x80000001AC52E2A0;
  return result;
}

uint64_t static Google_Protobuf_EnumDescriptorProto.EnumReservedRange._protobuf_nameMap.getter()
{
  if (qword_1EB557D88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5584B8);
}

void sub_1AC4AC840()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 2 || v3 == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v5();
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC4AC8C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x100000000) == 0)
  {
    v8 = a4;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v8);
  }

  if ((a5 & 0x100000000) == 0)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](a5);
  }

  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2;
      v10 = a2 >> 32;
      goto LABEL_10;
    case 2uLL:
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
LABEL_10:
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

void sub_1AC4AC98C()
{
  OUTLINED_FUNCTION_15_0();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 28);
  if ((*(v1 + 20) & 1) == 0)
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_10();
    v6();
    v0 = v2;
  }

  if (!v0)
  {
    if ((v5 & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v7(), !v2))
    {
      v8 = OUTLINED_FUNCTION_93_0();
      sub_1AC4578F4(v8, v9);
      v10 = OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_385(v10, v11, v12, v13, v14, v15, v16, v17, v3, v4);
    }
  }

  OUTLINED_FUNCTION_364();
}

uint64_t _s21InternalSwiftProtobuf07Google_C16_DescriptorProtoV13ReservedRangeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v4 = *(a2 + 28);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v5, v6);
  v7 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v7, v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_125();
  v9 = MEMORY[0x1AC5B4070]();
  v10 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v10, v11);
  v12 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v12, v13);
  return v9 & 1;
}

uint64_t _s21InternalSwiftProtobuf07Google_C16_DescriptorProtoV13ReservedRangeV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_232();
  v10 = OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  OUTLINED_FUNCTION_203(v10, v11, v12, v13);
  if (v1)
  {
    v14 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4ACC0C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = sub_1AC51F468();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  OUTLINED_FUNCTION_203(v11, v12, v13, v14);
  if (v2)
  {
    v15 = MEMORY[0x1AC5B4BA0](v2);
  }

  OUTLINED_FUNCTION_108(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumValueDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5584D8);
}

BOOL Google_Protobuf_EnumValueDescriptorProto.isInitialized.getter(uint64_t a1)
{
  v2 = *(v1 + 40);
  result = 1;
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = OUTLINED_FUNCTION_270(a1);
    if ((v4 & 1) == 0 || v3 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
    {
      return 0;
    }

    v5 = sub_1AC4A3D24(v2);
    static Internal.areAllInitialized(_:)(v5);
    OUTLINED_FUNCTION_234();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Google_Protobuf_EnumValueOptions.isInitialized.getter()
{
  OUTLINED_FUNCTION_338();
  v2 = *(v1 + 56);
  v4 = OUTLINED_FUNCTION_270(v3);
  if ((v4 & 1) == 0 || v2 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1AC4A3D24(v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_234();
  return v1 & 1;
}

void Google_Protobuf_EnumValueDescriptorProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 3:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC4ACEBC(v10, v11, v12, v13);
        break;
      case 2:
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
      case 1:
        OUTLINED_FUNCTION_298();
        OUTLINED_FUNCTION_36_0();
        v8();
        break;
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4ACEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0E30();
  return v7(a2 + 40, &type metadata for Google_Protobuf_EnumValueOptions, v8, a3, a4);
}

void sub_1AC4ACF3C()
{
  OUTLINED_FUNCTION_147();
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_170();
  }

  if ((*(v3 + 36) & 1) == 0)
  {
    v4 = *(v3 + 32);
    OUTLINED_FUNCTION_384();
    MEMORY[0x1AC5B48D0](v4);
  }

  memcpy(__dst, (v3 + 40), 0x71uLL);
  if (__dst[0])
  {
    __dst[15] = __dst[0];
    memcpy(v14, (v3 + 48), sizeof(v14));
    OUTLINED_FUNCTION_383();
    memcpy(__src, v2, sizeof(__src));
    memcpy(v12, (v3 + 40), 0x71uLL);
    sub_1AC4B32FC(v12, v10);
    sub_1AC4B8950();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
    }

    sub_1AC4575D8(__dst, &qword_1EB5589C0, &qword_1AC520E30);
    memcpy(v2, __src, 0x48uLL);
  }

  OUTLINED_FUNCTION_337();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_14;
    case 2:
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
LABEL_14:
      if (v8 != v9)
      {
        goto LABEL_15;
      }

      return;
    case 3:
      return;
    default:
      if ((v6 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_15:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_EnumValueDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, 0x99uLL);
  if (__dst[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_9_6();
    v3();
    v0 = v2;
  }

  if (!v0)
  {
    if ((__dst[2].n128_u8[4] & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v4(), !v2))
    {
      OUTLINED_FUNCTION_12_6();
      v9 = sub_1AC4AD160(v5, v6, v7, v8);
      if (!v2)
      {
        OUTLINED_FUNCTION_74_1(v9, __dst[0], v10, v11, v12, v13, v14, v15, v16, v17, v27, v29, v18);
        v19 = OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_218(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v31, v32);
      }
    }
  }
}

uint64_t sub_1AC4AD160(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    memcpy(v10, (result + 48), sizeof(v10));
    v9 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C0E30();
    return v7(&v9, 3, &type metadata for Google_Protobuf_EnumValueOptions, v8, a3, a4);
  }

  return result;
}

void static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_336();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 36);
  memcpy(__dst, (v2 + 40), 0x71uLL);
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 36);
  memcpy(v72, (v3 + 40), 0x71uLL);
  if (!v6)
  {
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_10:
    if (v8)
    {
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 == v11)
      {
        v14 = v12;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_25;
      }
    }

    v15 = __dst[0];
    v16 = v72[0];
    if (__dst[0])
    {
      __src[0] = __dst[0];
      OUTLINED_FUNCTION_371();
      memcpy(v68, __src, 0x71uLL);
      if (v16)
      {
        memcpy(&v67[1], (v3 + 48), 0x69uLL);
        v67[0] = v16;
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v17, v18, v19, v20);
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v21, v22, v23, v24);
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v25, v26, v27, v28);
        v29 = static Google_Protobuf_EnumValueOptions.== infix(_:_:)(v68, v67);
        memcpy(v65, v67, 0x71uLL);
        sub_1AC4B3334(v65);
        memcpy(v66, v68, 0x71uLL);
        sub_1AC4B3334(v66);
        v67[0] = v15;
        memcpy(&v67[1], (v2 + 48), 0x69uLL);
        OUTLINED_FUNCTION_175();
        sub_1AC4575D8(v30, v31, v32);
        if ((v29 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_27:
        v56 = OUTLINED_FUNCTION_52();
        sub_1AC4578F4(v56, v57);
        v58 = OUTLINED_FUNCTION_18();
        sub_1AC4578F4(v58, v59);
        v60 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1AC5B4070](v60);
        v61 = OUTLINED_FUNCTION_18();
        sub_1AC4513F8(v61, v62);
        v63 = OUTLINED_FUNCTION_52();
        sub_1AC4513F8(v63, v64);
        goto LABEL_25;
      }

      memcpy(v67, __src, 0x71uLL);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v41, v42, v43, v44);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v45, v46, v47, v48);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v49, v50, v51, v52);
      sub_1AC4B3334(v67);
    }

    else
    {
      if (!v72[0])
      {
        __src[0] = 0;
        OUTLINED_FUNCTION_371();
        OUTLINED_FUNCTION_285(__dst, v68);
        OUTLINED_FUNCTION_285(v72, v68);
        OUTLINED_FUNCTION_197();
        sub_1AC4575D8(v53, v54, v55);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v33, v34, v35, v36);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v37, v38, v39, v40);
    }

    __src[0] = v15;
    memcpy(&__src[1], (v2 + 48), 0x69uLL);
    __src[15] = v16;
    memcpy(v70, (v3 + 48), sizeof(v70));
    sub_1AC4575D8(__src, &qword_1EB558A28, &qword_1AC520E50);
    goto LABEL_25;
  }

  if (v9)
  {
    if (v5 == v10 && v6 == v9)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_93_0();
    if (sub_1AC51F3D8())
    {
      goto LABEL_10;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_EnumValueDescriptorProto.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  sub_1AC4ACF3C();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4AD660(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4ACF3C();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ServiceDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557D98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5584F8);
}

BOOL Google_Protobuf_ServiceDescriptorProto.isInitialized.getter()
{
  v2 = v0[5];
  v3 = v0[8];
  v4 = v0[11];
  v5 = sub_1AC4A3270(*v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_354();

  result = 0;
  if (v1)
  {
    if (!v2)
    {
      return 1;
    }

    v8 = v3;
    if (ExtensionFieldValueSet.isInitialized.getter())
    {
      if (!v4 || (v8 = v4, (ExtensionFieldValueSet.isInitialized.getter() & 1) != 0))
      {
        v6 = sub_1AC4A3D24(v2);
        static Internal.areAllInitialized(_:)(v6);
        OUTLINED_FUNCTION_234();
        if (&v8)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_ServiceOptions.isInitialized.getter()
{
  OUTLINED_FUNCTION_338();
  v2 = *(v1 + 48);
  v4 = OUTLINED_FUNCTION_270(v3);
  if ((v4 & 1) == 0 || v2 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1AC4A3D24(v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_234();
  return v1 & 1;
}

void Google_Protobuf_ServiceDescriptorProto.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC4AD9D4(v10, v11, v12, v13);
        break;
      case 2:
        v6 = OUTLINED_FUNCTION_7();
        sub_1AC4AD954(v6, v7, v8, v9);
        break;
      case 1:
        OUTLINED_FUNCTION_257();
        OUTLINED_FUNCTION_36_0();
        v5();
        break;
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4AD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFD40();
  return v7(a2, &type metadata for Google_Protobuf_MethodDescriptorProto, v8, a3, a4);
}

uint64_t sub_1AC4AD9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C0EAC();
  return v7(a2 + 40, &type metadata for Google_Protobuf_ServiceOptions, v8, a3, a4);
}

void Google_Protobuf_ServiceDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  memcpy(v3, v4, 0x67uLL);
  if (v54)
  {
    OUTLINED_FUNCTION_9_6();
    v5();
    v0 = v1;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_211();
    if (!v14 || (OUTLINED_FUNCTION_138(), sub_1AC4BFD40(), OUTLINED_FUNCTION_28(), v6 = v2(), !v1))
    {
      v15 = OUTLINED_FUNCTION_2_5(v6, v7, v8, v9, v10, v11, v12, v13, v41, v44, v47, v49, v51, v52);
      v23 = sub_1AC4ADB24(v15, v16, v17, v18, v19, v20, v21, v22);
      if (!v1)
      {
        OUTLINED_FUNCTION_69_1(v53, v23, v24, v25, v26, v27, v28, v29, v30, v31, v42, v45, v32);
        v33 = OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_218(v33, v34, v35, v36, v37, v38, v39, v40, v43, v46, v48, v50);
      }
    }
  }
}

uint64_t sub_1AC4ADB24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 40);
  if (v8)
  {
    v11 = *(result + 64);
    v15 = *(result + 48);
    v16 = v11;
    *v17 = *(result + 80);
    *&v17[15] = *(result + 95);
    v14 = v8;
    v12 = *(a4 + 136);
    v13 = sub_1AC4C0EAC();
    return v12(&v14, 3, &type metadata for Google_Protobuf_ServiceOptions, v13, a3, a4);
  }

  return result;
}

void static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_336();
  v5 = *(v4 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 56);
  v158[0] = *(v2 + 40);
  v158[1] = v7;
  v159[0] = *(v2 + 72);
  *(v159 + 15) = *(v2 + 87);
  v8 = *v3;
  v9 = v3[3];
  v10 = v3[4];
  *(v161 + 15) = *(v3 + 87);
  v11 = *(v3 + 9);
  v12 = *(v3 + 5);
  v160[1] = *(v3 + 7);
  v161[0] = v11;
  v160[0] = v12;
  if (!v6)
  {
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_10:
    OUTLINED_FUNCTION_93_0();
    if ((sub_1AC47BE28() & 1) == 0)
    {
      goto LABEL_19;
    }

    v14 = *&v158[0];
    v15 = *&v160[0];
    if (*&v158[0])
    {
      v149 = *&v158[0];
      OUTLINED_FUNCTION_142();
      *&v153[23] = *(v2 + 95);
      OUTLINED_FUNCTION_347(v16, v17, v18, v19, v20, v21, v22, v23, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v144, v145, v146, v147, *v148, *&v148[8], *&v148[16], *&v148[24], *&v158[0], v150, v151, v152, *v153);
      *&v148[15] = *&v153[15];
      if (*&v160[0])
      {
        v32 = *(v3 + 4);
        v142 = *(v3 + 3);
        *v143 = v32;
        *&v143[16] = *(v3 + 5);
        *&v143[31] = *(v3 + 95);
        v141 = *&v160[0];
        OUTLINED_FUNCTION_345();
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v33, v34, v35, v36);
        OUTLINED_FUNCTION_334();
        OUTLINED_FUNCTION_129();
        v41 = sub_1AC4B3394(v37, v38, v39, v40);
        OUTLINED_FUNCTION_333(v41, v42, v43, v44, v45, v46, v47, v48, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v144, v145, v146, v147, *v148, *&v148[8], *&v148[16], *&v148[24], v149);
        OUTLINED_FUNCTION_129();
        sub_1AC4B3394(v49, v50, v51, v52);
        v53 = static Google_Protobuf_ServiceOptions.== infix(_:_:)(&v144, &v141);
        OUTLINED_FUNCTION_289(v53, v54, v55, v56, v57, v58, v59, v60, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8]);
        *&v134[7] = *&v143[23];
        v61 = sub_1AC4B3364(&v129);
        OUTLINED_FUNCTION_344(v61, v62, v63, v64, v65, v66, v67, v68, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v144, v145, v146, v147, *v148);
        *&v140[7] = *&v148[15];
        sub_1AC4B3364(&v135);
        v141 = v14;
        v69 = *(v2 + 64);
        v142 = *(v2 + 48);
        *v143 = v69;
        *&v143[16] = *(v2 + 80);
        *&v143[31] = *(v2 + 95);
        OUTLINED_FUNCTION_175();
        sub_1AC4575D8(v70, v71, v72);
        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_21:
        v120 = OUTLINED_FUNCTION_52();
        sub_1AC4578F4(v120, v121);
        v122 = OUTLINED_FUNCTION_18();
        sub_1AC4578F4(v122, v123);
        v124 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1AC5B4070](v124);
        v125 = OUTLINED_FUNCTION_18();
        sub_1AC4513F8(v125, v126);
        v127 = OUTLINED_FUNCTION_52();
        sub_1AC4513F8(v127, v128);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_346(v24, v25, v26, v27, v28, v29, v30, v31, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v144, v145, v146, v147, *v148, *&v148[8], *&v148[16], *&v148[24], v149, v150, v151, v152, *v153);
      *&v143[23] = *&v153[15];
      OUTLINED_FUNCTION_345();
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v81, v82, v83, v84);
      OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_119();
      v89 = sub_1AC4B3394(v85, v86, v87, v88);
      OUTLINED_FUNCTION_333(v89, v90, v91, v92, v93, v94, v95, v96, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v144, v145, v146, v147, *v148, *&v148[8], *&v148[16], *&v148[24], v149);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v97, v98, v99, v100);
      sub_1AC4B3364(&v141);
    }

    else
    {
      if (!*&v160[0])
      {
        v149 = 0;
        *&v102 = OUTLINED_FUNCTION_142().n128_u64[0];
        *&v153[23] = *(v2 + 95);
        OUTLINED_FUNCTION_249(v158, v103, v104, v105, v106, v107, v108, v109, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32], v102);
        OUTLINED_FUNCTION_249(v160, v110, v111, v112, v113, v114, v115, v116, v129, v130, v131, v132, v133, *v134, *&v134[8], *&v134[16], v135, v136, v137, v138, v139, *v140, *&v140[8], *&v140[16], v141, v142, *(&v142 + 1), *v143, *&v143[8], *&v143[16], *&v143[24], *&v143[32]);
        OUTLINED_FUNCTION_197();
        sub_1AC4575D8(v117, v118, v119);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v73, v74, v75, v76);
      OUTLINED_FUNCTION_119();
      sub_1AC4B3394(v77, v78, v79, v80);
    }

    OUTLINED_FUNCTION_142();
    v101 = *(v3 + 4);
    v155 = *(v3 + 3);
    *&v153[23] = *(v2 + 95);
    v149 = v14;
    v154 = v15;
    v156 = v101;
    *v157 = *(v3 + 5);
    *&v157[15] = *(v3 + 95);
    sub_1AC4575D8(&v149, &qword_1EB558A38, &qword_1AC520E58);
    goto LABEL_19;
  }

  if (v10)
  {
    v13 = v5 == v9 && v6 == v10;
    if (v13 || (sub_1AC51F3D8() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_ServiceDescriptorProto.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  sub_1AC481C98(&v2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4ADFF4(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  sub_1AC481C98(&v3);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_MethodDescriptorProto._protobuf_nameMap.getter()
{
  if (qword_1EB557DA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558518);
}

BOOL Google_Protobuf_MethodDescriptorProto.isInitialized.getter(uint64_t a1)
{
  v2 = *(v1 + 64);
  result = 1;
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = OUTLINED_FUNCTION_270(a1);
    if ((v4 & 1) == 0 || v3 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
    {
      return 0;
    }

    v5 = sub_1AC4A3D24(v2);
    static Internal.areAllInitialized(_:)(v5);
    OUTLINED_FUNCTION_234();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf07Google_C12_EnumOptionsV13isInitializedSbvg_0()
{
  OUTLINED_FUNCTION_338();
  v2 = *(v1 + 56);
  v4 = OUTLINED_FUNCTION_270(v3);
  if ((v4 & 1) == 0 || v2 && (OUTLINED_FUNCTION_283(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1AC4A3D24(v0);
  static Internal.areAllInitialized(_:)(v5);
  OUTLINED_FUNCTION_234();
  return v1 & 1;
}

void Google_Protobuf_MethodDescriptorProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_357();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_298();
        goto LABEL_7;
      case 2:
      case 3:
      case 5:
      case 6:
LABEL_7:
        OUTLINED_FUNCTION_36_0();
        v12();
        break;
      case 4:
        v8 = OUTLINED_FUNCTION_7();
        sub_1AC4AE2C4(v8, v9, v10, v11);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4AE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1084();
  return v7(a2 + 64, &type metadata for Google_Protobuf_MethodOptions, v8, a3, a4);
}

void sub_1AC4AE344()
{
  OUTLINED_FUNCTION_147();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_170();
  }

  if (*(v2 + 40))
  {
    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_170();
  }

  if (*(v2 + 56))
  {
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_170();
  }

  memcpy(__dst, (v2 + 64), 0x46uLL);
  if (__dst[0])
  {
    __dst[9] = __dst[0];
    v94 = *(v2 + 72);
    v95 = *(v2 + 88);
    v96[0] = *(v2 + 104);
    *(v96 + 14) = *(v2 + 118);
    v3 = MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_248(v3, v4, v5, v6, v7, v8, v9, v10, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78);
    v11 = memcpy(v92, (v2 + 64), sizeof(v92));
    v19 = OUTLINED_FUNCTION_342(v11, v12, v13, v14, v15, v16, v17, v18, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]);
    v21 = sub_1AC4B33F8(v19, v20);
    OUTLINED_FUNCTION_186(v21, v22, v23, v24, v25, v26, v27, v28, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v83);
    sub_1AC4BA144();
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    v29 = sub_1AC4575D8(__dst, &qword_1EB5580B8, &qword_1AC5203C0);
    OUTLINED_FUNCTION_251(v29, v30, v31, v32, v33, v34, v35, v36, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81);
  }

  if (*(v2 + 134) != 2)
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  if (*(v2 + 135) != 2)
  {
    MEMORY[0x1AC5B48A0](6);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_337();
  switch(v39)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_20;
    case 2:
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
LABEL_20:
      if (v40 != v41)
      {
        goto LABEL_21;
      }

      return;
    case 3:
      return;
    default:
      if ((v38 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_21:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_MethodDescriptorProto.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v4 = memcpy(v2, v3, 0x88uLL);
  if (v51)
  {
    OUTLINED_FUNCTION_9_6();
    v4 = v11();
    v0 = v1;
  }

  if (!v0)
  {
    if (!v52 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v4 = v12(), !v1))
    {
      v13 = v53;
      if (!v53 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v4 = v14(), !v1))
      {
        v15 = OUTLINED_FUNCTION_2_5(v4, v13, v5, v6, v7, v8, v9, v10, v39, v42, v45, v47, v49, v50.n128_i8[0]);
        v19 = sub_1AC4AE628(v15, v16, v17, v18);
        if (!v1)
        {
          if (v54 != 2)
          {
            OUTLINED_FUNCTION_42_1(v54);
            OUTLINED_FUNCTION_10();
            v19 = v29();
          }

          if (v55 != 2)
          {
            OUTLINED_FUNCTION_42_1(v55);
            OUTLINED_FUNCTION_10();
            v19 = v30();
          }

          OUTLINED_FUNCTION_74_1(v19, v50, v20, v21, v22, v23, v24, v25, v26, v27, v40, v43, v28);
          v31 = OUTLINED_FUNCTION_28_2();
          OUTLINED_FUNCTION_218(v31, v32, v33, v34, v35, v36, v37, v38, v41, v44, v46, v48);
        }
      }
    }
  }
}

uint64_t sub_1AC4AE628(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4)
  {
    v7 = *(result + 88);
    v11 = *(result + 72);
    v12 = v7;
    v13[0] = *(result + 104);
    *(v13 + 14) = *(result + 118);
    v10 = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4C1084();
    return v8(&v10, 4, &type metadata for Google_Protobuf_MethodOptions, v9, a3, a4);
  }

  return result;
}

void static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_230();
  v3 = v2;
  v5 = v4;
  v109 = v4[1];
  v116 = *v4;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v137 = v4[6];
  v151 = v4[7];
  memcpy(v170, v4 + 8, 0x46uLL);
  LODWORD(v123) = *(v5 + 135);
  HIDWORD(v123) = *(v5 + 134);
  v95 = *(v3 + 8);
  v102 = *v3;
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  v130 = *(v3 + 48);
  v144 = *(v3 + 56);
  memcpy(v171, (v3 + 64), 0x46uLL);
  v14 = *(v3 + 134);
  v15 = *(v3 + 135);
  if (!v7)
  {
    if (v10)
    {
      goto LABEL_36;
    }

LABEL_10:
    if (v9)
    {
      if (!v12)
      {
        goto LABEL_36;
      }

      if (v8 != v13 || v9 != v12)
      {
        OUTLINED_FUNCTION_44();
        v22 = v21;
        v24 = v23;
        v25 = sub_1AC51F3D8();
        v14 = v24;
        v15 = v22;
        if ((v25 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_36;
    }

    if (v151)
    {
      if (!v144)
      {
        goto LABEL_36;
      }

      if (v137 != v130 || v151 != v144)
      {
        v27 = v15;
        v28 = v14;
        v29 = sub_1AC51F3D8();
        v14 = v28;
        v15 = v27;
        if ((v29 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v144)
    {
      goto LABEL_36;
    }

    v30 = v170[0];
    v31 = v171[0];
    if (v170[0])
    {
      v32 = v14;
      v33 = v15;
      *v162 = v170[0];
      *&v34 = OUTLINED_FUNCTION_205().n128_u64[0];
      OUTLINED_FUNCTION_380(v161, v35, v36, v37, v38, v39, v40, v41, v95, v102, v109, v116, v123, v130, v137, v144, v151, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *v159, *&v159[8], *&v159[16], *&v159[24], *&v159[32], *&v159[40], *&v159[48], *&v159[56], *&v159[64], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v161[0], v161[1], v161[2], v161[3], v161[4], v161[5], v161[6], v161[7], v161[8], v34);
      if (v31)
      {
        *&__src[1] = *(v3 + 72);
        *&__src[3] = *(v3 + 88);
        *&__src[5] = *(v3 + 104);
        *(&__src[6] + 6) = *(v3 + 118);
        __src[0] = v31;
        OUTLINED_FUNCTION_196(v170, v42, v43, v44, v45, v46, v47, v48, v96, v103, v110, v117, v124, v131, v138, v145, v152, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
        OUTLINED_FUNCTION_196(v171, v49, v50, v51, v52, v53, v54, v55, v97, v104, v111, v118, v125, v132, v139, v146, v153, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
        OUTLINED_FUNCTION_196(v162, v56, v57, v58, v59, v60, v61, v62, v98, v105, v112, v119, v126, v133, v140, v147, v154, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
        v63 = static Google_Protobuf_MethodOptions.== infix(_:_:)(v161, __src);
        memcpy(__dst, __src, 0x46uLL);
        sub_1AC4B3430(__dst);
        memcpy(v159, v161, 0x46uLL);
        sub_1AC4B3430(v159);
        __src[0] = v30;
        *&__src[1] = *(v5 + 9);
        *&__src[3] = *(v5 + 11);
        *&__src[5] = *(v5 + 13);
        *(&__src[6] + 6) = *(v5 + 118);
        sub_1AC4575D8(__src, &qword_1EB5580B8, &qword_1AC5203C0);
        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_38:
        if (HIDWORD(v123) == 2)
        {
          if (v32 != 2)
          {
            goto LABEL_36;
          }
        }

        else if (v32 == 2 || ((HIDWORD(v123) ^ v32) & 1) != 0)
        {
          goto LABEL_36;
        }

        if (v123 == 2)
        {
          if (v33 != 2)
          {
            goto LABEL_36;
          }
        }

        else if (v33 == 2 || ((v123 ^ v33) & 1) != 0)
        {
          goto LABEL_36;
        }

        v86 = OUTLINED_FUNCTION_52();
        sub_1AC4578F4(v86, v87);
        v88 = OUTLINED_FUNCTION_18();
        sub_1AC4578F4(v88, v89);
        v90 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1AC5B4070](v90);
        v91 = OUTLINED_FUNCTION_18();
        sub_1AC4513F8(v91, v92);
        v93 = OUTLINED_FUNCTION_52();
        sub_1AC4513F8(v93, v94);
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_380(__src, v42, v43, v44, v45, v46, v47, v48, v96, v103, v110, v117, v124, v131, v138, v145, v152, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], *v159, *&v159[8], *&v159[16], *&v159[24], *&v159[32], *&v159[40], *&v159[48], *&v159[56], *&v159[64], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v161[0], v161[1], v161[2], v161[3], v161[4], v161[5], v161[6], v161[7], v161[8]);
      OUTLINED_FUNCTION_196(v170, v64, v65, v66, v67, v68, v69, v70, v99, v106, v113, v120, v127, v134, v141, v148, v155, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
      OUTLINED_FUNCTION_196(v171, v71, v72, v73, v74, v75, v76, v77, v100, v107, v114, v121, v128, v135, v142, v149, v156, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
      OUTLINED_FUNCTION_196(v162, v78, v79, v80, v81, v82, v83, v84, v101, v108, v115, v122, v129, v136, v143, v150, v157, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
      sub_1AC4B3430(__src);
    }

    else
    {
      if (!v171[0])
      {
        v32 = v14;
        v33 = v15;
        *v162 = 0;
        v163 = *(v5 + 9);
        v164 = *(v5 + 11);
        v165[0] = *(v5 + 13);
        *(v165 + 14) = *(v5 + 118);
        OUTLINED_FUNCTION_231(v170, v161);
        OUTLINED_FUNCTION_231(v171, v161);
        sub_1AC4575D8(v162, &qword_1EB5580B8, &qword_1AC5203C0);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_231(v170, v162);
      OUTLINED_FUNCTION_231(v171, v162);
    }

    OUTLINED_FUNCTION_205();
    *v162 = v30;
    v166 = v31;
    v85 = *(v3 + 88);
    v167 = *(v3 + 72);
    v168 = v85;
    v169[0] = *(v3 + 104);
    *(v169 + 14) = *(v3 + 118);
    sub_1AC4575D8(v162, &qword_1EB558A40, &qword_1AC520E60);
    goto LABEL_36;
  }

  if (v10)
  {
    if (v6 == v11 && v7 == v10)
    {
      goto LABEL_10;
    }

    v17 = *(v3 + 135);
    v18 = *(v3 + 134);
    v19 = sub_1AC51F3D8();
    v14 = v18;
    v15 = v17;
    if (v19)
    {
      goto LABEL_10;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_229();
}

uint64_t Google_Protobuf_MethodDescriptorProto.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  memcpy(v9, v10, 0x88uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4AE344();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4AEC3C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4AE344();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FileOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557DA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558538);
}

uint64_t sub_1AC4AEDBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1AC4578F4(a2, a3);
  }

  return result;
}

void sub_1AC4AEE04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {

    sub_1AC4513F8(a2, a3);
  }
}

uint64_t sub_1AC4AEFA8()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 50463234;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 33686018;
  *(v0 + 76) = 2;
  bzero((v0 + 80), 0x8EuLL);
  *(v0 + 224) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t sub_1AC4AEFFC(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = 50463234;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0;
  *(v1 + 76) = 2;
  *(v1 + 72) = 33686018;
  bzero((v1 + 80), 0x8EuLL);
  *(v1 + 224) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 50);
  swift_beginAccess();
  *(v1 + 50) = v5;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + 51);
  swift_beginAccess();
  *(v1 + 51) = v5;
  swift_beginAccess();
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v7;
  *(v1 + 64) = v8;

  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v7;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v7;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v7;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 75);
  swift_beginAccess();
  *(v1 + 75) = v7;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 76) = v7;
  swift_beginAccess();
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;

  swift_beginAccess();
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v11;
  *(v1 + 104) = v12;

  swift_beginAccess();
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 112) = v13;
  *(v1 + 120) = v14;

  swift_beginAccess();
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v15;
  *(v1 + 136) = v16;

  swift_beginAccess();
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 144) = v17;
  *(v1 + 152) = v18;

  swift_beginAccess();
  v19 = *(a1 + 160);
  v20 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v19;
  *(v1 + 168) = v20;

  swift_beginAccess();
  v21 = *(a1 + 176);
  v22 = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v21;
  *(v1 + 184) = v22;

  swift_beginAccess();
  v23 = *(a1 + 192);
  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  LOWORD(v4) = *(a1 + 220);
  LODWORD(v6) = *(a1 + 216);
  swift_beginAccess();
  v26 = *(v1 + 200);
  v30 = *(v1 + 192);
  v27 = *(v1 + 208);
  *(v1 + 192) = v23;
  *(v1 + 200) = v24;
  *(v1 + 208) = v25;
  *(v1 + 216) = v6;
  *(v1 + 220) = v4;
  sub_1AC485860(v23, v24, v25);
  sub_1AC485714(v30, v26, v27);
  swift_beginAccess();
  v28 = *(a1 + 224);

  swift_beginAccess();
  *(v1 + 224) = v28;

  return v1;
}

void *sub_1AC4AF5DC()
{

  sub_1AC485714(*(v0 + 192), *(v0 + 200), *(v0 + 208));

  return v0;
}

uint64_t sub_1AC4AF664()
{
  v0 = sub_1AC4AF5DC();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

void sub_1AC4AF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  while (1)
  {
    v11 = v10(a4, a5, a3);
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    a3 = v11;
    switch(v11)
    {
      case 1:
        sub_1AC4AFA30();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 12:
      case 13:
      case 14:
      case 15:
      case 19:
      case 21:
      case 22:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 34:
      case 35:
      case 38:
      case 42:
      case 43:
      case 46:
      case 47:
      case 48:
      case 49:
        goto LABEL_8;
      case 8:
        sub_1AC4AFAA4(a2, a1, a4, a5);
        break;
      case 9:
        sub_1AC4AFB38(a2, a1, a4, a5);
        break;
      case 10:
        sub_1AC4AFBE4(a2, a1, a4, a5);
        break;
      case 11:
        sub_1AC4AFC78(a2, a1, a4, a5);
        break;
      case 16:
        sub_1AC4AFD0C(a2, a1, a4, a5);
        break;
      case 17:
        sub_1AC4AFDA0(a2, a1, a4, a5);
        break;
      case 18:
        sub_1AC4AFE34(a2, a1, a4, a5);
        break;
      case 20:
        sub_1AC4AFEC8(a2, a1, a4, a5);
        break;
      case 23:
        sub_1AC4AFF5C(a2, a1, a4, a5);
        break;
      case 27:
        sub_1AC4AFFF0(a2, a1, a4, a5);
        break;
      case 31:
        sub_1AC4B0084(a2, a1, a4, a5);
        break;
      case 36:
        sub_1AC4B0118(a2, a1, a4, a5);
        break;
      case 37:
        sub_1AC4B01AC(a2, a1, a4, a5);
        break;
      case 39:
        sub_1AC4B0240(a2, a1, a4, a5);
        break;
      case 40:
        sub_1AC4B02D4(a2, a1, a4, a5);
        break;
      case 41:
        sub_1AC4B0368(a2, a1, a4, a5);
        break;
      case 44:
        sub_1AC4B03FC(a2, a1, a4, a5);
        break;
      case 45:
        sub_1AC4B0490(a2, a1, a4, a5);
        break;
      case 50:
        sub_1AC4B0524(a2, a1, a4, a5);
        break;
      default:
        if (v11 == 999)
        {
          sub_1AC4B05D0(a2, a1, a4, a5);
        }

        else
        {
LABEL_8:
          if ((v11 - 1000) <= 0x1FFFFC17)
          {
            sub_1AC4B4724();
          }
        }

        break;
    }
  }
}

uint64_t sub_1AC4AFA30()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_321(v0 + 16, v0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_36_0();
  v1();
  return swift_endAccess();
}

uint64_t sub_1AC4AFAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 32, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6A6C();
  v7(a2 + 51, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 48, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 56, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 72, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 73, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 74, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 49, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 75, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 50, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 76, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 80, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 96, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 112, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B02D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 128, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 144, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 160, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 176, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  v7(a2 + 192, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B05D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFBE8();
  v7(a2 + 224, &type metadata for Google_Protobuf_UninterpretedOption, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B06D4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 24))
  {
    MEMORY[0x1AC5B48A0](1);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 40))
  {
    MEMORY[0x1AC5B48A0](8);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v8 = *(v7 + 51);
  if (v8 != 3)
  {
    MEMORY[0x1AC5B48A0](9);
    MEMORY[0x1AC5B48A0](v8 + 1);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 48) != 2)
  {
    MEMORY[0x1AC5B48A0](10);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 64))
  {
    MEMORY[0x1AC5B48A0](11);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 72) != 2)
  {
    MEMORY[0x1AC5B48A0](16);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 73) != 2)
  {
    MEMORY[0x1AC5B48A0](17);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 74) != 2)
  {
    MEMORY[0x1AC5B48A0](18);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 49) != 2)
  {
    MEMORY[0x1AC5B48A0](20);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 75) != 2)
  {
    MEMORY[0x1AC5B48A0](23);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 50) != 2)
  {
    MEMORY[0x1AC5B48A0](27);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 76) != 2)
  {
    MEMORY[0x1AC5B48A0](31);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 88))
  {
    MEMORY[0x1AC5B48A0](36);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 104))
  {
    MEMORY[0x1AC5B48A0](37);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 120))
  {
    MEMORY[0x1AC5B48A0](39);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 136))
  {
    MEMORY[0x1AC5B48A0](40);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 152))
  {
    MEMORY[0x1AC5B48A0](41);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 168))
  {
    MEMORY[0x1AC5B48A0](44);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 184))
  {
    MEMORY[0x1AC5B48A0](45);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v9 = *(v7 + 208);
  if (v9)
  {
    MEMORY[0x1AC5B48A0](50);
    memcpy(v17, v5, sizeof(v17));
    v10 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v10, v11);

    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
      v1 = 0;
    }

    v12 = OUTLINED_FUNCTION_93_0();
    sub_1AC485714(v12, v13, v9);
    memcpy(v5, v17, 0x48uLL);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (!*(*(v7 + 224) + 16) || (, sub_1AC50D0A4(), , !v1))
  {
    v14 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v14, v15, v16, v3);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B0BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AC4B0EBC();
  if (!v8)
  {
    sub_1AC4B0F58(a1, a2, a7, a8);
    sub_1AC4B100C(a1, a2, a7, a8);
    sub_1AC4B10B8(a1, a2, a7, a8);
    sub_1AC4B1150(a1, a2, a7, a8);
    sub_1AC4B1204(a1, a2, a7, a8);
    sub_1AC4B129C(a1, a2, a7, a8);
    sub_1AC4B1334(a1, a2, a7, a8);
    sub_1AC4B13CC(a1, a2, a7, a8);
    sub_1AC4B1464(a1, a2, a7, a8);
    sub_1AC4B14FC(a1, a2, a7, a8);
    sub_1AC4B1594(a1, a2, a7, a8);
    sub_1AC4B162C(a1, a2, a7, a8);
    sub_1AC4B16E0(a1, a2, a7, a8);
    sub_1AC4B1794(a1, a2, a7, a8);
    sub_1AC4B1848(a1, a2, a7, a8);
    sub_1AC4B18FC(a1, a2, a7, a8);
    sub_1AC4B19B0(a1, a2, a7, a8);
    sub_1AC4B1A64(a1, a2, a7, a8);
    sub_1AC4B1B18(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(*(a1 + 224) + 16))
    {
      v15 = *(a8 + 280);
      v16 = sub_1AC4BFBE8();

      v15(v17, 999, &type metadata for Google_Protobuf_UninterpretedOption, v16, a7, a8);
    }

    v19 = a5;
    v18 = *(a8 + 432);

    v18(&v19, 1000, 0x20000000, a7, a8);
  }

  return result;
}

uint64_t sub_1AC4B0EBC()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  OUTLINED_FUNCTION_22_5();
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = *(v3 + 16);
    v7 = *(v0 + 112);

    v7(v6, v5, 1, v1, v0);
    OUTLINED_FUNCTION_209();
  }

  return result;
}

uint64_t sub_1AC4B0F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a4 + 112);

    v10(v9, v8, 8, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 51) != 3)
  {
    v10 = *(a1 + 51);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6A6C();
    return v8(&v10, 9, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 48);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 10, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a4 + 112);

    v10(v9, v8, 11, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 72);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 16, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 73);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 17, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 74);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 18, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B13CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 49);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 20, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 75);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 23, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B14FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 50);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 27, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 76);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 31, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = *(a1 + 80);
    v10 = *(a4 + 112);

    v10(v9, v8, 36, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B16E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = *(a4 + 112);

    v10(v9, v8, 37, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = *(a1 + 112);
    v10 = *(a4 + 112);

    v10(v9, v8, 39, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(a1 + 128);
    v10 = *(a4 + 112);

    v10(v9, v8, 40, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B18FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = *(a1 + 144);
    v10 = *(a4 + 112);

    v10(v9, v8, 41, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a1 + 160);
    v10 = *(a4 + 112);

    v10(v9, v8, 44, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = *(a1 + 176);
    v10 = *(a4 + 112);

    v10(v9, v8, 45, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 220);
    v10 = *(a1 + 216);
    v16 = *(a1 + 192);
    v17 = v8;
    v18 = v10;
    v11.i64[0] = 0xFFFFFFFFFFFFLL;
    v11.i64[1] = 0xFFFFFFFFFFFFLL;
    v12 = vandq_s8(vdupq_n_s64(v10 | (v9 << 32)), v11);
    v13 = vshlq_u64(v12, xmmword_1AC520DE0);
    *v12.i8 = vmovn_s64(vshlq_u64(v12, xmmword_1AC520DF0));
    *v13.i8 = vmovn_s64(v13);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v12.i16[0];
    v13.i16[3] = v12.i16[2];
    v19 = vmovn_s16(v13).u32[0];
    v20 = BYTE1(v9);
    v14 = *(a4 + 136);
    v15 = sub_1AC4C1928();
    return v14(&v16, 50, &type metadata for Google_Protobuf_FeatureSet, v15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1C40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_147;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v6)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_147;
    }

    v11 = v8 == *(a2 + 32) && v9 == v10;
    if (!v11 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v10)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v12 = *(a1 + 48);
  swift_beginAccess();
  v13 = *(a2 + 48);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v14 = *(a1 + 49);
  swift_beginAccess();
  v15 = *(a2 + 49);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v16 = *(a1 + 50);
  swift_beginAccess();
  v17 = *(a2 + 50);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v18 = *(a1 + 51);
  swift_beginAccess();
  v19 = *(a2 + 51);
  if (v18 == 3)
  {
    if (v19 != 3)
    {
      goto LABEL_147;
    }
  }

  else if (v19 == 3 || v18 != v19)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  swift_beginAccess();
  v23 = *(a2 + 64);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_147;
    }

    v24 = v21 == *(a2 + 56) && v22 == v23;
    if (!v24 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v23)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  swift_beginAccess();
  v26 = *(a2 + 72);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v27 = *(a1 + 73);
  swift_beginAccess();
  v28 = *(a2 + 73);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v29 = *(a1 + 74);
  swift_beginAccess();
  v30 = *(a2 + 74);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v31 = *(a1 + 75);
  swift_beginAccess();
  v32 = *(a2 + 75);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v33 = *(a1 + 76);
  swift_beginAccess();
  v34 = *(a2 + 76);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  swift_beginAccess();
  v37 = *(a2 + 88);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_147;
    }

    v38 = v35 == *(a2 + 80) && v36 == v37;
    if (!v38 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v37)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v39 = *(a1 + 96);
  v40 = *(a1 + 104);
  swift_beginAccess();
  v41 = *(a2 + 104);
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_147;
    }

    v42 = v39 == *(a2 + 96) && v40 == v41;
    if (!v42 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v41)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 120);
  swift_beginAccess();
  v45 = *(a2 + 120);
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_147;
    }

    v46 = v43 == *(a2 + 112) && v44 == v45;
    if (!v46 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v45)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v47 = *(a1 + 128);
  v48 = *(a1 + 136);
  swift_beginAccess();
  v49 = *(a2 + 136);
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_147;
    }

    v50 = v47 == *(a2 + 128) && v48 == v49;
    if (!v50 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v49)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v51 = *(a1 + 144);
  v52 = *(a1 + 152);
  swift_beginAccess();
  v53 = *(a2 + 152);
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_147;
    }

    v54 = v51 == *(a2 + 144) && v52 == v53;
    if (!v54 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v53)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v55 = *(a1 + 160);
  v56 = *(a1 + 168);
  swift_beginAccess();
  v57 = *(a2 + 168);
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_147;
    }

    v58 = v55 == *(a2 + 160) && v56 == v57;
    if (!v58 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v57)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v59 = *(a1 + 176);
  v60 = *(a1 + 184);
  swift_beginAccess();
  v61 = *(a2 + 184);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_147;
    }

    v62 = v59 == *(a2 + 176) && v60 == v61;
    if (!v62 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }

LABEL_139:
    swift_beginAccess();
    v64 = *(a1 + 192);
    v63 = *(a1 + 200);
    v65 = *(a1 + 208);
    v66 = *(a1 + 216) | (*(a1 + 220) << 32);
    swift_beginAccess();
    v68 = *(a2 + 192);
    v67 = *(a2 + 200);
    v69 = *(a2 + 208);
    v70 = *(a2 + 216) | (*(a2 + 220) << 32);
    if (v65)
    {
      *v77 = v64;
      *&v77[8] = v63;
      *&v77[16] = v65;
      *&v77[24] = v66;
      *&v77[28] = WORD2(v66);
      if (v69)
      {
        *v74 = v68;
        *&v74[8] = v67;
        *&v74[16] = v69;
        *&v74[28] = WORD2(v70);
        *&v74[24] = v70;

        sub_1AC485860(v64, v63, v65);
        sub_1AC485860(v68, v67, v69);
        sub_1AC485860(v64, v63, v65);
        v71 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v77, v74);
        v75[0] = *v74;
        *(v75 + 14) = *&v74[14];
        sub_1AC4AEF78(v75);
        *v76 = *v77;
        *&v76[14] = *&v77[14];
        sub_1AC4AEF78(v76);
        sub_1AC485714(v64, v63, v65);
        if ((v71 & 1) == 0)
        {

          goto LABEL_147;
        }

LABEL_150:
        swift_beginAccess();
        swift_beginAccess();

        v72 = sub_1AC47DB68();

        return v72 & 1;
      }

      sub_1AC485860(v64, v63, v65);
      sub_1AC485860(v68, v67, 0);
      sub_1AC485860(v64, v63, v65);
      *v76 = *v77;
      *&v76[14] = *&v77[14];
      sub_1AC4AEF78(v76);
    }

    else
    {
      if (!v69)
      {

        sub_1AC485860(v64, v63, 0);
        sub_1AC485860(v68, v67, 0);
        sub_1AC485714(v64, v63, 0);
        goto LABEL_150;
      }

      sub_1AC485860(v64, v63, 0);
      sub_1AC485860(v68, v67, v69);
    }

    sub_1AC485714(v64, v63, v65);
    sub_1AC485714(v68, v67, v69);
    goto LABEL_147;
  }

  if (!v61)
  {
    goto LABEL_139;
  }

LABEL_147:
  v72 = 0;
  return v72 & 1;
}

uint64_t static Google_Protobuf_FileOptions.OptimizeMode._protobuf_nameMap.getter()
{
  if (qword_1EB557DB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558560);
}

uint64_t static Google_Protobuf_MessageOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558580);
}

void Google_Protobuf_MessageOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_98();
    v4 = v1(v3);
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_299();
        goto LABEL_11;
      case 2:
      case 3:
      case 7:
      case 11:
LABEL_11:
        OUTLINED_FUNCTION_36_0();
        v6();
        continue;
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
        goto LABEL_8;
      case 12:
        OUTLINED_FUNCTION_7();
        sub_1AC4BA02C();
        continue;
      default:
        if (v4 == 999)
        {
          OUTLINED_FUNCTION_7();
          sub_1AC4BA08C();
        }

        else
        {
LABEL_8:
          if (v4 - 1000 <= v2)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }
        }

        break;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4B292C()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  if (v0[33] != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  if (v0[34] != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  if (v0[35] != 2)
  {
    MEMORY[0x1AC5B48A0](7);
    sub_1AC51F488();
  }

  if (v0[36] != 2)
  {
    MEMORY[0x1AC5B48A0](11);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v4)
    {
      sub_1AC50D0A4();
    }

    v5 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v5, v6, v7, v8);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t Google_Protobuf_MessageOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4B292C();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B2FF4(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4B292C();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557DC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585A0);
}

uint64_t sub_1AC4B3174(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  a2(0);
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1AC4B31CC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B3218(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B3394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

double sub_1AC4B34A8()
{
  *(v0 + 16) = 515;
  *(v0 + 18) = 3;
  *(v0 + 19) = 33686018;
  *(v0 + 23) = 770;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 70) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  return result;
}

uint64_t sub_1AC4B3500(uint64_t a1)
{
  *(v1 + 16) = 515;
  *(v1 + 18) = 3;
  *(v1 + 23) = 770;
  *(v1 + 19) = 33686018;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 70) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = v3;
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v4;
  swift_beginAccess();
  v5 = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v5;
  swift_beginAccess();
  v6 = *(a1 + 18);
  swift_beginAccess();
  *(v1 + 18) = v6;
  swift_beginAccess();
  v7 = *(a1 + 19);
  swift_beginAccess();
  *(v1 + 19) = v7;
  swift_beginAccess();
  v8 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v8;
  swift_beginAccess();
  v9 = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v9;
  swift_beginAccess();
  v10 = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v10;
  swift_beginAccess();
  v11 = *(a1 + 23);
  swift_beginAccess();
  *(v1 + 23) = v11;
  swift_beginAccess();
  v12 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v12;
  swift_beginAccess();
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v13;
  swift_beginAccess();
  v14 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v14;

  swift_beginAccess();
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 76);
  v19 = *(a1 + 72);
  swift_beginAccess();
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);
  v32 = *(v1 + 64);
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  *(v1 + 64) = v17;
  *(v1 + 72) = v19;
  *(v1 + 76) = v18;
  sub_1AC485860(v15, v16, v17);
  sub_1AC485714(v20, v21, v32);
  swift_beginAccess();
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  LOBYTE(v18) = *(a1 + 120);
  swift_beginAccess();
  v27 = *(v1 + 88);
  v33 = *(v1 + 96);
  v34 = *(v1 + 80);
  v30 = *(v1 + 112);
  v31 = *(v1 + 104);
  *(v1 + 80) = v22;
  *(v1 + 88) = v23;
  *(v1 + 96) = v24;
  *(v1 + 104) = v25;
  *(v1 + 112) = v26;
  *(v1 + 120) = v18;
  sub_1AC4B3968(v22, v23, v24, v25, v26);
  sub_1AC4B39AC(v34, v27, v33, v31, v30);
  swift_beginAccess();
  v28 = *(a1 + 128);

  swift_beginAccess();
  *(v1 + 128) = v28;

  return v1;
}

uint64_t sub_1AC4B3968(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B39AC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B39F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC4578F4(result, a2);
  }

  return result;
}

unint64_t sub_1AC4B3A04()
{
  result = qword_1EB5589C8;
  if (!qword_1EB5589C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589C8);
  }

  return result;
}

void *sub_1AC4B3A58()
{

  sub_1AC485714(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1AC4B39AC(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_1AC4B3AB4()
{
  v0 = sub_1AC4B3A58();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void sub_1AC4B3B3C()
{
  OUTLINED_FUNCTION_60();
  v7 = v1;
  v3 = v2;
  v5 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_0_1();
    *(v0 + 24) = v3(v6);
  }

  OUTLINED_FUNCTION_129();
  v7();

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B3EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6A18();
  v7(a2 + 16, &type metadata for Google_Protobuf_FieldOptions.CType, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B3F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 17, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B3FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 21, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 19, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C69C4();
  v7(a2 + 18, &type metadata for Google_Protobuf_FieldOptions.JSType, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B41C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 22, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 20, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 23, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6970();
  v7(a2 + 24, &type metadata for Google_Protobuf_FieldOptions.OptionRetention, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 400);
  v8 = sub_1AC4C691C();
  v7(a2 + 32, &type metadata for Google_Protobuf_FieldOptions.OptionTargetType, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_222();
  v27 = OUTLINED_FUNCTION_321(v26 + 40, v26);
  v28 = *(v25 + 416);
  v24(v27);
  OUTLINED_FUNCTION_278();
  v28();
  swift_endAccess();
  OUTLINED_FUNCTION_284();
}

uint64_t sub_1AC4B4554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  v7(a2 + 48, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_222();
  v27 = OUTLINED_FUNCTION_321(v26 + 80, v26);
  v28 = *(v25 + 408);
  v24(v27);
  OUTLINED_FUNCTION_278();
  v28();
  swift_endAccess();
  OUTLINED_FUNCTION_284();
}

uint64_t sub_1AC4B4678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFBE8();
  v7(a2 + 128, &type metadata for Google_Protobuf_UninterpretedOption, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B4724()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_224();
  v0();
  OUTLINED_FUNCTION_260();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4B47A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  a6(a5, a1, a2, a3, a4);
  if (!v6)
  {
    v8 = OUTLINED_FUNCTION_32();
    sub_1AC4937B8(v8, v9, a3);
  }
}

void sub_1AC4B4838()
{
  OUTLINED_FUNCTION_31_2();
  v6 = *v0;
  v5 = v0[1];
  v7(v0[3], v4, *v0, v5, v0[2], v0[3], v3, v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_12_0();
    sub_1AC4578F4(v8, v9);
    v10 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_385(v10, v11, v12, v13, v14, v15, v16, v17, v6, v5);
  }
}

void sub_1AC4B48C8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8 != 3)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](v8);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 17) != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 21) != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 19) != 2)
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v9 = *(v7 + 18);
  if (v9 != 3)
  {
    MEMORY[0x1AC5B48A0](6);
    MEMORY[0x1AC5B48A0](v9);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 22) != 2)
  {
    MEMORY[0x1AC5B48A0](10);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 20) != 2)
  {
    MEMORY[0x1AC5B48A0](15);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 23) != 2)
  {
    MEMORY[0x1AC5B48A0](16);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v10 = *(v7 + 24);
  if (v10 != 3)
  {
    MEMORY[0x1AC5B48A0](17);
    MEMORY[0x1AC5B48A0](v10);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(*(v7 + 32) + 16))
  {
    MEMORY[0x1AC5B48A0](19);
    OUTLINED_FUNCTION_98();
    sub_1AC51AB2C();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (!*(*(v7 + 40) + 16) || (, sub_1AC50D840(), , !v0))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v11 = *(v7 + 64);
    if (v11)
    {
      v13 = *(v7 + 48);
      v12 = *(v7 + 56);
      MEMORY[0x1AC5B48A0](21);
      memcpy(__dst, v5, sizeof(__dst));
      sub_1AC4578F4(v13, v12);

      OUTLINED_FUNCTION_239();
      sub_1AC4BBFB4();
      if (v0)
      {
        MEMORY[0x1AC5B4BA0](v0);
        v1 = 0;
      }

      sub_1AC485714(v13, v12, v11);
      memcpy(v5, __dst, 0x48uLL);
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v14 = *(v7 + 112);
    if (v14 != 1)
    {
      v40 = v3;
      v16 = *(v7 + 88);
      v18 = *(v7 + 96);
      v17 = *(v7 + 104);
      v19 = *(v7 + 120);
      v34 = *(v7 + 80);
      v15 = v34;
      v35 = v16;
      v36 = v18;
      v37 = v17;
      v38 = v14;
      HIDWORD(v31) = v19;
      v39 = v19;
      MEMORY[0x1AC5B48A0](22);
      memcpy(__src, v5, sizeof(__src));
      sub_1AC4578F4(v15, v16);

      OUTLINED_FUNCTION_186(v20, v21, v22, v23, v24, v25, v26, v27, v31, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0]);
      sub_1AC4B7050();
      v1 = v0;
      if (v0)
      {
        MEMORY[0x1AC5B4BA0](v0);
        v1 = 0;
      }

      sub_1AC4B39AC(v15, v16, v18, v17, v14);
      memcpy(v5, __src, 0x48uLL);
      v3 = v40;
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    if (!*(*(v7 + 128) + 16) || (, sub_1AC50D0A4(), , !v1))
    {
      OUTLINED_FUNCTION_154();
      sub_1AC5175D4(v28, v29, v30, v3);
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B4CFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_1AC4B5044(a1, a2, a7, a8);
  if (!v8)
  {
    sub_1AC4B50F0(a1, a2, a7, a8);
    sub_1AC4B5188(a1, a2, a7, a8);
    sub_1AC4B5220(a1, a2, a7, a8);
    sub_1AC4B52B8(a1, a2, a7, a8);
    sub_1AC4B5364(a1, a2, a7, a8);
    sub_1AC4B53FC(a1, a2, a7, a8);
    sub_1AC4B5494(a1, a2, a7, a8);
    sub_1AC4B552C(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(a1[4] + 16))
    {
      v15 = a8[34];
      v16 = sub_1AC4C691C();

      v15(v17, 19, &type metadata for Google_Protobuf_FieldOptions.OptionTargetType, v16, a7, a8);
    }

    swift_beginAccess();
    if (*(a1[5] + 16))
    {
      v18 = a8[35];
      v19 = sub_1AC4C33B8();

      v18(v20, 20, &type metadata for Google_Protobuf_FieldOptions.EditionDefault, v19, a7, a8);
    }

    sub_1AC4B55D8(a1, a2, a7, a8);
    sub_1AC4B56E8(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(a1[16] + 16))
    {
      v21 = a8[35];
      v22 = sub_1AC4BFBE8();

      v21(v23, 999, &type metadata for Google_Protobuf_UninterpretedOption, v22, a7, a8);
    }

    v25 = a5;
    v24 = a8[54];

    v24(&v25, 1000, 0x20000000, a7, a8);
  }

  return result;
}

uint64_t sub_1AC4B5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 16) != 3)
  {
    v10 = *(a1 + 16);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6A18();
    return v8(&v10, 1, &type metadata for Google_Protobuf_FieldOptions.CType, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 17);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 2, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 21);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 3, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 19);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 5, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 18) != 3)
  {
    v10 = *(a1 + 18);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C69C4();
    return v8(&v10, 6, &type metadata for Google_Protobuf_FieldOptions.JSType, v9, a3, a4);
  }

  return result;
}