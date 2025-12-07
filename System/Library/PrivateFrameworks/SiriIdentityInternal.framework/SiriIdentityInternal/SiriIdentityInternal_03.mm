unint64_t sub_266E992B0()
{
  result = qword_2800E9918;
  if (!qword_2800E9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9918);
  }

  return result;
}

unint64_t sub_266E99308()
{
  result = qword_2800E9920;
  if (!qword_2800E9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9920);
  }

  return result;
}

uint64_t sub_266E9935C@<X0>(uint64_t *a1@<X8>)
{
  result = UserIdentifyIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1, uint64_t a2)
{

  return sub_266E9D014();
}

uint64_t CaseType.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_266E99420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CaseType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static CaseTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static CaseTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id CaseTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CaseTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CaseTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id CaseTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaseTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E99760()
{
  result = qword_2800E9928;
  if (!qword_2800E9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9928);
  }

  return result;
}

id static IdentityResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static IdentityResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266E99920();

    sub_266E9D384();
  }

  else
  {

    sub_266E9D3F4();
    sub_266E99920();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266E99920();
  v2 = sub_266E9D0B4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_266E99920()
{
  result = qword_2800E9930;
  if (!qword_2800E9930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9930);
  }

  return result;
}

id static IdentityResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___IdentityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Identity.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Identity.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Identity();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Identity.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Identity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Identity();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id IdentityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id IdentityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for IdentityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9A0F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266E9D374();
}

id SwitchProfileIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SwitchProfileAccountUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id SwitchProfileIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchProfileIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SwitchProfileIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchProfileIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SwitchProfileIntent();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266E9D014();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SwitchProfileIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SwitchProfileIntent();
  v12 = OUTLINED_FUNCTION_0_18(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SwitchProfileIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, a2);

  v5 = sub_266E9D014();

  if (v3)
  {
    v6 = sub_266E9CFB4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SwitchProfileIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, a2);

  v5 = sub_266E9D014();

  if (v3)
  {
    v6 = sub_266E9CFB4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SwitchProfileIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SwitchProfileIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266E9A6E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchProfileIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SwitchProfileIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266E9A7A8(uint64_t a1)
{
  v3 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SwitchProfileIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SwitchProfileIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SwitchProfileIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchProfileIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SwitchProfileIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SwitchProfileIntentResponse_code) = 0;
  v13 = type metadata accessor for SwitchProfileIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SwitchProfileIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SwitchProfileIntentResponse_code) = 0;
  v13 = type metadata accessor for SwitchProfileIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SwitchProfileIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SwitchProfileIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SwitchProfileIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SwitchProfileIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266E9AC98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchProfileAccountUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static SwitchProfileAccountResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id SwitchProfileAccountResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SwitchProfileAccountResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SwitchProfileAccountResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9AF2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266E9AF68()
{
  result = qword_2800E9940;
  if (!qword_2800E9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9940);
  }

  return result;
}

unint64_t sub_266E9AFC0()
{
  result = qword_2800E9948;
  if (!qword_2800E9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9948);
  }

  return result;
}

uint64_t sub_266E9B014@<X0>(uint64_t *a1@<X8>)
{
  result = SwitchProfileIntentResponse.code.getter();
  *a1 = result;
  return result;
}

unint64_t SwitchType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266E9B0A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SwitchType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static SwitchTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static SwitchTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id SwitchTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SwitchTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SwitchTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SwitchTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E9B3E4()
{
  result = qword_2800E9950;
  if (!qword_2800E9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9950);
  }

  return result;
}

id static AccountResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static AccountResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266E99920();

    sub_266E9D384();
  }

  else
  {

    sub_266E9D3F4();
    sub_266E99920();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266E99920();
  v2 = sub_266E9D0B4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static AccountResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AccountResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Account.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Account.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_19();
  if (v2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266E9D014();

  if (v1)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Account();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Account.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Account.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Account();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AccountResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AccountResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AccountResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E9BD34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_266E9D374();
}