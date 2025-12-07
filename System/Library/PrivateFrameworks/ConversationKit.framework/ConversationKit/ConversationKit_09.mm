id closure #1 in CircularButton.squareConstraint.getter(void *a1)
{
  v2 = [a1 widthAnchor];
  v3 = [a1 heightAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  LODWORD(v5) = 1148846080;
  [v4 setPriority_];
  return v4;
}

void *CircularButton.__allocating_init(symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_8_19();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_7_23();
  return CircularButton.init(symbol:stateConfiguration:context:)();
}

void *CircularButton.init(symbol:stateConfiguration:context:)()
{
  OUTLINED_FUNCTION_8_19();
  *(v1 + OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint) = 0;
  outlined init with copy of SymbolImageDescribing?(v4, v8);
  v5 = BaseButton.init(title:symbol:shape:stateConfiguration:context:)(0, 0, v8, 1, v2, v0);
  v6 = CircularButton.squareConstraint.getter();
  [v6 setActive_];

  outlined destroy of TapInteractionHandler?(v3, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  return v5;
}

void CircularButton.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15ConversationKit14CircularButton____lazy_storage___squareConstraint) = 0;
  OUTLINED_FUNCTION_2_26("Fatal error", a2, a3, a4, 0x80000001BC4F2780, "ConversationKit/Buttons.swift");
  __break(1u);
}

id BaseButton.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PresentationContext and conformance PresentationContext()
{
  result = lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext;
  if (!lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationContext and conformance PresentationContext);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit25ButtonBackgroundBlurStyleO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for ButtonBackgroundBlurStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonBackgroundBlurStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for ButtonBackgroundBlurStyle(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit21ButtonBackgroundStyleO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ButtonBackgroundStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 17))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ButtonBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ButtonBackgroundStyle(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonStyle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonStyle.Configuration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonStyle.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static NSItemProvider.unknownError.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return @nonobjc NSError.init(domain:code:userInfo:)(v0, v2, -1, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](_sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY0_, 0, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY0_()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_13_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo, 0x1E695B8B8);
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TQ1_;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TQ1_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo20CKContainerSetupInfoC_Ttg5TY3_()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](_sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TY0_, 0, 0);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TY0_()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_13_14(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration, 0x1E697B728);
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TQ1_;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFSo23_SWPendingCollaborationC_Ttg5TQ1_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t NSItemProvider.loadObject<A>(ofClass:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_getObjectType();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = NSItemProvider.loadObject<A>(ofClass:);
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

void _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFyScCyxs5Error_pGXEfU_So23_SWPendingCollaborationC_Tt1g5(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23_SWPendingCollaborationCs5Error_pGMd, &_sScCySo23_SWPendingCollaborationCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration, 0x1E697B728);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);

  v15 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v14];
  _Block_release(v14);
}

void _sSo14NSItemProviderC15ConversationKitE10loadObject7ofClassxxm_tYaKSo0aB7ReadingRzlFyScCyxs5Error_pGXEfU_So20CKContainerSetupInfoC_Tt1g5(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20CKContainerSetupInfoCs5Error_pGMd, &_sScCySo20CKContainerSetupInfoCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo, 0x1E695B8B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  v15 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v14];
  _Block_release(v14);
}

void closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  (*(v10 + 32))(v16 + v15, v13, v9);
  *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v17 = _Block_copy(aBlock);

  v18 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v17];
  _Block_release(v17);
}

uint64_t specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      static NSItemProvider.unknownError.getter();
    }

    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSItemProviderReading_pMd, &_sSo21NSItemProviderReading_pMR), (swift_dynamicCast() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      static NSItemProvider.unknownError.getter();
    }

    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = swift_getObjectType();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v13 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v13;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_10_4();
  *v4 = v5;
  v4[1] = NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, 0xD000000000000031, v9, v10, v3, v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

void closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = aBlock - v14;
  v16 = MEMORY[0x1BFB209B0](a3, a4, v13);
  (*(v11 + 16))(v15, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v15, v10);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_26;
  v19 = _Block_copy(aBlock);

  v20 = [a2 loadInPlaceFileRepresentationForTypeIdentifier:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  outlined init with copy of URL?(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    if (URL.isFileURL.getter() & 1) != 0 && (a2)
    {
      (*(v10 + 16))(v12, v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v10 + 8))(v15, v9);
    }

    (*(v10 + 8))(v15, v9);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = static NSItemProvider.unknownError.getter();
    goto LABEL_9;
  }

  outlined destroy of URL?(v8);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v16 = a3;
LABEL_9:
  v19[1] = v16;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v13, 1, v12);

  v14 = a4;
  v11(v10, a3, a4);

  return outlined destroy of URL?(v10);
}

uint64_t NSItemProvider.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  OUTLINED_FUNCTION_9_0(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v5, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CKContainerSetupInfo, 0x1E695B8B8);
  if ([v1 canLoadObjectOfClass_])
  {
    v2 = OUTLINED_FUNCTION_16_11();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = NSItemProvider.collaborationInitiator.getter;
LABEL_5:
    v2[1] = v3;

    return v17();
  }

  v4 = *(v0 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _SWPendingCollaboration, 0x1E697B728);
  if ([v4 canLoadObjectOfClass_])
  {
    v2 = OUTLINED_FUNCTION_16_11();
    *(v0 + 128) = v2;
    *v2 = v0;
    v3 = NSItemProvider.collaborationInitiator.getter;
    goto LABEL_5;
  }

  v6 = [*(v0 + 16) registeredTypeIdentifiersWithFileOptions_];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16))
  {
    *(v0 + 152) = *(v7 + 40);

    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = NSItemProvider.collaborationInitiator.getter;

    return NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)();
  }

  else
  {
    v9 = *(v0 + 24);

    v10 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v11 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
    OUTLINED_FUNCTION_5_6();
    @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v12, v13, v14);

    v15 = OUTLINED_FUNCTION_8_20();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[11] = v3;
  v5[12] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];

    return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[13] = v11;
    *v11 = v7;
    v11[1] = NSItemProvider.collaborationInitiator.getter;

    return CKContainerSetupInfo.collaborationInitiator.getter();
  }
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[14] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v5[15] = v3;
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 88);

  v2 = OUTLINED_FUNCTION_8_20();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v5[17] = v0;

  if (v0)
  {
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v5[18] = v3;
    v9 = v5[8];
    v10 = v5[9];
    v11 = NSItemProvider.collaborationInitiator.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 144);

  v2 = _SWPendingCollaboration.collaborationInitiator.getter();

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];

    return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[22] = v9;
    *v9 = v5;
    v9[1] = NSItemProvider.collaborationInitiator.getter;

    return URL.userNameAndEmail.getter();
  }
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  PersonNameComponents.init(formattedName:)(v0[27], v0[26], v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  v0[28] = @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v6, v2, v1);
  (*(v4 + 8))(v3, v5);
  v8 = v0[8];
  v9 = v0[9];

  return MEMORY[0x1EEE6DFA0](NSItemProvider.collaborationInitiator.getter, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  v0 = OUTLINED_FUNCTION_8_20();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t NSItemProvider.collaborationInitiator.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23_0();
  v11 = v10;
  OUTLINED_FUNCTION_1_2();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_4_6();
  *v14 = v13;
  v11[23] = v4;

  if (v4)
  {
    (*(v11[5] + 8))(v11[6], v11[4]);
    v15 = v11[8];
    v16 = v11[9];
    v17 = NSItemProvider.collaborationInitiator.getter;
  }

  else
  {
    v11[24] = a4;
    v11[25] = a3;
    v11[26] = a2;
    v11[27] = a1;
    OUTLINED_FUNCTION_5_6();
  }

  return MEMORY[0x1EEE6DFA0](v17, v15, v16);
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1BFB209B0](a1);

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v8) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (a3)
  {
    v10 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 initWithNameComponents:isa handle:v10];

  return v11;
}

uint64_t partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2)
{
  return partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, &_sScCySo20CKContainerSetupInfoCs5Error_pGMd, &_sScCySo20CKContainerSetupInfoCs5Error_pGMR, 0x1E695B8B8);
}

{
  return partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, &_sScCySo23_SWPendingCollaborationCs5Error_pGMd, &_sScCySo23_SWPendingCollaborationCs5Error_pGMR, 0x1E697B728);
}

uint64_t partial apply for specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9_0(v11);
  OUTLINED_FUNCTION_11_7();
  return specialized closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, v5 + v13, *(v5 + v12), a5, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVs5Error_pGMd, &_sScCy10Foundation3URLVs5Error_pGMR);
  OUTLINED_FUNCTION_9_0(v6);
  OUTLINED_FUNCTION_11_7();

  return closure #1 in closure #1 in NSItemProvider.loadInPlaceFileRepresentation(forTypeIdentifier:)(a1, a2, a3);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_9_0(v6);
  OUTLINED_FUNCTION_11_7();
  v9 = *(v2 + v8);

  return closure #1 in closure #1 in NSItemProvider.loadObject<A>(ofClass:)(a1, a2, v2 + v7, v9, v5);
}

id one-time initialization function for systemApertureDurationTextColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.22745098 green:1.0 blue:0.42745098 alpha:1.0];
  static UIColor.systemApertureDurationTextColor = result;
  return result;
}

uint64_t *UIColor.systemApertureDurationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    OUTLINED_FUNCTION_13_15(&one-time initialization token for systemApertureDurationTextColor);
  }

  return &static UIColor.systemApertureDurationTextColor;
}

id static UIColor.systemApertureDurationTextColor.getter()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    OUTLINED_FUNCTION_13_15(&one-time initialization token for systemApertureDurationTextColor);
  }

  v1 = static UIColor.systemApertureDurationTextColor;

  return v1;
}

id one-time initialization function for statusTextColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.4];
  static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.4];
  static OngoingTelephonyControlsView.Constants.statusTextColor = result;
  return result;
}

uint64_t *SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  return &static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
}

id one-time initialization function for durationTextColor()
{
  if (one-time initialization token for systemApertureDurationTextColor != -1)
  {
    swift_once();
  }

  v1 = static UIColor.systemApertureDurationTextColor;
  static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor = static UIColor.systemApertureDurationTextColor;

  return v1;
}

{
  result = [objc_opt_self() systemGreenColor];
  static OngoingTelephonyControlsView.Constants.durationTextColor = result;
  return result;
}

uint64_t *SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for durationTextColor != -1)
  {
    OUTLINED_FUNCTION_11_8(&one-time initialization token for durationTextColor);
  }

  return &static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
}

void SystemApertureOngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v76 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView] = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v79.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v14, v13, v79);
  v75 = v11;
  *&v0[v11] = v15;
  v16 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v17 = [v12 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  v18 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v19 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v80.value.super.isa = v18;
  UILabel.init(font:textColor:)(v20, v17, v80);
  *&v0[v16] = v21;
  v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_context] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(v6, &v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe]);
  *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_controlsManager] = v4;
  swift_storeEnumTagMultiPayload();
  v22 = one-time initialization token for conversationKit;
  v23 = v4;
  v73 = v16;
  v74 = v6;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = xmmword_1EDDCCEE8;
  v72.super.isa = static LocalizationSource.conversationKit;
  v25 = *(&xmmword_1EDDCCEE8 + 1);
  v81._object = 0xE000000000000000;
  v26._object = 0x80000001BC4F3040;
  v26._countAndFlagsBits = 0xD000000000000015;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v27, v81);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v30 = v29;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  v31 = v30;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v28._countAndFlagsBits, v28._object, v31);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_changeRouteButton] = v31;
  static ConversationControlsAction.rejectCall(controlsManager:)(v23, v10);
  v82._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x5F474E41485F5841;
  v32._object = 0xEA00000000005055;
  v33.value._countAndFlagsBits = v24;
  v33.value._object = v25;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v72, v34, v82);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v37 = v36;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  v38 = v37;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v35._countAndFlagsBits, v35._object, v38);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_hangUpButton] = v38;
  [*&v1[v75] setAttributedText_];
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView] = 0;
  v39 = type metadata accessor for DurationLabelController();
  v40 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x2A0))();
  v42 = v41;
  ObjectType = swift_getObjectType();
  v44 = *&v1[v73];
  v45 = one-time initialization token for durationTextColor;
  swift_unknownObjectRetain();
  v46 = v44;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_11_8(&one-time initialization token for durationTextColor);
  }

  v47 = static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
  v78[0] = v40;
  v48 = *(v42 + 8);
  v49 = static SystemApertureOngoingTelephonyControlsView.Constants.durationTextColor;
  v50 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v78, v46, v47, 0, 0, 0, v39, ObjectType, v48);
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_durationController] = v50;
  v51 = *(*v50 + 248);

  v51(v52);

  v77.receiver = v1;
  v77.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView(0);
  v53 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SystemApertureOngoingTelephonyControlsView.updateLeadingView()();
  v54 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v55 = [*&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel] layer];
  v56 = *(v74 + *(type metadata accessor for ConversationControlsRecipe(0) + 64));
  [v55 setAllowsHitTesting_];

  v57 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  v58 = [*&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel] layer];
  [v58 setAllowsHitTesting_];

  [*&v53[v54] setUserInteractionEnabled_];
  [*&v53[v57] setUserInteractionEnabled_];
  v59 = OUTLINED_FUNCTION_26_4();
  [v59 v60];
  v61 = OUTLINED_FUNCTION_26_4();
  [v61 v62];
  v63 = OUTLINED_FUNCTION_26_4();
  [v63 v64];
  v65 = OUTLINED_FUNCTION_26_4();
  [v65 v66];
  v67 = *&v53[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView];
  if (v67)
  {
    v68 = v67;
    v69 = OUTLINED_FUNCTION_26_4();
    [v69 v70];
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v74, v71);
  OUTLINED_FUNCTION_30_0();
}

unint64_t type metadata accessor for UILabel()
{
  result = lazy cache variable for type metadata for UILabel;
  if (!lazy cache variable for type metadata for UILabel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UILabel);
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SystemApertureOngoingTelephonyControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureOngoingTelephonyControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v12.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v4, v3, v12);
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel;
  v7 = [v2 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_3_19();
    swift_once();
  }

  v8 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v9 = static SystemApertureOngoingTelephonyControlsView.Constants.statusTextColor;
  v13.value.super.isa = v8;
  UILabel.init(font:textColor:)(v10, v7, v13);
  *(v0 + v6) = v11;
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_context) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_changeRouteButton];
  [v0 alpha];
  [v5 setAlpha_];
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_hangUpButton];
  [v0 alpha];

  return [v6 setAlpha_];
}

double SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.didset();
}

uint64_t (*SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify;
}

uint64_t key path setter for SystemApertureOngoingTelephonyControlsView.recipe : SystemApertureOngoingTelephonyControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v6);
}

id SystemApertureOngoingTelephonyControlsView.recipe.didset()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44[0] = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "[%{public}s.recipe.didSet] Updating recipe on existing instance may not result in the expected experience.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v10 = &v0[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe];
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v10, v44);
  v40 = 6;
  v41 = 0u;
  v42 = 0u;
  v43 = 7;
  v11 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
  outlined destroy of ConversationControlsType(&v40);
  outlined destroy of ConversationControlsType(v44);
  if ((v11 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v10, v44);
    v40 = 8;
    v41 = 0u;
    v42 = 0u;
    v43 = 7;
    v12 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
    outlined destroy of ConversationControlsType(&v40);
    outlined destroy of ConversationControlsType(v44);
    if ((v12 & 1) == 0)
    {
      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v40 = v17;
        *v16 = 136446466;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v10, v44);
        v21 = specialized >> prefix<A>(_:)(v44);
        v23 = v22;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_1BBC58000, v14, v15, "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v16, -1, -1);
      }
    }
  }

  if (specialized Array.count.getter())
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v27 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v44);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v25, v26, "[%{public}s.recipe.didSet] Ignoring recipe subtitles which is currently unsupported per design.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB23DF0](v39, -1, -1);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }
  }

  if (*(v10 + *(type metadata accessor for ConversationControlsRecipe(0) + 40)))
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136446210;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v31, v32, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported per design", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel] setAttributedText_];
  SystemApertureOngoingTelephonyControlsView.updateLeadingView()();
  return [v1 setNeedsLayout];
}

uint64_t SystemApertureOngoingTelephonyControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureOngoingTelephonyControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  SystemApertureOngoingTelephonyControlsView.recipe.didset();
  OUTLINED_FUNCTION_1_11();
  return outlined destroy of ConversationControlsAction(a1, v4);
}

uint64_t (*SystemApertureOngoingTelephonyControlsView.recipe.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return SystemApertureOngoingTelephonyControlsView.recipe.modify;
}

uint64_t SystemApertureOngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t SystemApertureOngoingTelephonyControlsView.systemAperturePreferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    Width = CGRectGetWidth(v14);
  }

  else
  {
    Width = 1.79769313e308;
  }

  v12 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
  [v12 layoutFrame];

  return *&Width;
}

Swift::Void __swiftcall SystemApertureOngoingTelephonyControlsView.layoutSubviews()()
{
  OUTLINED_FUNCTION_36_1();
  v138 = v1;
  v139 = v2;
  v3 = v0;
  swift_getObjectType();
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v135.receiver = v0;
  v135.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView(0);
  v9 = objc_msgSendSuper2(&v135, sel_layoutSubviews);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v9);
  v10 = v8 + *(v5 + 76);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  outlined copy of LeadingViewType?(*v10, v12, *(v10 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v8, v14);
  v15 = 16.0;
  if (v13 != 255)
  {
    outlined consume of LeadingViewType?(v11, v12, v13);
    if (v13)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
      v17 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView];
      v15 = 23.0;
      if (v17)
      {
        v18 = [v17 layer];
        [v18 setCornerRadius_];

        v19 = *&v3[v16];
        if (v19)
        {
          v20 = [v19 layer];
          [v20 setMasksToBounds_];
        }
      }
    }
  }

  OUTLINED_FUNCTION_24_8();
  MinY = (CGRectGetHeight(v140) + -50.0) * 0.5;
  v124 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
  v22 = 50.0;
  v23 = OUTLINED_FUNCTION_34_3();
  [v24 v25];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, &static Logger.conversationControls);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v28))
  {
    v29 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v29 = 136446466;
    v30 = OUTLINED_FUNCTION_12_10();
    v32 = OUTLINED_FUNCTION_28_9(v30, v31);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *v132 = v15;
    *&v132[1] = MinY;
    v133 = vdupq_n_s64(0x4049000000000000uLL);
    type metadata accessor for CGRect(0);
    v33 = String.init<A>(reflecting:)();
    v35 = OUTLINED_FUNCTION_28_9(v33, v34);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1BBC58000, v27, v28, "[%{public}s][layout] leadingFrame is %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetWidth(v141);
  OUTLINED_FUNCTION_24_8();
  CGRectGetHeight(v142);
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_41_3(sel_setCenter_, &v137);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v37))
  {
    v28 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v28 = 136446466;
    v38 = OUTLINED_FUNCTION_12_10();
    v40 = OUTLINED_FUNCTION_28_9(v38, v39);

    *(v28 + 4) = v40;
    *(v28 + 12) = 2080;
    OUTLINED_FUNCTION_27_5();
    v41 = String.init<A>(reflecting:)();
    v43 = OUTLINED_FUNCTION_28_9(v41, v42);

    *(v28 + 14) = v43;
    _os_log_impl(&dword_1BBC58000, v36, v37, "[%{public}s][layout] hangUpCenter is %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetHeight(v143);
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_41_3(sel_setCenter_, &v136);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v45))
  {
    v46 = OUTLINED_FUNCTION_30_1();
    v134 = OUTLINED_FUNCTION_29_7();
    *v46 = 136446466;
    v47 = OUTLINED_FUNCTION_12_10();
    v49 = OUTLINED_FUNCTION_28_9(v47, v48);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    OUTLINED_FUNCTION_27_5();
    v50 = String.init<A>(reflecting:)();
    v52 = OUTLINED_FUNCTION_28_9(v50, v51);

    *(v46 + 14) = v52;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v53, v54, "[%{public}s][layout] changeRouteCenter is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v144.origin.x = OUTLINED_FUNCTION_34_3();
  MaxX = CGRectGetMaxX(v144);
  OUTLINED_FUNCTION_24_8();
  Width = CGRectGetWidth(v145);
  v129 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel];
  v57 = [v129 font];
  if (v57)
  {
    v58 = v57;
    v59 = MaxX + 9.0;
    v60 = Width + -136.0 - (MaxX + 9.0);
    [v57 lineHeight];
    v62 = v61;

    v63 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView];
    v64 = 14.0;
    if (!v63)
    {
      v64 = 0.0;
    }

    if (v64 <= 0.0)
    {
      v65 = 0.0;
    }

    else
    {
      v65 = v64 + 4.0;
    }

    v126 = v60;
    OUTLINED_FUNCTION_24_8();
    Height = CGRectGetHeight(v146);
    v67 = (*(**&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_durationController] + 224))(v60 - v65, Height - v62);
    v130 = v68;
    v131 = v67;
    v69 = v65 + v67;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v71))
    {
      v72 = swift_slowAlloc();
      v73 = OUTLINED_FUNCTION_23();
      v132[0] = v73;
      *v72 = 136446722;
      v74 = OUTLINED_FUNCTION_12_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v132);
      OUTLINED_FUNCTION_32_1();
      *(v72 + 4) = v28;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v69 < 56.0;
      *(v72 + 18) = 2048;
      *(v72 + 20) = v69;
      _os_log_impl(&dword_1BBC58000, v70, v71, "[%{public}s][layout] secondaryNextToSensor: %{BOOL}d, textWidth: %f", v72, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_9_13();
    }

    v125 = v22;
    if (v69 >= 56.0)
    {
      v128 = 38.0;
    }

    else
    {
      OUTLINED_FUNCTION_24_8();
      v128 = (CGRectGetHeight(v147) - v130 - v62) * 0.5;
    }

    v22 = MinY;
    v76 = v59 + v65;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v127 = v15;
    if (OUTLINED_FUNCTION_18_0(v78))
    {
      v79 = OUTLINED_FUNCTION_30_1();
      v132[0] = OUTLINED_FUNCTION_29_7();
      *v79 = 136446466;
      v80 = OUTLINED_FUNCTION_12_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v132);
      OUTLINED_FUNCTION_32_1();
      *(v79 + 4) = v28;
      *(v79 + 12) = 2080;
      v82 = CGRect.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v132);
      OUTLINED_FUNCTION_32_1();
      *(v79 + 14) = v28;
      _os_log_impl(&dword_1BBC58000, v77, v78, "[%{public}s][layout] secondaryFrame: %s", v79, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_9_13();

      v84 = &selRef_isRecordingAllowed;
      v85 = &selRef_isRecordingAllowed;
    }

    else
    {

      v84 = &selRef_isRecordingAllowed;
      v85 = &selRef_isRecordingAllowed;
    }

    v86 = *&v3[OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel];
    v87 = OUTLINED_FUNCTION_10_5();
    [v88 v89];
    if (v63)
    {
      v90 = v63;
      [v90 v85[64]];
      v148.origin.x = OUTLINED_FUNCTION_10_5();
      v91 = CGRectGetMinX(v148) + -4.0 + -7.0;
      [v86 center];
      [v90 setCenter_];
    }

    v149.origin.x = OUTLINED_FUNCTION_10_5();
    MaxY = CGRectGetMaxY(v149);
    if (v63)
    {
      [v63 frame];
      v93 = CGRectGetMaxY(v150);
    }

    else
    {
      v93 = 2.22507386e-308;
    }

    if (MaxY > v93)
    {
      v94 = MaxY;
    }

    else
    {
      v94 = v93;
    }

    [v129 v84[63]];
    v151.origin.x = v127;
    v151.origin.y = v22;
    v151.size.width = v125;
    v151.size.height = v125;
    v15 = CGRectGetMaxY(v151);
    v152.origin.x = v59;
    v152.origin.y = v94;
    v152.size.width = v126;
    v152.size.height = v62;
    v95 = CGRectGetMaxY(v152);
    MinY = 17.0;
    if (v69 < 56.0)
    {
      v153.origin.x = v76;
      v153.origin.y = v128;
      v153.size.width = v131;
      v153.size.height = v130;
      MinY = CGRectGetMinY(v153);
    }

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v97))
    {
      v98 = swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_23();
      v132[0] = v99;
      *v98 = 136446978;
      v100 = OUTLINED_FUNCTION_12_10();
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v132);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2048;
      *(v98 + 14) = v15 + 14.0;
      *(v98 + 22) = 2048;
      *(v98 + 24) = v95 + MinY;
      *(v98 + 32) = 2048;
      *(v98 + 34) = 0x4055000000000000;
      _os_log_impl(&dword_1BBC58000, v96, v97, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v98, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v99);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB450;
      v104 = *&v3[v124];
      *(inited + 32) = v104;
      *(inited + 40) = v86;
      *(inited + 48) = v129;
      *(inited + 56) = v122;
      *(inited + 64) = v123;
      *(inited + 72) = v63;
      v105 = MEMORY[0x1E69E7CC0];
      v132[0] = MEMORY[0x1E69E7CC0];
      v106 = v104;
      v107 = v86;
      v108 = v129;
      v109 = v122;
      v110 = v123;
      v111 = v63;
      for (i = 0; i != 6; ++i)
      {
        if (i > 5)
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v113 = *(inited + 8 * i + 32);
        if (v113)
        {
          v114 = v113;
          MEMORY[0x1BFB20CC0]();
          if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v105 = v132[0];
        }
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v115 = specialized Array.count.getter();
      for (j = 0; v115 != j; ++j)
      {
        if ((v105 & 0xC000000000000001) != 0)
        {
          v117 = MEMORY[0x1BFB22010](j, v105);
        }

        else
        {
          if (j >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v117 = *(v105 + 8 * j + 32);
        }

        v118 = v117;
        if (__OFADD__(j, 1))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_24_8();
        v119 = CGRectGetWidth(v154);
        [v118 center];
        v121 = v119 - v120;
        [v118 center];
        [v118 setCenter_];
      }
    }

    OUTLINED_FUNCTION_35_3();
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall SystemApertureOngoingTelephonyControlsView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_36_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getObjectType();
  v62 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (v4 <= 2.22507386e-308)
  {
    v4 = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_30_1();
    v64 = OUTLINED_FUNCTION_29_7();
    *v14 = 136446466;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v64);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *&v63 = v6;
    *(&v63 + 1) = v4;
    type metadata accessor for CGSize(0);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v64);

    *(v14 + 14) = v20;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v21, v22, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    v25 = OUTLINED_FUNCTION_30_1();
    v64 = OUTLINED_FUNCTION_29_7();
    *v25 = 136446466;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v64);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v63 = xmmword_1BC4BB460;
    type metadata accessor for CGSize(0);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v64);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v32, v33, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  v34 = v10 + *(v62 + 68);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  outlined copy of LeadingViewType?(*v34, v36, *(v34 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v10, v38);
  if (v37 == 255)
  {
    v39 = 75.0;
  }

  else
  {
    outlined consume of LeadingViewType?(v35, v36, v37);
    if (v37)
    {
      v39 = 82.0;
    }

    else
    {
      v39 = 75.0;
    }
  }

  v40 = 0.0;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_brandedIconView))
  {
    v41 = 14.0;
  }

  else
  {
    v41 = 0.0;
  }

  if (v41 > 0.0)
  {
    v40 = v41 + 4.0;
  }

  v42 = v6 + -136.0 - v39 - v40;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_primaryLabel) sizeThatFits_];
  v44 = v43;
  v46 = v45;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_secondaryLabel) sizeThatFits_];
  if (v44 > v47)
  {
    v47 = v44;
  }

  if (v48 <= v41)
  {
    v48 = v41;
  }

  v49 = v46 + v48 + 38.0 + 17.0;
  if (v47 <= 156.0)
  {
    v47 = 156.0;
  }

  v50 = v39 + v47 + 136.0;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v49, 84.0);
  v52 = v51;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v54))
  {
    v55 = OUTLINED_FUNCTION_23();
    v56 = OUTLINED_FUNCTION_23();
    *&v63 = v56;
    *v55 = 136446722;
    v57 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v63);
    OUTLINED_FUNCTION_32_1();
    *(v55 + 4) = v35;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v50;
    *(v55 + 22) = 2048;
    *(v55 + 24) = v52;
    _os_log_impl(&dword_1BBC58000, v53, v54, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v55, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_35_3();
  result.height = v60;
  result.width = v59;
  return result;
}

uint64_t specialized max<A>(_:_:_:_:)(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

CGSize __swiftcall SystemApertureOngoingTelephonyControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

void SystemApertureOngoingTelephonyControlsView.updateLeadingView()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_42();
    v30 = OUTLINED_FUNCTION_23();
    v11 = v30;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v15, v16, "[%{public}s] updateLeadingView");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v17 = OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) removeFromSuperview];
  v18 = *(v1 + v17);
  *(v1 + v17) = 0;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v19 = v6 + *(v2 + 68);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  outlined copy of LeadingViewType?(*v19, v20, *(v19 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v6, v23);
  if (v22 == 255)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v25))
    {
      v26 = OUTLINED_FUNCTION_42();
      v27 = OUTLINED_FUNCTION_23();
      v30 = v27;
      *v26 = 136446210;
      v28 = _typeName(_:qualified:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v30);
      OUTLINED_FUNCTION_32_1();
      *(v26 + 4) = &stru_1BC4BA000;
      _os_log_impl(&dword_1BBC58000, v24, v25, "[%{public}s] omitting leading view", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (v22)
    {
      SystemApertureOngoingTelephonyControlsView.updateBrandedImageIcon(using:)();
    }

    else
    {
      SystemApertureOngoingTelephonyControlsView.updateAvatarView(using:)();
    }

    outlined consume of LeadingViewType?(v21, v20, v22);
  }

  OUTLINED_FUNCTION_30_0();
}

void SystemApertureOngoingTelephonyControlsView.updateAvatarView(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v23 = v12;
    *v11 = 136446210;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v16, v17, "[%{public}s] showing avatar");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v18 = *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = v3;
  v19 = v3;

  v20 = [v19 layer];
  v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  OUTLINED_FUNCTION_33_4();
  v21();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v7, v22);
  [v20 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v21();
  OUTLINED_FUNCTION_37_6();
  [v19 setUserInteractionEnabled_];
  [v1 addSubview_];
  [v1 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureOngoingTelephonyControlsView.updateBrandedImageIcon(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v24 = v12;
    *v11 = 136446210;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v11 + 4) = v15;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v16, v17, "[%{public}s] showing branded calling image");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_27();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit42SystemApertureOngoingTelephonyControlsView_leadingView) = v18;
  v20 = v18;

  v21 = [v20 layer];
  v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  OUTLINED_FUNCTION_33_4();
  v22();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v7, v23);
  [v21 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v22();
  OUTLINED_FUNCTION_37_6();
  [v20 setUserInteractionEnabled_];
  [v1 addSubview_];
  [v1 setNeedsLayout];

  OUTLINED_FUNCTION_30_0();
}

id SystemApertureOngoingTelephonyControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureOngoingTelephonyControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureOngoingTelephonyControlsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1, a2);
  [a3 setAccessibilityLabel_];
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_22_7();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_22_7();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

{
  v5 = OUTLINED_FUNCTION_0_19(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_21_6();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (void *a1)
{
}

{
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for SystemApertureOngoingTelephonyControlsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemApertureOngoingTelephonyControlsView;
  if (!type metadata singleton initialization cache for SystemApertureOngoingTelephonyControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with copy of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id outlined copy of LeadingViewType?(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of PreCallControlsContext(result);
  }

  return result;
}

void outlined consume of LeadingViewType?(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of PreCallControlsContext(a1);
  }
}

uint64_t type metadata completion function for SystemApertureOngoingTelephonyControlsView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShareCardStatusHeaderView.init(controlsManager:shouldHideDefaultStatusView:preserveProposedWidth:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for ShareCardStatusHeaderView(0);
  v14 = type metadata accessor for ConversationControlsRecipe(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  outlined init with copy of ConversationControlsRecipe?(v13, v10);
  State.init(wrappedValue:)();
  result = outlined destroy of ConversationControlsRecipe?(v13);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t outlined init with copy of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConversationControlsRecipe?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareCardStatusHeaderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ShareCardStatusHeaderView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = static Alignment.center.getter();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit0j6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA08_PaddingG0VGSgGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit0j6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA08_PaddingG0VGSgGMR);
  closure #1 in ShareCardStatusHeaderView.body.getter(v1, a1 + *(v7 + 44));
  v8 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACy15ConversationKit0F10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyACy15ConversationKit0F10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGAKGMR) + 36);
  *v17 = v8;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  v18 = *(*v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher);
  outlined init with copy of ShareCardStatusHeaderView(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareCardStatusHeaderView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  outlined init with take of ShareCardStatusHeaderView(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ShareCardStatusHeaderView);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMR);
  *(a1 + *(v21 + 52)) = v18;
  v22 = (a1 + *(v21 + 56));
  *v22 = partial apply for closure #2 in ShareCardStatusHeaderView.body.getter;
  v22[1] = v20;
  outlined init with copy of ShareCardStatusHeaderView(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareCardStatusHeaderView);
  v23 = swift_allocObject();
  outlined init with take of ShareCardStatusHeaderView(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19, type metadata accessor for ShareCardStatusHeaderView);
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMR) + 36));
  *v24 = partial apply for closure #2 in ShareCardStatusHeaderView.body.getter;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
}

uint64_t closure #1 in ShareCardStatusHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShareCardStatusHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd, &_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMR);
  State.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsRecipe?(v9);
    v13 = 1;
  }

  else
  {
    outlined init with take of ShareCardStatusHeaderView(v9, v12, type metadata accessor for ConversationControlsRecipe);
    v14 = *a1;
    v15 = type metadata accessor for ConversationStatusView(0);
    outlined init with copy of ShareCardStatusHeaderView(v12, v6 + *(v15 + 20), type metadata accessor for ConversationControlsRecipe);
    v16 = *(a1 + 9);
    *v6 = v14;
    *(v6 + *(v15 + 24)) = v16;
    v17 = v14;
    v18 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    outlined destroy of ConversationControlsRecipe(v12);
    v27 = v6 + *(v4 + 36);
    *v27 = v18;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    outlined init with take of ModifiedContent<ConversationStatusView, _PaddingLayout>(v6, a2);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v4);
}

uint64_t ShareCardStatusHeaderView.updateRecipe()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *v15 = 11;
  memset(&v15[8], 0, 32);
  v16 = 7;
  v11 = *v0;
  ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, v15, *v0, v10);
  outlined destroy of ConversationControlsType(v15);
  type metadata accessor for ShareCardStatusHeaderView(0);
  outlined init with copy of ConversationControlsRecipe?(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd, &_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMR);
  State.wrappedValue.setter();
  outlined destroy of ConversationControlsRecipe?(v10);
  State.wrappedValue.getter();
  v12 = type metadata accessor for ConversationControlsRecipe(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v12);
  result = outlined destroy of ConversationControlsRecipe?(v4);
  if (EnumTagSinglePayload == 1 && (v1[1] & 1) == 0)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 7;
    ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, v15, v11, v10);
    outlined destroy of ConversationControlsType(v15);
    outlined init with copy of ConversationControlsRecipe?(v10, v7);
    State.wrappedValue.setter();
    return outlined destroy of ConversationControlsRecipe?(v10);
  }

  return result;
}

void type metadata completion function for ShareCardStatusHeaderView(uint64_t a1)
{
  type metadata accessor for ConversationControlsManager(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<ConversationControlsRecipe?>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for State<ConversationControlsRecipe?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for State<ConversationControlsRecipe?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<ConversationControlsRecipe?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGACyAA6ZStackVyACy15ConversationKit0l6StatusF033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA15ModifiedContentVyAA6ZStackVyAKy15ConversationKit0l6StatusD033_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGSgGASGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, ModifiedContent<ZStack<ModifiedContent<ConversationStatusView, _PaddingLayout>?>, _PaddingLayout>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ShareCardStatusHeaderView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationStatusView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsManager(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConversationControlsRecipe(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id ConversationStatusView.makeUIView(context:)()
{
  v1 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConversationStatusView(0);
  outlined init with copy of ShareCardStatusHeaderView(v0 + *(v4 + 20), v3, type metadata accessor for ConversationControlsRecipe);
  v5 = *v0;
  v9 = 1;
  v6 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsStatusView(0));
  return ConversationHUDControlsStatusView.init(recipe:controlsManager:menuHostViewController:context:presentationStyle:)(v3, v5, 0, 0, 2, &v9);
}

uint64_t ConversationStatusView.updateUIView(_:context:)(void *a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConversationStatusView(0);
  outlined init with copy of ShareCardStatusHeaderView(v1 + *(v6 + 20), v5, type metadata accessor for ConversationControlsRecipe);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(v5);
}

double ConversationStatusView.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5, double a6, double a7, double a8, double a9)
{
  v11 = *MEMORY[0x1E69DE090];
  v12 = *(MEMORY[0x1E69DE090] + 8);
  v13 = *&a1;
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  HIDWORD(v14) = HIDWORD(a3);
  if ((a4 & 1) == 0)
  {
    v12 = *&a3;
  }

  LODWORD(v14) = 1148846080;
  LODWORD(a9) = 1132068864;
  [a5 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:v12 verticalFittingPriority:{v14, a9}];
  v16 = v15;
  if (a2)
  {
    v13 = v15;
  }

  if (*(v9 + *(type metadata accessor for ConversationStatusView(0) + 24)))
  {
    return v13;
  }

  else
  {
    return v16;
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ConversationStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView, &protocol conformance descriptor for ConversationStatusView);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ConversationStatusView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView, &protocol conformance descriptor for ConversationStatusView);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ConversationStatusView(uint64_t a1)
{
  lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(&lazy protocol witness table cache variable for type ConversationStatusView and conformance ConversationStatusView, &protocol conformance descriptor for ConversationStatusView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t outlined init with copy of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConversationStatusView and conformance ConversationStatusView(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConversationStatusView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ConversationControlsRecipe(uint64_t a1)
{
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ConversationStatusView, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit0E10StatusView33_E0441BCA784CDE2705F21795966E817ELLVAA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_AKs5NeverOTg504_s15d5Kit19ghi27_pAA04CallcD0C0cdE3Box33_27klmnopq16EELLVIegnr_A2Gs5S119OIegnrzr_TR04_s15a5Kit18fcd21C27removeAllEventsFore33TypeyyAA0deJ0_pXpFAC0deJ3Box33_27hijklmN14EELLVAaE_pcfu_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v30;
    v6 = specialized Set.startIndex.getter();
    v7 = 0;
    v28 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v27 = v5;
        v26 = v4;
        outlined init with copy of CallGameController.GameControllerEventBox(*(v2 + 48) + 40 * v6, v29);
        v9 = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
        v10 = swift_allocObject();
        outlined init with copy of CallGameController.GameControllerEventBox(v29, v10 + 16);
        outlined destroy of CallGameController.GameControllerEventBox(v29);
        v30 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
          v3 = v30;
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 40 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v29[0];
        *(v13 + 56) = &type metadata for CallGameController.GameControllerEventBox;
        *(v13 + 64) = v9;
        if (v27)
        {
          goto LABEL_29;
        }

        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v6 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v28 + 8 * v8);
        if ((v15 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v6 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v17 = v24;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v17 = v24;
          v20 = (v23 + 8 * v8);
          while (v19 < (v14 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v6, v26, 0);
              v14 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v6, v26, 0);
        }

LABEL_19:
        if (++v7 == v17)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t (*specialized Sequence.forEach(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  return specialized Sequence.forEach(_:)(a1, a2, a3, type metadata accessor for ConversationControlsAction);
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, MEMORY[0x1E6969C28]);
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, type metadata accessor for RecentsCallItem);
}

uint64_t (*specialized Sequence.forEach(_:)(uint64_t (*result)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *, uint64_t)
{
  v7 = result;
  for (i = a3; a4 != i; ++i)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    if (i >= a4)
    {
      goto LABEL_9;
    }

    v9 = i;
    result = v7(&v9, a2);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t (*specialized Sequence.forEach(_:)(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(unint64_t)
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *((a4)(0, a2) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = a4(a3);
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    a1(&v11);

    if (v4)
    {
      return;
    }
  }
}

uint64_t CallGameController.GameControllerEventBox.actions.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL static CallGameController.GameControllerEventBox.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_6_4();
  v3 = dispatch thunk of Hashable.hashValue.getter();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return v3 == dispatch thunk of Hashable.hashValue.getter();
}

Swift::Int CallGameController.GameControllerEventBox.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallGameController.GameControllerEventBox(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t CallGameController.__allocating_init()()
{
  v0 = swift_allocObject();
  CallGameController.init()();
  return v0;
}

uint64_t closure #1 in CallGameController.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (*(v3 + 16) == 1)
    {
      CallGameController.attachAllControllers()();
    }
  }

  return result;
}

uint64_t CallGameController.addEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CallGameController.addEvent(_:)(v4, v1, v2, v3);
}

uint64_t CallGameController.removeEvent(_:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of IDSLookupManager(a1, v9);
  OUTLINED_FUNCTION_30_2(v1 + 32, v8);
  specialized Set._Variant.remove(_:)(v9, v10);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v9);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMd, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMR);
  v4 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7[2] = v2;
  v7[3] = a1;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in CallGameController.removeEvent(_:), v7, v5, specialized Array.count.getter);
}

uint64_t closure #1 in CallGameController.removeEvent(_:)(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a3[3];
  v6 = a3[4];
  v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
  return specialized CallGameController.detachEvent(event:fromController:)(v7, v4, a2, v5, v6);
}

void CallGameController.removeAllEventsForEventType(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38[8] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v6 = *(v0 + 32);
  v35[2] = v5;
  v35[3] = v3;
  v7 = *(v6 + 32);
  LODWORD(v3) = v7 & 0x3F;
  v8 = ((1 << v7) + 63) >> 6;
  v9 = (8 * v8);

  if (v3 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33[0] = v33;
    MEMORY[0x1EEE9AC00](v10);
    v9 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    v33[1] = v8;
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v9);
    v34 = 0;
    v11 = 0;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(v6 + 56);
    v14 = (v12 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v19 = v15 | (v11 << 6);
      outlined init with copy of CallGameController.GameControllerEventBox(*(v6 + 48) + 40 * v19, v38);
      outlined init with copy of IDSLookupManager(v38, v37);
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v37);
      outlined destroy of CallGameController.GameControllerEventBox(v38);
      if (DynamicType == v5)
      {
        *&v9[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)();
          v23 = v22;
          goto LABEL_17;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_16;
      }

      ++v16;
      if (*(v6 + 56 + 8 * v11))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v18 & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15ConversationKit18CallGameControllerC0lM8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i5Kit18klm5C0iJ8n8Box33_27pqrstuV9EELLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n(v32, v8, v6, partial apply for closure #1 in CallGameController.removeAllEventsForEventType(_:), v35);

  MEMORY[0x1BFB23DF0](v32, -1, -1);
LABEL_17:
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_AKs5NeverOTg504_s15d5Kit19ghi27_pAA04CallcD0C0cdE3Box33_27klmnopq16EELLVIegnr_A2Gs5S119OIegnrzr_TR04_s15a5Kit18fcd21C27removeAllEventsFore33TypeyyAA0deJ0_pXpFAC0deJ3Box33_27hijklmN14EELLVAaE_pcfu_Tf3nnnpf_nTf1cn_n(v23);
  v25 = v24;

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = objc_opt_self();
    v34 = v25;
    v28 = v25 + 32;
    do
    {
      outlined init with copy of CallGameController.GameControllerEventBox(v28, v38);
      OUTLINED_FUNCTION_30_2(v1 + 32, &v36);
      specialized Set._Variant.remove(_:)(v38, v37);
      swift_endAccess();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMd, &_s15ConversationKit18CallGameControllerC0dE8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVSgMR);
      v29 = [v27 controllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x1EEE9AC00](v31);
      v33[-2] = v1;
      v33[-1] = v38;
      specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in CallGameController.removeAllEventsForEventType(_:), &v33[-4], v30, specialized Array.count.getter);

      outlined destroy of CallGameController.GameControllerEventBox(v38);
      v28 += 40;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #1 in CallGameController.removeAllEventsForEventType(_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IDSLookupManager(a1, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return DynamicType == a2;
}

void CallGameController.attachController(_:)(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16))
  {
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 56);
    v7 = (v4 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      outlined init with copy of CallGameController.GameControllerEventBox(*(v3 + 48) + 40 * (v10 | (v9 << 6)), v11);
      specialized CallGameController.attachEvent(_:toController:)(v11, a1, v1);
      outlined destroy of CallGameController.GameControllerEventBox(v11);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController19GCButtonElementNameVSgMd, &_s14GameController19GCButtonElementNameVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-1] - v8;
  v10 = type metadata accessor for GameControllerPressAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (v15 == 1 && (a3 & 1) != 0)
    {
      (*(a5 + *(v10 + 20)))(v16);
      if (one-time initialization token for conversationControlsGaming != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.conversationControlsGaming);
      outlined init with copy of CountdownVoucher(a5, v12, type metadata accessor for GameControllerPressAction);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36[0] = v21;
        *v20 = 136315138;
        v22 = type metadata accessor for GCButtonElementName();
        (*(*(v22 - 8) + 16))(v9, v12, v22);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
        specialized >> prefix<A>(_:)(v9, v23, v24, v25, v26, v27, v28, v29, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8]);
        v31 = v30;
        v33 = v32;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s14GameController19GCButtonElementNameVSgMd, &_s14GameController19GCButtonElementNameVSgMR);
        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v36);

        *(v20 + 4) = v34;
        _os_log_impl(&dword_1BBC58000, v18, v19, "%s button pressed", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1BFB23DF0](v21, -1, -1);
        MEMORY[0x1BFB23DF0](v20, -1, -1);
      }

      else
      {

        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
      }
    }
  }
}

void ConversationControlsManager.updateGameControllerForCallStatus(_:)(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController);
  if (a1 == 4)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_20();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #1 in ConversationControlsManager.updateGameControllerForCallStatus(_:), v3, partial apply for closure #2 in ConversationControlsManager.updateGameControllerForCallStatus(_:), v4);
      specialized CallGameController.addEvent(_:)(v5, v2);
    }
  }

  else if (v2)
  {
    lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
    CallGameController.removeAllEventsForEventType(_:)();
  }
}

void closure #1 in ConversationControlsManager.updateGameControllerForCallStatus(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong acceptCallButtonTappedWithIgnoresSmartHoldingSession_];
  }
}

void closure #2 in ConversationControlsManager.updateGameControllerForCallStatus(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong rejectCallButtonTapped];
  }
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BC4BB7D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void specialized Set._Variant.remove(_:)()
{
  OUTLINED_FUNCTION_29();
  v25 = v1;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v24 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v10, v11, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  OUTLINED_FUNCTION_16_7();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((*(v9 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
    {
      v19 = 1;
      v20 = v25;
      goto LABEL_9;
    }

    v16 = *(v4 + 72) * v15;
    (*(v4 + 16))(v8, *(v9 + 48) + v16, v2);
    OUTLINED_FUNCTION_0_20();
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v17, MEMORY[0x1E69695C8]);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v4 + 8))(v8, v2);
    if (v18)
    {
      break;
    }

    v12 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v22 = v26;
  }

  v23 = *(v22 + 48) + v16;
  v20 = v25;
  (*(v4 + 32))(v25, v23, v2);
  specialized _NativeSet._delete(at:)(v15);
  v19 = 0;
  *v24 = v26;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v2);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v21 = v1;
  v2 = type metadata accessor for CountdownVoucher(0);
  OUTLINED_FUNCTION_1();
  v22 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = *v0;
  Hasher.init(_seed:)();
  v23 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v9, v10, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    if (((*(v8 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
    {
      v17 = 1;
      v18 = v21;
      goto LABEL_9;
    }

    v15 = *(v22 + 72) * v14;
    outlined init with copy of CountdownVoucher(*(v8 + 48) + v15, v7, type metadata accessor for CountdownVoucher);
    v16 = static UUID.== infix(_:_:)();
    outlined destroy of CountdownVoucher(v7, type metadata accessor for CountdownVoucher);
    if (v16)
    {
      break;
    }

    v11 = v14 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  v24 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v20 = v24;
  }

  v18 = v21;
  outlined init with take of CountdownVoucher(*(v20 + 48) + v15, v21, type metadata accessor for CountdownVoucher);
  specialized _NativeSet._delete(at:)();
  v17 = 0;
  *v0 = v24;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v18, v17, 1, v23);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v28 = v3;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_20();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(v12, v13, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v16 = v15 & ~v14;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v18 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of CountdownVoucher(*(v11 + 48) + v18 * v16, v10, type metadata accessor for Participant);
      static Participant.State.== infix(_:_:)();
      if ((v19 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v2 + *(v4 + 28)) == 0) == (*(v10 + *(v4 + 28)) == 0))
      {
        v20 = *(v4 + 24);
        v21 = (v10 + v20);
        v22 = *(v10 + v20);
        v23 = (v2 + v20);
        if (v22 == *v23 && ((v21[1] ^ v23[1]) & 1) == 0 && ((v21[2] ^ v23[2]) & 1) == 0 && ((v21[3] ^ v23[3]) & 1) == 0 && ((v21[4] ^ v23[4]) & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_11_9();
      v16 = (v16 + 1) & v17;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_11_9();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v0;
    v29 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v27 = v29;
    }

    outlined init with take of CountdownVoucher(*(v27 + 48) + v18 * v16, v28, type metadata accessor for Participant);
    specialized _NativeSet._delete(at:)();
    *v0 = v29;
    v24 = v28;
    v25 = 0;
  }

  else
  {
LABEL_12:
    v24 = v28;
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
  OUTLINED_FUNCTION_30_0();
}

void specialized Set._Variant.remove(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v16);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    outlined init with copy of CallGameController.GameControllerEventBox(*(v5 + 48) + 40 * v8, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v9 = dispatch thunk of Hashable.hashValue.getter();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = dispatch thunk of Hashable.hashValue.getter();
    outlined destroy of CallGameController.GameControllerEventBox(v16);
    if (v9 == v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v15;
  v16[0] = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v16[0];
  }

  v13 = *(v12 + 48) + 40 * v8;
  v14 = *(v13 + 16);
  *a2 = *v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = *(v13 + 32);
  specialized _NativeSet._delete(at:)(v8);
  *v15 = v16[0];
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v13 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v25;
  }

  v14 = *(*(v12 + 48) + 16 * v9);
  v15 = specialized _NativeSet._delete(at:)(v9);
  OUTLINED_FUNCTION_22_8(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
  return v14;
}

uint64_t specialized Set._Variant.remove(_:)()
{
  OUTLINED_FUNCTION_27_6();
  if (v3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    NSObject._rawHashValue(seed:)(*(v1 + 40));
    OUTLINED_FUNCTION_16_7();
    v9 = ~v8;
    while (1)
    {
      v10 = v7 & v9;
      if (((*(v1 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v1 + 48) + 8 * v10);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_10();
        if ((v14 & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v13 = v25;
        }

        v6 = *(*(v13 + 48) + 8 * v10);
        v15 = specialized _NativeSet._delete(at:)(v10);
        OUTLINED_FUNCTION_22_8(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
        return v6;
      }

      v7 = v10 + 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_29_8();
  v4 = v2;
  v5 = __CocoaSet.contains(_:)();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = specialized Set._Variant._migrateToNative(_:removing:)(v0, v4);

  return v6;
}

{
  OUTLINED_FUNCTION_27_6();
  if (v3)
  {
    type metadata accessor for CoupledHUDActivity(0);
    Hasher.init(_seed:)();
    HUDActivity.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_16_7();
    v8 = ~v7;
    while (1)
    {
      v9 = v6 & v8;
      if (((*(v1 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
      {
        break;
      }

      v11 = static HUDActivity.== infix(_:_:)(v10, v2);

      if (v11)
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_10();
        if ((v13 & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v12 = v24;
        }

        v5 = *(*(v12 + 48) + 8 * v9);
        v14 = specialized _NativeSet._delete(at:)(v9);
        OUTLINED_FUNCTION_22_8(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
        return v5;
      }

      v6 = v9 + 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_29_8();

  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = specialized Set._Variant._migrateToNative(_:removing:)(v0, v2);

  return v5;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  MEMORY[0x1BFB22620](*(*v2 + 40), a1);
  OUTLINED_FUNCTION_26_9();
  while (1)
  {
    v9 = v5 & v7;
    if (((v8 << (v5 & v7)) & *(v6 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v9) == a1)
    {
      break;
    }

    v5 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v12 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v23;
  }

  v10 = *(*(v11 + 48) + 8 * v9);
  v13 = specialized _NativeSet._delete(at:)(v9);
  OUTLINED_FUNCTION_22_8(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  return v10;
}

{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  Hasher._finalize()();
  OUTLINED_FUNCTION_26_9();
  while (1)
  {
    v8 = v4 & v6;
    if (((v7 << (v4 & v6)) & *(v5 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v3 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v4 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_23_10();
  if ((v11 & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v22;
  }

  v9 = *(*(v10 + 48) + 8 * v8);
  v12 = specialized _NativeSet._delete(at:)(v8);
  OUTLINED_FUNCTION_22_8(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
  return v9;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CNComposeRecipientC_Tt1g5(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      specialized _NativeSet._delete(at:)(v8);
      if (static NSObject.== infix(_:_:)())
      {
        *v13 = v14;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLC_Tt1g5(v6, v5);
  v15 = v7;
  Hasher.init(_seed:)();

  HUDActivity.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for CoupledHUDActivity(0);

    v12 = static HUDActivity.== infix(_:_:)(v11, a2);

    if (v12)
    {

      v13 = *(*(v7 + 48) + 8 * v10);
      specialized _NativeSet._delete(at:)(v10);
      if (static HUDActivity.== infix(_:_:)(a2, v13))
      {
        *v3 = v15;
        return v13;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

{
  v3 = type metadata accessor for GameControllerPressAction(0);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v33 = v7;
      v34 = v6;
      v36 = (v11 + 1) & v10;
      v37 = v10;
      do
      {
        outlined init with copy of CallGameController.GameControllerEventBox(*(v6 + 48) + 40 * v9, v39);
        Hasher.init(_seed:)();
        v12 = v40;
        v13 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v14 = (*(v13 + 16))(v12, v13);
        v15 = *(v14 + 16);
        if (v15)
        {
          v38 = a1;
          v16 = v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
          v17 = *(v35 + 72);
          do
          {
            outlined init with copy of CountdownVoucher(v16, v5, type metadata accessor for GameControllerPressAction);
            type metadata accessor for GCButtonElementName();
            lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170], MEMORY[0x1E696B178]);
            dispatch thunk of Hashable.hash(into:)();
            outlined destroy of CountdownVoucher(v5, type metadata accessor for GameControllerPressAction);
            v16 += v17;
            --v15;
          }

          while (v15);

          v7 = v33;
          v6 = v34;
          a1 = v38;
        }

        else
        {
        }

        v18 = Hasher._finalize()();
        outlined destroy of CallGameController.GameControllerEventBox(v39);
        v19 = v37;
        v20 = v18 & v37;
        if (a1 >= v36)
        {
          if (v20 >= v36 && a1 >= v20)
          {
LABEL_20:
            v23 = *(v6 + 48);
            v24 = v23 + 40 * a1;
            v25 = (v23 + 40 * v9);
            if (a1 != v9 || v24 >= v25 + 40)
            {
              v27 = *v25;
              v28 = v25[1];
              *(v24 + 32) = *(v25 + 4);
              *v24 = v27;
              *(v24 + 16) = v28;
              a1 = v9;
            }
          }
        }

        else if (v20 >= v36 || a1 >= v20)
        {
          goto LABEL_20;
        }

        v9 = (v9 + 1) & v19;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v6 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v31;
    ++*(v6 + 36);
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x1BFB22620](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        HUDActivity.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)()
{
  OUTLINED_FUNCTION_29();
  v39 = v1;
  v3 = v2;
  v40 = v4(0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = *v0;
  v11 = *v0 + 56;
  v12 = -1 << *(*v0 + 32);
  v13 = (v3 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v16 = (v15 + 1) & v14;
      v41 = *(v6 + 72);
      v17 = v14;
      v38 = v11;
      do
      {
        v18 = v41 * v13;
        v19 = v16;
        v20 = v39;
        outlined init with copy of CountdownVoucher(*(v10 + 48) + v41 * v13, v9, v39);
        v21 = v10;
        Hasher.init(_seed:)();
        v22 = v17;
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_0_20();
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v23, MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = v20;
        v16 = v19;
        outlined destroy of CountdownVoucher(v9, v25);
        v26 = v24 & v22;
        v17 = v22;
        if (v3 >= v19)
        {
          if (v26 < v19 || v3 < v26)
          {
LABEL_20:
            v10 = v21;
            goto LABEL_24;
          }
        }

        else if (v26 < v19 && v3 < v26)
        {
          goto LABEL_20;
        }

        v10 = v21;
        v28 = *(v21 + 48);
        v29 = v41 * v3;
        v30 = v28 + v41 * v3;
        v31 = v28 + v18 + v41;
        if (v41 * v3 < v18 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v3 = v13;
          goto LABEL_24;
        }

        v3 = v13;
        if (v29 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v13 = (v13 + 1) & v17;
        v11 = v38;
      }

      while (((*(v38 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v11 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
    OUTLINED_FUNCTION_30_0();
  }
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15ConversationKit18CallGameControllerC0lM8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i5Kit18klm5C0iJ8n8Box33_27pqrstuV9EELLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void specialized _NativeSet.extractSubset(using:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

{
  specialized _NativeSet.extractSubset(using:count:)();
}

void specialized _NativeSet.extractSubset(using:count:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v4 + 16) == v1)
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  OUTLINED_FUNCTION_6_4();
  static _SetStorage.allocate(capacity:)();
  OUTLINED_FUNCTION_17_12();
  while (v7)
  {
    OUTLINED_FUNCTION_13_16();
    v23 = v8;
LABEL_13:
    v12 = OUTLINED_FUNCTION_10_6();
    v13(v12);
    OUTLINED_FUNCTION_0_20();
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type UUID and conformance UUID, v14, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v15)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v15)
        {
          if (v17)
          {
            goto LABEL_28;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        if (*(v0 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_23;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_23:
    OUTLINED_FUNCTION_8_3();
    v20 = OUTLINED_FUNCTION_12_11(v19);
    v21(v20);
    OUTLINED_FUNCTION_25_8();
    if (v22)
    {
      goto LABEL_29;
    }

    v7 = v23;
  }

  v9 = v5;
  while (1)
  {
    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v5 >= v2)
    {
      goto LABEL_25;
    }

    ++v9;
    if (*(v3 + 8 * v5))
    {
      OUTLINED_FUNCTION_7_1();
      v23 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for GameControllerPressAction(0);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (!v3)
  {

LABEL_34:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v1 + 16) == v3)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd, &_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMR);
  v12 = static _SetStorage.allocate(capacity:)();
  if (v5 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v7;
  }

  v14 = 0;
  v15 = v12 + 56;
  v42 = v5;
  v40 = v1;
  v39 = v7;
  v41 = v12;
  while (v13)
  {
    OUTLINED_FUNCTION_13_16();
    v44 = v18;
LABEL_16:
    outlined init with copy of CallGameController.GameControllerEventBox(*(v1 + 48) + (v16 | (v14 << 6)) * v17, &v45);
    Hasher.init(_seed:)();
    v22 = *(&v46 + 1);
    v23 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    v24 = (*(v23 + 16))(v22, v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v27 = *(v43 + 72);
      do
      {
        outlined init with copy of CountdownVoucher(v26, v11, type metadata accessor for GameControllerPressAction);
        type metadata accessor for GCButtonElementName();
        lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170], MEMORY[0x1E696B178]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of CountdownVoucher(v11, type metadata accessor for GameControllerPressAction);
        v26 += v27;
        --v25;
      }

      while (v25);

      v1 = v40;
      v7 = v39;
    }

    else
    {
    }

    Hasher._finalize()();
    v5 = v42;
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v28)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v28)
        {
          if (v30)
          {
            goto LABEL_36;
          }
        }

        if (v29 == v31)
        {
          v29 = 0;
        }

        if (*(v15 + 8 * v29) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_31;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_31:
    OUTLINED_FUNCTION_8_3();
    *(v15 + v32) |= v33;
    v35 = *(v41 + 48) + 40 * v34;
    v36 = v45;
    v37 = v46;
    *(v35 + 32) = v47;
    *v35 = v36;
    *(v35 + 16) = v37;
    ++*(v41 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_37;
    }

    v13 = v44;
    if (!v3)
    {
LABEL_33:

      goto LABEL_34;
    }
  }

  v19 = v14;
  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= v5)
    {
      goto LABEL_33;
    }

    ++v19;
    if (v7[v14])
    {
      OUTLINED_FUNCTION_7_1();
      v44 = v21 & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v6 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v7 = v1;
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6_4();
  v9 = static _SetStorage.allocate(capacity:)();
  v10 = v9;
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v8;
  }

  v12 = 0;
  v13 = v9 + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v18 = *(v10 + 40);
    v19 = *(*(v6 + 48) + 8 * (v14 | (v12 << 6)));
    NSObject._rawHashValue(seed:)(v18);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v20)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v20)
        {
          if (v22)
          {
            goto LABEL_29;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_26:
    OUTLINED_FUNCTION_8_3();
    *(v13 + v24) |= v25;
    *(*(v10 + 48) + 8 * v26) = v19;
    OUTLINED_FUNCTION_28_10();
    if (v27)
    {
      goto LABEL_30;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_5;
    }

    ++v15;
    if (v8[v12])
    {
      OUTLINED_FUNCTION_7_1();
      v11 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (*(v4 + 16) == v1)
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  OUTLINED_FUNCTION_6_4();
  static _SetStorage.allocate(capacity:)();
  OUTLINED_FUNCTION_17_12();
  while (v7)
  {
    OUTLINED_FUNCTION_13_16();
    v22 = v8;
LABEL_13:
    v12 = OUTLINED_FUNCTION_10_6();
    v13(v12);
    lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330], MEMORY[0x1E696B338]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v14)
    {
      OUTLINED_FUNCTION_3_21();
      while (1)
      {
        OUTLINED_FUNCTION_19_2();
        if (v14)
        {
          if (v16)
          {
            goto LABEL_28;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v0 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_2_0();
          goto LABEL_23;
        }
      }
    }

    OUTLINED_FUNCTION_4_12();
LABEL_23:
    OUTLINED_FUNCTION_8_3();
    v19 = OUTLINED_FUNCTION_12_11(v18);
    v20(v19);
    OUTLINED_FUNCTION_25_8();
    if (v21)
    {
      goto LABEL_29;
    }

    v7 = v22;
  }

  v9 = v5;
  while (1)
  {
    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v5 >= v2)
    {
      goto LABEL_25;
    }

    ++v9;
    if (*(v3 + 8 * v5))
    {
      OUTLINED_FUNCTION_7_1();
      v22 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
      OUTLINED_FUNCTION_6_4();
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v26 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_21_7();
        if (v19)
        {
          OUTLINED_FUNCTION_3_21();
          while (1)
          {
            OUTLINED_FUNCTION_19_2();
            if (v19)
            {
              if (v22)
              {
                goto LABEL_29;
              }
            }

            if (v21 == v23)
            {
              v21 = 0;
            }

            if (*(v11 + 8 * v21) != -1)
            {
              OUTLINED_FUNCTION_2_0();
              goto LABEL_26;
            }
          }
        }

        OUTLINED_FUNCTION_4_12();
LABEL_26:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v24 = (*(v8 + 48) + 16 * v20);
        *v24 = v17;
        v24[1] = v18;
        OUTLINED_FUNCTION_28_10();
        if (v25)
        {
          goto LABEL_30;
        }

        v4 = v26;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_7_1();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t specialized CallGameController.detachEvent(event:fromController:)(uint64_t a1, void *a2)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v34 - v4;
  v6 = type metadata accessor for GameControllerPressAction(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[3] = &type metadata for CallGameController.GameControllerEventBox;
  v40[4] = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  v10 = swift_allocObject();
  v40[0] = v10;
  outlined init with copy of CallGameController.GameControllerEventBox(a1, (v10 + 2));
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationControlsGaming);
  outlined init with copy of IDSLookupManager(v40, v39);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v34 = v7;
    v15 = v3;
    v16 = v38;
    *v14 = 136315138;
    outlined init with copy of IDSLookupManager(v39, v37);
    v17 = specialized >> prefix<A>(_:)(v37);
    v19 = v18;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v38);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Disconnecting controller from event: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v21 = v16;
    v3 = v15;
    v7 = v34;
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v22 = v10[5];
  v23 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v22);
  v24 = (*(v23 + 16))(v22, v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v7 + 80);
    v34 = v24;
    v27 = v24 + ((v26 + 32) & ~v26);
    v28 = *(v7 + 72);
    v29 = (v3 + 8);
    do
    {
      outlined init with copy of CountdownVoucher(v27, v9, type metadata accessor for GameControllerPressAction);
      v30 = [v36 input];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
      GCDevicePhysicalInputState.buttons.getter();

      v31 = GCPhysicalInputElementCollection<>.subscript.getter();
      (*v29)(v5, v35);
      if (v31)
      {
        v32 = [v31 pressedInput];
        swift_unknownObjectRelease();
        [v32 setPressedDidChangeHandler_];
        swift_unknownObjectRelease();
      }

      outlined destroy of CountdownVoucher(v9, type metadata accessor for GameControllerPressAction);
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t specialized CallGameController.detachEvent(event:fromController:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v39 - v9;
  v11 = type metadata accessor for GameControllerPressAction(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = a4;
  v47[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationControlsGaming);
  outlined init with copy of IDSLookupManager(v47, v46);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a4;
    v41 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v12;
    v22 = v21;
    v45 = v21;
    *v20 = 136315138;
    outlined init with copy of IDSLookupManager(v46, v44);
    v23 = specialized >> prefix<A>(_:)(v44);
    v25 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v45);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Disconnecting controller from event: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    v12 = v39;
    MEMORY[0x1BFB23DF0](v27, -1, -1);
    v28 = v20;
    a4 = v40;
    v8 = v41;
    MEMORY[0x1BFB23DF0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v29 = (*(a5 + 16))(a4, a5);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v12 + 80);
    v41 = v29;
    v32 = v29 + ((v31 + 32) & ~v31);
    v33 = *(v12 + 72);
    v34 = (v8 + 8);
    do
    {
      outlined init with copy of CountdownVoucher(v32, v14, type metadata accessor for GameControllerPressAction);
      v35 = [v43 input];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
      GCDevicePhysicalInputState.buttons.getter();

      v36 = GCPhysicalInputElementCollection<>.subscript.getter();
      (*v34)(v10, v42);
      if (v36)
      {
        v37 = [v36 pressedInput];
        swift_unknownObjectRelease();
        [v37 setPressedDidChangeHandler_];
        swift_unknownObjectRelease();
      }

      outlined destroy of CountdownVoucher(v14, type metadata accessor for GameControllerPressAction);
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t specialized CallGameController.addEvent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of IDSLookupManager(v10, v8);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v9, v8);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v9);
  CallGameController.attachAllControllers()();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t getEnumTagSinglePayload for CallGameController.GameControllerEventBox(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CallGameController.GameControllerEventBox(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox()
{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox;
  if (!lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CallGameController.GameControllerEventBox(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized CallGameController.attachEvent(_:toController:)(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - v6;
  v7 = type metadata accessor for GameControllerPressAction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v55[3] = &type metadata for CallGameController.GameControllerEventBox;
  v55[4] = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
  v13 = swift_allocObject();
  v55[0] = v13;
  outlined init with copy of CallGameController.GameControllerEventBox(a1, (v13 + 2));
  swift_beginAccess();
  v46 = a3;
  if (*(a3 + 16) == 1)
  {
    if (one-time initialization token for conversationControlsGaming != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationControlsGaming);
    outlined init with copy of IDSLookupManager(v55, aBlock);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52 = v18;
      *v17 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v51);
      v19 = specialized >> prefix<A>(_:)(v51);
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v52);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v15, v16, "Attaching controller to event: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    v23 = v13[5];
    v24 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v8 + 80);
      v40 = v25;
      v28 = v25 + ((v27 + 32) & ~v27);
      v47 = *(v8 + 72);
      v29 = (v5 + 8);
      v43 = v27;
      v42 = (v27 + 24) & ~v27;
      v41 = v54;
      do
      {
        outlined init with copy of CountdownVoucher(v28, v12, type metadata accessor for GameControllerPressAction);
        v30 = [v50 input];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
        v31 = v48;
        GCDevicePhysicalInputState.buttons.getter();

        v32 = GCPhysicalInputElementCollection<>.subscript.getter();
        (*v29)(v31, v49);
        if (v32)
        {
          v33 = [v32 pressedInput];
          swift_unknownObjectRelease();
          v34 = swift_allocObject();
          swift_weakInit();
          v35 = v44;
          outlined init with copy of CountdownVoucher(v12, v44, type metadata accessor for GameControllerPressAction);
          v36 = v42;
          v37 = swift_allocObject();
          *(v37 + 16) = v34;
          outlined init with take of CountdownVoucher(v35, v37 + v36, type metadata accessor for GameControllerPressAction);
          v54[2] = partial apply for closure #1 in closure #1 in CallGameController.attachEvent(_:toController:);
          v54[3] = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v54[0] = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
          v54[1] = &block_descriptor_1;
          v38 = _Block_copy(aBlock);

          [v33 setPressedDidChangeHandler_];
          _Block_release(v38);
          swift_unknownObjectRelease();
        }

        outlined destroy of CountdownVoucher(v12, type metadata accessor for GameControllerPressAction);
        v28 += v47;
        --v26;
      }

      while (v26);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t outlined init with copy of CountdownVoucher(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of CountdownVoucher(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void partial apply for closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for GameControllerPressAction(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  closure #1 in closure #1 in CallGameController.attachEvent(_:toController:)(a1, a2, a3, v8, v9);
}

uint64_t outlined init with copy of GameControllerEvent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GreenTeaControlsRecipeGenerator.incomingGreenTea3PHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v191 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v9 = OUTLINED_FUNCTION_16(v8);
  v193 = type metadata accessor for SystemApertureIcon(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  v194 = &v187 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  v207 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v20 = OUTLINED_FUNCTION_16(v19);
  v21 = type metadata accessor for ConversationControlsRecipe(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v206 = &v187 - v27;
  v28 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v34 = &v187 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7D40];
  v36 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v208 = a1;
  v37 = v36(v32);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v204 = v21;
    swift_unknownObjectRetain();
    v40 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v39);
    v195 = v41;
    v202 = v42;
    v209 = v37;
    swift_unknownObjectRelease();
    if (v40)
    {
      v43 = v40;
    }

    v44 = [objc_opt_self() clearColor];
    swift_unknownObjectRetain();
    v45 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v39, 0, v40, v44);
    v46 = [v39 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v198 = (*((*v35 & *v45) + 0x58))(v34);
    (*(v30 + 8))(v34, v28);
    v200 = v45;
    v47 = [v45 view];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v48 = [v39 displayName];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    v53.super.isa = NSAttributedString.__allocating_init(string:)(v52).super.isa;
    v54 = [v39 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v55 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.count.getter(v55);

    v201 = a4;
    v203 = v40;
    v56 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v215._countAndFlagsBits = 0;
    v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v56, v62, v215);

    __dst[0] = 23;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 7;
    v199 = v47;
    v66 = v53.super.isa;
    v197 = v47;
    v67 = v66;
    v196 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v208);
    v68 = type metadata accessor for AttributedString();
    v69 = v207;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    v73 = *(type metadata accessor for ConversationControlsAction(0) - 8);
    v74 = *(v73 + 72);
    v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BC4BAA20;
    swift_storeEnumTagMultiPayload();
    *(v76 + v75 + v74) = v65;
    swift_storeEnumTagMultiPayload();
    static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v213);
    v187 = v213[1];
    v188 = v213[0];
    v77 = v214;
    v78 = v204;
    v79 = v204[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v68);
    v83 = (v25 + v78[10]);
    v84 = v25 + v78[15];
    *(v84 + 4) = 0;
    *v84 = 0u;
    *(v84 + 1) = 0u;
    v84[40] = -2;
    *(v25 + v78[16]) = 0;
    v85 = v25 + v78[17];
    OUTLINED_FUNCTION_20_5(v25 + v78[18], 0);
    outlined init with copy of ConversationControlsType(__dst, v25);
    v86 = v197;
    v25[6] = 0;
    v25[7] = v86;
    OUTLINED_FUNCTION_19_3();
    v25[8] = 0;
    v25[9] = v87;
    v198 = v67;
    v88 = v196;
    v25[10] = v67;
    v25[11] = v88;
    v83[1] = 0;
    v83[2] = 0;
    *v83 = 0;
    v89 = v69;
    outlined assign with copy of AttributedString?(v69, v25 + v79);
    *(v25 + v78[11]) = 2;
    *(v25 + v78[12]) = 0;
    *(v25 + v78[13]) = 1;
    *(v25 + v78[14]) = 1;
    *v85 = 0;
    *(v85 + 1) = 0;
    v85[16] = -1;
    v90 = *(v76 + 16);
    if (v90 <= 5)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(__dst);
      *v84 = v76;
      *(v84 + 24) = v187;
      *(v84 + 8) = v188;
      v84[40] = v77 | 0x80;
      OUTLINED_FUNCTION_8_21();
      v101 = v205;
      outlined init with copy of ConversationControlsRecipe(v25, v205, v102);
      OUTLINED_FUNCTION_5_8();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
      v107 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsRecipe(v107, v108);
      v109 = v206;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v91 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v91, &static Logger.conversationControls);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v92, v93))
      {
        swift_slowAlloc();
        v94 = OUTLINED_FUNCTION_37_7();
        v210 = v90;
        v211 = v94;
        *v89 = 136315138;
        v95 = String.init<A>(reflecting:)();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v211);

        *(v89 + 4) = v97;
        OUTLINED_FUNCTION_45_4(&dword_1BBC58000, v98, v99, "Too many buttonShelf actions (%s)");
        __swift_destroy_boxed_opaque_existential_1(v94);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_27();

        v100 = v207;
      }

      else
      {

        v100 = v89;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(__dst);
      v109 = v206;
      v101 = v205;
      OUTLINED_FUNCTION_9_4();
      outlined destroy of ConversationControlsRecipe(v25, v110);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v78);
    }

    v114 = v209;
    if (__swift_getEnumTagSinglePayload(v101, 1, v78) == 1)
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6(v203);
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_31_5();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v78);
LABEL_41:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    OUTLINED_FUNCTION_7_3();
    outlined init with take of ConversationControlsRecipe(v101, v109, v119);
    if (SBUIIsSystemApertureEnabled())
    {
      v120 = v192;
      SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v208);
      v121 = v193;
      if (__swift_getEnumTagSinglePayload(v120, 1, v193) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v122 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v122, &static Logger.conversationControls);
        v114 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        v124 = OUTLINED_FUNCTION_25(v123);
        v125 = v201;
        v126 = v203;
        if (v124)
        {
          v127 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v127);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v128, v129, "incomingGreenTea3PHUD: [SystemAperture] missing status icon");
          OUTLINED_FUNCTION_18();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_6(v126);

        OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_36_6();
        OUTLINED_FUNCTION_31_5();
      }

      else
      {
        OUTLINED_FUNCTION_11_10();
        outlined init with take of ConversationControlsRecipe(v120, v194, v137);
        v138 = v203;
        if (v203)
        {
          v139 = one-time initialization token for conversationControls;
          v140 = v203;

          if (v139 != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v141 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v141, &static Logger.conversationControls);
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = OUTLINED_FUNCTION_33();
            *v144 = 0;
            _os_log_impl(&dword_1BBC58000, v142, v143, "incomingGreenTea3PHUD: [SystemAperture] showing content", v144, 2u);
            OUTLINED_FUNCTION_27();
          }

          v145 = *(v121 + 36);
          v146 = *MEMORY[0x1E6995E08];
          type metadata accessor for ActivitySymbol.Animation();
          OUTLINED_FUNCTION_7_0();
          v114 = v190;
          (*(v147 + 104))(v190 + v145, v146);
          *v114 = v138;
          OUTLINED_FUNCTION_42_6();
          v148 = v195;
          v149 = v202;
          v114[6] = v195;
          v114[7] = v149;
          OUTLINED_FUNCTION_6_17();
          v151 = v150;
          outlined init with copy of ConversationControlsRecipe(v114, v189, v150);
          v152 = type metadata accessor for SystemApertureIconView(0);
          v153 = objc_allocWithZone(v152);
          v154 = v140;

          SystemApertureIconView.init(icon:isDetached:)();
          v208 = v155;
          v156 = v194;
          OUTLINED_FUNCTION_34_4();
          v157 = objc_allocWithZone(v152);
          SystemApertureIconView.init(icon:isDetached:)();
          v207 = v158;
          OUTLINED_FUNCTION_34_4();
          v159 = objc_allocWithZone(v152);
          SystemApertureIconView.init(icon:isDetached:)();
          v161 = v160;
          OUTLINED_FUNCTION_34_4();
          v162 = objc_allocWithZone(v152);
          SystemApertureIconView.init(icon:isDetached:)();
          v164 = v163;
          OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_19_3();

          outlined consume of (icon: UIImage, accessibilityLabel: String)?(v203, v148, v149);
          swift_unknownObjectRelease();
          v166 = OUTLINED_FUNCTION_29_6();
          outlined destroy of ConversationControlsRecipe(v166, v167);
          outlined destroy of ConversationControlsRecipe(v156, v151);
          v168 = v206;
          v169 = &v206[v204[18]];
          memcpy(__dst, v169, 0x49uLL);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
          v170 = v207;
          *v169 = v208;
          *(v169 + 1) = &protocol witness table for SystemApertureIconView;
          *(v169 + 2) = v170;
          *(v169 + 3) = &protocol witness table for SystemApertureIconView;
          *(v169 + 4) = v161;
          *(v169 + 5) = &protocol witness table for SystemApertureIconView;
          *(v169 + 6) = v164;
          *(v169 + 7) = &protocol witness table for SystemApertureIconView;
          *(v169 + 8) = 4;
          v169[72] = 1;
          OUTLINED_FUNCTION_1_28();
          outlined init with copy of ConversationControlsRecipe(v168, v201, v171);
          OUTLINED_FUNCTION_5_8();
          __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
          v176 = v168;
          goto LABEL_40;
        }

        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v177 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v177, &static Logger.conversationControls);
        v114 = Logger.logObject.getter();
        v178 = static os_log_type_t.default.getter();
        v179 = OUTLINED_FUNCTION_25(v178);
        v125 = v201;
        if (v179)
        {
          v180 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v180);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v181, v182, "incomingGreenTea3PHUD: [SystemAperture] missing app badge icon");
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_19_3();

          OUTLINED_FUNCTION_14_6(0);
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_31_5();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_12_12();
        outlined destroy of ConversationControlsRecipe(v194, v185);
      }

      OUTLINED_FUNCTION_1_28();
      outlined init with copy of ConversationControlsRecipe(v109, v125, v186);
      v133 = v125;
      v134 = 0;
      v135 = 1;
      v136 = v204;
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6(v203);
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_1_28();
      outlined init with copy of ConversationControlsRecipe(v109, v201, v132);
      OUTLINED_FUNCTION_5_8();
    }

    __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
    v176 = v109;
LABEL_40:
    outlined destroy of ConversationControlsRecipe(v176, v114);
    goto LABEL_41;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

  v5 = [v3 initWithString_];

  return v5;
}

void GreenTeaControlsRecipeGenerator.ongoingGreenTea3PHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v11 = OUTLINED_FUNCTION_16(v10);
  v227 = type metadata accessor for SystemApertureIcon(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v218 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v218 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v240 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v25 = OUTLINED_FUNCTION_16(v24);
  v26 = type metadata accessor for ConversationControlsRecipe(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  v241 = (v28 - v29);
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v33 = &v218 - v32;
  v34 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v225 = (*MEMORY[0x1E69E7D40] & *a1) + 672;
  v224 = v34;
  v35 = v34(v31);
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v44 = v36;
    v235 = v35;
    v236 = v33;
    ConversationControlsManager.heldCalls()(v36, v37, v38, v39, v40, v41, v42, v43, v218, v18, v220, v221, v222, *(&v222 + 1), v223, v224, v225, v226, v227, isa, v229, *(&v229 + 1));
    v46 = v45;
    v47 = specialized Array.count.getter();
    v238 = GreenTeaControlsRecipeGenerator.ongoingGreenTea3PLeadingAccessoryView(controlsManager:hasHeldCalls:)(a1, v47 > 0, a2, a3);
    v239 = v48;
    v242 = v49;
    v233 = a1;
    v230 = a2;
    v234 = a3;
    GreenTeaControlsRecipeGenerator.ongoingGreenTea3PActions(controlsManager:hasHeldCalls:)(a1, v47 > 0, v246);
    v222 = v246[1];
    v229 = v246[0];
    v221 = v247;
    HIDWORD(v220) = v248;
    v50 = [v44 status];
    v232 = a4;
    v231 = v26;
    v218 = v15;
    if (v50 == 2)
    {

      v51 = [v44 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = [v44 provider];
      v56 = [v55 localizedName];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      __dst[0] = v57;
      __dst[1] = v59;

      OUTLINED_FUNCTION_13_17();

      v60 = __dst[0];
      v61 = __dst[1];
      v62 = [objc_opt_self() 0x1FC567588];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v67 = OUTLINED_FUNCTION_21_8(v63, v64, v65, v66);
      v69 = v68;

      __dst[0] = v60;
      __dst[1] = v61;

      MEMORY[0x1BFB20B10](v67, v69);
    }

    else
    {
      if (v47 >= 1 && specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x1BFB22010](0, v46);
        }

        else
        {
          v75 = *(v46 + 32);
        }

        v76 = v75;

        v77 = [v44 displayName];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        __dst[0] = v78;
        __dst[1] = v80;

        OUTLINED_FUNCTION_13_17();

        v52 = __dst[0];
        v54 = __dst[1];
        v81 = [v76 displayName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        __dst[0] = v82;
        __dst[1] = v84;

        OUTLINED_FUNCTION_13_17();

        v85 = __dst[0];
        v86 = __dst[1];
        v87 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v92 = OUTLINED_FUNCTION_21_8(v88, v89, v90, v91);
        v94 = v93;

        __dst[0] = v85;
        __dst[1] = v86;

        MEMORY[0x1BFB20B10](v92, v94);

LABEL_14:
        v102 = __dst[0];
        v103 = __dst[1];
        __dst[0] = 24;
        memset(&__dst[1], 0, 32);
        LOBYTE(__dst[5]) = 7;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
        v104 = v238;
        v105 = v239;
        outlined copy of ConversationControlsRecipe.View?(v238, v239);
        v106._countAndFlagsBits = v52;
        v106._object = v54;
        isa = NSAttributedString.__allocating_init(string:)(v106).super.isa;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1BC4BAC30;
        v108._countAndFlagsBits = v102;
        v108._object = v103;
        *(v107 + 32) = NSAttributedString.__allocating_init(string:)(v108);
        v109 = type metadata accessor for AttributedString();
        v110 = v240;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v109);
        v114 = v231;
        v115 = v231[9];
        v116 = v241;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v117, v118, v119, v109);
        v120 = (v116 + v114[10]);
        v121 = v116 + v114[15];
        *(v121 + 4) = 0;
        *v121 = 0u;
        *(v121 + 1) = 0u;
        v121[40] = -2;
        *(v116 + v114[16]) = 0;
        v122 = v116 + v114[17];
        OUTLINED_FUNCTION_20_5(v116 + v114[18], 0);
        outlined init with copy of ConversationControlsType(__dst, v116);
        v116[6] = 0;
        v116[7] = v104;
        v123 = v242;
        v116[8] = v105;
        v116[9] = v123;
        v116[10] = isa;
        v116[11] = v107;
        v120[1] = 0;
        v120[2] = 0;
        *v120 = 0;
        outlined assign with copy of AttributedString?(v110, v116 + v115);
        *(v116 + v114[11]) = 2;
        *(v116 + v114[12]) = 0;
        *(v116 + v114[13]) = 1;
        *(v116 + v114[14]) = 1;
        *v122 = 0;
        *(v122 + 1) = 0;
        v122[16] = -1;
        v124 = *(*&v246[0] + 16);
        if (v248 < 0)
        {
          v125 = v232;
          v126 = v236;
          v127 = v234;
          v128 = v233;
          if (v124 > 5)
          {
            OUTLINED_FUNCTION_30_3();
            if (!v129)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v139 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v139, &static Logger.conversationControls);

            v131 = Logger.logObject.getter();
            v140 = static os_log_type_t.fault.getter();
            outlined destroy of ConversationControlsRecipe.Actions(v246);
            if (!os_log_type_enabled(v131, v140))
            {
              goto LABEL_26;
            }

            swift_slowAlloc();
            v133 = OUTLINED_FUNCTION_37_7();
            v243 = v124;
            v244 = v133;
            *v126 = 136315138;
            v141 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v244);
            v128 = 0x1EDDC1000;

            OUTLINED_FUNCTION_41_4();
            v138 = "Too many buttonShelf actions (%s)";
            goto LABEL_25;
          }
        }

        else
        {
          v125 = v232;
          v126 = v236;
          v127 = v234;
          v128 = v233;
          if (v124 > 2)
          {
            OUTLINED_FUNCTION_30_3();
            if (!v129)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v130 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v130, &static Logger.conversationControls);

            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.fault.getter();
            outlined destroy of ConversationControlsRecipe.Actions(v246);
            if (!os_log_type_enabled(v131, v132))
            {
              goto LABEL_26;
            }

            swift_slowAlloc();
            v133 = OUTLINED_FUNCTION_37_7();
            v243 = v124;
            v244 = v133;
            *v126 = 136315138;
            v134 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, &v244);
            v128 = 0x1EDDC1000;

            OUTLINED_FUNCTION_41_4();
            v138 = "Too many trailing actions (%s)";
LABEL_25:
            OUTLINED_FUNCTION_45_4(&dword_1BBC58000, v136, v137, v138);
            __swift_destroy_boxed_opaque_existential_1(v133);
            v127 = v234;
            OUTLINED_FUNCTION_27();
            v126 = v236;
            OUTLINED_FUNCTION_27();
LABEL_26:

            outlined destroy of ConversationControlsRecipe.Actions(v246);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v240, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
            outlined destroy of ConversationControlsType(__dst);
            OUTLINED_FUNCTION_9_4();
            outlined destroy of ConversationControlsRecipe(v241, v143);
            v144 = v237;
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v145, v146, v147, v114);
            goto LABEL_28;
          }
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v240, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(__dst);
        v148 = v222;
        *v121 = v229;
        *(v121 + 1) = v148;
        *(v121 + 4) = v221;
        v121[40] = BYTE4(v220);
        OUTLINED_FUNCTION_8_21();
        v149 = v241;
        v144 = v237;
        outlined init with copy of ConversationControlsRecipe(v241, v237, v150);
        OUTLINED_FUNCTION_5_8();
        __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);
        outlined destroy of ConversationControlsRecipe(v149, v121);
LABEL_28:
        if (__swift_getEnumTagSinglePayload(v144, 1, v114) == 1)
        {
          OUTLINED_FUNCTION_4_13();
          swift_unknownObjectRelease();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v144, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v155, v156, v157, v114);
LABEL_41:
          OUTLINED_FUNCTION_30_0();
          return;
        }

        OUTLINED_FUNCTION_7_3();
        outlined init with take of ConversationControlsRecipe(v144, v126, v158);
        if (SBUIIsSystemApertureEnabled())
        {
          v159 = v226;
          SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v128);
          if (__swift_getEnumTagSinglePayload(v159, 1, v227) != 1)
          {
            OUTLINED_FUNCTION_11_10();
            v172 = outlined init with take of ConversationControlsRecipe(v159, v219, v171);
            v173 = (v224)(v172);
            v175 = v174;
            ObjectType = swift_getObjectType();
            v177 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v173, v127, ObjectType, v175);
            v179 = v178;
            v181 = v180;
            swift_unknownObjectRelease();
            if (v177)
            {
              OUTLINED_FUNCTION_30_3();
              if (!v129)
              {
                OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
              }

              v182 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v182, &static Logger.conversationControls);
              v183 = Logger.logObject.getter();
              v184 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v183, v184))
              {
                v185 = OUTLINED_FUNCTION_33();
                *v185 = 0;
                _os_log_impl(&dword_1BBC58000, v183, v184, "ongoingGreenTea3PHUD: [SystemAperture] showing content", v185, 2u);
                OUTLINED_FUNCTION_27();
              }

              v186 = *(v227 + 36);
              v187 = *MEMORY[0x1E6995E08];
              type metadata accessor for ActivitySymbol.Animation();
              OUTLINED_FUNCTION_7_0();
              v189 = v218;
              (*(v188 + 104))(v218 + v186, v187);
              *v189 = v177;
              OUTLINED_FUNCTION_42_6();
              v189[6] = v179;
              v189[7] = v181;
              OUTLINED_FUNCTION_6_17();
              v191 = v190;
              outlined init with copy of ConversationControlsRecipe(v189, v223, v190);
              v192 = type metadata accessor for SystemApertureIconView(0);
              v193 = objc_allocWithZone(v192);
              v194 = v177;

              SystemApertureIconView.init(icon:isDetached:)();
              v241 = v195;
              v196 = v219;
              OUTLINED_FUNCTION_33_8();
              v197 = objc_allocWithZone(v192);
              SystemApertureIconView.init(icon:isDetached:)();
              v240 = v198;
              OUTLINED_FUNCTION_33_8();
              v199 = objc_allocWithZone(v192);
              SystemApertureIconView.init(icon:isDetached:)();
              v201 = v200;
              OUTLINED_FUNCTION_33_8();
              v202 = objc_allocWithZone(v192);
              SystemApertureIconView.init(icon:isDetached:)();
              v204 = v203;

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_4_13();
              outlined destroy of ConversationControlsRecipe(v189, v191);
              outlined destroy of ConversationControlsRecipe(v196, v191);
              v205 = v236;
              v128 = v236 + v114[18];
              memcpy(__dst, v128, 0x49uLL);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
              v206 = v240;
              *v128 = v241;
              *(v128 + 8) = &protocol witness table for SystemApertureIconView;
              *(v128 + 16) = v206;
              *(v128 + 24) = &protocol witness table for SystemApertureIconView;
              *(v128 + 32) = v201;
              *(v128 + 40) = &protocol witness table for SystemApertureIconView;
              *(v128 + 48) = v204;
              *(v128 + 56) = &protocol witness table for SystemApertureIconView;
              *(v128 + 64) = 4;
              *(v128 + 72) = 1;
              OUTLINED_FUNCTION_1_28();
              outlined init with copy of ConversationControlsRecipe(v205, v232, v207);
              OUTLINED_FUNCTION_5_8();
              __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
              v170 = v205;
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_30_3();
            if (!v129)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v212 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v212, &static Logger.conversationControls);
            v128 = Logger.logObject.getter();
            v213 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_25(v213))
            {
              v214 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v214);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v215, v216, "ongoingGreenTea3PHUD: [SystemAperture] missing app badge icon");
              OUTLINED_FUNCTION_18();

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_4_13();
            }

            else
            {
              OUTLINED_FUNCTION_4_13();

              OUTLINED_FUNCTION_28_11();
              swift_unknownObjectRelease();
            }

            OUTLINED_FUNCTION_12_12();
            outlined destroy of ConversationControlsRecipe(v219, v217);
LABEL_39:
            OUTLINED_FUNCTION_1_28();
            outlined init with copy of ConversationControlsRecipe(v126, v125, v165);
            OUTLINED_FUNCTION_5_8();
            __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
            v170 = v126;
LABEL_40:
            outlined destroy of ConversationControlsRecipe(v170, v128);
            goto LABEL_41;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
          OUTLINED_FUNCTION_30_3();
          if (!v129)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v160 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v160, &static Logger.conversationControls);
          v128 = Logger.logObject.getter();
          v161 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_25(v161))
          {
            v162 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v162);
            OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v163, v164, "ongoingGreenTea3PHUD: [SystemAperture] missing status icon");
            OUTLINED_FUNCTION_18();
          }

          OUTLINED_FUNCTION_4_13();

          OUTLINED_FUNCTION_28_11();
        }

        else
        {
          OUTLINED_FUNCTION_4_13();
        }

        swift_unknownObjectRelease();
        goto LABEL_39;
      }

      v95 = [v44 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v96;

      v97 = [v44 provider];
      v98 = [v97 localizedName];

      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      __dst[0] = v99;
      __dst[1] = v101;

      OUTLINED_FUNCTION_13_17();
    }

    goto LABEL_14;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
}

id GreenTeaControlsRecipeGenerator.ongoingGreenTea3PLeadingAccessoryView(controlsManager:hasHeldCalls:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v13 = v12(v9);
  v15 = v14;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v17 = (*(v15 + 184))(ObjectType, v15);
    swift_unknownObjectRelease();
    v18 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v17);
    if (v19)
    {
      v20 = MEMORY[0x1BFB209B0](v18);
    }

    else
    {
      v20 = 0;
    }

    v39 = objc_opt_self();
    v40 = [objc_opt_self() mainScreen];
    [v40 scale];
    v42 = v41;

    v37 = [v39 _applicationIconImageForBundleIdentifier_format_scale_];
    if (!v37)
    {
      return 0;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    NSObject.hashValue.getter();
  }

  else
  {
    v46 = v8;
    v47 = v7;
    v21 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(v13, a4, ObjectType, v15);
    v45 = v22;
    v24 = v23;
    v25 = swift_unknownObjectRelease();
    v26 = (v12)(v25);
    v28 = v27;
    if (v21)
    {
      v29 = v21;
    }

    v30 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v31 = [objc_opt_self() clearColor];
    v32 = swift_getObjectType();
    v33 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v26, 0, v21, v31, v30, v32, v28);
    (v12)();
    v35 = v34;
    v36 = swift_getObjectType();
    (*(v35 + 232))(v36, v35);
    swift_unknownObjectRelease();
    (*((*MEMORY[0x1E69E7D40] & *v33) + 0x58))(v11);
    (*(v46 + 8))(v11, v47);
    v37 = v33;
    v38 = [v37 view];
    outlined consume of (icon: UIImage, accessibilityLabel: String)?(v21, v45, v24);
  }

  return v38;
}

void *GreenTeaControlsRecipeGenerator.ongoingGreenTea3PActions(controlsManager:hasHeldCalls:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 208))(ObjectType, v6);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  if (v8 == 2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    result = swift_storeEnumTagMultiPayload();
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v9 = swift_allocObject();
    if (a2)
    {
      *(v9 + 16) = xmmword_1BC4BB990;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *(v9 + 16) = xmmword_1BC4BB980;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    result = static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v14);
    v12 = v14[0];
    v13 = v14[1];
    v11 = v15 | 0x80;
  }

  *a3 = v9;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
  *(a3 + 40) = v11;
  return result;
}

uint64_t GreenTeaControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static SystemApertureIconFactory.shared;
  v19[4] = &type metadata for ScreeningStatusOverride;
  v19[5] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();

  v19[1] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v7 = type metadata accessor for Features();
  v8 = [objc_allocWithZone(v7) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E6995EE0];
  v11 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v11[3] = v0;
  v11[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v0);
  v13 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v13[3] = v7;
  v13[4] = &protocol witness table for Features;
  *v13 = v8;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  (*(v2 + 8))(v5, v0);
  return v6;
}

id _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(void *a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v8 = a2;

    v9 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v8, a3, 0, 0, a4);
    return v9;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 tu:v12 contactStoreConfigurationForCall:?];
    v14 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v15 = [v12 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    OUTLINED_FUNCTION_46();
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = specialized Set.count.getter(v16);
    if (v17)
    {
      v18 = v17;
      v50 = v12;
      v51 = v14;
      v52 = a4;
      v57 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      result = specialized Set.startIndex.getter();
      v54 = result;
      v55 = v19;
      v56 = v20 & 1;
      if ((v18 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        while (!__OFADD__(v21++, 1))
        {
          v23 = v54;
          v24 = v55;
          v25 = v56;
          v26 = OUTLINED_FUNCTION_29_6();
          specialized Set.subscript.getter(v26, v27, v25, v16);
          v29 = v28;
          v30 = [v28 shouldHideContact];
          v31 = objc_allocWithZone(MEMORY[0x1E695CF18]);
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29;
          }

          v33 = &selRef_initWithContact_;
          if (!v30)
          {
            v33 = &selRef__initWithHandle_;
          }

          [v31 *v33];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (!v25)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_29_6();
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
            v38 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            result = v38(v53, 0);
          }

          else
          {
            if (v25)
            {
              goto LABEL_40;
            }

            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            v34 = 1 << *(v16 + 32);
            if (v23 >= v34)
            {
              goto LABEL_35;
            }

            v35 = v23 >> 6;
            v36 = *(v16 + 56 + 8 * (v23 >> 6));
            if (((v36 >> v23) & 1) == 0)
            {
              goto LABEL_36;
            }

            if (*(v16 + 36) != v24)
            {
              goto LABEL_37;
            }

            v37 = v36 & (-2 << (v23 & 0x3F));
            if (v37)
            {
              v34 = __clz(__rbit64(v37)) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v39 = v35 << 6;
              v40 = v35 + 1;
              v41 = (v16 + 64 + 8 * v35);
              while (v40 < (v34 + 63) >> 6)
              {
                v43 = *v41++;
                v42 = v43;
                v39 += 64;
                ++v40;
                if (v43)
                {
                  v44 = OUTLINED_FUNCTION_29_6();
                  result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v44, v45, 0);
                  v34 = __clz(__rbit64(v42)) + v39;
                  goto LABEL_29;
                }
              }

              v46 = OUTLINED_FUNCTION_29_6();
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v46, v47, 0);
            }

LABEL_29:
            v54 = v34;
            v55 = v24;
            v56 = 0;
          }

          if (v21 == v18)
          {

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v54, v55, v56);
            v48 = v57;
            a4 = v52;
            v14 = v51;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v49 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
      return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v14, v48, a3, a4);
    }
  }

  return result;
}

id specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3)
  {
    return 0;
  }

  v4 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([a1 provider]);
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_opt_self();
  v9 = outlined bridged method (mbgnnn) of @objc static UIImage._applicationIconImage(forBundleIdentifier:format:)(v6, v7, 5, v8);
  if (v9)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v12 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v6, v7, 1);

    v13 = [v12 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v9;
}

uint64_t outlined assign with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *outlined consume of (icon: UIImage, accessibilityLabel: String)?(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with take of ConversationControlsRecipe(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of ConversationControlsRecipe(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of ConversationControlsRecipe(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

id outlined copy of ConversationControlsRecipe.View?(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void outlined consume of ConversationControlsRecipe.View?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t getEnumTagSinglePayload for GreenTeaControlsRecipeGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GreenTeaControlsRecipeGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FindoView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  OUTLINED_FUNCTION_37_8();
  return v1;
}

uint64_t key path getter for FindoView.viewModel : FindoView@<X0>(uint64_t *a1@<X8>)
{
  result = FindoView.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for FindoView.viewModel : FindoView(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);

  return FindoView.viewModel.setter(v4, v5, v2, v3);
}

void (*FindoView.viewModel.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v7;
  v7[6] = a3;
  v7[7] = a4;
  *v7 = a3;
  v7[1] = a4;

  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

void FindoView.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t FindoView.$viewModel.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  State.projectedValue.getter();
  return v4;
}

double FindoView.leadingViewDimensions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v3 = State.wrappedValue.getter();
  (*(*v5 + 320))(&v7, v3);

  *&v6[9] = *&v8[9];
  v5 = v7;
  *v6 = *v8;
  if (!v8[24])
  {
    return 44.0;
  }

  outlined destroy of ConversationControlsType(&v5);
  return 30.0;
}

double FindoView.leadingViewPadding.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v3 = State.wrappedValue.getter();
  (*(*v5 + 320))(&v7, v3);

  *&v6[9] = *&v8[9];
  v5 = v7;
  *v6 = *v8;
  if (!v8[24])
  {
    return 10.0;
  }

  outlined destroy of ConversationControlsType(&v5);
  return 7.0;
}

double FindoView.titleTextPadding.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v3 = State.wrappedValue.getter();
  (*(*v5 + 320))(&v7, v3);

  *&v6[9] = *&v8[9];
  v5 = v7;
  *v6 = *v8;
  if (v8[24])
  {
    outlined destroy of ConversationControlsType(&v5);
  }

  return 0.0;
}

double FindoView.padding.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v3 = State.wrappedValue.getter();
  v4 = (*(*v7 + 376))(v3);

  result = 0.0;
  if (v4)
  {
    v6 = FindoView.isTranslationStarted.getter();
    result = 0.0;
    if (v6)
    {
      return 16.0;
    }
  }

  return result;
}

uint64_t FindoView.isExpanded.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_38_4();
  v1 = (*(v0 + 376))();

  return v1 & 1;
}

uint64_t FindoView.isTranslationStarted.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  OUTLINED_FUNCTION_37_8();
  v0 = *(v5 + OBJC_IVAR____TtC15ConversationKit14FindoViewModel_translationHUDViewModel);

  if (v0)
  {
    v3 = CallTranslationHUDViewModel.isTranslationStarted.getter(v1, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double FindoView.trailingActionsPadding.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v0 = State.wrappedValue.getter();
  (*(*v3 + 264))(v0);

  v1 = specialized Array.count.getter();

  result = 10.0;
  if (v1 == 1)
  {
    return 12.0;
  }

  return result;
}

void FindoView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AGyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAGyAGyAGyAA6VStackVyAEyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgAGyAEyAGyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyAGyAGyA73_yAGyAGyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyE0VGGGA34_GSg_AGyAGyAGyAGyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgAGyAGyAGyAGyAGyAGyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextE0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGMd,  &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AGyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAGyAGyAGyAA6VStackVyAEyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgAGyAEyAGyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyAGyAGyA73_yAGyAGyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyE0VGGGA34_GSg_AGyAGyAGyAGyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgAGyAGyAGyAGyAGyAGyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextE0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v11 - v8);
  *v9 = static Alignment.topLeading.getter();
  v9[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AKyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAKyAKyAKyAA6VStackVyAIyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA3_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAKyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAqA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyA17_12MarqueeLabelVAA022_EnvironmentKeyWritingQ0VyAQSgGGA43_y12CoreGraphics7CGFloatVGGA43_yAA4FontVSgGGA38_GA38_GA38_GA43_yAA0M6SchemeOGGATGAA6SpacerVSgAKyAIyAKyA12_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA72_A14_yA14_yA3_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyA70_13UIViewWrapperVA34_GG_AA16PlainButtonStyleVQo_A3_AAEA74_yQrqd__AAA75_Rd__lFQOyAKyAKyA77_yAKyAKyAA4TextVA38_GA34_GGAA016_BackgroundStyleQ0VyAQGGAA05_ClipV0VyAA7CapsuleVGG_A83_Qo_GAA05EmptyD0VGGGA38_GSg_AKyAKyAKyAKyA3_AAEA74_yQrqd__AAA75_Rd__lFQOyA77_yA86_G_AA28BorderedProminentButtonStyleVQo_A43_yAA03AnyK5StyleVSgGGA43_yAA11ControlSizeOGGA98_GAA016_ForegroundStyleQ0VyAA012HierarchicalK5StyleVGGSgSgAKyAKyAKyAKyAKyAKyA26_A55_GA43_yAA19SymbolRenderingModeVSgGGA127_GA43_yA26_5ScaleOGGA38_GAA023AccessibilityAttachmentQ0VGSgtGAA016_MatchedGeometryV0VySSGGtGG_Qo__Qo_A144_G_A70_015TranslationTextD0VSgSgtGGA38_GAA010_FlexFrameG0VGA70_017PlatterBackgroundQ033_1D898AC1149277A8892BADF3129CBB17LLVGGA170_GAA010_AnimationQ0VySbGGtGGMd,  &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_AKyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyAKyAKyAKyAA6VStackVyAIyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA3_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAKyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAqA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyA17_12MarqueeLabelVAA022_EnvironmentKeyWritingQ0VyAQSgGGA43_y12CoreGraphics7CGFloatVGGA43_yAA4FontVSgGGA38_GA38_GA38_GA43_yAA0M6SchemeOGGATGAA6SpacerVSgAKyAIyAKyA12_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA72_A14_yA14_yA3_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyA70_13UIViewWrapperVA34_GG_AA16PlainButtonStyleVQo_A3_AAEA74_yQrqd__AAA75_Rd__lFQOyAKyAKyA77_yAKyAKyAA4TextVA38_GA34_GGAA016_BackgroundStyleQ0VyAQGGAA05_ClipV0VyAA7CapsuleVGG_A83_Qo_GAA05EmptyD0VGGGA38_GSg_AKyAKyAKyAKyA3_AAEA74_yQrqd__AAA75_Rd__lFQOyA77_yA86_G_AA28BorderedProminentButtonStyleVQo_A43_yAA03AnyK5StyleVSgGGA43_yAA11ControlSizeOGGA98_GAA016_ForegroundStyleQ0VyAA012HierarchicalK5StyleVGGSgSgAKyAKyAKyAKyAKyAKyA26_A55_GA43_yAA19SymbolRenderingModeVSgGGA127_GA43_yA26_5ScaleOGGA38_GAA023AccessibilityAttachmentQ0VGSgtGAA016_MatchedGeometryV0VySSGGtGG_Qo__Qo_A144_G_A70_015TranslationTextD0VSgSgtGGA38_GAA010_FlexFrameG0VGA70_017PlatterBackgroundQ033_1D898AC1149277A8892BADF3129CBB17LLVGGA170_GAA010_AnimationQ0VySbGGtGGMR);
  closure #1 in FindoView.body.getter(a1, a2, a3);
}

void *sub_1BBD33CA4(uint64_t a1)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)((v3 - 176));
  OUTLINED_FUNCTION_31_2();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v4, v5, v6, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAGyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgACyAGyACyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyACyACyA73_yACyACyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyG0VGGGA34_GSg_ACyACyACyACyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgACyACyACyACyACyACyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextG0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGA161_GMd,  &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAGyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA_AAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAmA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA13_12MarqueeLabelVAA022_EnvironmentKeyWritingN0VyAMSgGGA39_y12CoreGraphics7CGFloatVGGA39_yAA4FontVSgGGA34_GA34_GA34_GA39_yAA0J6SchemeOGGAPGAA6SpacerVSgACyAGyACyA8_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA68_A10_yA10_yA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA66_13UIViewWrapperVA30_GG_AA16PlainButtonStyleVQo_A_AAEA70_yQrqd__AAA71_Rd__lFQOyACyACyA73_yACyACyAA4TextVA34_GA30_GGAA016_BackgroundStyleN0VyAMGGAA05_ClipS0VyAA7CapsuleVGG_A79_Qo_GAA05EmptyG0VGGGA34_GSg_ACyACyACyACyA_AAEA70_yQrqd__AAA71_Rd__lFQOyA73_yA82_G_AA28BorderedProminentButtonStyleVQo_A39_yAA03AnyH5StyleVSgGGA39_yAA11ControlSizeOGGA94_GAA016_ForegroundStyleN0VyAA012HierarchicalH5StyleVGGSgSgACyACyACyACyACyACyA22_A51_GA39_yAA19SymbolRenderingModeVSgGGA123_GA39_yA22_5ScaleOGGA34_GAA0y10AttachmentN0VGSgtGAA016_MatchedGeometryS0VySSGGtGG_Qo__Qo_A140_G_A66_015TranslationTextG0VSgSgtGGA34_GAA16_FlexFrameLayoutVGA66_017PlatterBackgroundN033_1D898AC1149277A8892BADF3129CBB17LLVGGA166_GAA010_AnimationN0VySbGGtGGA161_GMR);
  return memcpy((v1 + *(v7 + 36)), (v3 - 176), 0x70uLL);
}

void closure #1 in FindoView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMR);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  static Color.clear.getter();
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMd, &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMR);
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMd,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMR,  MEMORY[0x1E697FD98]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>();
  StaticIf<>.init(_:then:else:)();
  static Animation.bouncy(duration:extraBounce:)();
}

uint64_t sub_1BBD33EDC(uint64_t a1)
{
  *(v7 - 96) = v6;
  *(v7 - 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v9 = State.wrappedValue.getter();
  v10 = (*(**(v7 - 104) + 376))(v9);

  v11 = v4 + *(v5 + 44);
  *v11 = a1;
  *(v11 + 8) = v10 & 1;
  outlined init with copy of IDView<AvatarStackView, [UUID]>( v4,  v3,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMR);
  *v2 = *(v7 - 200);
  *(v2 + 8) = 256;
  *(v2 + 10) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA05TupleF0VyACyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAyAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAWyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackF0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAiA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA11_12MarqueeLabelVAA022_EnvironmentKeyWritingL0VyAISgGGA37_y12CoreGraphics7CGFloatVGGA37_yAA4FontVSgGGA32_GA32_GA32_GA37_yAA0H6SchemeOGGALGAA6SpacerVSgACyAWyACyA6_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA66_A8_yA8_yAyAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA64_13UIViewWrapperVA28_GG_AA16PlainButtonStyleVQo_AyAEA68_yQrqd__AAA69_Rd__lFQOyACyACyA71_yACyACyAA4TextVA32_GA28_GGAA016_BackgroundStyleL0VyAIGGAA05_ClipQ0VyAA7CapsuleVGG_A77_Qo_GAA05EmptyF0VGGGA32_GSg_ACyACyACyACyAyAEA68_yQrqd__AAA69_Rd__lFQOyA71_yA80_G_AA28BorderedProminentButtonStyleVQo_A37_yAA03AnyE5StyleVSgGGA37_yAA11ControlSizeOGGA92_GAA016_ForegroundStyleL0VyAA012HierarchicalE5StyleVGGSgSgACyACyACyACyACyACyA20_A49_GA37_yAA19SymbolRenderingModeVSgGGA121_GA37_yA20_5ScaleOGGA32_GAA0x10AttachmentL0VGSgtGAA016_MatchedGeometryQ0VySSGGtGG_Qo__Qo_A138_G_A64_015TranslationTextF0VSgSgtGGA32_GAA16_FlexFrameLayoutVGA64_017PlatterBackgroundL033_1D898AC1149277A8892BADF3129CBB17LLVGGA164_GAA010_AnimationL0VySbGGtMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA9RectangleVAA5ColorVGAA25_AllowsHitTestingModifierVG_ACyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA05TupleF0VyACyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAyAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAWyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackF0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAiA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA11_12MarqueeLabelVAA022_EnvironmentKeyWritingL0VyAISgGGA37_y12CoreGraphics7CGFloatVGGA37_yAA4FontVSgGGA32_GA32_GA32_GA37_yAA0H6SchemeOGGALGAA6SpacerVSgACyAWyACyA6_yAA7ForEachVySay15ConversationKit19InCallControlButtonCGA66_A8_yA8_yAyAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA64_13UIViewWrapperVA28_GG_AA16PlainButtonStyleVQo_AyAEA68_yQrqd__AAA69_Rd__lFQOyACyACyA71_yACyACyAA4TextVA32_GA28_GGAA016_BackgroundStyleL0VyAIGGAA05_ClipQ0VyAA7CapsuleVGG_A77_Qo_GAA05EmptyF0VGGGA32_GSg_ACyACyACyACyAyAEA68_yQrqd__AAA69_Rd__lFQOyA71_yA80_G_AA28BorderedProminentButtonStyleVQo_A37_yAA03AnyE5StyleVSgGGA37_yAA11ControlSizeOGGA92_GAA016_ForegroundStyleL0VyAA012HierarchicalE5StyleVGGSgSgACyACyACyACyACyACyA20_A49_GA37_yAA19SymbolRenderingModeVSgGGA121_GA37_yA20_5ScaleOGGA32_GAA0x10AttachmentL0VGSgtGAA016_MatchedGeometryQ0VySSGGtGG_Qo__Qo_A138_G_A64_015TranslationTextF0VSgSgtGGA32_GAA16_FlexFrameLayoutVGA64_017PlatterBackgroundL033_1D898AC1149277A8892BADF3129CBB17LLVGGA164_GAA010_AnimationL0VySbGGtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>( v3,  v2 + *(v12 + 48),  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMR);

  outlined destroy of IDView<AvatarStackView, [UUID]>(v4, &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v3, &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd);
}

void FindoView.platterView.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMd, &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMR);
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMd,  &_s7SwiftUI21_GlassEffectContainerVyAA15ModifiedContentVyAEyAEyAA6VStackVyAA9TupleViewVyAEyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAkAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAEyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackJ0VSay10Foundation4UUIDVGGAEyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAEyAY12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA10_SgGGA25_y12CoreGraphics7CGFloatVGGA25_yAA4FontVSgGGA20_GA20_GA20_GA25_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAEyAIyAEyATyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA56_AVyAVyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA54_13UIViewWrapperVA16_GG_AA16PlainButtonStyleVQo_AkAEA58_yQrqd__AAA59_Rd__lFQOyAEyAEyA61_yAEyAEyAA4TextVA20_GA16_GGAA24_BackgroundStyleModifierVyA10_GGAA05_ClipD0VyAA7CapsuleVGG_A67_Qo_GAA05EmptyJ0VGGGA20_GSg_AEyAEyAEyAEyAkAEA58_yQrqd__AAA59_Rd__lFQOyA61_yA70_G_AA28BorderedProminentButtonStyleVQo_A25_yAA13AnyShapeStyleVSgGGA25_yAA11ControlSizeOGGA82_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAEyAEyAEyAEyAEyAEyA6_A37_GA25_yAA19SymbolRenderingModeVSgGGA111_GA25_yA6_5ScaleOGGA20_GAA0N18AttachmentModifierVGSgtGAA016_MatchedGeometryD0VySSGGtGG_Qo__Qo_A128_G_A54_015TranslationTextJ0VSgSgtGGA20_GAA16_FlexFrameLayoutVGA54_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGMR,  MEMORY[0x1E697FD98]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>();
  StaticIf<>.init(_:then:else:)();
  static Animation.bouncy(duration:extraBounce:)();
}

uint64_t sub_1BBD34124(uint64_t a1)
{
  *(v4 - 80) = v3;
  *(v4 - 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  State.wrappedValue.getter();
  OUTLINED_FUNCTION_38_4();
  v7 = (*(v6 + 376))();

  result = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMd,  &_s7SwiftUI15ModifiedContentVyAA8StaticIfVyAA8SolariumVAA21_GlassEffectContainerVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAoAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAMyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackM0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyA1_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA14_SgGGA29_y12CoreGraphics7CGFloatVGGA29_yAA4FontVSgGGA24_GA24_GA24_GA29_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAMyACyAXyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA60_AZyAZyAoAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA58_13UIViewWrapperVA20_GG_AA16PlainButtonStyleVQo_AoAEA62_yQrqd__AAA63_Rd__lFQOyACyACyA65_yACyACyAA4TextVA24_GA20_GGAA24_BackgroundStyleModifierVyA14_GGAA05_ClipI0VyAA7CapsuleVGG_A71_Qo_GAA05EmptyM0VGGGA24_GSg_ACyACyACyACyAoAEA62_yQrqd__AAA63_Rd__lFQOyA65_yA74_G_AA28BorderedProminentButtonStyleVQo_A29_yAA13AnyShapeStyleVSgGGA29_yAA11ControlSizeOGGA86_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA10_A41_GA29_yAA19SymbolRenderingModeVSgGGA115_GA29_yA10_5ScaleOGGA24_GAA0Q18AttachmentModifierVGSgtGAA016_MatchedGeometryI0VySSGGtGG_Qo__Qo_A132_G_A58_015TranslationTextM0VSgSgtGGA24_GAA16_FlexFrameLayoutVGA58_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGGA158_GAA18_AnimationModifierVySbGGMR);
  v9 = v1 + *(result + 36);
  *v9 = a1;
  *(v9 + 8) = v7 & 1;
  return result;
}

uint64_t closure #1 in FindoView.contentWithGlassContainer.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>();
  return _GlassEffectContainer.init(smoothness:content:)();
}

uint64_t FindoView.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMR);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - v14;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 8) = 0x402C000000000000;
  *(v11 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAmAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAKyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyA_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA12_SgGGA27_y12CoreGraphics7CGFloatVGGA27_yAA4FontVSgGGA22_GA22_GA22_GA27_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAKyAIyAKyAVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA58_AXyAXyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyA56_13UIViewWrapperVA18_GG_AA16PlainButtonStyleVQo_AmAEA60_yQrqd__AAA61_Rd__lFQOyAKyAKyA63_yAKyAKyAA4TextVA22_GA18_GGAA24_BackgroundStyleModifierVyA12_GGAA11_ClipEffectVyAA7CapsuleVGG_A69_Qo_GAA05EmptyD0VGGGA22_GSg_AKyAKyAKyAKyAmAEA60_yQrqd__AAA61_Rd__lFQOyA63_yA72_G_AA28BorderedProminentButtonStyleVQo_A27_yAA13AnyShapeStyleVSgGGA27_yAA11ControlSizeOGGA84_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAKyAKyAKyAKyAKyAKyA8_A39_GA27_yAA19SymbolRenderingModeVSgGGA113_GA27_yA8_5ScaleOGGA22_GAA0N18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A130_G_A56_015TranslationTextD0VSgSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAmAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAIyAKyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyA_12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA12_SgGGA27_y12CoreGraphics7CGFloatVGGA27_yAA4FontVSgGGA22_GA22_GA22_GA27_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAKyAIyAKyAVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA58_AXyAXyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyA56_13UIViewWrapperVA18_GG_AA16PlainButtonStyleVQo_AmAEA60_yQrqd__AAA61_Rd__lFQOyAKyAKyA63_yAKyAKyAA4TextVA22_GA18_GGAA24_BackgroundStyleModifierVyA12_GGAA11_ClipEffectVyAA7CapsuleVGG_A69_Qo_GAA05EmptyD0VGGGA22_GSg_AKyAKyAKyAKyAmAEA60_yQrqd__AAA61_Rd__lFQOyA63_yA72_G_AA28BorderedProminentButtonStyleVQo_A27_yAA13AnyShapeStyleVSgGGA27_yAA11ControlSizeOGGA84_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAKyAKyAKyAKyAKyAKyA8_A39_GA27_yAA19SymbolRenderingModeVSgGGA113_GA27_yA8_5ScaleOGGA22_GAA0N18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A130_G_A56_015TranslationTextD0VSgSgtGGMR);
  closure #1 in FindoView.content.getter(a1, a2, a3, v11 + *(v16 + 44));
  FindoView.padding.getter(a1, a2, a3);
  v17 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v11 + *(v9 + 44);
  *v18 = v17;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  *(v18 + 32) = v22;
  *(v18 + 40) = 0;
  __src[0] = a2;
  __src[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v23 = State.wrappedValue.getter();
  (*(*v29[1] + 376))(v23);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>( v11,  v15,  &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMd,  &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMR);
  memcpy(&v15[*(v13 + 44)], __src, 0x70uLL);
  v24 = FindoView.backgroundCornerRadius.getter(a1, a2, a3);
  LOBYTE(v11) = v25;
  v26 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMR) + 36);
  v27 = type metadata accessor for PlatterBackgroundModifier(0);
  FindoView.backgroundMaterial.getter(a3, v26 + *(v27 + 20));
  *v26 = v24;
  *(v26 + 8) = v11 & 1;
  return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>( v15,  a4,  &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMd,  &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMR);
}

uint64_t closure #1 in FindoView.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = type metadata accessor for AccessibilityTraits();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingV0VG_AGyAGyAGyAGyAGyAGyAGyAGyAL12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAYSgGGA12_y12CoreGraphics7CGFloatVGGA12_yAA4FontVSgGGA7_GA7_GA7_GA12_yAA0S6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyACyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AIyAIyAA0E0PAAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAGyA41_13UIViewWrapperVA3_GG_AA011PlainButtonQ0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyAGyAGyA50_yAGyAGyAA4TextVA7_GA3_GGAA011_BackgroundQ8ModifierVyAYGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyE0VGGGA7_GSg_AGyAGyAGyAGyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonQ0VQo_A12_yAA08AnyShapeQ0VSgGGA12_yAA11ControlSizeOGGA71_GAA01_pQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgAGyAGyAGyAGyAGyAGyAUA24_GA12_yAA19SymbolRenderingModeVSgGGA100_GA12_yAU5ScaleOGGA7_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingV0VG_AGyAGyAGyAGyAGyAGyAGyAGyAL12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAYSgGGA12_y12CoreGraphics7CGFloatVGGA12_yAA4FontVSgGGA7_GA7_GA7_GA12_yAA0S6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyACyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AIyAIyAA0E0PAAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAGyA41_13UIViewWrapperVA3_GG_AA011PlainButtonQ0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyAGyAGyA50_yAGyAGyAA4TextVA7_GA3_GGAA011_BackgroundQ8ModifierVyAYGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyE0VGGGA7_GSg_AGyAGyAGyAGyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonQ0VQo_A12_yAA08AnyShapeQ0VSgGGA12_yAA11ControlSizeOGGA71_GAA01_pQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgAGyAGyAGyAGyAGyAGyAUA24_GA12_yAA19SymbolRenderingModeVSgGGA100_GA12_yAU5ScaleOGGA7_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMR);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v42 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA012_ConditionalL0VyAA6IDViewVy014CommunicationsB0011AvatarStackC0VSay10Foundation4UUIDVGGALyALyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ALyALyALyALyALyALyALyALyAQ12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA2_SgGGA17_y12CoreGraphics7CGFloatVGGA17_yAA4FontVSgGGA12_GA12_GA12_GA17_yAA0X6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgALyAJyALyAHyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA48_ANyANyAcAE06buttonV0yQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA6ButtonVyALyA46_13UIViewWrapperVA8_GG_AA011PlainButtonV0VQo_AcAEA50_yQrqd__AAA51_Rd__lFQOyALyALyA53_yALyALyAA4TextVA12_GA8_GGAA011_BackgroundV8ModifierVyA2_GGAA11_ClipEffectVyAA7CapsuleVGG_A59_Qo_GAA05EmptyC0VGGGA12_GSg_ALyALyALyALyAcAEA50_yQrqd__AAA51_Rd__lFQOyA53_yA62_G_AA023BorderedProminentButtonV0VQo_A17_yAA08AnyShapeV0VSgGGA17_yAA11ControlSizeOGGA74_GAA01_uV8ModifierVyAA017HierarchicalShapeV0VGGSgSgALyALyALyALyALyALyAZA29_GA17_yAA19SymbolRenderingModeVSgGGA103_GA17_yAZ5ScaleOGGA12_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA012_ConditionalL0VyAA6IDViewVy014CommunicationsB0011AvatarStackC0VSay10Foundation4UUIDVGGALyALyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ALyALyALyALyALyALyALyALyAQ12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA2_SgGGA17_y12CoreGraphics7CGFloatVGGA17_yAA4FontVSgGGA12_GA12_GA12_GA17_yAA0X6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgALyAJyALyAHyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA48_ANyANyAcAE06buttonV0yQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA6ButtonVyALyA46_13UIViewWrapperVA8_GG_AA011PlainButtonV0VQo_AcAEA50_yQrqd__AAA51_Rd__lFQOyALyALyA53_yALyALyAA4TextVA12_GA8_GGAA011_BackgroundV8ModifierVyA2_GGAA11_ClipEffectVyAA7CapsuleVGG_A59_Qo_GAA05EmptyC0VGGGA12_GSg_ALyALyALyALyAcAEA50_yQrqd__AAA51_Rd__lFQOyA53_yA62_G_AA023BorderedProminentButtonV0VQo_A17_yAA08AnyShapeV0VSgGGA17_yAA11ControlSizeOGGA74_GAA01_uV8ModifierVyAA017HierarchicalShapeV0VGGSgSgALyALyALyALyALyALyAZA29_GA17_yAA19SymbolRenderingModeVSgGGA103_GA17_yAZ5ScaleOGGA12_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo_MR);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA012_ConditionalR0VyAA6IDViewVy014CommunicationsB0011AvatarStackC0VSay10Foundation4UUIDVGGAPyAPyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_APyAPyAPyAPyAPyAPyAPyAPyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAPyANyAPyALyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AcAEA54_yQrqd__AAA55_Rd__lFQOyAPyAPyA57_yAPyAPyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyC0VGGGA16_GSg_APyAPyAPyAPyAcAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAPyAPyAPyAPyAPyAPyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0G18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA012_ConditionalR0VyAA6IDViewVy014CommunicationsB0011AvatarStackC0VSay10Foundation4UUIDVGGAPyAPyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_APyAPyAPyAPyAPyAPyAPyAPyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAPyANyAPyALyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AcAEA54_yQrqd__AAA55_Rd__lFQOyAPyAPyA57_yAPyAPyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyC0VGGGA16_GSg_APyAPyAPyAPyAcAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAPyAPyAPyAPyAPyAPyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0G18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_MR);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v54 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v44 = &v42 - v21;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyAP12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGGA16_yAA4FontVSgGGA11_GA11_GA11_GA16_yAA0V6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAKyAIyAKyAA0F0VyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA49_AMyAMyAA0D0PAAE06buttonT0yQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6ButtonVyAKyA47_13UIViewWrapperVA7_GG_AA011PlainButtonT0VQo_A52_AAEA53_yQrqd__AAA54_Rd__lFQOyAKyAKyA56_yAKyAKyAA4TextVA11_GA7_GGAA011_BackgroundT8ModifierVyA1_GGAA11_ClipEffectVyAA7CapsuleVGG_A62_Qo_GAA05EmptyD0VGGGA11_GSg_AKyAKyAKyAKyA52_AAEA53_yQrqd__AAA54_Rd__lFQOyA56_yA65_G_AA023BorderedProminentButtonT0VQo_A16_yAA08AnyShapeT0VSgGGA16_yAA11ControlSizeOGGA77_GAA01_sT8ModifierVyAA017HierarchicalShapeT0VGGSgSgAKyAKyAKyAKyAKyAKyAYA28_GA16_yAA19SymbolRenderingModeVSgGGA106_GA16_yAY5ScaleOGGA11_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA012_ConditionalJ0VyAA6IDViewVy014CommunicationsB0011AvatarStackD0VSay10Foundation4UUIDVGGAKyAKyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA06_FrameG0VGGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAKyAP12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGGA16_yAA4FontVSgGGA11_GA11_GA11_GA16_yAA0V6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAKyAIyAKyAA0F0VyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA49_AMyAMyAA0D0PAAE06buttonT0yQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6ButtonVyAKyA47_13UIViewWrapperVA7_GG_AA011PlainButtonT0VQo_A52_AAEA53_yQrqd__AAA54_Rd__lFQOyAKyAKyA56_yAKyAKyAA4TextVA11_GA7_GGAA011_BackgroundT8ModifierVyA1_GGAA11_ClipEffectVyAA7CapsuleVGG_A62_Qo_GAA05EmptyD0VGGGA11_GSg_AKyAKyAKyAKyA52_AAEA53_yQrqd__AAA54_Rd__lFQOyA56_yA65_G_AA023BorderedProminentButtonT0VQo_A16_yAA08AnyShapeT0VSgGGA16_yAA11ControlSizeOGGA77_GAA01_sT8ModifierVyAA017HierarchicalShapeT0VGGSgSgAKyAKyAKyAKyAKyAKyAYA28_GA16_yAA19SymbolRenderingModeVSgGGA106_GA16_yAY5ScaleOGGA11_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMR);
  closure #1 in closure #1 in FindoView.content.getter(a1, a2, a3, &v12[*(v22 + 44)]);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v42 = a2;
  v23[4] = a3;
  v24 = a3;
  v25 = lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<_ConditionalContent<IDView<AvatarStackView, [UUID]>, ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MarqueeLabel, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AllowsHitTestingModifier>, Spacer?, ModifiedContent<TupleView<(ModifiedContent<HStack<ForEach<[InCallControlButton], InCallControlButton, _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView>>>, _PaddingLayout>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingV0VG_AGyAGyAGyAGyAGyAGyAGyAGyAL12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAYSgGGA12_y12CoreGraphics7CGFloatVGGA12_yAA4FontVSgGGA7_GA7_GA7_GA12_yAA0S6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyACyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AIyAIyAA0E0PAAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAGyA41_13UIViewWrapperVA3_GG_AA011PlainButtonQ0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyAGyAGyA50_yAGyAGyAA4TextVA7_GA3_GGAA011_BackgroundQ8ModifierVyAYGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyE0VGGGA7_GSg_AGyAGyAGyAGyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonQ0VQo_A12_yAA08AnyShapeQ0VSgGGA12_yAA11ControlSizeOGGA71_GAA01_pQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgAGyAGyAGyAGyAGyAGyAUA24_GA12_yAA19SymbolRenderingModeVSgGGA100_GA12_yAU5ScaleOGGA7_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMd,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingV0VG_AGyAGyAGyAGyAGyAGyAGyAGyAL12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAYSgGGA12_y12CoreGraphics7CGFloatVGGA12_yAA4FontVSgGGA7_GA7_GA7_GA12_yAA0S6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyACyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AIyAIyAA0E0PAAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAGyA41_13UIViewWrapperVA3_GG_AA011PlainButtonQ0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyAGyAGyA50_yAGyAGyAA4TextVA7_GA3_GGAA011_BackgroundQ8ModifierVyAYGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyE0VGGGA7_GSg_AGyAGyAGyAGyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonQ0VQo_A12_yAA08AnyShapeQ0VSgGGA12_yAA11ControlSizeOGGA71_GAA01_pQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgAGyAGyAGyAGyAGyAGyAUA24_GA12_yAA19SymbolRenderingModeVSgGGA100_GA12_yAU5ScaleOGGA7_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMR,  MEMORY[0x1E69817F8]);

  v26 = 1;
  v27 = v45;
  View.onTapGesture(count:perform:)();

  outlined destroy of IDView<AvatarStackView, [UUID]>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingV0VG_AGyAGyAGyAGyAGyAGyAGyAGyAL12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAYSgGGA12_y12CoreGraphics7CGFloatVGGA12_yAA4FontVSgGGA7_GA7_GA7_GA12_yAA0S6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyACyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AIyAIyAA0E0PAAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAGyA41_13UIViewWrapperVA3_GG_AA011PlainButtonQ0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyAGyAGyA50_yAGyAGyAA4TextVA7_GA3_GGAA011_BackgroundQ8ModifierVyAYGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyE0VGGGA7_GSg_AGyAGyAGyAGyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonQ0VQo_A12_yAA08AnyShapeQ0VSgGGA12_yAA11ControlSizeOGGA71_GAA01_pQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgAGyAGyAGyAGyAGyAGyAUA24_GA12_yAA19SymbolRenderingModeVSgGGA100_GA12_yAU5ScaleOGGA7_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGGMd);
  v28 = v47;
  static AccessibilityChildBehavior.combine.getter();
  v59 = v27;
  v60 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  v31 = v46;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v28, v52);
  (*(v48 + 8))(v14, v31);
  v32 = v53;
  static AccessibilityTraits.isButton.getter();
  v59 = v31;
  v60 = OpaqueTypeConformance2;
  v33 = v44;
  v34 = v24;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v32;
  v37 = v49;
  MEMORY[0x1BFB1F9D0](v32, v49, v35);
  v38 = v42;
  (*(v55 + 8))(v36, v56);
  (*(v50 + 8))(v30, v37);
  if (FindoView.isTranslationStarted.getter())
  {
    v59 = v38;
    v60 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
    State.wrappedValue.getter();
    v26 = *(v58 + OBJC_IVAR____TtC15ConversationKit14FindoViewModel_translationHUDViewModel);
  }

  v39 = v54;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, v54, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMR);
  v40 = v57;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v39, v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMR);
  *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_G_A50_015TranslationTextE0VSgSgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_G_A50_015TranslationTextE0VSgSgtMR) + 48)) = v26;
  outlined copy of TranslationTextView??(v26);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v33, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMd);
  outlined consume of TranslationTextView??(v26);
  return outlined destroy of IDView<AvatarStackView, [UUID]>(v39, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAA05TupleE0VyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAU12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA6_SgGGA21_y12CoreGraphics7CGFloatVGGA21_yAA4FontVSgGGA16_GA16_GA16_GA21_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAPyACyANyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA52_ARyARyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA50_13UIViewWrapperVA12_GG_AA16PlainButtonStyleVQo_AeAEA54_yQrqd__AAA55_Rd__lFQOyACyACyA57_yACyACyAA4TextVA16_GA12_GGAA24_BackgroundStyleModifierVyA6_GGAA11_ClipEffectVyAA7CapsuleVGG_A63_Qo_GAA05EmptyE0VGGGA16_GSg_ACyACyACyACyAeAEA54_yQrqd__AAA55_Rd__lFQOyA57_yA66_G_AA28BorderedProminentButtonStyleVQo_A21_yAA13AnyShapeStyleVSgGGA21_yAA11ControlSizeOGGA78_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA2_A33_GA21_yAA19SymbolRenderingModeVSgGGA107_GA21_yA2_5ScaleOGGA16_GAA0I18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A124_GMd);
}

uint64_t closure #1 in closure #1 in FindoView.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v127 = a4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMd, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMR);
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v126 = &v112 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGMR);
  MEMORY[0x1EEE9AC00](v113);
  v11 = &v112 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v115);
  v13 = &v112 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGMR);
  MEMORY[0x1EEE9AC00](v116);
  v15 = &v112 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGMR);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v112 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGMR);
  MEMORY[0x1EEE9AC00](v117);
  v121 = &v112 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMR);
  MEMORY[0x1EEE9AC00](v120);
  v124 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v112 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v112 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMR);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v129 = &v112 - v32;
  FindoView.leadingView.getter();
  if (FindoView.isTranslationStarted.getter())
  {
    v33 = static Edge.Set.trailing.getter();
  }

  else
  {
    v33 = static Edge.Set.all.getter();
  }

  v34 = v33;
  FindoView.leadingViewPadding.getter(a1, a2, a3);
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v25, v30, &_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAOyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGMR);
  v43 = &v30[*(v26 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v30, v129, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMR);
  v132 = a2;
  v133 = a3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v44 = State.wrappedValue.getter();
  (*(*v131 + 240))(v44);

  v45 = [objc_opt_self() labelColor];
  MarqueeLabel.init(text:attributedText:color:animated:)();
  v46 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v48 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36)];
  *v48 = KeyPath;
  v48[1] = v46;
  v49 = swift_getKeyPath();
  v50 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGMR) + 36)];
  *v50 = v49;
  v50[1] = 0;
  v51 = static Font.headline.getter();
  v52 = swift_getKeyPath();
  v53 = &v11[*(v113 + 36)];
  *v53 = v52;
  v53[1] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, _ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v55 = static Edge.Set.top.getter();
  *(inited + 32) = v55;
  v56 = static Edge.Set.bottom.getter();
  *(inited + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  if ((FindoView.isTranslationStarted.getter() & 1) == 0)
  {
    FindoView.titleTextPadding.getter(a1, a2, a3);
  }

  EdgeInsets.init(_all:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v11, v13, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGMR);
  v66 = &v13[*(v115 + 36)];
  *v66 = v57;
  *(v66 + 1) = v59;
  *(v66 + 2) = v61;
  *(v66 + 3) = v63;
  *(v66 + 4) = v65;
  v66[40] = 0;
  v67 = static Edge.Set.leading.getter();
  FindoView.titleTextPadding.getter(a1, a2, a3);
  EdgeInsets.init(_all:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v15, &_s7SwiftUI15ModifiedContentVyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  v76 = &v15[*(v116 + 36)];
  *v76 = v67;
  *(v76 + 1) = v69;
  *(v76 + 2) = v71;
  *(v76 + 3) = v73;
  *(v76 + 4) = v75;
  v76[40] = 0;
  v77 = static Edge.Set.trailing.getter();
  if ((FindoView.isTranslationStarted.getter() & 1) == 0)
  {
    FindoView.titleTextPadding.getter(a1, a2, a3);
  }

  EdgeInsets.init(_all:)();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v122;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v15, v122, &_s7SwiftUI15ModifiedContentVyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGMR);
  v87 = v86 + *(v118 + 36);
  *v87 = v77;
  *(v87 + 8) = v79;
  *(v87 + 16) = v81;
  *(v87 + 24) = v83;
  *(v87 + 32) = v85;
  *(v87 + 40) = 0;
  v88 = swift_getKeyPath();
  v89 = v121;
  v90 = &v121[*(v117 + 36)];
  v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR) + 28);
  v92 = *MEMORY[0x1E697DBA8];
  v93 = type metadata accessor for ColorScheme();
  (*(*(v93 - 8) + 104))(v90 + v91, v92, v93);
  *v90 = v88;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v86, v89, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGMR);
  v94 = v119;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v89, v119, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGMR);
  *(v94 + *(v120 + 36)) = 0;
  v95 = v94;
  v96 = v130;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v95, v130, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMR);
  v132 = a2;
  v133 = a3;
  v97 = State.wrappedValue.getter();
  v98 = (*(*v131 + 376))(v97);
  LOBYTE(v86) = v98;
  LODWORD(v122) = v98;

  LODWORD(v121) = v86 & 1;
  v99 = v126;
  FindoView.trailingView.getter(a1, a2, a3, v126);
  v100 = Namespace.wrappedValue.getter();
  LODWORD(v91) = static MatchedGeometryProperties.position.getter();
  static UnitPoint.center.getter();
  v101 = v99 + *(v125 + 36);
  strcpy(v101, "TrailingAction");
  *(v101 + 15) = -18;
  *(v101 + 16) = v100;
  *(v101 + 24) = v91;
  *(v101 + 32) = v102;
  *(v101 + 40) = v103;
  *(v101 + 48) = 1;
  v104 = v129;
  v105 = v123;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v129, v123, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMR);
  v106 = v124;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v96, v124, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMR);
  v107 = v128;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v99, v128, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMd, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMR);
  v108 = v127;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v105, v127, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMR);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VG_ACyACyACyACyACyACyACyACyAH12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAUSgGGA8_y12CoreGraphics7CGFloatVGGA8_yAA4FontVSgGGA3_GA3_GA3_GA8_yAA0Q6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAA05TupleJ0VyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AEyAEyAA0J0PAAE06buttonO0yQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA6ButtonVyACyA41_13UIViewWrapperVA_GG_AA011PlainButtonO0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyACyACyA50_yACyACyAA4TextVA3_GA_GGAA011_BackgroundO8ModifierVyAUGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyJ0VGGGA3_GSg_ACyACyACyACyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonO0VQo_A8_yAA08AnyShapeO0VSgGGA8_yAA11ControlSizeOGGA71_GAA01_nO8ModifierVyAA017HierarchicalShapeO0VGGSgSgACyACyACyACyACyACyAQA20_GA8_yAA19SymbolRenderingModeVSgGGA100_GA8_yAQ5ScaleOGGA3_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VG_ACyACyACyACyACyACyACyACyAH12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAUSgGGA8_y12CoreGraphics7CGFloatVGGA8_yAA4FontVSgGGA3_GA3_GA3_GA8_yAA0Q6SchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAA05TupleJ0VyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA43_AEyAEyAA0J0PAAE06buttonO0yQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA6ButtonVyACyA41_13UIViewWrapperVA_GG_AA011PlainButtonO0VQo_A46_AAEA47_yQrqd__AAA48_Rd__lFQOyACyACyA50_yACyACyAA4TextVA3_GA_GGAA011_BackgroundO8ModifierVyAUGGAA11_ClipEffectVyAA7CapsuleVGG_A56_Qo_GAA05EmptyJ0VGGGA3_GSg_ACyACyACyACyA46_AAEA47_yQrqd__AAA48_Rd__lFQOyA50_yA59_G_AA023BorderedProminentButtonO0VQo_A8_yAA08AnyShapeO0VSgGGA8_yAA11ControlSizeOGGA71_GAA01_nO8ModifierVyAA017HierarchicalShapeO0VGGSgSgACyACyACyACyACyACyAQA20_GA8_yAA19SymbolRenderingModeVSgGGA100_GA8_yAQ5ScaleOGGA3_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v106, v108 + v109[12], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMR);
  v110 = v108 + v109[16];
  *v110 = 0;
  *(v110 + 8) = v121;
  *(v110 + 9) = (v122 & 1) == 0;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v107, v108 + v109[20], &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMd, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMR);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v99, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v130, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v104, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v107, &_s7SwiftUI15ModifiedContentVyAA9TupleViewVyACyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA012_ConditionalD0VyAOyAA0F0PAAE11buttonStyleyQrqd__AA09PrimitiveoR0Rd__lFQOyAA0O0VyACyAJ13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainoR0VQo_AqAEARyQrqd__AaSRd__lFQOyACyACyAUyACyACyAA4TextVAA08_PaddingW0VGAYGGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A1_Qo_GAA05EmptyF0VGGGA6_GSg_ACyACyACyACyAqAEARyQrqd__AaSRd__lFQOyAUyA4_G_AA017BorderedProminentoR0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeR0VSgGGA36_yAA0N4SizeOGGA20_GAA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGSgSgACyACyACyACyACyACyAA5ImageVA36_yAA4FontVSgGGA36_yAA19SymbolRenderingModeVSgGGA51_GA36_yA56_5ScaleOGGA6_GAA31AccessibilityAttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v106, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACy014CommunicationsB012MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAHy12CoreGraphics7CGFloatVGGAHyAA4FontVSgGGAA14_PaddingLayoutVGAYGAYGAHyAA0L6SchemeOGGAA017_AllowsHitTestingK0VGMd);
  return outlined destroy of IDView<AvatarStackView, [UUID]>(v105, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA08_PaddingT0VGMd);
}

void FindoView.leadingView.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v70 = v5;
  v71 = v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v72 = v7;
  v74 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v73 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAQyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGAA08ModifiedD0VyAQyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVG_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  type metadata accessor for AvatarStackView();
  OUTLINED_FUNCTION_1();
  v66 = v18;
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMd, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v65 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_32();
  v68 = v26;
  v75 = v3;
  v76 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  State.wrappedValue.getter();
  OUTLINED_FUNCTION_25_9();
  (*(v27 + 192))();

  v28 = specialized Array.count.getter();

  if (!v28)
  {
    FindoView.fallbackImage.getter(v71, v3, v1, v72);
    OUTLINED_FUNCTION_20_12();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v46, v47, v48, v49);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_24();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(v50, v51, v52, v53);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
LABEL_15:
    _ConditionalContent<>.init(storage:)();
    OUTLINED_FUNCTION_31_2();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v60, v61);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v72 = v13;
  v63 = v22;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25_9();
  (*(v29 + 192))();

  FindoView.leadingViewDimensions.getter(v71, v3, v1);
  AvatarStackView.init(contacts:size:)();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25_9();
  v31 = (*(v30 + 192))();

  v32 = specialized Array.count.getter();
  v33 = v21;
  v64 = v16;
  if (!v32)
  {

    v36 = MEMORY[0x1E69E7CC0];
    v45 = v63;
LABEL_14:
    v54 = v65;
    (*(v66 + 32))(v65, v33, v67);
    *(v54 + *(v45 + 52)) = v36;
    v55 = v68;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v54, v68, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMd, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMR);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v55, v64, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMd, &_s7SwiftUI6IDViewVy014CommunicationsB015AvatarStackViewVSay10Foundation4UUIDVGGMR);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_31_2();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(v56, v57, v58, v59);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    goto LABEL_15;
  }

  v34 = v32;
  v75 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v71 = v34;
    v62 = v21;
    v35 = 0;
    v36 = v75;
    v37 = v31;
    v38 = v31 & 0xC000000000000001;
    do
    {
      if (v38)
      {
        v39 = MEMORY[0x1BFB22010](v35, v37);
      }

      else
      {
        v39 = *(v37 + 8 * v35 + 32);
      }

      v40 = v73;
      v41 = v39;
      v42 = [v41 id];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = v36;
      v43 = *(v36 + 16);
      if (v43 >= *(v36 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v75;
      }

      ++v35;
      *(v36 + 16) = v43 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v36 + v44 + *(v9 + 72) * v43, v40, v74);
    }

    while (v71 != v35);

    v33 = v62;
    v45 = v63;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t FindoView.trailingView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a4;
  type metadata accessor for Font.Leading();
  OUTLINED_FUNCTION_1();
  v125 = v8;
  v126 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v124 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v122 = v13;
  v123 = type metadata accessor for Font.TextStyle();
  OUTLINED_FUNCTION_1();
  v121 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v120 = v17 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v128 = v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v127 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v135 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_32();
  v137 = v26;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4();
  v119 = v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  v118 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMR);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v133 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v139 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAhA19_ConditionalContentVyAKyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekP0Rd__lFQOyAA0K0VyAA08ModifiedM0VyAF13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainkP0VQo_AmAEANyQrqd__AaORd__lFQOyASyASyAQyASyASyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundP8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyN0VGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAhA19_ConditionalContentVyAKyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekP0Rd__lFQOyAA0K0VyAA08ModifiedM0VyAF13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainkP0VQo_AmAEANyQrqd__AaORd__lFQOyASyASyAQyASyASyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundP8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyN0VGGGMR);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v117 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v117 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMR);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  v132 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  v138 = v51;
  *&v141[0] = a2;
  *&v141[1] = a3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  State.wrappedValue.getter();
  OUTLINED_FUNCTION_38_4();
  (*(v52 + 264))();

  v53 = specialized Array.count.getter();

  if (v53)
  {
    v117 = v40;
    static Layout.ConversationControls.values.getter(v141);
    v54 = v141[28];
    *v39 = static VerticalAlignment.center.getter();
    v39[1] = v54;
    *(v39 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA19_ConditionalContentVyAOyAA0D0PAAE11buttonStyleyQrqd__AA09PrimitiveoS0Rd__lFQOyAA0O0VyAA08ModifiedQ0VyAJ13UIViewWrapperVAA06_FrameG0VGG_AA05PlainoS0VQo_AqAEARyQrqd__AaSRd__lFQOyAWyAWyAUyAWyAWyAA4TextVAA08_PaddingG0VGA_GGAA011_BackgroundS8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A3_Qo_GAA05EmptyD0VGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay15ConversationKit19InCallControlButtonCGAlA19_ConditionalContentVyAOyAA0D0PAAE11buttonStyleyQrqd__AA09PrimitiveoS0Rd__lFQOyAA0O0VyAA08ModifiedQ0VyAJ13UIViewWrapperVAA06_FrameG0VGG_AA05PlainoS0VQo_AqAEARyQrqd__AaSRd__lFQOyAWyAWyAUyAWyAWyAA4TextVAA08_PaddingG0VGA_GGAA011_BackgroundS8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A3_Qo_GAA05EmptyD0VGGGMR);
    closure #1 in FindoView.trailingView.getter(a1, a2, a3);
    v55 = static Edge.Set.trailing.getter();
    v56 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v55)
    {
      v56 = Edge.Set.init(rawValue:)();
    }

    FindoView.trailingActionsPadding.getter();
    EdgeInsets.init(_all:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v39, v43, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAhA19_ConditionalContentVyAKyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekP0Rd__lFQOyAA0K0VyAA08ModifiedM0VyAF13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainkP0VQo_AmAEANyQrqd__AaORd__lFQOyASyASyAQyASyASyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundP8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyN0VGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAhA19_ConditionalContentVyAKyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekP0Rd__lFQOyAA0K0VyAA08ModifiedM0VyAF13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainkP0VQo_AmAEANyQrqd__AaORd__lFQOyASyASyAQyASyASyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundP8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyN0VGGGMR);
    v40 = v117;
    v65 = &v43[*(v117 + 36)];
    *v65 = v56;
    *(v65 + 1) = v58;
    *(v65 + 2) = v60;
    *(v65 + 3) = v62;
    *(v65 + 4) = v64;
    v65[40] = 0;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v43, v46, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMR);
    v66 = v46;
    v67 = v138;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v66, v138, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GMR);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v67 = v138;
  }

  v69 = 1;
  __swift_storeEnumTagSinglePayload(v67, v68, 1, v40);
  v70 = FindoView.isTranslationStarted.getter();
  v71 = v139;
  if (v70)
  {
    OUTLINED_FUNCTION_44_4();
    v72 = *(v140 + OBJC_IVAR____TtC15ConversationKit14FindoViewModel_translationHUDViewModel);

    if (v72)
    {
      v73 = v119;
      CallTranslationHUDViewModel.trailingActionButton()(v119);

      v74 = 0;
    }

    else
    {
      v74 = 1;
      v73 = v119;
    }

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGMR);
    __swift_storeEnumTagSinglePayload(v73, v74, 1, v75);
    v76 = v73;
    v77 = v118;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v76, v118, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMR);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v77, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgMR);
    v69 = 0;
  }

  v78 = 1;
  __swift_storeEnumTagSinglePayload(v71, v69, 1, v131);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_38_4();
  v80 = (*(v79 + 376))();

  if ((v80 & 1) == 0)
  {
    v81 = Image.init(systemName:)();
    v83 = v120;
    v82 = v121;
    v84 = v123;
    (*(v121 + 104))(v120, *MEMORY[0x1E6980F30], v123);
    v85 = *MEMORY[0x1E6980E20];
    v86 = type metadata accessor for Font.Design();
    OUTLINED_FUNCTION_7_0();
    v88 = v122;
    (*(v87 + 104))(v122, v85, v86);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v86);
    static Font.system(_:design:weight:)();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v88, &_s7SwiftUI4FontV6DesignOSgMd);
    (*(v82 + 8))(v83, v84);
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v90 = v124;
    v89 = v125;
    v91 = v126;
    (*(v125 + 104))(v124, *MEMORY[0x1E6980EA8], v126);
    v92 = Font.leading(_:)();

    (*(v89 + 8))(v90, v91);
    KeyPath = swift_getKeyPath();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMR);
    v95 = v128;
    v96 = (v128 + *(v94 + 36));
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v98 = type metadata accessor for SymbolRenderingMode();
    __swift_storeEnumTagSinglePayload(v96 + v97, 0, 1, v98);
    *v96 = swift_getKeyPath();
    *v95 = v81;
    v95[1] = KeyPath;
    v95[2] = v92;
    LODWORD(v81) = static HierarchicalShapeStyle.secondary.getter();
    *(v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGMR) + 36)) = v81;
    v99 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGMR) + 36));
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v101 = *MEMORY[0x1E69816C0];
    type metadata accessor for Image.Scale();
    OUTLINED_FUNCTION_7_0();
    (*(v102 + 104))(v99 + v100, v101);
    *v99 = swift_getKeyPath();
    LOBYTE(v101) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v103 = v95 + *(v129 + 36);
    *v103 = v101;
    *(v103 + 1) = v104;
    *(v103 + 2) = v105;
    *(v103 + 3) = v106;
    *(v103 + 4) = v107;
    v103[40] = 0;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v108 = v127;
    View.accessibilityHidden(_:)();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v95, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGMd);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v108, v137, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
    v78 = 0;
  }

  v109 = v137;
  __swift_storeEnumTagSinglePayload(v137, v78, 1, v134);
  v110 = v132;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v67, v132, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMR);
  v111 = v139;
  v112 = v133;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v139, v133, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMR);
  v113 = v135;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v109, v135, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  v114 = v136;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v110, v136, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMR);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSg_ACyACyACyACyAoAEAPyQrqd__AaQRd__lFQOyASyA2_G_AA017BorderedProminentmQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGA34_yAA0L4SizeOGGA18_GAA011_ForegroundQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgACyACyACyACyACyACyAA5ImageVA34_yAA4FontVSgGGA34_yAA19SymbolRenderingModeVSgGGA49_GA34_yA54_5ScaleOGGA4_GAA31AccessibilityAttachmentModifierVGSgtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSg_ACyACyACyACyAoAEAPyQrqd__AaQRd__lFQOyASyA2_G_AA017BorderedProminentmQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGA34_yAA0L4SizeOGGA18_GAA011_ForegroundQ8ModifierVyAA017HierarchicalShapeQ0VGGSgSgACyACyACyACyACyACyAA5ImageVA34_yAA4FontVSgGGA34_yAA19SymbolRenderingModeVSgGGA49_GA34_yA54_5ScaleOGGA4_GAA31AccessibilityAttachmentModifierVGSgtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v112, v114 + *(v115 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v113, v114 + *(v115 + 64), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v109, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v111, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v138, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v113, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeO0VGGAGyAE5ScaleOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGSgSgMd);
  return outlined destroy of IDView<AvatarStackView, [UUID]>(v110, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySay15ConversationKit19InCallControlButtonCGAjA012_ConditionalD0VyAMyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivemQ0Rd__lFQOyAA0M0VyACyAH13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainmQ0VQo_AoAEAPyQrqd__AaQRd__lFQOyACyACyASyACyACyAA4TextVAA08_PaddingV0VGAWGGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_A_Qo_GAA05EmptyO0VGGGA4_GSgMd);
}

uint64_t closure #2 in closure #1 in FindoView.content.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v0 = State.wrappedValue.getter();
  v1 = (*(*v4 + 296))(v0);

  v1(v2);
}

uint64_t FindoView.additionalBottomView.getter@<X0>(uint64_t *a1@<X8>)
{
  result = FindoView.isTranslationStarted.getter();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
    OUTLINED_FUNCTION_37_8();
    v3 = *(v4 + OBJC_IVAR____TtC15ConversationKit14FindoViewModel_translationHUDViewModel);
  }

  else
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t FindoView.backgroundCornerRadius.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v5 = State.wrappedValue.getter();
  (*(*v11 + 320))(&v15, v5);

  v11 = 26;
  v12 = 0u;
  v13 = 0u;
  v14 = 7;
  v6 = static ConversationControlsType.== infix(_:_:)(&v15, &v11);
  outlined destroy of ConversationControlsType(&v11);
  outlined destroy of ConversationControlsType(&v15);
  if (v6)
  {
    return 0x4044000000000000;
  }

  v15 = a2;
  v16 = a3;
  v8 = State.wrappedValue.getter();
  (*(*v11 + 320))(&v15, v8);

  if (!v17)
  {
    return 0;
  }

  outlined destroy of ConversationControlsType(&v15);
  v15 = a2;
  v16 = a3;
  v9 = State.wrappedValue.getter();
  v10 = (*(*v11 + 376))(v9);

  if (v10)
  {
    return 0x4040000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t FindoView.backgroundMaterial.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Material._GlassVariant();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Material();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for isSolariumEnabled != -1)
  {
    v25 = v15;
    swift_once();
    v15 = v25;
  }

  if (static FindoView.isSolariumEnabled == 1)
  {
    v25 = v15;
    if (FindoView.isTranslationStarted.getter())
    {
      static Material._GlassVariant.regular.getter();
      (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2);
      Material._GlassVariant.adaptive(colorScheme:)();
      (*(v3 + 8))(v5, v2);
      v18 = *(v7 + 8);
      v18(v9, v6);
      static Material._glass(_:)();
      v18(v12, v6);
    }

    else
    {
      static Material._GlassVariant.avplayer.getter();
      static Material._glass(_:)();
      (*(v7 + 8))(v12, v6);
    }

    v22 = v27;
    static _Glass.explicit(_:)();
    (*(v14 + 8))(v17, v25);
    v23 = type metadata accessor for _Glass();
    return __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  }

  else
  {
    v19 = type metadata accessor for _Glass();
    v20 = v27;

    return __swift_storeEnumTagSinglePayload(v20, 1, 1, v19);
  }
}

uint64_t one-time initialization function for isSolariumEnabled()
{
  result = _UISolariumEnabled();
  static FindoView.isSolariumEnabled = result;
  return result;
}

uint64_t FindoView.translationViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  OUTLINED_FUNCTION_37_8();
  v0 = *(v2 + OBJC_IVAR____TtC15ConversationKit14FindoViewModel_translationHUDViewModel);

  return v0;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGA52_25PlatterBackgroundModifier33_1D898AC1149277A8892BADF3129CBB17LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier, type metadata accessor for PlatterBackgroundModifier, &protocol conformance descriptor for PlatterBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAGyACyAA012_ConditionalD0VyAA6IDViewVy014CommunicationsB0011AvatarStackG0VSay10Foundation4UUIDVGGACyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyACyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgACyAGyACyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyACyACyA59_yACyACyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyG0VGGGA18_GSg_ACyACyACyACyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgACyACyACyACyACyACyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextG0VSgSgtGGA18_GMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>( &lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>> and conformance VStack<A>,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyAGyAGyA59_yAGyAGyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyE0VGGGA18_GSg_AGyAGyAGyAGyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAGyAGyAGyAGyAGyAGyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextE0VSgSgtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAiAE12onTapGesture5count7performQrSi_yyctFQOyAA6HStackVyAEyAGyAA012_ConditionalG0VyAA6IDViewVy014CommunicationsB0011AvatarStackE0VSay10Foundation4UUIDVGGAGyAGyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAGyAW12MarqueeLabelVAA30_EnvironmentKeyWritingModifierVyA8_SgGGA23_y12CoreGraphics7CGFloatVGGA23_yAA4FontVSgGGA18_GA18_GA18_GA23_yAA11ColorSchemeOGGAA25_AllowsHitTestingModifierVGAA6SpacerVSgAGyAEyAGyARyAA7ForEachVySay15ConversationKit19InCallControlButtonCGA54_ATyATyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA52_13UIViewWrapperVA14_GG_AA16PlainButtonStyleVQo_AiAEA56_yQrqd__AAA57_Rd__lFQOyAGyAGyA59_yAGyAGyAA4TextVA18_GA14_GGAA24_BackgroundStyleModifierVyA8_GGAA11_ClipEffectVyAA7CapsuleVGG_A65_Qo_GAA05EmptyE0VGGGA18_GSg_AGyAGyAGyAGyAiAEA56_yQrqd__AAA57_Rd__lFQOyA59_yA68_G_AA28BorderedProminentButtonStyleVQo_A23_yAA13AnyShapeStyleVSgGGA23_yAA11ControlSizeOGGA80_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGSgSgAGyAGyAGyAGyAGyAGyA4_A35_GA23_yAA19SymbolRenderingModeVSgGGA109_GA23_yA4_5ScaleOGGA18_GAA0K18AttachmentModifierVGSgtGAA22_MatchedGeometryEffectVySSGGtGG_Qo__Qo_A126_G_A52_015TranslationTextE0VSgSgtGGMR,  MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for PlatterBackgroundModifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatterBackgroundModifier;
  if (!type metadata singleton initialization cache for PlatterBackgroundModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double FindoView.fallbackImage.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = type metadata accessor for Image.ResizingMode();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  Image.resizable(capInsets:resizingMode:)();

  (*(v12 + 8))(v14, v11);
  static SymbolRenderingMode.palette.getter();
  v15 = type metadata accessor for SymbolRenderingMode();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  v16 = Image.symbolRenderingMode(_:)();

  outlined destroy of IDView<AvatarStackView, [UUID]>(v10, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  v17 = static Color.white.getter();
  v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGMd, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGMR);
  static Material.ultraThin.getter();
  *v18 = v17;
  *a4 = v16;
  FindoView.leadingViewDimensions.getter(a1, a2, a3);
  FindoView.leadingViewDimensions.getter(a1, a2, a3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMR) + 36));
  v20 = v22[1];
  *v19 = v22[0];
  v19[1] = v20;
  result = *&v23;
  v19[2] = v23;
  return result;
}

uint64_t closure #1 in FindoView.trailingView.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
  v6 = State.wrappedValue.getter();
  (*(*v9 + 264))(v6);

  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit19InCallControlButtonCGMd, &_sSay15ConversationKit19InCallControlButtonCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GAA05EmptyE0VGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GAA05EmptyE0VGMR);
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type [InCallControlButton] and conformance [A], &_sSay15ConversationKit19InCallControlButtonCGMd, &_sSay15ConversationKit19InCallControlButtonCGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type InCallControlButton and conformance NSObject, type metadata accessor for InCallControlButton, MEMORY[0x1E69E81B8]);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

void FindoView.trailingButtonView(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v89 = v2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v79 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0G0VyAGyAGyAA4TextVAA14_PaddingLayoutVGAA06_FrameL0VGGAA011_BackgroundE8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0G0VyAGyAGyAA4TextVAA14_PaddingLayoutVGAA06_FrameL0VGGAA011_BackgroundE8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AA05PlaingE0VQo_MR);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainjH0VQo_AgAEAHyQrqd__AaIRd__lFQOyAMyAMyAKyAMyAMyAA4TextVAA08_PaddingQ0VGARGGAA011_BackgroundH8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AVQo_GAA05EmptyF0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainjH0VQo_AgAEAHyQrqd__AaIRd__lFQOyAMyAMyAKyAMyAMyAA4TextVAA08_PaddingQ0VGARGGAA011_BackgroundH8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AVQo_GAA05EmptyF0V_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v92 = v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainjH0VQo_AgAEAHyQrqd__AaIRd__lFQOyAMyAMyAKyAMyAMyAA4TextVAA08_PaddingQ0VGARGGAA011_BackgroundH8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AVQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainjH0VQo_AgAEAHyQrqd__AaIRd__lFQOyAMyAMyAKyAMyAMyAA4TextVAA08_PaddingQ0VGARGGAA011_BackgroundH8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_AVQo__GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v86 = v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA08ModifiedD0Vy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlainiG0VQo_AeAEAFyQrqd__AaGRd__lFQOyAKyAKyAIyAKyAKyAA4TextVAA08_PaddingP0VGAPGGAA011_BackgroundG8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGG_ATQo_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  v87 = v17;
  v83 = type metadata accessor for PlainButtonStyle();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMR);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGG_AA05PlaingE0VQo_MR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v79 - v32;
  v34 = *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
  if (v34 == 5)
  {
    v79 = v11;
    v80 = v8;
    v52 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(v31);
    if (v53)
    {
      v54 = v52;
      v55 = v53;
      v56 = swift_allocObject();
      v81 = v6;
      *(v56 + 16) = v1;
      MEMORY[0x1EEE9AC00](v56);
      *(&v79 - 6) = v54;
      *(&v79 - 5) = v55;
      *(&v79 - 4) = 0;
      *(&v79 - 24) = 1;
      *(&v79 - 2) = 0x4044000000000000;
      *(&v79 - 8) = 0;
      v57 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameG0VGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      Button.init(action:label:)();

      v58 = static Color.white.getter();
      LOBYTE(v54) = static Edge.Set.all.getter();
      v59 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGMR) + 36)];
      *v59 = v58;
      v59[8] = v54;
      v60 = v88;
      v61 = &v5[*(v88 + 36)];
      v62 = *MEMORY[0x1E697F468];
      type metadata accessor for RoundedCornerStyle();
      OUTLINED_FUNCTION_7_0();
      (*(v63 + 104))(v61, v62);
      *&v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR) + 36)] = 256;
      PlainButtonStyle.init()();
      v64 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
      OUTLINED_FUNCTION_9_14();
      v67 = lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(v65, v66, MEMORY[0x1E697C240]);
      v68 = v79;
      v69 = v83;
      View.buttonStyle<A>(_:)();
      (*(v19 + 8))(v23, v69);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v5, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA4TextVAA14_PaddingLayoutVGAA06_FrameH0VGGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd);
      v71 = v80;
      v70 = v81;
      (*(v80 + 16))(v86, v68, v81);
      swift_storeEnumTagMultiPayload();
      v72 = OUTLINED_FUNCTION_12_13(&lazy protocol witness table cache variable for type Button<ModifiedContent<UIViewWrapper, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMR);
      v93 = v82;
      v94 = v69;
      v95 = v72;
      v96 = v67;
      OUTLINED_FUNCTION_8_22();
      swift_getOpaqueTypeConformance2();
      v93 = v60;
      v94 = v69;
      v95 = v64;
      v96 = v67;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      OUTLINED_FUNCTION_20_12();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v73, v74, v75, v76);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      OUTLINED_FUNCTION_31_2();
      outlined destroy of IDView<AvatarStackView, [UUID]>(v77, v78);
      (*(v71 + 8))(v68, v70);
      goto LABEL_7;
    }

LABEL_6:
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  if (v34)
  {
    goto LABEL_6;
  }

  v80 = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  MEMORY[0x1EEE9AC00](v35);
  v81 = v6;
  *(&v79 - 6) = v1;
  *(&v79 - 5) = 0x4046000000000000;
  *(&v79 - 32) = 0;
  *(&v79 - 3) = 0x4046000000000000;
  *(&v79 - 16) = 0;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<UIViewWrapper, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v37 = OUTLINED_FUNCTION_12_13(&lazy protocol witness table cache variable for type Button<ModifiedContent<UIViewWrapper, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy15ConversationKit13UIViewWrapperVAA12_FrameLayoutVGGMR);
  OUTLINED_FUNCTION_9_14();
  v40 = lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(v38, v39, MEMORY[0x1E697C240]);
  v41 = v82;
  v42 = v19;
  v43 = v83;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v23, v43);
  (*(v25 + 8))(v28, v41);
  v44 = v85;
  (*(v80 + 16))(v86, v33, v85);
  swift_storeEnumTagMultiPayload();
  v93 = v41;
  v94 = v43;
  v95 = v37;
  v96 = v40;
  OUTLINED_FUNCTION_8_22();
  swift_getOpaqueTypeConformance2();
  v45 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FrameLayout>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  v93 = v88;
  v94 = v43;
  v95 = v45;
  v96 = v40;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  OUTLINED_FUNCTION_20_12();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v46, v47, v48, v49);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  OUTLINED_FUNCTION_31_2();
  outlined destroy of IDView<AvatarStackView, [UUID]>(v50, v51);
  (*(v80 + 8))(v33, v44);
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

double closure #2 in FindoView.trailingButtonView(_:)@<D0>(void *a1@<X0>, uint64_t a6@<X8>)
{
  v7 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a6 = v7;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  result = *&v13;
  *(a6 + 40) = v13;
  return result;
}

void (*closure #1 in FindoView.trailingButtonView(_:)(void *a1))(void)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))();
  if (result)
  {
    result();
    v2 = OUTLINED_FUNCTION_46();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
  }

  return result;
}

__n128 closure #4 in FindoView.trailingButtonView(_:)@<Q0>(uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  *(&v43 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  *&v43 = static Color.black.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Font.headline.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  outlined consume of Text.Storage(v13, v15, v17 & 1);

  static Font.Weight.semibold.getter();
  v23 = Text.fontWeight(_:)();
  v41 = v24;
  v26 = v25;
  v28 = v27;
  outlined consume of Text.Storage(v18, v20, v22 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, _ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  LOBYTE(v20) = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v30 = static Edge.Set.trailing.getter();
  *(inited + 33) = v30;
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v42[7] = v43;
  *&v42[23] = v44;
  *&v42[39] = v45;
  *a7 = v23;
  *(a7 + 8) = v41;
  *(a7 + 16) = v26 & 1;
  *(a7 + 24) = v28;
  *(a7 + 32) = v31;
  *(a7 + 40) = v33;
  *(a7 + 48) = v35;
  *(a7 + 56) = v37;
  *(a7 + 64) = v39;
  *(a7 + 72) = 0;
  result = *v42;
  *(a7 + 120) = *(&v45 + 1);
  *(a7 + 105) = *&v42[32];
  *(a7 + 89) = *&v42[16];
  *(a7 + 73) = *v42;
  return result;
}

uint64_t FindoView.init(animation:viewModel:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FindoViewModel(0);
  State.init(wrappedValue:)();
  return a1;
}

uint64_t PlatterBackgroundModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v3 = type metadata accessor for Material();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA01_C16Modifier_ContentVy15ConversationKit017PlatterBackgroundJ033_1D898AC1149277A8892BADF3129CBB17LLVG_Qo_Md, &_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA01_C16Modifier_ContentVy15ConversationKit017PlatterBackgroundJ033_1D898AC1149277A8892BADF3129CBB17LLVG_Qo_MR);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v48 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_f9Modifier_D0Vy15ConversationKit017PlatterBackgroundL033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyK0VQo_AgAE08materialH0_AIQrAA8MaterialV_AA01_K3SetVtFQOyAS_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_f9Modifier_D0Vy15ConversationKit017PlatterBackgroundL033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyK0VQo_AgAE08materialH0_AIQrAA8MaterialV_AA01_K3SetVtFQOyAS_Qo__GMR);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v48 - v7;
  v50 = type metadata accessor for Capsule();
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for RoundedRectangle();
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_C16Modifier_ContentVy15ConversationKit017PlatterBackgroundI033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyH0VQo_Md, &_s7SwiftUI4ViewPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA01_C16Modifier_ContentVy15ConversationKit017PlatterBackgroundI033_1D898AC1149277A8892BADF3129CBB17LLVG_AA03AnyH0VQo_MR);
  v52 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v51 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - v14;
  v16 = type metadata accessor for _Glass();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlatterBackgroundModifier(0);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v2 + *(v20 + 20), v15, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v15, &_s7SwiftUI6_GlassVSgMd);
    static Material.ultraThin.getter();
    if (v2[1])
    {
      v21 = *MEMORY[0x1E697F468];
      v22 = type metadata accessor for RoundedCornerStyle();
      (*(*(v22 - 8) + 104))(v9, v21, v22);
      lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    }

    else
    {
      v26 = *v2;
      v27 = *(v49 + 20);
      v28 = *MEMORY[0x1E697F468];
      v29 = type metadata accessor for RoundedCornerStyle();
      (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
      *v11 = v26;
      *(v11 + 1) = v26;
      lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    }

    v30 = AnyShape.init<A>(_:)();
    v31 = v55;
    specialized View.materialEffect<A>(_:in:)(v5, v30);

    (*(v53 + 8))(v5, v54);
    v32 = v56;
    v33 = v61;
    (*(v56 + 16))(v60, v31, v61);
    swift_storeEnumTagMultiPayload();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR);
    v35 = lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatterBackgroundModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR, MEMORY[0x1E697FDF8]);
    v36 = lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
    v63 = v34;
    v64 = MEMORY[0x1E6981A90];
    v65 = v35;
    v66 = v36;
    swift_getOpaqueTypeConformance2();
    v63 = v34;
    v64 = v35;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v23 = *(v2 + 8);
    v48 = v17;
    if (v23)
    {
      v24 = *MEMORY[0x1E697F468];
      v25 = type metadata accessor for RoundedCornerStyle();
      (*(*(v25 - 8) + 104))(v9, v24, v25);
      lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    }

    else
    {
      v38 = *v2;
      v39 = *(v49 + 20);
      v40 = *MEMORY[0x1E697F468];
      v41 = type metadata accessor for RoundedCornerStyle();
      (*(*(v41 - 8) + 104))(&v11[v39], v40, v41);
      *v11 = v38;
      *(v11 + 1) = v38;
      lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    }

    v63 = AnyShape.init<A>(_:)();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR);
    v43 = lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatterBackgroundModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR, MEMORY[0x1E697FDF8]);
    v44 = lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
    v45 = v51;
    View._glassEffect<A>(_:in:)();

    v46 = v52;
    v47 = v59;
    (*(v52 + 16))(v60, v45, v59);
    swift_storeEnumTagMultiPayload();
    v63 = v42;
    v64 = MEMORY[0x1E6981A90];
    v65 = v43;
    v66 = v44;
    swift_getOpaqueTypeConformance2();
    v63 = v42;
    v64 = v43;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v46 + 8))(v45, v47);
    return (*(v48 + 8))(v19, v16);
  }
}

uint64_t specialized View.materialEffect<A>(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ShapeSet();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8AnyShapeVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8AnyShapeVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v9[1] = a2;
  lazy protocol witness table accessor for type AnyShape and conformance AnyShape();

  *(v7 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR);
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatterBackgroundModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit017PlatterBackgroundD033_1D898AC1149277A8892BADF3129CBB17LLVGMR, MEMORY[0x1E697FDF8]);
  View.materialEffect(_:in:)();
  return (*(v4 + 8))(v6, v3);
}

void specialized View.materialEffect<A>(_:in:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for RoundedRectangle();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for _ShapeSet();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8AnyShapeVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8AnyShapeVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA940;
  outlined init with copy of RoundedRectangle(v1, v5);
  lazy protocol witness table accessor for type PlatterBackgroundModifier and conformance PlatterBackgroundModifier(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  *(v13 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.materialEffect(_:in:)();
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_30_0();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UIViewWrapper and conformance UIViewWrapper();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UIViewWrapper and conformance UIViewWrapper();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance UIViewWrapper(uint64_t a1)
{
  lazy protocol witness table accessor for type UIViewWrapper and conformance UIViewWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGGMR);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Material> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGMd, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAA8MaterialVGMR, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeO_AC18HUDActivityManagerC14RelevanceScoreVtGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeO_AC18HUDActivityManagerC14RelevanceScoreVtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo18NSLayoutConstraintCGGMd, &_ss23_ContiguousArrayStorageCySaySo18NSLayoutConstraintCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21InCallViewModelHolder33_5B4A18A810ED2BA0BAF7DF9664EFF4B6LLVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit21InCallViewModelHolder33_5B4A18A810ED2BA0BAF7DF9664EFF4B6LLVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit4Call_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit4Call_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_15ConversationKit17AutoplayCandidateVtGMd, &_ss23_ContiguousArrayStorageCySi_15ConversationKit17AutoplayCandidateVtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15ConversationKit17AutoplayCandidateVtMd, &_sSi_15ConversationKit17AutoplayCandidateVtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15ConversationKit17AutoplayCandidateVtMd, &_sSi_15ConversationKit17AutoplayCandidateVtMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20LiveCommunicationKit6HandleVSgGMd, &_ss23_ContiguousArrayStorageCy20LiveCommunicationKit6HandleVSgGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd, &_s20LiveCommunicationKit6HandleVSgMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd, &_s20LiveCommunicationKit6HandleVSgMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo13UILayoutGuideCGGMd, &_ss23_ContiguousArrayStorageCySaySo13UILayoutGuideCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13UILayoutGuideCGMd, &_sSaySo13UILayoutGuideCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D4LinkVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D4LinkVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantMediaPrioritiesVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantMediaPrioritiesVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDy15ConversationKit28SharePlayDiscoverabilityTypeOSD4KeysVySSAC11ApplicationV_GSgGGMd, &_ss23_ContiguousArrayStorageCySDy15ConversationKit28SharePlayDiscoverabilityTypeOSD4KeysVySSAC11ApplicationV_GSgGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy15ConversationKit28SharePlayDiscoverabilityTypeOSD4KeysVySSAA11ApplicationV_GSgGMd, &_sSDy15ConversationKit28SharePlayDiscoverabilityTypeOSD4KeysVySSAA11ApplicationV_GSgGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}