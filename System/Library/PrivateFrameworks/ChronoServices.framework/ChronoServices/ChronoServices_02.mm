uint64_t sub_195F3025C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CHSControlConfigurationItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CHSMutableControlConfigurationItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(CHSControlConfigurationItem) initWithItem_];
  result = type metadata accessor for CHSControlConfigurationItem(v3);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id _sSo27CHSControlConfigurationItemC14ChronoServicesE16uniqueIdentifier15controlIdentity8locationABSS_So0aI0CSo17CHSWidgetLocationVtcfC_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_195FA0888();

  v8 = [v6 initWithUniqueIdentifier:v7 controlIdentity:a3 location:a4];

  return v8;
}

id CHSMutableControlConfigurationItem.init(uniqueIdentifier:controlIdentity:location:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_195FA0888();

  v10.receiver = v4;
  v10.super_class = CHSMutableControlConfigurationItem;
  v8 = objc_msgSendSuper2(&v10, sel_initWithUniqueIdentifier_controlIdentity_location_, v7, a3, a4);

  return v8;
}

id _sSo27CHSControlConfigurationItemC14ChronoServicesE16uniqueIdentifier15controlIdentityABSS_So0aI0CtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_195FA0888();

  v6 = [v4 initWithUniqueIdentifier:v5 controlIdentity:a3];

  return v6;
}

id CHSMutableControlConfigurationItem.init(uniqueIdentifier:controlIdentity:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_195FA0888();

  v8.receiver = v3;
  v8.super_class = CHSMutableControlConfigurationItem;
  v6 = objc_msgSendSuper2(&v8, sel_initWithUniqueIdentifier_controlIdentity_, v5, a3);

  return v6;
}

id sub_195F306D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy] = 0;
  v4[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment] = 0;
  v4[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance] = 0;
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes] = 3;
  v7 = sub_195FA0888();

  [v7 copy];

  sub_195FA0E08();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v8 = v13;
  v9 = &v4[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier];
  *v9 = v12;
  v9[1] = v8;
  [a3 copy];
  sub_195FA0E08();
  swift_unknownObjectRelease();
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  swift_dynamicCast();
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__controlIdentity] = v12;
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__location] = a4;
  v11.receiver = v4;
  v11.super_class = CHSControlConfigurationItem;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_195F30848()
{
  result = qword_1EAEED690;
  if (!qword_1EAEED690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED690);
  }

  return result;
}

uint64_t sub_195F3089C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_195EB4B30(255, &qword_1EAEEC310, off_1E74525B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_195F30A58()
{
  result = qword_1EAEED720;
  if (!qword_1EAEED720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED720);
  }

  return result;
}

unint64_t sub_195F30AB0()
{
  result = qword_1EAEED728;
  if (!qword_1EAEED728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED728);
  }

  return result;
}

unint64_t sub_195F30B08()
{
  result = qword_1EAEED730;
  if (!qword_1EAEED730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED730);
  }

  return result;
}

unint64_t sub_195F30B5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_195F30BF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  sub_195EB5F38(&qword_1EAEEC258, &qword_1EAEED740, &qword_195FAC5A0, MEMORY[0x1E695BF88]);
  return sub_195FA0738();
}

uint64_t sub_195F30C7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_195F30CC0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_195F30D54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  sub_195EB5F38(&qword_1EAEEC250, &qword_1EAEED748, &qword_195FAC5A8, MEMORY[0x1E695BFB0]);
  return sub_195FA0738();
}

uint64_t sub_195F30E14(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t FixedKeybagStateProvider.__allocating_init(lockState:hasUnlockedSinceBoot:)(_BYTE *a1, char a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  swift_allocObject();
  *(v4 + 16) = sub_195FA06F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  swift_allocObject();
  *(v4 + 32) = sub_195FA0728();
  *(v4 + 24) = a1;
  *(v4 + 40) = a2;
  return v4;
}

uint64_t FixedKeybagStateProvider.init(lockState:hasUnlockedSinceBoot:)(char *a1, char a2)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  swift_allocObject();
  *(v2 + 16) = sub_195FA06F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  swift_allocObject();
  *(v2 + 32) = sub_195FA0728();
  *(v2 + 24) = v4;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t FixedKeybagStateProvider.deinit()
{

  return v0;
}

uint64_t FixedKeybagStateProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F31068@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 24);
  return result;
}

uint64_t sub_195F310B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t WidgetAutomationService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedInstance];
  return v0;
}

uint64_t sub_195F3133C()
{
  v1 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_195F3145C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED750, &qword_195FAC638);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_195F316E8;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 fetchWidgetSceneInfoWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_195F3145C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_195F3167C;
  }

  else
  {
    v2 = sub_195F3156C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F3156C()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_195FA05F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED758, &qword_195FAC640);
  sub_195F317D0();
  sub_195FA05E8();
  sub_195EC0890(v1, v2);
  v3 = v0[10];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_195F3167C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_195F316E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDDA0, &unk_195FACFF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_195FA04D8();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

unint64_t sub_195F317D0()
{
  result = qword_1EAEED760;
  if (!qword_1EAEED760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEED758, &qword_195FAC640);
    sub_195F31854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED760);
  }

  return result;
}

unint64_t sub_195F31854()
{
  result = qword_1EAEED768;
  if (!qword_1EAEED768)
  {
    type metadata accessor for WidgetRendererSessionInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED768);
  }

  return result;
}

uint64_t WidgetAutomationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CHSWidgetDescriptorsPredicate __swiftcall CHSWidgetDescriptorsPredicate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.remoteWidgetInclusions = v2;
  result.super.isa = v1;
  result.includeRelevanceBacked = v3;
  return result;
}

id CHSWidgetDescriptorsPredicate.init()()
{
  *(v0 + OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions) = 0;
  *(v0 + OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked) = 0;
  v2.super_class = CHSWidgetDescriptorsPredicate;
  return objc_msgSendSuper2(&v2, sel_init);
}

CHSWidgetDescriptorsPredicate __swiftcall CHSWidgetDescriptorsPredicate.init(includingRelevanceBacked:)(Swift::Bool includingRelevanceBacked)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v3 = [v2 initIncludingRelevanceBacked_];
  result.remoteWidgetInclusions = v4;
  result.super.isa = v3;
  result.includeRelevanceBacked = v5;
  return result;
}

_BYTE *CHSWidgetDescriptorsPredicate.init(includingRelevanceBacked:)(char a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  v2[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = a1;
  *&v2[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t CHSWidgetDescriptorsPredicate.hash.getter()
{
  sub_195FA13F8();
  [v0 includeRelevanceBacked];
  sub_195FA13B8();
  MEMORY[0x19A8C4970]([v0 remoteWidgetInclusions]);
  return sub_195FA13D8();
}

uint64_t CHSWidgetDescriptorsPredicate.description.getter()
{
  v1 = v0;
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](60, 0xE100000000000000);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_195FA08B8();
  v6 = v5;

  MEMORY[0x19A8C3F70](v4, v6);

  MEMORY[0x19A8C3F70](0xD000000000000019, 0x8000000195FC0160);
  v7 = [v1 includeRelevanceBacked];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x19A8C3F70](v9, v10);

  MEMORY[0x19A8C3F70](0x65746F6D6572202CLL, 0xE90000000000003ALL);
  [v1 remoteWidgetInclusions];
  type metadata accessor for RemoteWidgetInclusions(0);
  sub_195FA1008();
  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  return 0;
}

uint64_t static CHSWidgetDescriptorsPredicate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEED770 = a1;
  return result;
}

Swift::Void __swiftcall CHSWidgetDescriptorsPredicate.encode(with:)(NSCoder with)
{
  v3 = [v1 includeRelevanceBacked];
  v4 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = [v1 remoteWidgetInclusions];
  v6 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

CHSWidgetDescriptorsPredicate_optional __swiftcall CHSWidgetDescriptorsPredicate.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v6 = v2;
  result.value.remoteWidgetInclusions = v3;
  result.value.super.isa = v6;
  result.is_nil = v5;
  result.value.includeRelevanceBacked = v4;
  return result;
}

uint64_t dispatch thunk of ControlsClientInterface.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_195F32D7C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ControlsClientInterface.controlDescriptor(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F323FC;

  return v9(a1, a2, a3);
}

uint64_t sub_195F323FC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ControlsClientInterface.allControlConfigurationsByHost()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_195F32D7C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ControlsClientInterface.sendPushToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F32774;

  return v9(a1, a2, a3);
}

uint64_t sub_195F32774()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ControlsClientInterface.sendPushUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F32D80;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsClientInterface.unsubscribeToPushes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F32D80;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsClientInterface.setControlState(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 144) + **(a4 + 144));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_195F32D80;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ControlsClientInterface.performControlAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 152) + **(a4 + 152));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_195F32D80;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_195F32D84()
{
  MKBEventsUnregister();

  return swift_deallocClassInstance();
}

uint64_t sub_195F32DDC()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_195EC7604;
  *(v2 + 24) = v0;
  v6[4] = sub_195EC7340;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_195EC7454;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_195F32F44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F32FA0(uint64_t a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  *(v1 + 32) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  if (v3 >> 62 && sub_195FA0E88())
  {
    sub_195F72C68(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_195F33038()
{
  sub_195F35074();

  return swift_deallocClassInstance();
}

void sub_195F330F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = [*(a1 + 16) groups];
  if (v5)
  {
    v6 = v5;
    sub_195EB4B30(0, &qword_1EAEEBCF0, off_1E74528D0);
    v7 = sub_195FA0B38();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }

LABEL_47:
    v8 = sub_195FA0E88();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_48:

    return;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_47;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_48;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v53 = v7 & 0xC000000000000001;
    swift_beginAccess();
    v9 = 0;
    v52 = v7 + 32;
    v50 = v7;
    v54 = v8;
    while (1)
    {
      v10 = v53 ? MEMORY[0x19A8C4520](v9, v7) : *(v52 + 8 * v9);
      v11 = v10;
      v55 = objc_autoreleasePoolPush();
      if (a2)
      {
        if ([v11 isDeletion])
        {
          break;
        }
      }

      v16 = [v11 kind];
      if (v16)
      {
        v17 = v16;
        sub_195FA08B8();
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = [v11 extensionIdentity];
      if (!v20)
      {
        goto LABEL_6;
      }

      v21 = v20;
      v22 = sub_195F6ECD4();

      if (!v22)
      {
        goto LABEL_6;
      }

      if (!v19)
      {
        goto LABEL_31;
      }

      v23 = objc_allocWithZone(CHSWidgetRelevanceKey);
      v24 = sub_195FA0888();

      v25 = [v23 initWithExtensionIdentity:v22 kind:v24];

      if (v25)
      {
        v26 = *(v3 + 48);
        if ((v26 & 0xC000000000000001) == 0)
        {
          if (*(v26 + 16))
          {
            v48 = a2;
            v49 = v3;
            sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818);

            v35 = sub_195FA0D78();
            v36 = -1 << *(v26 + 32);
            v37 = v35 & ~v36;
            if ((*(v26 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
            {
              v38 = ~v36;
              while (1)
              {
                v39 = *(*(v26 + 48) + 8 * v37);
                v40 = sub_195FA0D88();

                if (v40)
                {
                  break;
                }

                v37 = (v37 + 1) & v38;
                if (((*(v26 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              v3 = v49;
              a2 = v48;
              goto LABEL_43;
            }

LABEL_37:

            v3 = v49;
            a2 = v48;
          }

LABEL_38:
          swift_beginAccess();
          v41 = v25;
          sub_195F6B5F4(&v56, v41);
          swift_endAccess();

          v42 = *(v3 + 16);
          v43 = [v41 kind];
          if (!v43)
          {
            sub_195FA08B8();
            v43 = sub_195FA0888();
          }

          v44 = [v42 createString_];

          v45 = [v41 extensionIdentity];
          v46 = sub_195F35EA8(v45);

          sub_195F34498(v44, v46, v11, v3, a1);
          v47 = swift_beginAccess();
          MEMORY[0x19A8C40E0](v47);
          if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_195FA0B58();
          }

          sub_195FA0B78();
          swift_endAccess();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
LABEL_43:
          v7 = v50;
          goto LABEL_7;
        }

        v27 = v25;
        v28 = sub_195FA0EB8();

        if ((v28 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_7:
      ++v9;
      objc_autoreleasePoolPop(v55);

      if (v9 == v54)
      {

        return;
      }
    }

    v12 = [v11 kind];
    if (v12)
    {
      v13 = v12;
      sub_195FA08B8();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v29 = [v11 extensionIdentity];
    if (v29)
    {
      v30 = v29;
      v22 = sub_195F6ECD4();

      if (v22)
      {
        if (v15)
        {
          v31 = objc_allocWithZone(CHSWidgetRelevanceKey);
          v32 = sub_195FA0888();

          v33 = [v31 initWithExtensionIdentity:v22 kind:v32];

          if (v33)
          {
            swift_beginAccess();
            v34 = v33;
            sub_195F6B5F4(&v56, v34);
            swift_endAccess();
          }

          goto LABEL_7;
        }

LABEL_31:

        goto LABEL_7;
      }
    }

LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
}

void sub_195F3371C(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*a1 key];
  }

  v6 = v5;
  swift_beginAccess();
  v7 = *(v2 + 48);

  v8 = sub_195F353FC(v6, v7);

  if (v8)
  {
  }

  else
  {
    swift_beginAccess();
    v9 = v6;
    sub_195F6B5F4(&v16, v9);
    swift_endAccess();

    v10 = *(v2 + 16);
    v11 = [v9 kind];
    if (!v11)
    {
      sub_195FA08B8();
      v11 = sub_195FA0888();
    }

    v12 = [v10 createString_];

    v13 = [v9 extensionIdentity];
    v14 = sub_195F35EA8(v13);

    sub_195F33940(v12, v14, v3, v4, v2);
    v15 = swift_beginAccess();
    MEMORY[0x19A8C40E0](v15);
    if (*((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_195FA0B58();
    }

    sub_195FA0B78();
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void sub_195F33940(unint64_t a1, uint64_t a2, id a3, char a4, uint64_t a5)
{
  v5 = a5;
  if (a4)
  {
    v8 = *(a5 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_195F36C18;
    *(v9 + 24) = v5;
    *&v79 = sub_195F36C1C;
    *(&v79 + 1) = v9;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v78 = sub_195F36BF8;
    *(&v78 + 1) = &block_descriptor_94;
    v10 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v11 = v8;

    swift_unknownObjectRetain();

    [v11 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];

    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v12 = a3;
  v13 = [a3 relevances];
  sub_195EB4B30(0, &qword_1EAEEBD50, off_1E7452800);
  v14 = sub_195FA0B38();

  v15 = (v14 >> 62);
  v68 = a2;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

LABEL_68:
  v16 = sub_195FA0E88();
LABEL_6:
  v78 = 0u;
  v79 = 0u;
  aBlock = 0u;
  v80 = 1;
  v17 = sub_195F34288(&aBlock, v16);
  v69 = a1;
  if (v15)
  {
    v18 = sub_195FA0E88();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v14 & 0xC000000000000001;
  v71 = v14;
  v72 = v5;
  v75 = v18;
  if (!v18)
  {
    v70 = 0;
    while (1)
    {
      v67 = v12;
      v5 = v14 & 0xFFFFFFFFFFFFFF8;
      v74 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v18)
      {
        v29 = 0;
        v12 = (v14 + 32);
        while (2)
        {
          v14 = 56 * v29 + 80;
          while (1)
          {
            if (a1)
            {
              v30 = MEMORY[0x19A8C4520](v29, v71);
            }

            else
            {
              if (v29 >= *(v5 + 16))
              {
                goto LABEL_64;
              }

              v30 = *(v12 + v29);
            }

            v31 = v30;
            v15 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v32 = [v30 intentReference];
            if (v32)
            {
              break;
            }

            ++v29;
            v14 += 56;
            if (v15 == v18)
            {
              goto LABEL_46;
            }
          }

          v33 = v32;
          v34 = [v32 _partialConfigData];
          if (v34)
          {
            v35 = v34;
            v36 = sub_195FA04D8();
            v63 = v37;
            v65 = v36;

            v38 = *(v72 + 16);
            v61 = sub_195FA04B8();
            v59 = [v38 createVectorOfUInt8WithData:v61 alignment:8];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_195F4BB10(v17);
            }

            if (v29 >= *(v17 + 16))
            {
              goto LABEL_73;
            }

            *(v17 + v14 - 16) = v59;
            swift_unknownObjectRelease();
            swift_unknownObjectRetain();
            sub_195EC0890(v65, v63);
            if (v29 >= *(v17 + 16))
            {
              goto LABEL_74;
            }

            *(v17 + v14 - 24) = v70;
            swift_unknownObjectRelease();
            v5 = v74;
          }

          v39 = [v33 _intentData];
          if (v39)
          {
            v40 = v39;
            v41 = sub_195FA04D8();
            v64 = v42;
            v66 = v41;

            v43 = *(v72 + 16);
            v62 = sub_195FA04B8();
            v60 = [v43 createVectorOfUInt8WithData:v62 alignment:8];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_195F4BB10(v17);
            }

            sub_195EC0890(v66, v64);
            if (v29 >= *(v17 + 16))
            {
              goto LABEL_75;
            }

            *(v17 + v14 - 32) = v60;
            swift_unknownObjectRelease();
          }

          v44 = [v33 stableHash];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_195F4BB10(v17);
          }

          if (v29 >= *(v17 + 16))
          {
            goto LABEL_72;
          }

          v45 = (v17 + v14);
          *(v45 - 1) = v44;
          *v45 = 0;
          ++v29;
          v18 = v75;
          if (v15 != v75)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:
      if (v18)
      {
        v73 = a1;
        v46 = 0;
        a1 = 32;
        v47 = v71;
        v5 = v72;
        while (1)
        {
          if (v73)
          {
            v48 = MEMORY[0x19A8C4520](v46, v47);
          }

          else
          {
            if (v46 >= *(v74 + 16))
            {
              goto LABEL_65;
            }

            v48 = *(v47 + 8 * v46 + 32);
          }

          v49 = v48;
          v15 = [v48 attribute];
          if (v15)
          {
            v76[0] = *(v5 + 32);
            sub_195F367EC();
            v14 = v15;
            sub_195FA0A38();
            v15 = v50;
            v51 = *(v5 + 24);
            v12 = sub_195FA0888();
            [v51 encodeObject:v14 forKey:v12];

            v5 = v72;
            v52 = *(v72 + 32);
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_67;
            }

            *(v72 + 32) = v54;
            v12 = *(v72 + 16);
            v55 = sub_195FA0888();

            v15 = [v12 createString_];

            v47 = v71;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_195F4BB10(v17);
          }

          if (v46 >= *(v17 + 16))
          {
            break;
          }

          ++v46;
          *(v17 + a1) = v15;
          swift_unknownObjectRelease();
          a1 += 56;
          if (v75 == v46)
          {
            goto LABEL_61;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v5 = v72;
LABEL_61:

      v12 = sub_195F358B0(v17);

      v56 = *(v5 + 16);
      v5 = swift_allocObject();
      a1 = v69;
      *(v5 + 16) = v69;
      *(v5 + 24) = v68;
      *(v5 + 32) = v67;
      *(v5 + 40) = v12;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_195F36BF0;
      *(v17 + 24) = v5;
      v76[4] = sub_195F36C1C;
      v76[5] = v17;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 1107296256;
      v76[2] = sub_195F36BF8;
      v76[3] = &block_descriptor_104;
      v57 = _Block_copy(v76);
      swift_unknownObjectRetain();
      v58 = v67;
      swift_unknownObjectRetain();

      v14 = v56;
      swift_unknownObjectRetain();

      [v14 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v57);

      LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

      if ((v57 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_70:
      v19 = MEMORY[0x19A8C4520](0, v14);
LABEL_13:
      v20 = v19;
      v15 = [v19 intentReference];

      if (v15)
      {
        v21 = [v15 _partialSchemaData];
        if (v21)
        {
          v22 = v21;
          v23 = sub_195FA04D8();
          v25 = v24;

          v26 = *(v5 + 16);
          v27 = sub_195FA04B8();
          v70 = [v26 createVectorOfUInt8WithData:v27 alignment:8];

          v28 = v23;
          v14 = v71;
          sub_195EC0890(v28, v25);
          goto LABEL_19;
        }
      }

      v70 = 0;
LABEL_19:
      v18 = v75;
    }
  }

  if (a1)
  {
    goto LABEL_70;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v14 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void *sub_195F34288(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_195FA0B68();
      v5 = *v2;
      v17 = v2[1];
      v18 = v5;
      v6 = v2[2];
      v15 = v2[3];
      v16 = v6;
      v7 = v2[4];
      *(v4 + 16) = a2;
      v14 = v7;
      v8 = *(v2 + 1);
      *(v4 + 32) = *v2;
      *(v4 + 48) = v8;
      *(v4 + 64) = *(v2 + 2);
      *(v4 + 80) = *(v2 + 48);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = 88;
        do
        {
          v11 = v4 + v10;
          sub_195F2E0AC(&v18, &v13, &qword_1EAEED8C8, &qword_195FAC868);
          sub_195F2E0AC(&v17, &v13, &qword_1EAEED8D0, &unk_195FAC870);
          sub_195F2E0AC(&v16, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          sub_195F2E0AC(&v15, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          sub_195F2E0AC(&v14, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          v12 = *(v2 + 1);
          *v11 = *v2;
          *(v11 + 16) = v12;
          *(v11 + 32) = *(v2 + 2);
          *(v11 + 48) = *(v2 + 48);
          v10 += 56;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v18 = *result;
      sub_195F2DB00(&v18, &qword_1EAEED8C8, &qword_195FAC868);
      v17 = v2[1];
      sub_195F2DB00(&v17, &qword_1EAEED8D0, &unk_195FAC870);
      v16 = v2[2];
      sub_195F2DB00(&v16, &qword_1EAEED8D8, &unk_195FAC880);
      v15 = v2[3];
      sub_195F2DB00(&v15, &qword_1EAEED8D8, &unk_195FAC880);
      v14 = v2[4];
      sub_195F2DB00(&v14, &qword_1EAEED8D8, &unk_195FAC880);
      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

void sub_195F34498(unint64_t a1, unint64_t isEscapingClosureAtFileLocation, id a3, id *a4, uint64_t a5)
{
  v6 = a3;
  if ([a3 isDeletion])
  {
    v9 = a4[2];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = isEscapingClosureAtFileLocation;
    a4 = a1;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_195F36860;
    *(a1 + 24) = v10;
    *&v97 = sub_195F36C1C;
    *(&v97 + 1) = a1;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v96 = sub_195F36BF8;
    *(&v96 + 1) = &block_descriptor_83;
    v11 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v12 = v9;
    swift_unknownObjectRetain();

    v6 = [v12 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v13 = [v6 relevances];
  if (v13)
  {
    v14 = v13;
    sub_195EB4B30(0, &qword_1EAEEBD30, off_1E74528C0);
    v15 = sub_195FA0B38();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_73:
  v17 = sub_195FA0E88();
LABEL_9:
  v96 = 0u;
  v97 = 0u;
  aBlock = 0u;
  v98 = 1;
  v18 = sub_195F34288(&aBlock, v17);
  v81 = v6;
  if (v16)
  {
    v6 = sub_195FA0E88();
  }

  else
  {
    v6 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = v15;
  v19 = &selRef_appendString_counterpart_;
  v82 = isEscapingClosureAtFileLocation;
  v87 = v6;
  v83 = a1;
  if (!v6)
  {
    v29 = 0;
    isEscapingClosureAtFileLocation = v15 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        v84 = v29;
        v86 = a4;
        v90 = isEscapingClosureAtFileLocation;
        if (v6)
        {
          a1 = 0;
          a4 = v18;
          while (2)
          {
            v15 = 56 * a1 + 80;
            while (1)
            {
              if (isEscapingClosureAtFileLocation)
              {
                v32 = MEMORY[0x19A8C4520](a1, v89);
              }

              else
              {
                if (a1 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_69;
                }

                v32 = *(v89 + 32 + 8 * a1);
              }

              v16 = v32;
              v33 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }

              v34 = [v32 v19[317]];
              if (v34)
              {
                break;
              }

              ++a1;
              v15 += 56;
              if (v33 == v6)
              {
                goto LABEL_50;
              }
            }

            v85 = v34;
            v35 = [v34 partialIntentDataAsData];
            if (v35)
            {
              v91 = a4;
              v36 = v35;
              v37 = sub_195FA04D8();
              v39 = v38;

              v40 = v86[2];
              v79 = v37;
              v78 = v39;
              v41 = sub_195FA04B8();
              v42 = [v40 createVectorOfUInt8WithData:v41 alignment:8];

              v43 = v91;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v43 = sub_195F4BB10(v91);
              }

              if (a1 >= *(v43 + 2))
              {
                goto LABEL_78;
              }

              v44 = v43;
              v45 = &v43[v15];
              *(v45 - 2) = v42;
              swift_unknownObjectRelease();
              swift_unknownObjectRetain();
              sub_195EC0890(v79, v78);
              if (a1 >= *(v44 + 2))
              {
                goto LABEL_79;
              }

              a4 = v44;
              *(v45 - 3) = v84;
              swift_unknownObjectRelease();
              isEscapingClosureAtFileLocation = v90;
            }

            v46 = [v85 intentDataAsData];
            if (v46)
            {
              v47 = v46;
              v48 = sub_195FA04D8();
              v50 = v49;

              v51 = v86[2];
              v92 = v50;
              v52 = sub_195FA04B8();
              v80 = [v51 createVectorOfUInt8WithData:v52 alignment:8];

              v53 = a4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_195F4BB10(a4);
              }

              sub_195EC0890(v48, v92);
              if (a1 >= *(v53 + 2))
              {
                goto LABEL_80;
              }

              a4 = v53;
              *&v53[v15 - 32] = v80;
              swift_unknownObjectRelease();
              isEscapingClosureAtFileLocation = v90;
            }

            v54 = [v85 stableHash];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_195F4BB10(a4);
            }

            if (a1 >= a4[2])
            {
              goto LABEL_77;
            }

            v55 = a4 + v15;
            *(v55 - 1) = v54;
            *v55 = 0;
            ++a1;
            v6 = v87;
            if (v33 != v87)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          a4 = v18;
        }

LABEL_50:
        v56 = v86;
        if (v6)
        {
          v16 = 0;
          isEscapingClosureAtFileLocation = 0;
          v57 = 4;
          a1 = v89;
          while (1)
          {
            if (v90)
            {
              v58 = MEMORY[0x19A8C4520](v16, a1);
            }

            else
            {
              if (v16 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v58 = *(a1 + 8 * v16 + 32);
            }

            v15 = v58;
            v59 = [v58 attributeKey];
            if (v59)
            {
              v93 = a4;
              v60 = v59;
              sub_195FA08B8();
              v6 = v61;

              v62 = *(a5 + 24);
              v64 = MEMORY[0x1EEE9AC00](v63);
              MEMORY[0x1EEE9AC00](v64);

              os_unfair_lock_lock(v62 + 4);
              sub_195F367A8(v94);
              os_unfair_lock_unlock(v62 + 4);
              v66 = v94[0];

              v94[0] = v56[4];
              sub_195F367EC();
              a1 = v66;
              a4 = sub_195FA0A38();
              v67 = v56[3];
              v68 = sub_195FA0888();
              [v67 encodeObject:a1 forKey:v68];

              v56 = v86;
              v69 = v86[4];
              v70 = __OFADD__(v69, 1);
              v71 = v69 + 1;
              if (v70)
              {
                goto LABEL_72;
              }

              v86[4] = v71;
              v72 = v86[2];
              v73 = sub_195FA0888();

              v65 = [v72 createString_];

              a1 = v89;
              a4 = v93;
              v6 = v87;
            }

            else
            {
              v65 = 0;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_195F4BB10(a4);
            }

            if (v16 >= a4[2])
            {
              break;
            }

            ++v16;
            a4[v57] = v65;
            swift_unknownObjectRelease();
            v57 += 7;
            if (v6 == v16)
            {
              goto LABEL_66;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_66:

        v74 = sub_195F358B0(a4);

        v75 = v56[2];
        v76 = swift_allocObject();
        v18 = v83;
        v19 = v82;
        v76[2] = v83;
        v76[3] = v82;
        v76[4] = v81;
        v76[5] = v74;
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = sub_195F36840;
        *(isEscapingClosureAtFileLocation + 24) = v76;
        v94[4] = sub_195F36C1C;
        v94[5] = isEscapingClosureAtFileLocation;
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 1107296256;
        v94[2] = sub_195F36BF8;
        v94[3] = &block_descriptor_73;
        v15 = _Block_copy(v94);
        swift_unknownObjectRetain();
        a4 = v75;
        v77 = v81;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v6 = [a4 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v15);

        LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

        if ((v74 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_75:
        v20 = MEMORY[0x19A8C4520](0, v89);
LABEL_16:
        v21 = v20;
        v16 = [v20 v19[317]];

        if (v16)
        {
          break;
        }

LABEL_21:
        v29 = 0;
      }

      v22 = [v16 schemaDataAsData];
      if (!v22)
      {

        goto LABEL_21;
      }

      v23 = v22;
      v24 = isEscapingClosureAtFileLocation;
      v25 = sub_195FA04D8();
      v27 = v26;

      v28 = a4[2];
      v15 = sub_195FA04B8();
      v29 = [v28 createVectorOfUInt8WithData:v15 alignment:8];

      v30 = v25;
      isEscapingClosureAtFileLocation = v24;
      v31 = v27;
      v6 = v87;
      sub_195EC0890(v30, v31);
    }
  }

  isEscapingClosureAtFileLocation = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_75;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v15 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

id sub_195F34FB4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 setKind_];
  if (a3)
  {
    [a1 setExtensionIdentity_];
  }

  [a4 lastRelevanceUpdate];
  [a1 setLastRelevanceUpdate_];
  [a1 setSupportsBackgroundRefresh_];

  return [a1 setRelevances_];
}

void sub_195F35074()
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 56) = 1;
    v1 = *(v0 + 16);
    swift_beginAccess();
    v2 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F8, &unk_195FAC8A0);
    v3 = sub_195FA0B28();

    v4 = [v2 _chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets_];

    v5 = [*(v0 + 24) encodedData];
    v6 = sub_195FA04D8();
    v8 = v7;

    v9 = *(v0 + 16);
    v25 = v8;
    v10 = sub_195FA04B8();
    v11 = [v9 createVectorOfUInt8WithData:v10 alignment:8];

    v12 = *(v0 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    v14[2] = sub_195F36A70;
    v14[3] = v13;
    aBlock[4] = sub_195F36AC0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F36BF8;
    aBlock[3] = &block_descriptor_113;
    v15 = _Block_copy(aBlock);
    v16 = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v17 = [v16 _chsCreateRelevanceCacheBufUsingBlock_];

    _Block_release(v15);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    v18 = *(v0 + 16);
    aBlock[0] = 0;
    v19 = [v18 _chsFinishedBufferWithRootRelevanceCacheBufOfs_error_];
    v20 = aBlock[0];
    if (v19)
    {
      v21 = sub_195FA04D8();
      v23 = v22;
      sub_195EC0890(v6, v25);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_195EC0890(v21, v23);
    }

    else
    {
      v24 = v20;
      sub_195FA0328();

      swift_willThrow();
      sub_195EC0890(v6, v25);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_195F353FC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_195FA0EB8();
  }

  else if (*(a2 + 16) && (sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818), v5 = sub_195FA0D78(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_195FA0D88();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_195F35514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v5 = a5, sub_195FA1398(), sub_195F37930(a1, a2, a3, a4), sub_195FA0958(), , v10 = sub_195FA13E8(), v11 = -1 << *(v5 + 32), v12 = v10 & ~v11, v45 = v5 + 56, ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v47 = a1;
    v48 = a2;
    v43 = ~v11;
    v49 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    v46 = v13;
    v44 = v5;
    while (1)
    {
      v14 = (*(v5 + 48) + 32 * v12);
      v16 = *v14;
      v15 = v14[1];
      v18 = v14[2];
      v17 = v14[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v20 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v21 = v17 ? v18 : 0;
      *(inited + 32) = v21;
      *(inited + 40) = v17;
      *(inited + 48) = v16;
      *(inited + 56) = v15;

      sub_195EB6308(v20, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_195FAC070;
      v23 = sub_195EB5F80();
      v24 = sub_195EB6074(v23);
      v26 = v25;

      *(v22 + 32) = v24;
      *(v22 + 40) = v26;

      sub_195EB6214(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v28 = sub_195FA0828();
      v30 = v29;

      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_195FAC280;
      *(v31 + 32) = v46;
      *(v31 + 40) = v49;
      *(v31 + 48) = v47;
      *(v31 + 56) = v48;

      sub_195EB6308(v31, v50);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_195FAC070;
      v33 = sub_195EB5F80();
      v34 = sub_195EB6074(v33);
      v36 = v35;

      *(v32 + 32) = v34;
      *(v32 + 40) = v36;

      sub_195EB6214(v37);
      v38 = sub_195FA0828();
      v40 = v39;

      if (v28 == v38 && v30 == v40)
      {
        break;
      }

      v41 = sub_195FA12B8();

      if ((v41 & 1) == 0)
      {
        v5 = v44;
        v12 = (v12 + 1) & v43;
        if ((*(v45 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          continue;
        }
      }

      return v41 & 1;
    }

    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

id sub_195F358B0(uint64_t a1)
{
  v49 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v33 = 0;
    v34 = 0;
    v2 = 0;
    v3 = 0;
    v4 = (a1 + 80);
    while (1)
    {
      v39 = v2;
      v40 = v3;
      v36 = v4;
      v37 = v1;
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v8 = *(v4 - 4);
      v7 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v50 = *v4;
      v48 = 0;
      v41 = v5;
      v38 = v10;
      if (v8 || v7 || v9)
      {
        v12 = *(v35 + 16);
        v13 = swift_allocObject();
        *(v13 + 16) = v5;
        *(v13 + 24) = v6;
        *(v13 + 32) = v8;
        *(v13 + 40) = v7;
        *(v13 + 48) = v9;
        *(v13 + 56) = v10;
        v14 = v50;
        *(v13 + 64) = v50;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        v32 = v6;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        v15 = v12;
        sub_195EB6E70(v34, v33);
        v16 = swift_allocObject();
        *(v16 + 16) = sub_195F366FC;
        *(v16 + 24) = v13;
        v46 = sub_195F36C1C;
        v47 = v16;
        aBlock = MEMORY[0x1E69E9820];
        v43 = 1107296256;
        v44 = sub_195F36BF8;
        v45 = &block_descriptor_64;
        v17 = _Block_copy(&aBlock);

        v18 = [v15 _chsCreateIntentReferenceBufUsingBlock_];

        _Block_release(v17);
        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

        if (v17)
        {
          goto LABEL_17;
        }

        v48 = v18;
        swift_unknownObjectRelease();
        v33 = v13;
        v34 = sub_195F366FC;
        v11 = v14;
        v5 = v41;
        v6 = v32;
      }

      else
      {
        swift_unknownObjectRetain();
        v11 = v50;
        swift_unknownObjectRetain();
      }

      v20 = *(v35 + 16);
      v3 = swift_allocObject();
      *(v3 + 16) = &v48;
      *(v3 + 24) = v5;
      *(v3 + 32) = v6;
      *(v3 + 40) = v8;
      *(v3 + 48) = v7;
      *(v3 + 56) = v9;
      *(v3 + 64) = v38;
      *(v3 + 72) = v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = v20;
      sub_195EB6E70(v39, v40);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_195F36690;
      *(v22 + 24) = v3;
      v46 = sub_195F36C1C;
      v47 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_195F36BF8;
      v45 = &block_descriptor_55;
      v23 = _Block_copy(&aBlock);

      v24 = [v21 _chsCreateWidgetRelevanceBufUsingBlock_];

      _Block_release(v23);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        break;
      }

      v25 = swift_unknownObjectRetain();
      MEMORY[0x19A8C40E0](v25);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_195FA0B58();
      }

      sub_195FA0B78();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v4 = v36 + 56;
      v2 = sub_195F36690;
      v1 = v37 - 1;
      if (v37 == 1)
      {
        v26 = sub_195F36690;
        v28 = v33;
        v27 = v34;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v3 = 0;
LABEL_15:
    v29 = *(v35 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED850, &unk_195FAC858);
    v30 = sub_195FA0B28();

    v31 = [v29 _chsCreateVectorOfWidgetRelevanceBufWithOffsets_];

    sub_195EB6E70(v27, v28);
    sub_195EB6E70(v26, v3);
    return v31;
  }

  return result;
}

id sub_195F35E08(id result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    result = [result setIntentData_];
  }

  if (*(a2 + 32))
  {
    result = [v3 setPartialIntentData_];
  }

  if (*(a2 + 24))
  {
    result = [v3 setSchemaData_];
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    v4 = *(a2 + 40);

    return [v3 setStableHash_];
  }

  return result;
}

id sub_195F35EA8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 64);

  v4 = a1;
  v5 = sub_195F362F8(v4, v3);

  if (v5)
  {

    return v5;
  }

  swift_beginAccess();
  v6 = *(v1 + 16);

  v7 = v6;
  v8 = sub_195FA0888();
  v9 = [v7 createString_];

  v10 = &v4[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  if (*(v10 + 1))
  {
    v11 = *(v1 + 16);

    v12 = v11;
    v13 = sub_195FA0888();
    v14 = [v12 createString_];
  }

  else
  {
    v14 = 0;
  }

  v15 = &v4[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  if (*(v15 + 1))
  {
    v16 = *(v1 + 16);

    v17 = v16;
    v18 = sub_195FA0888();
    v19 = [v17 createString_];
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v1 + 16);
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = v14;
  v21[4] = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_195F364FC;
  *(v22 + 24) = v21;
  aBlock[4] = sub_195F36C1C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195F36BF8;
  aBlock[3] = &block_descriptor_4;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v24 = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v5 = [v24 _chsCreateExtensionIdentityBufUsingBlock_];

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v26 = *(v1 + 64);
    if ((v26 & 0xC000000000000001) == 0)
    {
      swift_unknownObjectRetain_n();
      v29 = v4;
      goto LABEL_19;
    }

    if (v26 < 0)
    {
      v27 = *(v1 + 64);
    }

    else
    {
      v27 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain_n();
    v28 = v4;
    result = sub_195FA0E88();
    if (!__OFADD__(result, 1))
    {
      *(v1 + 64) = sub_195F828CC(v27, result + 1);
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v1 + 64);
      sub_195F5CC1C(v5, v4, isUniquelyReferenced_nonNull_native);
      *(v1 + 64) = v31;

      swift_endAccess();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F362F8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_195FA1038();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F0, qword_195FAC840);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_195F59D70(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_195F363B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_195FA1038();

    if (v2)
    {
      type metadata accessor for ControlSessionSubscriptionRequest();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_195F59EE8(a1);
    if (v4)
    {
    }
  }

  return 0;
}

id sub_195F36468(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2)
  {
    result = [result setExtensionBundleIdentifier_];
  }

  if (a3)
  {
    result = [v6 setContainerBundleIdentifier_];
  }

  if (a4)
  {

    return [v6 setDeviceIdentifier_];
  }

  return result;
}

uint64_t sub_195F36508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_195EB4B30(0, &qword_1EAEEBCF8, off_1E7452808);
  v8 = *(a1 + 32);
  if (!v8)
  {
    v11 = [*(a1 + 16) archivedObjectsAsData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_195FA04D8();
      v15 = v14;

      v16 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      v17 = sub_195F368B8(v13, v15);
      sub_195EC0890(v13, v15);
      if (v3)
      {
        return v7;
      }

      v18 = *(a1 + 32);
      *(a1 + 32) = v17;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      sub_195F36864();
      swift_allocError();
      *v19 = a2;
      v19[1] = a3;
      swift_willThrow();

      return v7;
    }
  }

  v9 = v8;
  v10 = sub_195FA0D58();
  if (v10)
  {
    v7 = v10;
  }

  else
  {
    sub_195F36864();
    swift_allocError();
    *v20 = a2;
    v20[1] = a3;
    swift_willThrow();
  }

  return v7;
}

id sub_195F36690(id result)
{
  v2 = result;
  if (**(v1 + 16))
  {
    result = [result setIntentReference_];
  }

  if (*(v1 + 24))
  {

    return [v2 setAttributeKey_];
  }

  return result;
}

uint64_t sub_195F36704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_195F36508(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_195F36730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_195F36508(v1[2], v1[3], v1[4]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_195F36764@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_195F367A8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_195F367EC()
{
  result = qword_1EAEEBB88;
  if (!qword_1EAEEBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB88);
  }

  return result;
}

unint64_t sub_195F36864()
{
  result = qword_1EAEED8C0;
  if (!qword_1EAEED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED8C0);
  }

  return result;
}

id sub_195F368B8(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_195FA04B8();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_195FA0328();

    swift_willThrow();
  }

  return v4;
}

id sub_195F36978(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setKind_];
  if (v4)
  {
    [a1 setExtensionIdentity_];
  }

  return [a1 setIsDeletion_];
}

uint64_t objectdestroy_66Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_75Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_195F36A70(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setGroups_];

  return [a1 setArchivedObjects_];
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_195F36B04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_195F36B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_195F36C20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_195F391FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x19A8C4520](i, a1);
        type metadata accessor for CHSControlConfigurationItem(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_195F391FC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_195F2E09C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CHSControlConfigurationItem(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_195F391FC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_195F2E09C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F36DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_195F391FC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_195F391FC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_195F2E09C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t CHSWidgetExtensionContainer.containerBundleIdentifier.getter()
{
  v0 = sub_195EC327C();
  v1 = [v0 identity];

  v2 = &v1[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  result = swift_beginAccess();
  if (*(v2 + 1))
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CHSWidgetExtensionContainer.localizedContainerDisplayName.getter()
{
  v0 = sub_195EC327C();
  v1 = [v0 containerBundleLocalizedDisplayName];

  v2 = sub_195FA08B8();
  return v2;
}

unint64_t *CHSWidgetExtensionContainer.allExtensions.getter()
{

  v1 = sub_195EBA74C(v0, &qword_1EAEEC4B8, off_1E7452788, &qword_1EAEEC4A8, sub_195EBABF4);

  return v1;
}

uint64_t sub_195F370E0(uint64_t a1)
{
  result = MEMORY[0x19A8C41E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_195EC1FF8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *CHSWidgetExtensionContainer.remoteExtensionsByDeviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  v13 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8C4520](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 identity];
      v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
      swift_beginAccess();
      v9 = *(v8 + 1);

      if (v9)
      {

        sub_195FA0FA8();
        sub_195FA0FD8();
        sub_195FA0FE8();
        sub_195FA0FB8();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v10 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v11 = sub_195F39864(v10);

  return v11;
}

uint64_t CHSWidgetExtensionContainer.iconVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
  swift_unknownObjectRetain();
  v2 = sub_195EC327C();
  v3 = [v2 identity];

  v4 = [v1 resolveIconVersionForExtensionIdentity_];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v5 = sub_195FA08B8();

  return v5;
}

void CHSWidgetExtensionContainer.getIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_195F39B24;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_195F39F00;
  v7[3] = &block_descriptor_5;
  v6 = _Block_copy(v7);

  [v2 getWidgetIconWithCompletion_];
  _Block_release(v6);
}

void CHSWidgetExtensionContainer.getWidgetIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195EC327C();
  v6 = [v5 identity];

  v7 = &v6[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = &v6[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = *(v2 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
    swift_unknownObjectRetain();
    sub_195F37930(v9, v8, v12, v11);

    v14 = sub_195FA0888();

    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_195F39F00;
    v16[3] = &block_descriptor_3;
    v15 = _Block_copy(v16);

    [v13 resolveWidgetIconForContainerIdentity:v14 completion:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_195F37930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_195FAC280;
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 32) = v10;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_195EB6308(v9, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_195FAC070;
  v12 = sub_195EB5F80();
  v13 = sub_195EB6074(v12);
  v15 = v14;

  *(v11 + 32) = v13;
  *(v11 + 40) = v15;

  sub_195EB6214(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v17 = sub_195FA0828();

  return v17;
}

void CHSWidgetExtensionContainer.getISIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195EC327C();
  v6 = [v5 identity];

  v7 = &v6[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = &v6[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = *(v2 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
    swift_unknownObjectRetain();
    sub_195F37930(v9, v8, v12, v11);

    v14 = sub_195FA0888();

    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_195F39F00;
    v16[3] = &block_descriptor_6;
    v15 = _Block_copy(v16);

    [v13 resolveISIconForContainerIdentity:v14 completion:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {

    __break(1u);
  }
}

void sub_195F37C94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_195F37D30(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_195F37DFC()
{
  v1 = (v0 + OBJC_IVAR___CHSWidgetExtensionContainer____lazy_storage____hash);
  if (*(v0 + OBJC_IVAR___CHSWidgetExtensionContainer____lazy_storage____hash + 8) != 1)
  {
    return *v1;
  }

  result = sub_195F37E48(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_195F37E48(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];
  v3 = *(a1 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8C4520](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v2 appendObject_];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v10 = [v2 hash];

  return v10;
}

void CHSWidgetExtensionContainer.description.getter()
{
  v0 = _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 build];

    if (v2)
    {
      sub_195FA08B8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::String_optional __swiftcall CHSWidgetExtensionContainer.description(withMultilinePrefix:)(Swift::String_optional withMultilinePrefix)
{
  v1 = _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0();
  if (v1)
  {
    v3 = v1;
    v4 = [v1 build];

    if (v4)
    {
      v5 = sub_195FA08B8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v1 = v5;
    v2 = v7;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void sub_195F38144(void *a1, id a2)
{
  v4 = [a2 containerBundleIdentifier];
  if (!v4)
  {
    sub_195FA08B8();
    v4 = sub_195FA0888();
  }

  v5 = sub_195FA0888();
  [a1 appendString:v4 withName:v5];

  v6 = [a2 localizedContainerDisplayName];
  if (!v6)
  {
    sub_195FA08B8();
    v6 = sub_195FA0888();
  }

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];
}

Swift::String_optional __swiftcall CHSWidgetExtensionContainer.succinctDescription()()
{
  v0 = CHSWidgetExtensionContainer.succinctDescriptionBuilder()();
  v1 = [v0 build];

  if (v1)
  {
    v2 = sub_195FA08B8();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

id CHSWidgetExtensionContainer.succinctDescriptionBuilder()()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_195F39E64;
    *(v4 + 24) = v3;
    v9[4] = sub_195EC7340;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_195EC7454;
    v9[3] = &block_descriptor_15;
    v5 = _Block_copy(v9);
    v6 = v2;
    v7 = v0;

    [v6 appendProem:0 block:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_195F38478(void *a1, char *a2)
{
  v4 = [a2 containerBundleIdentifier];
  if (!v4)
  {
    sub_195FA08B8();
    v4 = sub_195FA0888();
  }

  v5 = sub_195FA0888();
  [a1 appendString:v4 withName:v5];

  v6 = [a2 localizedContainerDisplayName];
  if (!v6)
  {
    sub_195FA08B8();
    v6 = sub_195FA0888();
  }

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];

  v8 = *&a2[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
  if (v8 >> 62)
  {
    v9 = sub_195FA0E88();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = sub_195FA0888();
}

void *CHSWidgetExtensionContainer.extensionBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v1 >> 62)
  {
    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];

  result = sub_195EC3A54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8C4520](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identity];

      v9 = &v8[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
      swift_beginAccess();
      v11 = *v9;
      v10 = *(v9 + 1);

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_195EC3A54((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
    }

    while (v2 != v5);

    return v3;
  }

  __break(1u);
  return result;
}

void *CHSWidgetExtensionContainer.containerBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x19A8C4520](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = [v4 identity];

    v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v10 = *v8;
    v9 = *(v8 + 1);

    ++v3;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_195EB50CC(0, v15[2] + 1, 1, v15);
      }

      v12 = v15[2];
      v11 = v15[3];
      if (v12 >= v11 >> 1)
      {
        v15 = sub_195EB50CC((v11 > 1), v12 + 1, 1, v15);
      }

      v15[2] = v12 + 1;
      v13 = &v15[2 * v12];
      v13[4] = v10;
      v13[5] = v9;
      v3 = v6;
    }
  }

  return v15;
}

char *sub_195F38970(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F0, &qword_195FAC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F38A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA48, &qword_195FACCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F38BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA40, &qword_195FAC968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_195F38CC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA18, &qword_195FAC948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F38DE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA30, &qword_195FAC960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_195F38EE4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA10, &qword_195FAC940);
  v10 = *(sub_195FA0478() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_195FA0478() - 8);
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

char *sub_195F390BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA08, &qword_195FAC938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F391DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_195F3927C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F391FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_195F39388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_195F3921C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_195F39498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_195F3923C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_195F395E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F3925C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_195F39714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F3927C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_195F39388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA78, &qword_195FAC998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195F39498(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA20, &qword_195FAC950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA28, &qword_195FAC958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195F395E0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F8, &qword_195FB0500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F39714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA08, &qword_195FAC938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195F39864(unint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_25:
  v2 = sub_195FA0E88();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8C4520](v3, a1);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v3 + 32);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v28 = v8;
    v9 = v7;
    v10 = [v7 identity];
    v11 = &v10[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];

    if (!v12)
    {
      break;
    }

    v15 = sub_195EC7CCC(v13, v12);
    v16 = v4[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_23;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_195F5AD50(v18, 1);
      v4 = v29;
      v20 = sub_195EC7CCC(v13, v12);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_29;
      }

      v15 = v20;
    }

    if (v19)
    {

      v6 = (v4[7] + 8 * v15);
      MEMORY[0x19A8C40E0](v5);
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_195FA0B58();
      }

      sub_195FA0B78();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_195FAC910;
      *(v22 + 32) = v9;
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v23 = (v4[6] + 16 * v15);
      *v23 = v13;
      v23[1] = v12;
      *(v4[7] + 8 * v15) = v22;
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v4[2] = v26;
    }

    ++v3;
    if (v28 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_29:
  result = sub_195FA1338();
  __break(1u);
  return result;
}

id _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
  if (v2 >> 62)
  {
    v3 = sub_195FA0E88();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];

    result = sub_195F391DC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v6 = 0;
    v4 = aBlock[0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8C4520](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 succinctDescriptionWithBundleIDWithoutFullIdentity];
      v10 = sub_195FA08B8();
      v12 = v11;

      aBlock[0] = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_195F391DC((v13 > 1), v14 + 1, 1);
        v4 = aBlock[0];
      }

      ++v6;
      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v6);
  }

  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v1;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_195F39ED0;
    *(v18 + 24) = v17;
    aBlock[4] = sub_195EC74B8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EC7454;
    aBlock[3] = &block_descriptor_43;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    v21 = v1;

    [v20 appendProem:0 block:v19];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_195F36DEC(v4);

      v23 = sub_195FA0B28();

      v24 = sub_195FA0888();
      [v20 appendArraySection:v23 withName:v24 skipIfEmpty:0];

      return v20;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_195F39E74(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 image];
  v2();
}

uint64_t Token.description.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v0 = sub_195FA0828();

  return v0;
}

unint64_t Token.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    v2 = *(*v1 + 16 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F3A0CC()
{
  v0 = Token.rawValue.getter();
  v2 = v1;
  if (v0 == Token.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_195FA12B8();
  }

  return v5 & 1;
}

uint64_t sub_195F3A164@<X0>(uint64_t *a1@<X8>)
{
  result = Token.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_195F3A18C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v0 = sub_195FA0828();

  return v0;
}

ChronoServices::Token __swiftcall Token.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  result.storage._rawValue = Token.init(rawValue:)(stringLiteral).storage._rawValue;
  *v2 = v4;
  return result;
}

unint64_t sub_195F3A28C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_195F67F6C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_195F3A300(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_195FA0F98();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_195F3A428()
{
  result = qword_1EAEEDAA0;
  if (!qword_1EAEEDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAA0);
  }

  return result;
}

unint64_t sub_195F3A48C()
{
  result = qword_1EAEEDAA8;
  if (!qword_1EAEEDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAA8);
  }

  return result;
}

unint64_t sub_195F3A4FC()
{
  result = qword_1EAEEDAB0;
  if (!qword_1EAEEDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAB0);
  }

  return result;
}

uint64_t sub_195F3A590(uint64_t *a1, int a2)
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

uint64_t sub_195F3A5D8(uint64_t result, int a2, int a3)
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

unint64_t sub_195F3A624()
{
  result = qword_1EAEEC4A0;
  if (!qword_1EAEEC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC4A0);
  }

  return result;
}

uint64_t CHSSessionPlatterDescriptor.encode(to:)(void *a1)
{
  sub_195FA05D8();
  result = sub_195FA05A8();
  if (!v1)
  {
    v5 = a1[3];
    v6 = result;
    v7 = a1;
    v8 = v4;
    __swift_project_boxed_opaque_existential_1(v7, v5);
    sub_195FA1458();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_195F3A7B0();
    sub_195FA12D8();
    sub_195EC0890(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_195F3A7B0()
{
  result = qword_1EAEEC268;
  if (!qword_1EAEEC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC268);
  }

  return result;
}

id CHSSessionPlatterDescriptor.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195FA1438();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_195F3A9DC();
    sub_195FA12C8();
    sub_195FA05D8();
    sub_195F3AA30();
    v5 = sub_195FA0598();
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = [v5 extensionIdentity];
    v7 = [v5 activityAttributesType];
    v8 = sub_195FA04D8();
    v10 = v9;

    v11 = sub_195FA04B8();
    sub_195EC0890(v8, v10);
    v2 = [v15 initWithExtensionIdentity:v6 activityAttributesType:v11];

    sub_195EC0890(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

unint64_t sub_195F3A9DC()
{
  result = qword_1EAEEC110;
  if (!qword_1EAEEC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC110);
  }

  return result;
}

unint64_t sub_195F3AA30()
{
  result = qword_1EAEEDAC0;
  if (!qword_1EAEEDAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEDAC0);
  }

  return result;
}

id sub_195F3AA7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CHSSessionPlatterDescriptor.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t isChronod.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEEBBD8 = a1;
  return result;
}

uint64_t (*IconsFolderURL.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EAEEC4F8[0] != -1)
  {
    swift_once();
  }

  v1 = sub_195FA0478();
  __swift_project_value_buffer(v1, qword_1EAEEC4D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_195F3ACD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_195FA0478();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*RemoteArchivesURL.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EAEEBD90 != -1)
  {
    swift_once();
  }

  v1 = sub_195FA0478();
  __swift_project_value_buffer(v1, qword_1EAEEBD98);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_195F3AE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F3AEAC()
{
  sub_195F3B134();
  result = sub_195FA0DA8();
  qword_1EAEF7340 = result;
  return result;
}

uint64_t sub_195F3AF38()
{
  v0 = sub_195FA0678();
  __swift_allocate_value_buffer(v0, qword_1EAEF7348);
  __swift_project_value_buffer(v0, qword_1EAEF7348);
  if (qword_1EAEECFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEF7340;
  return sub_195FA0688();
}

uint64_t sub_195F3B0BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_195FA0678();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_195FA0668();
}

unint64_t sub_195F3B134()
{
  result = qword_1EAEEDAD0;
  if (!qword_1EAEEDAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEDAD0);
  }

  return result;
}

id static NSFileManager.audited.getter()
{
  v0 = objc_allocWithZone(type metadata accessor for AuditedFileManager());

  return [v0 init];
}

id AuditedFileManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_195F3B20C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x1E69E7CD0];

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_195F3B298()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v1 + 16);

  os_unfair_lock_unlock(v5);

  return v4;
}

uint64_t sub_195F3B324()
{
  v1 = *&v0[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_195F3B38C(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return sub_195F3B20C();
}

uint64_t sub_195F3B38C(char *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  v3 = *&a1[v2];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*&a1[v2] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v9);
  while (1)
  {
    v9 &= v9 - 1;

    v13 = sub_195FA0888();
    v14 = [a1 fileExistsAtPath_];

    if ((v14 & 1) == 0)
    {

      v11 = v12;
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = sub_195FA0888();

    v22 = 0;
    v16 = type metadata accessor for AuditedFileManager();
    v21.receiver = a1;
    v21.super_class = v16;
    v17 = objc_msgSendSuper2(&v21, sel_removeItemAtPath_error_, v15, &v22);

    if (!v17)
    {
      break;
    }

    v18 = v22;
    v11 = v12;
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    v12 = v11;
  }

  v20 = v22;
  sub_195FA0328();

  swift_willThrow();
}

void sub_195F3B598(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21[2] = a2;
  v6 = v5;
  v21[1] = a3;
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = sub_195FA0478();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v6 temporaryDirectory];
  sub_195FA0428();

  v14 = sub_195FA0398();
  v15 = *(v10 + 8);
  v15(v12, v9);
  v22[0] = 0;
  v16 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:v22];

  v17 = v22[0];
  if (v16)
  {
    sub_195FA0428();
    v18 = v17;

    sub_195FA03A8();
    if (a4)
    {
      sub_195FA03B8();
    }

    v19 = v21[3];
    sub_195F416CC(a5, 0);
    if (v19)
    {
      v15(a5, v9);
    }
  }

  else
  {
    v20 = v22[0];
    sub_195FA0328();

    swift_willThrow();
  }
}

id sub_195F3B7B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_195F3E058(a1, a2);
  v12 = sub_195FA0888();
  if (a4 >> 60 == 15)
  {
    v13 = 0;
    if (a5)
    {
LABEL_3:
      type metadata accessor for FileAttributeKey(0);
      sub_195F3ECD8();
      v14 = sub_195FA07E8();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = sub_195FA04B8();
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v20.receiver = v6;
  v20.super_class = type metadata accessor for AuditedFileManager();
  v15 = objc_msgSendSuper2(&v20, sel_createFileAtPath_contents_attributes_, v12, v13, v14);

  v16 = sub_195F3E058(a1, a2);
  v17 = *&v6[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v18 = *(v17 + 16);

  os_unfair_lock_lock(v18);
  if (*(v16 + 16) <= *(v11 + 16) >> 3)
  {
    sub_195F3E63C(v16);
  }

  else
  {
    v11 = sub_195F3E768(v16, v11);
  }

  swift_beginAccess();
  sub_195F3DAEC(v11);
  swift_endAccess();
  os_unfair_lock_unlock(*(v17 + 16));

  return v15;
}

uint64_t sub_195F3BA78(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = sub_195FA0448();
  v9 = v8;
  v10 = sub_195F3E058(v7, v8);
  v11 = sub_195FA0398();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a3 = sub_195FA07E8();
  }

  v21[0] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for AuditedFileManager();
  v12 = objc_msgSendSuper2(&v20, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v11, a2 & 1, a3, v21);

  if (v12)
  {
    v13 = v21[0];
    v14 = sub_195F3E058(v7, v9);

    v15 = *&v4[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v16 = *(v15 + 16);

    os_unfair_lock_lock(v16);
    if (*(v14 + 16) <= v10[2] >> 3)
    {
      v21[0] = v10;
      sub_195F3E63C(v14);

      v17 = v21[0];
    }

    else
    {
      v17 = sub_195F3E768(v14, v10);
    }

    swift_beginAccess();
    sub_195F3DAEC(v17);
    swift_endAccess();
    os_unfair_lock_unlock(*(v15 + 16));
  }

  else
  {
    v18 = v21[0];

    sub_195FA0328();

    return swift_willThrow();
  }
}

uint64_t sub_195F3BE44(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v21[3] = *MEMORY[0x1E69E9840];
  v10 = sub_195F3E058(a1, a2);
  v11 = sub_195FA0888();
  if (a4)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a4 = sub_195FA07E8();
  }

  v21[0] = 0;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for AuditedFileManager();
  v12 = objc_msgSendSuper2(&v20, sel_createDirectoryAtPath_withIntermediateDirectories_attributes_error_, v11, a3 & 1, a4, v21);

  if (v12)
  {
    v13 = v21[0];
    v14 = sub_195F3E058(a1, a2);
    v15 = *&v5[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v16 = *(v15 + 16);

    os_unfair_lock_lock(v16);
    if (*(v14 + 16) <= v10[2] >> 3)
    {
      v21[0] = v10;
      sub_195F3E63C(v14);

      v17 = v21[0];
    }

    else
    {
      v17 = sub_195F3E768(v14, v10);
    }

    swift_beginAccess();
    sub_195F3DAEC(v17);
    swift_endAccess();
    os_unfair_lock_unlock(*(v15 + 16));
  }

  else
  {
    v18 = v21[0];

    sub_195FA0328();

    return swift_willThrow();
  }
}

uint64_t sub_195F3C148(uint64_t a1)
{
  v3 = v1;
  v4 = sub_195FA0448();
  v6 = v5;
  v7 = sub_195F3E058(v4, v5);
  sub_195F3C2A8(v1);
  if (v2)
  {
  }

  else
  {
    v9 = sub_195F3E058(v4, v6);

    v10 = *&v3[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v11 = *(v10 + 16);

    os_unfair_lock_lock(v11);
    if (*(v7 + 16) <= *(v9 + 16) >> 3)
    {
      sub_195F3E63C(v7);

      v12 = v9;
    }

    else
    {
      v12 = sub_195F3E768(v7, v9);
    }

    swift_beginAccess();
    sub_195F3E63C(v12);
    swift_endAccess();

    os_unfair_lock_unlock(*(v10 + 16));
  }
}

id sub_195F3C2A8(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = sub_195FA0398();
  v6[0] = 0;
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AuditedFileManager();
  LODWORD(a1) = objc_msgSendSuper2(&v5, sel_removeItemAtURL_error_, v2, v6);

  if (a1)
  {
    return v6[0];
  }

  v4 = v6[0];
  sub_195FA0328();

  return swift_willThrow();
}

uint64_t sub_195F3C4C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_195F3E058(a1, a2);
  sub_195F3C5FC(v2, a1, a2);
  if (v3)
  {
  }

  v9 = sub_195F3E058(a1, a2);
  v10 = *&v4[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  if (*(v7 + 16) <= *(v9 + 16) >> 3)
  {
    sub_195F3E63C(v7);

    v12 = v9;
  }

  else
  {
    v12 = sub_195F3E768(v7, v9);
  }

  swift_beginAccess();
  sub_195F3E63C(v12);
  swift_endAccess();

  os_unfair_lock_unlock(*(v10 + 16));
}

id sub_195F3C5FC(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_195FA0888();
  v9[0] = 0;
  v8.receiver = a1;
  v8.super_class = type metadata accessor for AuditedFileManager();
  v5 = objc_msgSendSuper2(&v8, sel_removeItemAtPath_error_, v4, v9);

  if (v5)
  {
    return v9[0];
  }

  v7 = v9[0];
  sub_195FA0328();

  return swift_willThrow();
}

uint64_t sub_195F3C7E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = v3;
  v7 = sub_195FA0448();
  v9 = v8;
  v10 = sub_195F3E058(v7, v8);
  v11 = sub_195FA0448();
  v13 = v12;
  v14 = sub_195F3E058(v11, v12);
  sub_195F3CA50(v4, a1, a2, a3);
  if (v25)
  {
  }

  else
  {
    v16 = sub_195F3E058(v11, v13);

    v17 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
    v18 = *&v4[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v19 = *(v18 + 16);

    os_unfair_lock_lock(v19);
    if (*(v16 + 16) <= *(v14 + 16) >> 3)
    {
      sub_195F3E63C(v16);

      v20 = v14;
    }

    else
    {
      v20 = sub_195F3E768(v16, v14);
    }

    swift_beginAccess();
    sub_195F3DAEC(v20);
    swift_endAccess();
    os_unfair_lock_unlock(*(v18 + 16));

    v21 = sub_195F3E058(v7, v9);

    v22 = *&v4[v17];
    v23 = *(v22 + 16);

    os_unfair_lock_lock(v23);
    if (*(v10 + 16) <= *(v21 + 16) >> 3)
    {
      sub_195F3E63C(v10);

      v24 = v21;
    }

    else
    {
      v24 = sub_195F3E768(v10, v21);
    }

    swift_beginAccess();
    sub_195F3E63C(v24);
    swift_endAccess();

    os_unfair_lock_unlock(*(v22 + 16));
  }
}

id sub_195F3CA50(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_195FA0398();
  v7 = sub_195FA0398();
  v11[0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AuditedFileManager();
  LODWORD(a4) = objc_msgSendSuper2(&v10, *a4, v6, v7, v11);

  if (a4)
  {
    return v11[0];
  }

  v9 = v11[0];
  sub_195FA0328();

  return swift_willThrow();
}

uint64_t sub_195F3CB48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = sub_195FA0478();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-v13];
  sub_195FA0428();
  sub_195FA0428();
  v15 = a1;
  sub_195F3C7E4(v14, v12, a6);

  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  return 1;
}

uint64_t sub_195F3CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = v5;
  v13 = sub_195F3E058(a1, a2);
  v14 = a1;
  v15 = sub_195F3E058(a3, a4);
  sub_195F3CF68(v8, v14, a2, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    v25 = v13;
    v17 = sub_195F3E058(a3, a4);
    v24 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
    v18 = *&v8[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v19 = *(v18 + 16);

    os_unfair_lock_lock(v19);
    if (*(v17 + 16) <= *(v15 + 16) >> 3)
    {
      sub_195F3E63C(v17);
    }

    else
    {
      v15 = sub_195F3E768(v17, v15);
    }

    swift_beginAccess();
    sub_195F3DAEC(v15);
    swift_endAccess();
    os_unfair_lock_unlock(*(v18 + 16));

    v20 = sub_195F3E058(v14, a2);
    v21 = *&v8[v24];
    v22 = *(v21 + 16);

    os_unfair_lock_lock(v22);
    if (*(v25 + 16) <= *(v20 + 16) >> 3)
    {
      sub_195F3E63C(v25);

      v23 = v20;
    }

    else
    {
      v23 = sub_195F3E768(v25, v20);
    }

    swift_beginAccess();
    sub_195F3E63C(v23);
    swift_endAccess();

    os_unfair_lock_unlock(*(v21 + 16));
  }
}

id sub_195F3CF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = sub_195FA0888();
  v9 = sub_195FA0888();
  v14[0] = 0;
  v13.receiver = a1;
  v13.super_class = type metadata accessor for AuditedFileManager();
  v10 = objc_msgSendSuper2(&v13, *a6, v8, v9, v14);

  if (v10)
  {
    return v14[0];
  }

  v12 = v14[0];
  sub_195FA0328();

  return swift_willThrow();
}

uint64_t sub_195F3D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = sub_195FA08B8();
  v10 = v9;
  v11 = sub_195FA08B8();
  v13 = v12;
  v14 = a1;
  sub_195F3CD28(v8, v10, v11, v13, a6);

  return 1;
}

uint64_t sub_195F3D14C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v90 = a2;
  LODWORD(v87) = a4;
  v84 = a5;
  v95[3] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - v17;
  v19 = sub_195FA0478();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v85 = &v80 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v88 = &v80 - v30;
  v89 = v26;
  v31 = (v20 + 48);
  v86 = a3;
  if (a1 == 99)
  {
    v81 = v29;
    v85 = v27;
    sub_195F3ED30(a3, v18);
    v32 = *v31;
    if ((*v31)(v18, 1, v19) == 1)
    {
      v33 = [v91 temporaryDirectory];
      sub_195FA0428();

      if (v32(v18, 1, v19) != 1)
      {
        sub_195F3AE44(v18);
      }
    }

    else
    {
      (*(v20 + 32))(v88, v18, v19);
    }

    v35 = sub_195FA0448();
    v37 = v36;
    v82 = sub_195F3E058(v35, v36);
    sub_195F3ED30(v86, v16);
    if (v32(v16, 1, v19) == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_195FA0398();
      (*(v20 + 8))(v16, v19);
    }

    v95[0] = 0;
    v48 = type metadata accessor for AuditedFileManager();
    v49 = v91;
    v92.receiver = v91;
    v92.super_class = v48;
    v50 = objc_msgSendSuper2(&v92, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, 99, v90, v38, v87 & 1, v95);

    v51 = v95[0];
    if (v50)
    {
      v87 = v35;
      v52 = v81;
      sub_195FA0428();
      v53 = v51;

      v54 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
      v55 = *&v49[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
      v56 = *(v55 + 16);

      os_unfair_lock_lock(v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195FAC070;
      *(inited + 32) = sub_195FA0448();
      *(inited + 40) = v58;
      swift_beginAccess();
      sub_195F3F6D4(inited);
      swift_setDeallocating();
      sub_195EC2148(inited + 32);
      swift_endAccess();
      os_unfair_lock_unlock(*(v55 + 16));

      v83 = v20;
      v59 = v91;
      v60 = v52;
      v61 = v89;
      v90 = *(v20 + 32);
      v90(v85, v60, v89);
      v62 = sub_195F3E058(v87, v37);

      v63 = *&v59[v54];
      v64 = *(v63 + 16);

      os_unfair_lock_lock(v64);
      if (*(v62 + 16) <= v82[2] >> 3)
      {
        v95[0] = v82;
        sub_195F3E63C(v62);

        v65 = v95[0];
      }

      else
      {
        v65 = sub_195F3E768(v62, v82);
      }

      swift_beginAccess();
      sub_195F3DAEC(v65);
      swift_endAccess();
      os_unfair_lock_unlock(*(v63 + 16));

      (*(v83 + 8))(v88, v61);
      return v90(v84, v85, v61);
    }

    else
    {
      v68 = v95[0];

      sub_195FA0328();

      swift_willThrow();
      return (*(v20 + 8))(v88, v89);
    }
  }

  else
  {
    v88 = v28;
    sub_195F3ED30(a3, v13);
    v82 = *v31;
    if ((v82)(v13, 1, v19) == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_195FA0398();
      (*(v20 + 8))(v13, v19);
    }

    v95[0] = 0;
    v39 = type metadata accessor for AuditedFileManager();
    v94.receiver = v91;
    v94.super_class = v39;
    v40 = objc_msgSendSuper2(&v94, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v90, v34, 0, v95);

    v41 = v95[0];
    if (v40)
    {
      v83 = v20;
      sub_195FA0428();
      v42 = v41;

      v43 = sub_195FA0448();
      v44 = v89;
      v46 = v45;
      v81 = sub_195F3E058(v43, v45);
      sub_195F3ED30(v86, v10);
      if ((v82)(v10, 1, v44) == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = sub_195FA0398();
        (*(v83 + 8))(v10, v44);
      }

      v95[0] = 0;
      v69 = v91;
      v93.receiver = v91;
      v93.super_class = v39;
      v70 = objc_msgSendSuper2(&v93, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v90, v47, v87 & 1, v95);

      v71 = v95[0];
      if (v70)
      {
        sub_195FA0428();
        v72 = v71;

        v73 = sub_195F3E058(v43, v46);

        v74 = *&v69[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
        v75 = *(v74 + 16);

        os_unfair_lock_lock(v75);
        if (*(v73 + 16) <= *(v81 + 2) >> 3)
        {
          v95[0] = v81;
          sub_195F3E63C(v73);

          v76 = v95[0];
        }

        else
        {
          v76 = sub_195F3E768(v73, v81);
        }

        v78 = v89;
        swift_beginAccess();
        sub_195F3DAEC(v76);
        swift_endAccess();
        os_unfair_lock_unlock(*(v74 + 16));

        v79 = v83;
        (*(v83 + 8))(v85, v78);
        return (*(v79 + 32))(v84, v88, v78);
      }

      else
      {
        v77 = v95[0];

        sub_195FA0328();

        swift_willThrow();
        return (*(v83 + 8))(v85, v89);
      }
    }

    else
    {
      v66 = v95[0];
      sub_195FA0328();

      return swift_willThrow();
    }
  }
}

uint64_t sub_195F3DAEC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_195EC1FF8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_195F3DBF0(uint64_t a1)
{
  v2 = sub_195FA0478();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_195F6B618(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F3E058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_195FA0358();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_195FA0478();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v53 = v14;
  (*(v15 + 56))(v10, 1, 1);
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);

  sub_195FA0458();
  v51 = v13;
  result = sub_195F3F4FC();
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    v20 = result + 40;
    v21 = &selRef_appendString_counterpart_;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v22 = sub_195FA0888();
      v23 = [v3 fileExistsAtPath_];

      if (v23)
      {
        break;
      }

      ++v19;
      v20 += 16;
      if (v18 == v19)
      {
        v19 = v18;
        break;
      }
    }

    if (*(v17 + 16) < v18)
    {
      goto LABEL_26;
    }

    if (v19 == v18)
    {
      goto LABEL_9;
    }

    v25 = v17 + 40;
    v47 = v18 - 1;
    v24 = MEMORY[0x1E69E7CC0];
    v26 = v19;
    v48 = v17 + 40;
    v49 = v17;
    v54 = v19;
LABEL_11:
    v50 = v24;
    v27 = (v25 + 16 * v26);
    v28 = v26;
    while (v26 >= v19 && v28 < v18)
    {
      v29 = v18;
      v30 = *(v27 - 1);
      v31 = *v27;
      v32 = v28 + 1;

      v33 = sub_195FA0888();
      v34 = v21[172];
      v35 = v3;
      v36 = [v3 v34];

      if ((v36 & 1) == 0)
      {
        v46 = v28;
        v38 = v50;
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v38;
        v55 = v38;
        v18 = v29;
        if ((result & 1) == 0)
        {
          result = sub_195F391DC(0, *(v38 + 16) + 1, 1);
          v39 = v55;
        }

        v3 = v35;
        v40 = v30;
        v26 = v28 + 1;
        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v42 + 1;
        v21 = &selRef_appendString_counterpart_;
        if (v42 >= v41 >> 1)
        {
          v50 = v42 + 1;
          result = sub_195F391DC((v41 > 1), v42 + 1, 1);
          v40 = v30;
          v43 = v50;
          v39 = v55;
        }

        *(v39 + 16) = v43;
        v44 = v39 + 16 * v42;
        *(v44 + 32) = v40;
        *(v44 + 40) = v31;
        v25 = v48;
        v24 = v39;
        v19 = v54;
        if (v47 != v46)
        {
          goto LABEL_11;
        }

        goto LABEL_23;
      }

      v27 += 2;
      ++v28;
      v18 = v29;
      v37 = v29 == v32;
      v3 = v35;
      v21 = &selRef_appendString_counterpart_;
      v19 = v54;
      if (v37)
      {
        v24 = v50;
        goto LABEL_23;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_9:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v45 = sub_195EC1F60(v24);

    (*(v52 + 8))(v51, v53);
    return v45;
  }

  return result;
}

id AuditedFileManager.init()()
{
  v1 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls] = MEMORY[0x1E69E7CD0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AuditedFileManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AuditedFileManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuditedFileManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F3E63C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_195F3EDA0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_195F3E768(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_195FA1398();

    sub_195FA0958();
    v23 = sub_195FA13E8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_195FA12B8() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_195F3F2D8(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_195FA1398();

            sub_195FA0958();
            v41 = sub_195FA13E8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_195FA12B8() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_195F3F0A0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x19A8C5B70](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_195EB9E70(v13);
    return v5;
  }

  result = MEMORY[0x19A8C5B70](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_195F3ECD8()
{
  result = qword_1EAEEBB28;
  if (!qword_1EAEEBB28)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB28);
  }

  return result;
}

uint64_t sub_195F3ED30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F3EDA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_195FA1398();
  sub_195FA0958();
  v6 = sub_195FA13E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_195FA12B8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_195F6D0BC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_195F3EEDC(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_195F3EEDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_195FA0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_195FA1398();

        sub_195FA0958();
        v10 = sub_195FA13E8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_195F3F0A0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_195F3F2D8(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_195FA1398();

        sub_195FA0958();
        v19 = sub_195FA13E8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_195FA12B8() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_195F3F2D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  result = sub_195FA0EF8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_195FA1398();

    sub_195FA0958();
    result = sub_195FA13E8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_195F3F4FC()
{
  v0 = sub_195FA0368();
  v1 = v0[2];
  v2 = v1 != 0;
  if (v1 > 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_195F391DC(0, (v1 - v2) & ~((v1 - v2) >> 63), 0);
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      if (!v0[2])
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v3 = v15;
      v5 = 2 * v2 + 3;
      while (v0[2] > v2)
      {
        v6 = v0[4];
        v7 = v0[5];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAE8, &qword_195FACCC8);
        sub_195F3F8BC();
        v8 = sub_195FA0828();
        v10 = v9;

        MEMORY[0x19A8C3F70](v8, v10);

        v11 = v6;
        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_195F391DC((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        v14 = v15 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v7;
        if (v2 >= v1)
        {
          goto LABEL_14;
        }

        ++v2;
        v5 += 2;
        if (v1 == v2)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_195F3F6D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_195EC1FF8(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_195F3F8BC()
{
  result = qword_1EAEEDAF0;
  if (!qword_1EAEEDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEDAE8, &qword_195FACCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAF0);
  }

  return result;
}

uint64_t CHSFrozenIntent.init(_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a5;
  a6[1] = result;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  return result;
}

uint64_t CHSFrozenIntent.init(reference:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 stableHash];
  v5 = sub_195F3FAC8();
  if (v6 >> 60 == 15)
  {
    v9 = [a1 intent];
    v14 = sub_195F3FBC4();
    v16 = v15;
    v17 = sub_195F3FE20();
    v19 = v18;

    sub_195EC0890(v14, v16);
    result = sub_195EC5A34(v17, v19);
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 0xF000000000000000;
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v5;
    v13 = v6;

    sub_195EC08E4(v12, v13);
    sub_195F40008(v10, v11);
    sub_195EC5A34(v10, v11);
    sub_195EC0890(v12, v13);
    *a2 = v4;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v10;
    a2[4] = v11;
    sub_195EC08E4(v12, v13);
    sub_195F40008(v10, v11);
    sub_195EC0890(v12, v13);

    return sub_195EC5A34(v10, v11);
  }

  return result;
}

uint64_t sub_195F3FAC8()
{
  v1 = v0;
  v2 = [v0 _partialConfigData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_195FA04D8();
    v6 = v5;

    v7 = [v1 _partialSchemaData];
    if (v7)
    {
      v8 = v7;
      sub_195FA04D8();

      return v4;
    }

    sub_195EC0890(v4, v6);
  }

  v9 = [v1 _intentData];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v4 = sub_195FA04D8();

  return v4;
}

id sub_195F3FBC4()
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0;
  v3 = v2;
  if (!v1)
  {
    v5 = v2;
    goto LABEL_10;
  }

  result = INIntentWithTypedIntent();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_10:
    v11 = [v5 _backingStoreData];
    if (!v11 || (v12 = v11, sub_195FA0808(), v12, LODWORD(v14[0]) = sub_195FA06C8(), v3 = sub_195FA07E8(), , NSData = OPACKEncoderCreateNSData(v3), v3, !NSData))
    {
      sub_195F36864();
      swift_allocError();
      *v13 = xmmword_195FACCE0;
      goto LABEL_14;
    }

LABEL_12:
    v3 = sub_195FA04D8();

    return v3;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v3;
  if (!v6)
  {
    goto LABEL_7;
  }

  result = INIntentWithTypedIntent();
  if (result)
  {
    v8 = result;

    v7 = v8;
LABEL_7:
    v14[0] = 0;
    NSData = [objc_opt_self() _encodeToOPACK_error_];

    v10 = v14[0];
    if (!NSData)
    {
      v3 = v10;
      sub_195FA0328();

LABEL_14:
      swift_willThrow();

      return v3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_195F3FE20()
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v16[0] = 0;
  result = [v0 _copyWithoutBackingStoreData_];
  if (result)
  {
    if (v16[0])
    {
    }

    else
    {
      v16[0] = 0;
      v2 = result;
      v3 = [result widgetPlistableRepresentation_];
      v4 = v16[0];
      if (v3)
      {
        v5 = v3;
        sub_195FA0808();
        v6 = v4;

        LODWORD(v16[0]) = sub_195FA06C8();
        v7 = sub_195FA07E8();

        NSData = OPACKEncoderCreateNSData(v7);

        if (NSData)
        {
          v9 = sub_195FA04D8();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0xF000000000000000;
        }

        v14 = v16[0];
        v15 = sub_195FA06C8();

        if (v14 == v15)
        {
          if (v11 >> 60 != 15)
          {
            return v9;
          }
        }

        else
        {
          sub_195EC5A34(v9, v11);
        }
      }

      else
      {
        v12 = v16[0];
        v13 = sub_195FA0328();

        swift_willThrow();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_195F40008(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_195EC08E4(result, a2);
  }

  return result;
}

uint64_t CHSFrozenIntent.init(intent:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 _indexingHash];
  v5 = sub_195F3FBC4();
  v7 = v6;
  v8 = sub_195F3FE20();
  v10 = v9;

  sub_195EC08E4(v5, v7);
  sub_195F40008(v8, v10);
  sub_195EC0890(v5, v7);
  result = sub_195EC5A34(v8, v10);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  return result;
}

id CHSFrozenIntent.intent.getter()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 4);
  CHSFrozenIntent.referenceForRealization()(v7);
  v2 = v1;
  v3 = [v1 intent];

  return v3;
}

void __swiftcall CHSFrozenIntent.referenceForRealization()(CHSIntentReference *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  if (v5 >> 60 == 15)
  {
    v6 = objc_allocWithZone(CHSIntentReference);
    sub_195EC08E4(v3, v4);
    v7 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    [v6 initWithIntentData:v7 configData:0 schemaData:0 stableHash:v2];
  }

  else
  {
    v8 = v1[3];
    v9 = objc_allocWithZone(CHSIntentReference);
    sub_195F40008(v8, v5);
    sub_195EC08E4(v3, v4);
    v10 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    v11 = sub_195FA04B8();
    [v9 initWithIntentData:0 configData:v10 schemaData:v11 stableHash:v2];

    sub_195EC5A34(v8, v5);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CHSFrozenIntent.referenceForSerialization()(CHSIntentReference *__return_ptr retstr)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  if (v5 >> 60 == 15)
  {
    v6 = objc_allocWithZone(CHSIntentReference);
    sub_195EC08E4(v3, v4);
    v7 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    [v6 initWithIntentData:v7 configData:0 schemaData:0 stableHash:v2];
  }

  else
  {
    v8 = v1[3];
    v9 = objc_opt_self();
    v23 = v8;
    CHSFrozenIntent.referenceForRealization()(v10);
    v12 = v11;
    v13 = [v11 intent];

    v22 = 0;
    v14 = [v9 _encodeToOPACK_error_];

    v15 = v22;
    if (v14)
    {
      v16 = sub_195FA04D8();
      v18 = v17;

      v19 = objc_allocWithZone(CHSIntentReference);
      sub_195EC08E4(v16, v18);
      v20 = sub_195FA04B8();
      sub_195EC0890(v16, v18);
      [v19 initWithIntentData:v20 configData:0 schemaData:0 stableHash:v2];

      sub_195EC0890(v16, v18);
    }

    else
    {
      v21 = v15;
      sub_195FA0328();

      swift_willThrow();
    }
  }
}

uint64_t CHSFrozenIntent.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  result = MEMORY[0x19A8C4990](*v0);
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(v3);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = HIDWORD(v1) - v1;
LABEL_11:
  result = MEMORY[0x19A8C4970](result);
  if (v4 >> 60 == 15)
  {
    return sub_195FA13B8();
  }

  v9 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v2 = 0;
      goto LABEL_23;
    }

    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    v2 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v2 = BYTE6(v4);
LABEL_23:
    sub_195FA13B8();
    return MEMORY[0x19A8C4970](v2);
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
    v2 = HIDWORD(v2) - v2;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t CHSFrozenIntent.hashValue.getter()
{
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

id sub_195F40608()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 4);
  CHSFrozenIntent.referenceForRealization()(v7);
  v2 = v1;
  v3 = [v1 intent];

  return v3;
}

uint64_t sub_195F40668()
{
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

uint64_t sub_195F406C0(uint64_t a1)
{
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

unint64_t freezeHomogeneousIntents(intents:)(unint64_t result)
{
  v2 = v1;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v21)
  {
    v28 = result & 0xC000000000000001;
    if ((result & 0xC000000000000001) != 0)
    {
      v22 = result;
      v5 = MEMORY[0x19A8C4520](0, result);
      v4 = v22;
      v24 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v24 = result & 0xFFFFFFFFFFFFFF8;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = result;
      v5 = *(result + 32);
    }

    v23 = v5;
    result = sub_195F3FE20();
    v29 = result;
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = v4;
    v26 = i;
    v27 = v4;
    v25 = v7;
    while (1)
    {
      if (v28)
      {
        result = MEMORY[0x19A8C4520](v8, v10);
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        result = *(v10 + 8 * v8 + 32);
      }

      v11 = result;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = sub_195F3FBC4();
      if (v2)
      {

        sub_195EC5A34(v29, v7);

        return v9;
      }

      v15 = v13;
      v16 = v14;
      sub_195F40008(v29, v7);
      v17 = [v11 _indexingHash];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_195F38A94(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_195F38A94((v18 > 1), v19 + 1, 1, v9);
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[40 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v15;
      *(v20 + 6) = v16;
      *(v20 + 7) = v29;
      v7 = v25;
      *(v20 + 8) = v25;
      ++v8;
      v10 = v27;
      v2 = 0;
      if (v12 == v26)
      {
        sub_195EC5A34(v29, v25);

        return v9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v21 = result;
    i = sub_195FA0E88();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t freezeHomegeneousIntents(references:)(unint64_t result)
{
  v2 = result;
  v3 = result >> 62;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_50:
  result = sub_195FA0E88();
  v4 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x19A8C4520](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;
  CHSFrozenIntent.init(reference:)(v6, v62);
  if (v63 >> 60 == 15)
  {
    sub_195F36864();
    swift_allocError();
    *v7 = xmmword_195FACCE0;
    swift_willThrow();
    goto LABEL_8;
  }

  v52 = v6;
  v8 = v4;
  v10 = v62[0];
  v9 = v62[1];
  v12 = v64;
  v11 = v65;
  v56 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA48, &qword_195FACCF0);
  result = swift_allocObject();
  v13 = v56;
  *(result + 16) = xmmword_195FAC070;
  v53 = v10;
  v54 = v9;
  *(result + 32) = v10;
  *(result + 40) = v9;
  *(result + 48) = v56;
  *(result + 56) = v12;
  v60 = v11;
  *(result + 64) = v11;
  if (v8 < 1)
  {
    goto LABEL_55;
  }

  v1 = result;
  v14 = v8;
  if (!v3)
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  result = sub_195FA0E88();
  if (result < 1)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  result = sub_195FA0E88();
  v13 = v56;
LABEL_15:
  if (result < v8)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_195F41178(v53, v54, v13, v12, v11);
    if (v8 != 1)
    {
      sub_195F411D0();

      v15 = 1;
      do
      {
        v16 = v15 + 1;
        sub_195FA0F48();
        v15 = v16;
      }

      while (v8 != v16);
      if (!v3)
      {
        goto LABEL_21;
      }

LABEL_24:

      v51 = sub_195FA1078();
      v59 = v17;
      v2 = v18;
      v14 = v19 >> 1;
      goto LABEL_25;
    }
  }

  else
  {
    sub_195F41178(v53, v54, v13, v12, v11);
  }

  if (v3)
  {
    goto LABEL_24;
  }

LABEL_21:
  v51 = v2 & 0xFFFFFFFFFFFFFF8;
  v59 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = 1;
LABEL_25:
  v20 = v11;
  if (v2 == v14)
  {
LABEL_26:
    swift_unknownObjectRelease();
    sub_195F4121C(v53, v54, v56, v12, v20);

    return v1;
  }

  v57 = v14;
  v58 = v11 >> 60;
  v61 = v12;
  while (1)
  {
    if (v2 >= v14)
    {
      __break(1u);
      goto LABEL_50;
    }

    v66 = v1;
    v21 = *(v59 + 8 * v2);
    v1 = v21;
    if (v58 > 0xE)
    {
      v22 = v21;
      goto LABEL_34;
    }

    sub_195F40008(v12, v20);
    v23 = v1;
    sub_195F40008(v12, v20);
    v24 = [v23 _partialConfigData];
    if (!v24)
    {
      break;
    }

    v25 = v20;
    v26 = v24;
    v3 = sub_195FA04D8();
    v28 = v27;

    sub_195EC08E4(v12, v25);
    v29 = [v23 stableHash];

    sub_195EC5A34(v12, v25);
LABEL_41:
    sub_195EC5A34(v12, v25);
    v39 = *(v66 + 2);
    v38 = *(v66 + 3);
    if (v39 >= v38 >> 1)
    {
      v66 = sub_195F38A94((v38 > 1), v39 + 1, 1, v66);
    }

    ++v2;

    v1 = v66;
    *(v66 + 2) = v39 + 1;
    v40 = &v1[40 * v39];
    *(v40 + 4) = v29;
    *(v40 + 5) = v3;
    *(v40 + 6) = v28;
    *(v40 + 7) = v12;
    *(v40 + 8) = v25;
    v14 = v57;
    v20 = v60;
    v12 = v61;
    if (v57 == v2)
    {
      goto LABEL_26;
    }
  }

  sub_195EC5A34(v12, v20);
LABEL_34:
  v29 = [v1 stableHash];
  v30 = [v1 _partialConfigData];
  if (v30)
  {
    v31 = v30;
    v3 = sub_195FA04D8();
    v28 = v32;

    v33 = [v1 _partialSchemaData];
    if (v33)
    {
      v34 = v33;
      v12 = sub_195FA04D8();
      v25 = v35;

LABEL_40:
      sub_195EC5A34(v61, v20);

      sub_195EC08E4(v3, v28);
      sub_195F40008(v12, v25);
      sub_195EC5A34(v12, v25);
      sub_195EC0890(v3, v28);
      sub_195EC08E4(v3, v28);
      sub_195F40008(v12, v25);
      sub_195EC0890(v3, v28);
      goto LABEL_41;
    }

    sub_195EC0890(v3, v28);
  }

  v36 = [v1 _intentData];
  if (v36)
  {
    v34 = v36;
    v3 = sub_195FA04D8();
    v28 = v37;

    v12 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_40;
  }

  v41 = [v1 intent];
  v42 = sub_195F3FBC4();
  if (v55)
  {

    sub_195EC5A34(v12, v20);
  }

  else
  {
    v44 = v42;
    v45 = v43;
    v46 = sub_195F3FE20();
    v48 = v47;
    sub_195EC5A34(v12, v60);

    sub_195EC0890(v44, v45);
    v49 = v46;
    v20 = v60;
    sub_195EC5A34(v49, v48);
  }

  sub_195F36864();
  swift_allocError();
  *v50 = xmmword_195FACCE0;
  swift_willThrow();

  sub_195F4121C(v53, v54, v56, v12, v20);
  swift_unknownObjectRelease();
  v6 = v52;
LABEL_8:

  return v1;
}

uint64_t _s14ChronoServices15CHSFrozenIntentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  result = a2[3];
  v9 = a2[4];
  v10 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v10)
    {
      v2 = BYTE6(v3);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v10 != 2)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v13 = v2 + 16;
  v11 = *(v2 + 16);
  v12 = *(v13 + 8);
  v14 = __OFSUB__(v12, v11);
  v2 = v12 - v11;
  if (v14)
  {
    __break(1u);
LABEL_9:
    v14 = __OFSUB__(HIDWORD(v2), v2);
    LODWORD(v2) = HIDWORD(v2) - v2;
    if (v14)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v2 = v2;
  }

LABEL_12:
  v15 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v15)
    {
      if (v2 != BYTE6(v7))
      {
        return 0;
      }

      goto LABEL_24;
    }

    v14 = __OFSUB__(HIDWORD(v6), v6);
    v20 = HIDWORD(v6) - v6;
    if (!v14)
    {
      if (v2 != v20)
      {
        return 0;
      }

      goto LABEL_24;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v15 == 2)
  {
    v18 = v6 + 16;
    v16 = *(v6 + 16);
    v17 = *(v18 + 8);
    v14 = __OFSUB__(v17, v16);
    v19 = v17 - v16;
    if (!v14)
    {
      if (v2 != v19)
      {
        return 0;
      }

      goto LABEL_24;
    }

    goto LABEL_54;
  }

  if (v2)
  {
    return 0;
  }

LABEL_24:
  v21 = v5 >> 60;
  if (v5 >> 60 != 15)
  {
    v22 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v22)
      {
        v23 = BYTE6(v5);
        goto LABEL_37;
      }

LABEL_34:
      v14 = __OFSUB__(HIDWORD(v4), v4);
      v26 = HIDWORD(v4) - v4;
      if (!v14)
      {
        v23 = v26;
        goto LABEL_37;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v22 == 2)
    {
      v25 = v4 + 16;
      v4 = *(v4 + 16);
      v24 = *(v25 + 8);
      v23 = v24 - v4;
      if (__OFSUB__(v24, v4))
      {
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_37:
    if (v9 >> 60 == 15)
    {
      return 0;
    }

    goto LABEL_40;
  }

  if (v9 >> 60 == 15)
  {
    return 1;
  }

  v23 = 0;
LABEL_40:
  v27 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v27 != 2)
    {
      sub_195EC5A34(result, v9);
      v28 = 0;
      goto LABEL_50;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v14 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!v14)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_47:
    LODWORD(v28) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v28 = v28;
      goto LABEL_50;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  if (v27)
  {
    goto LABEL_47;
  }

  sub_195EC5A34(result, v9);
  v28 = BYTE6(v9);
LABEL_50:
  result = 0;
  if (v21 <= 0xE && v23 == v28)
  {
    return 1;
  }

  return result;
}

void sub_195F41178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_195EC08E4(a2, a3);

    sub_195F40008(a4, a5);
  }
}

unint64_t sub_195F411D0()
{
  result = qword_1EAEEC148;
  if (!qword_1EAEEC148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC148);
  }

  return result;
}

void sub_195F4121C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_195EC0890(a2, a3);

    sub_195EC5A34(a4, a5);
  }
}

unint64_t sub_195F41278()
{
  result = qword_1EAEEDB00;
  if (!qword_1EAEEDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDB00);
  }

  return result;
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_195F41338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_195F4138C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x19A8C4E60]();

  return v2;
}

uint64_t CHSExtensionIdentity.containerIdentity.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = (v1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
    swift_beginAccess();
    v7 = *v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v8;
}

uint64_t DeviceScopedIdentity<>.containerBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *DeviceScopedIdentity<>.init(containerBundleIdentifier:deviceID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

void sub_195F416CC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_195FA01A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0448();
  v9 = sub_195FA0888();

  if (a2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F41D88(&qword_1EAEEBB28, type metadata accessor for FileAttributeKey, &unk_195FAB8B0);
    a2 = sub_195FA07E8();
  }

  v10 = [v3 createFileAtPath:v9 contents:0 attributes:a2];

  if ((v10 & 1) == 0)
  {
    MEMORY[0x19A8C3C80]();
    v11 = sub_195FA0698();
    if ((v11 & 0x100000000) != 0)
    {
      v12 = 45;
    }

    else
    {
      v12 = v11;
    }

    v13[3] = v12;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195F41D88(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_195FA0308();
    sub_195FA0198();
    (*(v6 + 8))(v8, v5);
    swift_willThrow();
  }
}

void *sub_195F418E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for PrimitiveBox(0, a3, a4, a5);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  swift_getWitnessTable();
  result = URL.extendedAttribute<A>(named:of:)(a1, a2, v11);
  if (!v6)
  {
    return (*(*(a3 - 8) + 32))(a6, v13, a3);
  }

  return result;
}

void *sub_195F41A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v26[1] = a6;
  v26[2] = a7;
  v8 = type metadata accessor for PrimitiveBox(0, a5, a6, a7);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = sub_195FA0DB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v26 - v20;
  (*(v12 + 16))(v15, v28, v11);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    v22 = (*(v12 + 8))(v15, v11);
    MEMORY[0x1EEE9AC00](v22);
    v23 = v30;
    v26[-2] = v29;
    v26[-1] = v23;
    return sub_195FA0418();
  }

  else
  {
    (*(v16 + 32))(v21, v15, a5);
    (*(v16 + 16))(v19, v21, a5);
    PrimitiveBox.init(wrapped:)(v19, a5, v10);
    WitnessTable = swift_getWitnessTable();
    URL.setExtendedAttribute<A>(named:value:)(v29, v30, v10, v8, WitnessTable);
    (*(v27 + 8))(v10, v8);
    return (*(v16 + 8))(v21, a5);
  }
}

uint64_t sub_195F41D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall CHSActivityService.init()(CHSActivityService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CHSActivityService.init()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v0 initWithConnection_];

  return v2;
}

char *sub_195F41ECC(void *a1)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v36);
  v6 = sub_195FA07D8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_195FA0CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion] = 0;
  *&v1[OBJC_IVAR___CHSActivityService_connection] = a1;
  v13 = objc_opt_self();
  v35 = a1;
  v14 = [v13 weakObjectsHashTable];
  *&v1[OBJC_IVAR___CHSActivityService_queue_subscriptions] = v14;
  *&v1[OBJC_IVAR___CHSActivityService_connectionClient] = [objc_allocWithZone(_s16ConnectionClientCMa()) init];
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8098], v9);
  sub_195FA0798();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  v15 = v8;
  *&v1[OBJC_IVAR___CHSActivityService_queue] = sub_195FA0D38();
  v1[OBJC_IVAR___CHSActivityService_queue_invalidated] = 0;
  v44.receiver = v1;
  v44.super_class = CHSActivityService;
  v16 = objc_msgSendSuper2(&v44, sel_init);
  v17 = OBJC_IVAR___CHSActivityService_connectionClient;
  v18 = *&v16[OBJC_IVAR___CHSActivityService_connectionClient];
  v19 = v16;
  v20 = v35;
  [v35 addClient_];
  v21 = *&v16[v17];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = &v21[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler];
  v24 = *&v21[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler];
  v25 = *&v21[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler + 8];
  *v23 = sub_195F43F74;
  v23[1] = v22;
  v26 = v21;

  sub_195EB6E70(v24, v25);

  v27 = *&v19[OBJC_IVAR___CHSActivityService_queue];
  v28 = swift_allocObject();
  *(v28 + 16) = v19;
  aBlock[4] = sub_195F43F7C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_39;
  v29 = _Block_copy(aBlock);
  v30 = v27;
  v31 = v15;
  sub_195FA0798();
  v42 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  v32 = v37;
  v33 = v40;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v31, v32, v29);
  _Block_release(v29);

  (*(v41 + 8))(v32, v33);
  (*(v38 + 8))(v31, v39);

  return v19;
}

char *sub_195F424D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_195FA0778();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_195FA07D8();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *&result[OBJC_IVAR___CHSActivityService_queue];
    v17 = result;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a4;
    aBlock[4] = sub_195F43FA0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_45;
    v19 = _Block_copy(aBlock);
    v21 = v17;

    sub_195FA0798();
    v24 = MEMORY[0x1E69E7CC0];
    sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v15, v12, v19);
    _Block_release(v19);
    (*(v10 + 8))(v12, v9);
    (*(v13 + 8))(v15, v23);
  }

  return result;
}

uint64_t sub_195F427EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_195FA0778();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_195FA07D8();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v15 = [*(v4 + OBJC_IVAR___CHSActivityService_queue_subscriptions) allObjects];
  type metadata accessor for CHSActivitySubscription();
  v16 = sub_195FA0B38();

  if (qword_1EAEED020 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_195F43FD0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_51;
  v18 = _Block_copy(aBlock);

  sub_195FA0798();
  v23 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_195F42B48()
{
  v4[1] = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v1 = *(v0 + OBJC_IVAR___CHSActivityService_connection);
  v4[0] = 0;
  v2 = [v1 subscribeToActivityPayloadUpdates_];
  *(v0 + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion) = v2;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall CHSActivityService.invalidate()()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *&v0[OBJC_IVAR___CHSActivityService_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_195F42FB0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_195FA0798();
  v13 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_195F42FE4()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion;
  v2 = *(v0 + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

id CHSActivityService.subscribe(toActivityID:withHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_195FA0778();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CHSActivitySubscription();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID];
  *v17 = a1;
  v17[1] = a2;
  v18 = &v16[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_payloadHandler];
  *v18 = a3;
  v18[1] = a4;
  v16[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_calloutQueue_invalidated] = 0;
  v30.receiver = v16;
  v30.super_class = v15;

  v19 = objc_msgSendSuper2(&v30, sel_init);
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_195F433EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_6_0;
  v21 = _Block_copy(aBlock);
  v22 = v4;
  v23 = v19;
  sub_195FA0798();
  v28 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v21);
  _Block_release(v21);
  (*(v27 + 8))(v11, v9);
  (*(v25 + 8))(v14, v26);

  return v23;
}

id sub_195F433EC()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR___CHSActivityService_queue_invalidated) & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR___CHSActivityService_queue_subscriptions) addObject_];
  }

  return result;
}

uint64_t sub_195F434F8()
{
  v0 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_195FA0CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_195FA0798();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  result = sub_195FA0D38();
  qword_1EAEF7378 = result;
  return result;
}

id sub_195F438AC()
{
  v2.receiver = v0;
  v2.super_class = _s16ConnectionClientCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_195F43918(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v8 = sub_195FA0E88();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x19A8C4520](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      if (qword_1EAEED020 != -1)
      {
        swift_once();
      }

      BSDispatchQueueAssert();
      if (v12[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_calloutQueue_invalidated] != 1)
      {
        v13 = *&v12[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID] == a2 && *&v12[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID + 8] == a3;
        if (v13 || (sub_195FA12B8() & 1) != 0)
        {
          (*&v12[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_payloadHandler])(a4, a5);
          v10 = a1 & 0xC000000000000001;
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

uint64_t sub_195F43AC4()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAEED020 != -1)
  {
    swift_once();
  }

  v12[1] = qword_1EAEF7378;
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_195F43EB0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_27;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_195FA0798();
  v14 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

id sub_195F43E24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F43EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_195F43F1C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_195FA0888();
  (*(v3 + 16))(v3, v4);
}

id CHSWidgetRelevanceService.init(options:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithOptions_];
}

{
  v2 = v1;
  v4 = sub_195FA0478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = CHSWidgetRelevanceServiceCacheDirectory();
  sub_195FA0428();

  v10 = sub_195FA0398();
  (*(v5 + 8))(v7, v4);
  v11 = [v2 initWithConnection:v8 cacheURL:v10 options:a1];

  return v11;
}

char *sub_195F442D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD70, &qword_195FACFD8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD78, &qword_195FACFE0);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v73 - v10;
  v11 = sub_195FA0778();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_195FA07D8();
  v82 = *(v14 - 8);
  v83 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_195FA0CF8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_finishLaunchingToken] = 0;
  v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion] = 0;
  v21 = OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances;
  v22 = MEMORY[0x1E69E7CC0];
  *&v4[v21] = sub_195F2DB60(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_connection] = a1;
  v23 = objc_allocWithZone(_s16ConnectionClientCMa_0());
  v81 = a1;
  v24 = [v23 init];
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_connectionClient] = v24;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_options] = v87;
  v87 = a2;
  v25 = sub_195FA0438();
  v26 = &v4[OBJC_IVAR___CHSWidgetRelevanceService_cachePath];
  *v26 = v25;
  v26[1] = v27;
  v28 = sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8098], v17);
  sub_195FA0798();
  aBlock[0] = v22;
  sub_195EBDBA0(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  v79 = v28;
  v80 = v16;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue] = sub_195FA0D38();
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_observers] = [objc_opt_self() weakObjectsHashTable];
  if (qword_1EAEEC288 != -1)
  {
    swift_once();
  }

  v29 = qword_1EAEF7330;
  v30 = &v4[OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider];
  v30[3] = type metadata accessor for DefaultKeybagStateProvider();
  v30[4] = &off_1F0A52240;
  *v30 = v29;
  v94.receiver = v4;
  v94.super_class = CHSWidgetRelevanceService;

  v31 = objc_msgSendSuper2(&v94, sel_init);
  v32 = OBJC_IVAR___CHSWidgetRelevanceService_connectionClient;
  v33 = *&v31[OBJC_IVAR___CHSWidgetRelevanceService_connectionClient];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = &v33[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler];
  v36 = *&v33[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler];
  v37 = *&v33[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler + 8];
  *v35 = sub_195F48EDC;
  v35[1] = v34;
  v38 = v31;
  v39 = v33;

  sub_195EB6E70(v36, v37);

  v40 = *&v31[v32];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v40;

  v43 = &v42[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler];
  v44 = *&v42[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler];
  v45 = *&v42[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler + 8];
  *v43 = sub_195F48EE4;
  v43[1] = v41;

  sub_195EB6E70(v44, v45);

  v46 = v81;
  [v81 addClient_];
  v74 = OBJC_IVAR___CHSWidgetRelevanceService_queue;
  v47 = *&v38[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  v92 = sub_195F48EEC;
  v93 = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v91 = &block_descriptor_88;
  v49 = _Block_copy(aBlock);
  v50 = v47;
  v51 = v80;
  sub_195FA0798();
  v89 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  v52 = v84;
  v53 = v86;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v51, v52, v49);
  _Block_release(v49);

  (*(v85 + 8))(v52, v53);
  (*(v82 + 8))(v51, v83);

  v54 = OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider;
  sub_195EC97E0(&v38[OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider], aBlock);
  v55 = v91;
  v56 = v92;
  __swift_project_boxed_opaque_existential_1(aBlock, v91);
  LOBYTE(v55) = (*(v56 + 4))(v55, v56);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v55)
  {
    v57 = sub_195FA0478();
    (*(*(v57 - 8) + 8))(v87, v57);
  }

  else
  {
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v58 = sub_195FA0678();
    __swift_project_value_buffer(v58, qword_1EAEF7238);
    v59 = sub_195FA0658();
    v60 = sub_195FA0CC8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_195EB2000, v59, v60, "CHSWidgetRelevanceService started before first unlock registering for notifications", v61, 2u);
      MEMORY[0x19A8C5B70](v61, -1, -1);
    }

    sub_195EC97E0(&v38[v54], aBlock);
    v62 = v91;
    v63 = v92;
    __swift_project_boxed_opaque_existential_1(aBlock, v91);
    v89 = (*(v63 + 1))(v62, v63);
    v88 = *&v38[v74];
    v64 = v88;
    v65 = sub_195FA0CE8();
    v66 = v75;
    (*(*(v65 - 8) + 56))(v75, 1, 1, v65);
    v67 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD80, &qword_195FACFE8);
    sub_195EB5F38(&qword_1EAEEDD88, &qword_1EAEEDD80, &qword_195FACFE8, MEMORY[0x1E695BED8]);
    sub_195F48E88(&qword_1EAEEDD90, &qword_1EAEEC590, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v68 = v76;
    sub_195FA0758();
    sub_195F2DB00(v66, &qword_1EAEEDD70, &qword_195FACFD8);

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_195EB5F38(&qword_1EAEEDD98, &qword_1EAEEDD78, &qword_195FACFE0, MEMORY[0x1E695BE98]);
    v69 = v78;
    v70 = sub_195FA0768();

    v71 = sub_195FA0478();
    (*(*(v71 - 8) + 8))(v87, v71);
    (*(v77 + 8))(v68, v69);
    *&v38[OBJC_IVAR___CHSWidgetRelevanceService_finishLaunchingToken] = v70;
  }

  return v38;
}